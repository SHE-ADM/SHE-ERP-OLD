unit MemoryUtils;

interface

uses
  Windows;

type
  DWORDLONG = Int64;

  TMemoryStatusEx = packed record
    dwLength: DWORD;
    dwMemoryLoad: DWORD;
    ullTotalPhys: DWORDLONG;
    ullAvailPhys: DWORDLONG;
    ullTotalPageFile: DWORDLONG;
    ullAvailPageFile: DWORDLONG;
    ullTotalVirtual: DWORDLONG;
    ullAvailVirtual: DWORDLONG;
    ullAvailExtendedVirtual: DWORDLONG;
  end;

function GlobalMemoryStatusEx(var lpBuffer: TMemoryStatusEx): BOOL; stdcall;
function BytesToMB(const i: DWORDLONG): DWORD;

implementation

function GlobalMemoryStatusEx(var lpBuffer: TMemoryStatusEx): BOOL; stdcall;
type
  TFNGlobalMemoryStatusEx = function(var msx: TMemoryStatusEx): BOOL; stdcall;
var
  FNGlobalMemoryStatusEx: TFNGlobalMemoryStatusEx;
begin
  FNGlobalMemoryStatusEx := TFNGlobalMemoryStatusEx(
    GetProcAddress(GetModuleHandle('kernel32.dll'), 'GlobalMemoryStatusEx'));
  if Assigned(FNGlobalMemoryStatusEx) then
    Result := FNGlobalMemoryStatusEx(lpBuffer)
  else
  begin
    SetLastError(ERROR_CALL_NOT_IMPLEMENTED);
    Result := False;
  end;
end;

function BytesToMB(const i: DWORDLONG): DWORD;
begin
  Result := i shr 20;
end;

end.
