program POO;

uses
  Vcl.Forms,
  frPessoa.View in 'frPessoa.View.pas' {Form2},
  uPessoa.Model in 'uPessoa.Model.pas',
  uPessoa.Fisica.Model in 'uPessoa.Fisica.Model.pas',
  uCadastro.Padrao.Form in 'uCadastro.Padrao.Form.pas' {FrCadastroPadaro},
  uCadastro.Pessoa.Fisica in 'uCadastro.Pessoa.Fisica.pas' {FrCadastroPessoaFisica},
  uCadastro.Pessoa.Juridica in 'uCadastro.Pessoa.Juridica.pas' {frCadastroPessoaJuridica},
  uMessage.padrao in 'uMessage.padrao.pas',
  uAnimais.Interfaces in 'uAnimais.Interfaces.pas',
  uCachorro.Classes in 'uCachorro.Classes.pas',
  uLeao.Classes in 'uLeao.Classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
