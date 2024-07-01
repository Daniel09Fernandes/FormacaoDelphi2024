unit Classe.Regra.Pessoa;

interface

uses
  ClassePessoa;

type
  TRegra = class end;

  // opcao 1: classe herdadda
  TPessoaRegra = class(TPessoa)
    public
    function ValidaCamposObrigatorios: string;
  end;

  //opcao 2: Wrapper
  TPessoaRegra2 = class(Tregra)
    private
      FPessoa: TPessoa;
    public
      function ValidaCamposObrigarios: string;
      property Pessoa: TPessoa read FPessoa write FPessoa;
  end;

implementation

{ TPessoaRegra }

function TPessoaRegra.ValidaCamposObrigatorios: string;
begin
  Result := '';

  If Id <= 0 then
  begin
    Result := Result + sLineBreak + 'Informe o "ID"';
  end;

  if Nome = '' then
  begin
    Result := Result + sLineBreak + 'Informe o "Nome"';
  end;

  if Idade <= 0 then
  begin
    Result := Result + sLineBreak + 'Informe a "Idade"';
  end;

end;

{ TPessoaRegra2 }

function TPessoaRegra2.ValidaCamposObrigarios: string;
begin
  Result := '';

  if FPessoa.Id <= 0 then
  begin
    Result := Result + sLineBreak + 'Informe o "ID"';
  end;

  if FPessoa.Nome = '' then
  begin
    Result := Result + sLineBreak + 'Informe o "Nome"';
  end;

  if FPessoa.Idade <= 0 then
  begin
    Result := Result + sLineBreak + 'Informe a "Idade"';
  end;

end;

end.
