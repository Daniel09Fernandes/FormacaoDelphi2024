program TestaComponentes;

uses
  Vcl.Forms,
  FormTestaComponentes in 'FormTestaComponentes.pas' {FormComps};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormComps, FormComps);
  Application.Run;
end.
