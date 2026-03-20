unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  MemoryUtils;

type
  TBytes = array of Byte;

  TFrmPrincipal = class(TForm)
    btnLeak: TButton;
    btnProcessarEmBlocos: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnLeakClick(Sender: TObject);
    procedure btnProcessarEmBlocosClick(Sender: TObject);
  private
    { Private declarations }
    procedure DumpMem(const Tag: string);
    procedure ProcessarArquivoEmBlocos(const AFile: string; Bloco: Integer = 4*1024*1024);  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
Caption := 'Diagnóstico de Memória (FastMM4 + Delphi 7)';
  btnLeak := TButton.Create(Self);
  btnLeak.Parent := Self;
  btnLeak.SetBounds(16,16,260,30);
  btnLeak.Caption := 'Simular leak/fragmentação';
  btnLeak.OnClick := btnLeakClick;

  btnProcessarEmBlocos := TButton.Create(Self);
  btnProcessarEmBlocos.Parent := Self;
  btnProcessarEmBlocos.SetBounds(16,56,260,30);
  btnProcessarEmBlocos.Caption := 'Processar arquivo em blocos';
  btnProcessarEmBlocos.OnClick := btnProcessarEmBlocosClick;

  DumpMem('Inicial');
end;

procedure TFrmPrincipal.DumpMem(const Tag: string);
var
  HS: THeapStatus;
  MS: TMemoryStatusEx;
  s: string;
begin
  HS := GetHeapStatus;
  MS.dwLength := SizeOf(MS);
  GlobalMemoryStatusEx(MS);

  s := Format('[%s] HeapAlloc=%.3f MB | GetFreePhys=%.1f MB | MemLoad=%d%%', [
    Tag,
    HS.TotalAllocated / (1024*1024),
    MS.ullAvailPhys / 1024.0 / 1024.0,
    MS.dwMemoryLoad
  ]);
  OutputDebugString(PChar(s));
end;


procedure TFrmPrincipal.btnLeakClick(Sender: TObject);
var
  i: Integer;
  LList: TList;
  P: PByte;
  Tam: Integer;
begin
  DumpMem('Antes do leak');

  // 1) Fragmentação + consumo crescente: aloca e "perde" referências
  LList := TList.Create;
  try
    for i := 1 to 200 do
    begin
      // blocos de 5MB — ajuste se for agressivo demais para sua máquina
      Tam := 5 * 1024 * 1024;
      GetMem(P, Tam);
      // Preenche para evitar “commit preguiçoso”
      FillChar(P^, Tam, Byte(i));
      // Simula vazamento: NÃO vamos guardar nem liberar alguns blocos
      if (i mod 10) <> 0 then
        LList.Add(P)          // manter referência (para liberar depois)
      else
        ;                     // leak intencional

      if (i mod 20) = 0 then
        DumpMem(Format('Iter %d', [i]));
    end;

    // Libera apenas os que temos referência ? os outros ficam vazando
    for i := 0 to LList.Count-1 do
      FreeMem(LList[i]);

  finally
    LList.Free;
  end;

  DumpMem('Depois do leak');

  // Força relatório do FastMM4 neste ponto (somente se FullDebugMode)
  // O relatório final também aparece ao encerrar o processo.
  // FastMM4.ReportMemoryLeaksNow;  // descomente se sua versão tiver essa função
end;

procedure TFrmPrincipal.ProcessarArquivoEmBlocos(const AFile: string; Bloco: Integer);
var
  FS: TFileStream;
  Buffer: TBytes;
  Lidos: Integer;
  Processados: Int64;
begin
  SetLength(Buffer, Bloco);
  FS := TFileStream.Create(AFile, fmOpenRead or fmShareDenyNone);
  try
    Processados := 0;
    repeat
      Lidos := FS.Read(Buffer[0], Length(Buffer));
      if Lidos > 0 then
      begin
        // ? processe aqui (hash, parser, compressão, etc.) sem guardar tudo
        Inc(Processados, Lidos);
        if (Processados mod (50*1024*1024)) = 0 then
          DumpMem(Format('Processados: %d MB', [Processados div (1024*1024)]));
      end;
    until Lidos = 0;
  finally
    FS.Free;
    SetLength(Buffer, 0); // libera buffer
  end;
end;


procedure TFrmPrincipal.btnProcessarEmBlocosClick(Sender: TObject);
var
  Nome: string;
begin
  // aponte para um arquivo grande no seu disco
  Nome := 'C:\Sheild\Temp\SHE-MEM.dat';
  DumpMem('Antes stream');
  ProcessarArquivoEmBlocos(Nome, 4*1024*1024); // 4MB por bloco
  DumpMem('Depois stream');
end;

end.
