unit ptab_epo_edi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB, IBCustomDataSet,
  IBQuery,  ComCtrls, ExtCtrls, dxEditor, dxExEdtr, dxEdLib, jpeg,
  StdCtrls, dxCntner, Buttons, ExtDlgs, dximctrl,Printers, rxSpeedbar;

type
  Tfrmtab_epo_edi = class(Tfrmpadr3)
    tab_epo: TIBQuery;
    tab_epoID: TIntegerField;
    tab_epoEPO_DESC: TIBStringField;
    tab_epoEPO_ANDA: TIBStringField;
    tab_epoEPO_SETO: TIBStringField;
    tab_epoEPO_SALA: TIBStringField;
    tab_epoEPO_BOX: TIBStringField;
    tab_epoEPO_DPRI: TIBStringField;
    tab_epoEPO_OBSE: TMemoField;
    tab_epoEPO_FOTO: TBlobField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edid: TdxEdit;
    eddesc: TdxEdit;
    cbanda: TdxPickEdit;
    cbseto: TdxPickEdit;
    cbsala: TdxPickEdit;
    cbbox: TdxPickEdit;
    eddusu: TdxEdit;
    cbdpri: TdxImageEdit;
    edobse: TdxMemo;
    sbfoto: TSpeedButton;
    imag: TImage;
    OpenPictureDialogEdit: TOpenPictureDialog;
    listpri: TdxImageListBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure sbfotoClick(Sender: TObject);
    procedure imagDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure NOVO;
    procedure ALTERA;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmtab_epo_edi: Tfrmtab_epo_edi;

implementation

uses p_funcoes, ptab_epo, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_epo_edi.NOVO;
begin
  carregaFoto(0,tab_epoEPO_FOTO,tab_epo,frmprincipal.parametros);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_TAB_EPO,0) FROM RDB$DATABASE');
    Open;

    edid.Text := strzero(fields[0].AsInteger+1,5);
  end;  

  edid.Text   := '0';
  eddesc.Text := '';
  cbanda.Text := '';
  cbseto.Text := '';
  cbsala.Text := '';
  cbbox.Text  := '';
  cbdpri.Text := '';
  eddusu.Text := frmprincipal.cad_usuUSU_DUSU.AsString;
end;

procedure Tfrmtab_epo_edi.ALTERA;
begin
  with tab_epo do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_EPO');
    SQL.Add('WHERE ID = '''+frmtab_epo.cadastroID.AsString+'''');
    Open;
  end;

  carregaFoto(tab_epoEPO_FOTO.BlobSize,tab_epoEPO_FOTO,tab_epo,frmprincipal.parametros);

  edid.Text   := tab_epoID.AsString;
  eddesc.Text := tab_epoEPO_DESC.AsString;
  cbanda.Text := tab_epoEPO_ANDA.AsString;
  cbseto.Text := tab_epoEPO_SETO.AsString;
  cbsala.Text := tab_epoEPO_SALA.AsString;
  cbbox.Text  := tab_epoEPO_BOX.AsString;
  cbdpri.Text := tab_epoEPO_DPRI.AsString;
  eddusu.Text := frmprincipal.cad_usuUSU_DUSU.AsString;
end;

procedure Tfrmtab_epo_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  ALTERA else NOVO;
end;

procedure Tfrmtab_epo_edi.FormCreate(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   EPO_ANDA FROM TAB_EPO');
    SQL.Add('GROUP BY EPO_ANDA');
    SQL.Add('ORDER BY EPO_ANDA');
    Open;

    while not eof do
    begin
      cbanda.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   EPO_SETO FROM TAB_EPO');
    SQL.Add('GROUP BY EPO_SETO');
    SQL.Add('ORDER BY EPO_SETO');
    Open;

    while not eof do
    begin
      cbseto.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   EPO_SALA FROM TAB_EPO');
    SQL.Add('GROUP BY EPO_SALA');
    SQL.Add('ORDER BY EPO_SALA');
    Open;

    while not eof do
    begin
      cbsala.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   EPO_BOX FROM TAB_EPO');
    SQL.Add('GROUP BY EPO_BOX');
    SQL.Add('ORDER BY EPO_BOX');
    Open;

    while not eof do
    begin
      cbbox.Items.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmtab_epo_edi.siSAVClick(Sender: TObject);
var
  foto: TStream;
begin
  inherited;

  if (Campo_Obrigatorio(PnlCadastro)) then
  Abort;

  if yesno(handle,'Confirma Edição ?') = mrno then
  abort;

  foto := TMemoryStream.Create;
  if (imag.Picture.Graphic <> nil) and (imag.Tag = 1) then
  imag.Picture.Graphic.SaveToStream(foto);

  try
    ibSP.StoredProcName := 'SP_TAB_EPO';
    ibSP.Prepare;

    case frmtab_epo_edi.Tag of
      0: ibSP.Params[0].Value := null;
      1: ibSP.Params[0].Value := edid.Text;
    end;

    ibSP.ParamByName('DESC').Value := eddesc.Text;
    ibSP.ParamByName('ANDA').Value := cbanda.Text;
    ibSP.ParamByName('SETO').Value := cbseto.Text;
    ibSP.ParamByName('SALA').Value := cbsala.Text;
    ibSP.ParamByName('BOX').Value  := cbbox.Text;
    ibSP.ParamByName('DPRI').Value := cbdpri.text;
    ibSP.ParamByName('DUSU').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
    ibSP.ParamByName('OBSE').Value := edobse.Text;
    ibSP.ParamByName('FOTO').Value := null;
    if foto.Size > 0 then
    ibSP.ParamByName('FOTO').LoadFromStream(foto ,ftBlob);
    ibSP.ExecProc;

    case frmtab_epo_edi.Tag of
      0: frmprincipal.Log_Eve('Produtos','Local de Estoque','Inclusão' ,edid.Text,edid.Text,LOWERCASE(eddesc.Text),'','');
      1: frmprincipal.Log_Eve('Produtos','Local de Estoque','Alteração',edid.Text,edid.Text,LOWERCASE(eddesc.Text),'','');
    end;

    IBTra.CommitRetaining;
    Close;
  except
    editado := false;
    IBTRA.Rollback;
    IBTra.StartTransaction;
  end;
end;

procedure Tfrmtab_epo_edi.sbfotoClick(Sender: TObject);
var
   foto_stream : TMemoryStream;
begin
  foto_stream := TMemoryStream.Create;
  foto_stream.Clear;

  if OpenPictureDialogEdit.Execute then
  begin
    foto_stream.LoadFromFile(OpenPictureDialogEdit.FileName );

    if ( foto_stream.Size < 350000 ) then
    begin
      imag.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
      imag.Tag := 1;
    end
    else
       raise exception.Create('O Tamanho Máximo Permitido para uma Imagem é de 350 KB !'+#13+'Altere o Tamanho da Foto ou Diminua a Qualidade da Mesma.');
  end;
end;

procedure Tfrmtab_epo_edi.imagDblClick(Sender: TObject);
begin
  imag.Picture := nil;
  imag.Update;

  carregaFoto(0,tab_epoEPO_FOTO,tab_epo,frmprincipal.parametros);
end;

procedure Tfrmtab_epo_edi.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    imag.Tag   := 0;
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
  begin
    imag.Tag   := 1;
    BlobStream := tab.CreateBlobStream(valor,bmRead);
  end;

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmtab_epo_edi.FormDestroy(Sender: TObject);
begin
  {nothing}
end;

procedure Tfrmtab_epo_edi.FormActivate(Sender: TObject);
var
  i: word;
begin
  inherited;
  eddesc.SetFocus;

  ListPri.Items.Assign(Printer.Printers);
  ListPri.ItemIndex := Printer.PrinterIndex;

  for i := 0 to ListPri.Items.Count - 1 do
  begin
    cbdpri.Descriptions.Add(Listpri.Items.Strings[i]);
    cbdpri.Values.Add(Listpri.Items.Strings[i]);
  end;
end;

end.
