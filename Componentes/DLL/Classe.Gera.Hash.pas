unit Classe.Gera.Hash;

interface

uses Form.Visualiza.Hash;

  function GeraHashArquivo(pNomeArq: pchar): PChar;
  function GetDLLVersion: Integer;

  procedure VisualizaHash(pHash: pChar);

  function GetTokenExecucao : Integer;
  procedure SetTokenExecucao(pVal: Integer);

  var
    TokenExecucao: Integer;

exports
  GetTokenExecucao,
  SetTokenExecucao,
  GeraHashArquivo,
  GetDLLVersion,
  VisualizaHash;

implementation

uses
  System.Hash, System.SysUtils;

function GeraHashArquivo(pNomeArq: pchar): PChar;
begin
  Result := Pchar(THashSHA1.GetHashStringFromFile(string(pNomeArq)));
end;

function GetDLLVersion: Integer;
begin
  Result := 123;
end;

procedure VisualizaHash(pHash: pChar);
begin
  TFormVisualizaHash.Executa(pHash);
end;

function GetTokenExecucao : Integer;
begin
  Result := TokenExecucao;
end;

procedure SetTokenExecucao(pVal: Integer);
begin
  TokenExecucao := pVal;
end;

end.
