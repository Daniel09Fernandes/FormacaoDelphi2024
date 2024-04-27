program InterfaceGrafica;

uses
  System.StartUpCopy,
  FMX.Forms,
  uInterfGrafica in 'InterfaceGrafica\uInterfGrafica.pas' {Form2},
  uConversor in 'InterfaceGrafica\uConversor.pas',
  uConversorGenerico in 'InterfaceGrafica\uConversorGenerico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
