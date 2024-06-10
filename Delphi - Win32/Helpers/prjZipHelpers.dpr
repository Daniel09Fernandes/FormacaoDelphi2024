program prjZipHelpers;

uses
  Vcl.Forms,
  uZip.form in 'uZip.form.pas' {Form2},
  Zip.Helper in 'Zip.Helper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
