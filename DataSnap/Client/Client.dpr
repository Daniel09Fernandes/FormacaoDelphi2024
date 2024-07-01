program Client;

uses
  Vcl.Forms,
  FormPrincipalClient in 'FormPrincipalClient.pas' {Form3},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  ClassePessoa in '..\Server\ClassePessoa.pas',
  Pkg.Json.DTO in 'Pkg.Json.DTO.pas',
  RootUnit in 'RootUnit.pas',
  Classe.Helper.ZipFile in 'Classe.Helper.ZipFile.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
