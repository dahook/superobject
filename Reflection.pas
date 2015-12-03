unit Reflection;

interface

uses
  System.Rtti,
  System.Generics.Collections;

type
  TReflection = class helper for TRttiMember
  public
    function GetCustomAttribute<T: TCustomAttribute>: TCustomAttribute;
  end;


implementation

{ TReflection }

function TReflection.GetCustomAttribute<T>: TCustomAttribute;
var
  Attr: TCustomAttribute;
begin
  Result := nil;
  for Attr in Self.GetAttributes do
    if Attr is T then
    begin
      Result := Attr;
      Break;
    end;
end;

end.
