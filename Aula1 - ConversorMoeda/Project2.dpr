program Project2;

uses
  System.StartUpCopy,
  FMX.Forms,
  uInterfGrafica in 'InterfaceGrafica\uInterfGrafica.pas' {Form2},
  uConversor in 'InterfaceGrafica\uConversor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
