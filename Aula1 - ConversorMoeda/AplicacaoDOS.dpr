program AplicacaoDOS;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  uProcedural in 'Procedural\uProcedural.pas';

var
  ValorReal: string;
  OutputReal: Double;
begin
  try
    while True do
    begin
      try
        Writeln('Informe o valor em Real');
        Readln(ValorReal);

        if not TryStrToFloat(ValorReal,OutputReal) then
          raise Exception.Create('Não é possivel converter para float');

        Writeln('O Valor convertido é: ' + ConverterDolarParaReal(OutputReal).ToString);
      except
        on E: Exception do
        begin
          Writeln(E.Message);
        end;
      end;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
