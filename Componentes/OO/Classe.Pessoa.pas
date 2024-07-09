unit Classe.Pessoa;

interface

uses
  Classe.Base, WinAPi.Windows, Generics.Collections;

type
  TPessoa = class(TClasseBase)
  protected
    function GetNovoID: Int64; override; abstract;
  end;

  TPessoaFisica = class(TPessoa)
  public
    function GetNovoID: Int64; override;
  end;

  TFuncionario = class(TPessoa)

  end;

  TPessoaJuridica = class(TPessoa)
  private
    FFuncionarios: TArray<TFuncionario>;
    FRazaoSocial: string;
    FNomeFantasia: string;
    function GetNomeFantasia: string;
    procedure SetNomeFantasia(const Value: string);
    function GetFuncionarios(Index: Integer): TFuncionario;
    procedure SetFuncionarios(Index: Integer; const Value: TFuncionario);
  protected
    function GetNovoID: Int64; override;
  public
    property RazaoSocial: string read FRazaoSocial write FRazaoSocial;
    property NomeFantasia: string read GetNomeFantasia write SetNomeFantasia;
    property Funcionarios[index: Integer]: TFuncionario read GetFuncionarios write SetFuncionarios;

  end;

implementation

uses
  System.SysUtils;

{ TPessoaFisica }

function TPessoaFisica.GetNovoID: Int64;
begin
  Result := GetTickCount64;
end;

{ TPessoaJuridica }

function TPessoaJuridica.GetFuncionarios(Index: Integer): TFuncionario;
begin
  Result := FFuncionarios[Index];
end;

function TPessoaJuridica.GetNomeFantasia: string;
begin
  Result := FNomeFantasia;
end;

function TPessoaJuridica.GetNovoID: Int64;
begin
  Result := 0;
end;

procedure TPessoaJuridica.SetFuncionarios(Index: Integer;
  const Value: TFuncionario);
begin
   //Apenas exemplo, precisamos controlar o tamanho do array
   FFuncionarios[Index] := Value;
end;

procedure TPessoaJuridica.SetNomeFantasia(const Value: string);
begin
  if Pos('@', Value) > 0 then
  begin
    raise Exception.Create(' ''@'' - caracter invalido: '+Value);
  end;

  FNomeFantasia := Value;
end;

end.
