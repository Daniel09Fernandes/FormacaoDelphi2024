program OOConceitos;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {Form1},
  Classe.Base in 'Classe.Base.pas',
  Classe.Pessoa in 'Classe.Pessoa.pas',
  IBase in 'IBase.pas',
  TesteEscopoVisibilidade in 'TesteEscopoVisibilidade.pas' {FormTesteEscopoVisibilidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormTesteEscopoVisibilidade, FormTesteEscopoVisibilidade);
  Application.Run;
end.
