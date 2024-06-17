unit uCaldDll;

interface

  Type
    ICalc = Interface
      ['{298FCB3A-6BDA-4E19-9601-C42A0012463C}']
      function Multiplicacao (a,b: integer): integer;
    End;

    TCalc = class(TInterfacedObject, ICalc)
       function Multiplicacao (a,b: integer): integer;
    end;

implementation

{ TCalc }

function TCalc.Multiplicacao(a, b: integer): integer;
begin
  Result := a * b;
end;

end.