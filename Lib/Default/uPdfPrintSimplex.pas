unit uPdfPrintSimplex;

{
  uPdfPrintSimplex_D7.pas
  ------------------------------------------------------------
  Impressão de PDF SEM duplex (simplex) — Delphi 7 (Win32, ANSI)

  Funções:
    - PrintPdfNoDuplex_GS     -> via Ghostscript (força simplex em qualquer cenário)
    - ForcePrinterSimplex     -> força simplex no DEVMODE da impressora alvo
    - PrintWithSumatra        -> usa SumatraPDF para imprimir silenciosamente
    - PrintPdfSimplex_Default -> verb 'print' padrão do Windows (após forçar simplex)

  Observações:
    - 100% compatível com Delphi 7.
    - Evita unit Printers (para não confundir TPrinter x API SetPrinter).
    - Usa chamadas ANSI (PAnsiChar) e API do spooler (winspool.drv).

  Dependências:
    uses Windows, WinSpool, ShellAPI, SysUtils
}

interface





uses
  Windows, WinSpool, ShellAPI, SysUtils, Classes;

  type
  PPrinterInfo4A = ^PRINTER_INFO_4A;
  PRINTER_INFO_4A = record
    pPrinterName: PAnsiChar;
    pServerName: PAnsiChar;
    Attributes: DWORD;
  end;

function PrintPdfNoDuplex_GS(const GsExe, PdfFile, PrinterName: string;
  const ExtraArgs: string; var ErrMsg: string): Boolean;

function ForcePrinterSimplex(const APrinterName: string; var ErrMsg: string): Boolean;

function PrintWithSumatra(const SumatraExe, PdfFile, PrinterName: string;
  Silent: Boolean; var ErrMsg: string): Boolean;

function PrintPdfSimplex_Default(const PdfFile: string; var ErrMsg: string): Boolean;

implementation

// --- Declaração explícita (ANSI) para corrigir "Undeclared identifier: SetPrinter" no D7 ---
function SetPrinterA(hPrinter: THandle; Level: DWORD; pPrinter: Pointer; Command: DWORD): BOOL; stdcall;
  external 'winspool.drv' name 'SetPrinterA';

// -----------------------------------------------------------------------------
//  Auxiliares
// -----------------------------------------------------------------------------
function FileMustExist(const Path, What: string; var Err: string): Boolean;
begin
  Result := FileExists(Path);
  if not Result then
    Err := Format('%s não encontrado: %s', [What, Path]);
end;

function ExecShell(const App, Params: string; var Err: string): Boolean;
var
  Code: HINST;
begin
  Code := ShellExecute(0, 'open', PAnsiChar(App), PAnsiChar(Params), nil, SW_HIDE);
  Result := Code > 32;
  if not Result then
    Err := Format('ShellExecute falhou (%d): %s %s', [Code, App, Params]);
end;

// Clona um DEVMODE completo via DocumentProperties (ANSI)
function CloneDevMode(hPrinter: THandle; const PrinterName: string;
  var pDev: PDeviceMode; var Bytes: DWORD): Boolean;
begin
  Result := False;
  pDev := nil;
  Bytes := DocumentProperties(0, hPrinter, PAnsiChar(PrinterName),
                              TDeviceMode(nil^), TDeviceMode(nil^), 0);
  if Bytes = 0 then Exit;

  GetMem(pDev, Bytes);
  Result := DocumentProperties(0, hPrinter, PAnsiChar(PrinterName),
                               pDev^, pDev^, DM_OUT_BUFFER) >= 0;
  if not Result then
  begin
    FreeMem(pDev);
    pDev := nil;
    Bytes := 0;
  end;
end;

// -----------------------------------------------------------------------------
//  A) Ghostscript: renderiza e envia direto (força simplex)
// -----------------------------------------------------------------------------
function PrintPdfNoDuplex_GS(const GsExe, PdfFile, PrinterName: string;
  const ExtraArgs: string; var ErrMsg: string): Boolean;
var
  Params: string;
begin
  result := False;
  ErrMsg := '';
  if not FileMustExist(GsExe, 'Ghostscript', ErrMsg) then Exit;
  if not FileMustExist(PdfFile, 'Arquivo PDF', ErrMsg) then Exit;
  if Trim(PrinterName) = '' then
  begin
    ErrMsg := 'Nome da impressora não informado.';
    Exit;
  end;

  // -sDEVICE=mswinpr2 usa o driver nativo do Windows
  // -dDuplex=false garante simplex; -dTumble=false evita inversão
  Params :=
    ' -dQUIET -dBATCH -dNOPAUSE' +
    ' -sDEVICE=mswinpr2' +
    ' -dDuplex=false -dTumble=false' +
    ' -sOutputFile="%printer%' + PrinterName + '"';

  if Trim(ExtraArgs) <> '' then
    Params := Params + ' ' + Trim(ExtraArgs);

  Params := Params + ' "' + PdfFile + '"';

  Result := ExecShell(GsExe, Params, ErrMsg);
end;

function OpenPrinterAdmin(const APrinterName: string; out hPrinter: THandle): Boolean;
var
  PD: PRINTER_DEFAULTS;
begin
  FillChar(PD, SizeOf(PD), 0);
  PD.DesiredAccess := PRINTER_ACCESS_ADMINISTER or PRINTER_ACCESS_USE;
  Result := OpenPrinter(PAnsiChar(APrinterName), hPrinter, @PD);
end;
// -----------------------------------------------------------------------------
//  B) Força simplex no DEVMODE da impressora
// -----------------------------------------------------------------------------
function ForcePrinterSimplex(const APrinterName: string; var ErrMsg: string): Boolean;
var
  hPrinter: THandle;
  BytesNeeded: DWORD;
  pPI2: PPrinterInfo2;
  pDevMode: PDeviceMode;
begin
  Result := False; ErrMsg := '';
  if Trim(APrinterName) = '' then begin ErrMsg := 'Nome da impressora não informado.'; Exit; end;

  if not OpenPrinterAdmin(APrinterName, hPrinter) then
  begin
    ErrMsg := 'OpenPrinter(ADMINISTER) falhou: ' + SysErrorMessage(GetLastError);
    Exit;
  end;

  try
    GetPrinter(hPrinter, 2, nil, 0, @BytesNeeded);
    if BytesNeeded = 0 then begin ErrMsg := 'GetPrinter len=0.'; Exit; end;

    GetMem(pPI2, BytesNeeded);
    try
      if not GetPrinter(hPrinter, 2, pPI2, BytesNeeded, @BytesNeeded) then
      begin
        ErrMsg := 'GetPrinter falhou: ' + SysErrorMessage(GetLastError);
        Exit;
      end;

      pDevMode := pPI2^.pDevMode;
      if pDevMode = nil then
      begin
        BytesNeeded := DocumentProperties(0, hPrinter, PAnsiChar(APrinterName),
                                          TDeviceMode(nil^), TDeviceMode(nil^), 0);
        if BytesNeeded = 0 then begin ErrMsg := 'DocumentProperties len=0.'; Exit; end;

        GetMem(pDevMode, BytesNeeded);
        if DocumentProperties(0, hPrinter, PAnsiChar(APrinterName),
                              pDevMode^, pDevMode^, DM_OUT_BUFFER) < 0 then
        begin
          FreeMem(pDevMode);
          ErrMsg := 'DocumentProperties OUT falhou.';
          Exit;
        end;
        pPI2^.pDevMode := pDevMode;
      end;

      pPI2^.pDevMode^.dmFields := pPI2^.pDevMode^.dmFields or DM_DUPLEX;
      pPI2^.pDevMode^.dmDuplex := DMDUP_SIMPLEX;

      if DocumentProperties(0, hPrinter, PAnsiChar(APrinterName),
           pPI2^.pDevMode^, pPI2^.pDevMode^, DM_IN_BUFFER or DM_OUT_BUFFER) < 0 then
      begin
        ErrMsg := 'DocumentProperties IN/OUT falhou.';
        Exit;
      end;

      if not SetPrinterA(hPrinter, 2, pPI2, 0) then
      begin
        if GetLastError = ERROR_ACCESS_DENIED then
          ErrMsg := 'Acesso negado: execute o app elevado ou conceda "Gerenciar impressora" ao usuário.'
        else
          ErrMsg := 'SetPrinterA falhou: ' + SysErrorMessage(GetLastError);
        Exit;
      end;

      Result := True;
    finally
      FreeMem(pPI2);
    end;
  finally
    ClosePrinter(hPrinter);
  end;
end;

// -----------------------------------------------------------------------------
//  C) SumatraPDF: impressão direta silenciosa (usa DEVMODE já em simplex)
// -----------------------------------------------------------------------------
function PrintWithSumatra(const SumatraExe, PdfFile, PrinterName: string;
  Silent: Boolean; var ErrMsg: string): Boolean;
var
  Params: string;
begin
  result := False;
  ErrMsg := '';
  if not FileMustExist(SumatraExe, 'SumatraPDF', ErrMsg) then Exit;
  if not FileMustExist(PdfFile, 'Arquivo PDF', ErrMsg) then Exit;
  if Trim(PrinterName) = '' then
  begin
    ErrMsg := 'Nome da impressora não informado.';
    Exit;
  end;

  Params := '';
  if Silent then
    Params := '-silent ';
  Params := Params + '-print-to "' + PrinterName + '" "' + PdfFile + '"';

  Result := ExecShell(SumatraExe, Params, ErrMsg);
end;

// -----------------------------------------------------------------------------
//  D) Verb 'print' padrão (após ForcePrinterSimplex)
// -----------------------------------------------------------------------------
function PrintPdfSimplex_Default(const PdfFile: string; var ErrMsg: string): Boolean;
var
  Code: HINST;
begin
  result := False;
  ErrMsg := '';
  if not FileMustExist(PdfFile, 'Arquivo PDF', ErrMsg) then Exit;

  Code := ShellExecute(0, 'print', PAnsiChar(PdfFile), nil, nil, SW_HIDE);
  Result := Code > 32;
  if not Result then
    ErrMsg := Format('ShellExecute("print") falhou (%d).', [Code]);
end;

end.
