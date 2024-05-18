unit uPessoa.Model;

interface
  uses strUtils, sysUtils, Vcl.Dialogs;

type
  TPessoa = class
    protected
      FNome: string;
      FAltura : double;
      function getNome: string; virtual;
    Strict private
      procedure SetNome(const Value: string);
    public
      Property Nome: string read getNome write SetNome;
      constructor Create();  virtual;
  end;

  TPessoaFisicaAmiga = class
    private

    public
       constructor Create;
  end;

implementation

{ TPessoa }
{$Region 'Classe TPessoa'  }
constructor TPessoa.Create;
begin
   ShowMessage('Eu sou a classe pai');
end;

function TPessoa.getNome: string;
begin
  Result := 'Olá meu nome é: ' +FNome;
end;

procedure TPessoa.SetNome(const Value: string);
begin
   if Value.Trim.IsEmpty then
     raise Exception.Create('Informar um nome valido');

   FNome :=  Value;
end;

{$endRegion}

{ TPessoaFisica }

constructor TPessoaFisicaAmiga.Create;
begin
  inherited;
  var Pessoa := TPessoa.Create;

  var Nome := Pessoa.FNome;
  Pessoa.Free;
  //var AcessoGetIndevido := Pessoa.GetNome(''); //Não acessa por causa do strict;
end;

end.
