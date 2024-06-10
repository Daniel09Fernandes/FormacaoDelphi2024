unit Principal.Controller;

interface
uses
  Data.Login.Controller, Data.Cliente.Controller, Data.Produto.Controller;

 type
  TPrincipalController = class
    private

    public
      class procedure AberTelaCliente;
      class procedure AberTelaProduto;
      class procedure AbreTelaLogin;
  end;

implementation

{ TPrincipalController }

class procedure TPrincipalController.AberTelaCliente;
begin
  var Controller := TClienteController.Create;
  try
     Controller.GetTelaCliente(nil);
  finally
     Controller.Free;
  end;
end;

class procedure TPrincipalController.AberTelaProduto;
begin
  var Controller := TProdutoController.Create;
  try
     Controller.GetTelaProduto(nil);
  finally
     Controller.Free;
  end;
end;

class procedure TPrincipalController.AbreTelaLogin;
begin
  TLoginController.GetTelaLogin(nil);
end;

end.
