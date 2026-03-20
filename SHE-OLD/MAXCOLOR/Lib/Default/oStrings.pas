unit oStrings;

interface

uses SysUtils;

type
  IString = interface(IUnknown)
    ['{6ADF6275-82C0-4290-8C8D-DFDAA2AA17CC}']
    function Str: PChar;
  end;

type
  TString = class(TInterfacedObject, IString)
  private
    FStr: PChar;
    { IString }
    function Str: PChar;
  public
    constructor Create(AString: string); overload;
    destructor  Destroy; override;
  end;

implementation
 
{ TString
  Este objeto TString foi criado para evitar o uso da unidade ShareMen, capaz de receber strings em DLLs }
constructor TString.Create(AString: string);
var
  Size: Integer;
begin
  inherited Create;
  Size := Length(AString) + 1;
  FStr := StrAlloc(Size);
  Move(Pointer(AString)^, FStr^, Size);
end;
 
destructor TString.Destroy;
begin
  StrDispose(FStr);
  inherited;
end;
 
function TString.Str: PChar;
begin
  Result := FStr;
end;
 
end.

 