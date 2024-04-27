unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TServerMethods1 = class(TComponent)
  private
    function getMyName: string;
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function ConverteRealParaDolar(AReal: Double):Double;
    function ConverteDolarParaReal(ADolar: string):string;
  end;
{$METHODINFO OFF}

implementation


uses System.StrUtils, uConversorGenerico;

function TServerMethods1.ConverteDolarParaReal(ADolar: string): string;
begin
  var  Conversor := TConversorMoedaGenerico<String>.Create;
  try
    Result := Conversor.ConverterDolarParaReal(ADolar);
  finally
    FreeAndNil(Conversor);
  end;
end;

function TServerMethods1.ConverteRealParaDolar(AReal: Double): Double;
begin
   var Conversor := TConversorMoedaGenerico<double>.Create;
   try
      Result := Conversor.ConverterRealParaDolar(AReal);
   finally
      FreeAndNil(Conversor);
   end;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.getMyName: string;
begin
   Result := 'Daniel';
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;
end.

