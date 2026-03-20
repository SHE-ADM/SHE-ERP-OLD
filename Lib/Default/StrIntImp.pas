unit StrIntImp;

interface

uses SysUtils, StrInt;
 
type
  TString = class(TInterfacedObject, IString)
  private
    FStr: PChar;
    { IString }
    function Str: PChar;
  public
    constructor Create(AString: string); overload;
    destructor Destroy; override;
  end;
 
implementation
 
{ TString }
//Myrella - 19/10/2011
//Este objeto TString foi criado para evitar o uso da unidade ShareMen, capaz de receber strings em DLLs
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

 