unit Data.Pedidos.Controller;

interface
uses
  system.Generics.Collections,
  Data.Pedidos.Entity,
  Data.Pedidos.Model,
  Data.Conexao.Model,
  Data.Cliente.Controller,
  Data.Produto.Controller,
  Data.Produto.Entity,
  Data.Cliente.Entity,
  System.SysUtils;

type
   TPedidosController = class
     private
       FModel : TdmPedidoModel;
       FControllerCliente : TClienteController;
       FcontrollerProduto : TProdutoController;
     public
      Function BuscarCliente(): TList<TClienteEntity>;
      Function BuscarProduto(): TList<TProdutoEntity>;

      function BuscarPedidos: TList<TPedidoEntity>;
      function GravarPedidos(AModel: TPedidoEntity): TList<TPedidoEntity>;
      function BuscarItensPedidos: TList<TItemPedidoEntity>;
      function GravarItensPedidos(AModel: TItemPedidoEntity): TList<TItemPedidoEntity>;

      constructor Create();
      destructor Destroy; override;

      class procedure AbrirTelaPedidos;
   end;

implementation
uses Pedidos.Form.View;

{ TPedidosController }

class procedure TPedidosController.AbrirTelaPedidos;
begin
  var frPedidos :=TfrPedidos.Create(nil);
  try
    frPedidos.ShowModal;
  finally
    frPedidos.Free;
  end;
end;

function TPedidosController.BuscarCliente: TList<TClienteEntity>;
begin
  Result := FControllerCliente.BuscarCliente;
end;

function TPedidosController.BuscarItensPedidos: TList<TItemPedidoEntity>;
begin
  Result := FModel.BuscarItensPedidos;
end;

function TPedidosController.BuscarPedidos: TList<TPedidoEntity>;
begin
  Result := FModel.BuscarPedidos;
end;

function TPedidosController.BuscarProduto: TList<TProdutoEntity>;
begin
   Result := FcontrollerProduto.BuscarProduto;
end;

constructor TPedidosController.Create();
begin
   FModel  := TdmPedidoModel.Create(DmConexaoModel.Conexao);
   FControllerCliente := TClienteController.Create;
   FcontrollerProduto := TProdutoController.Create;
end;

destructor TPedidosController.Destroy;
begin
  FreeAndNil(FControllerCliente);
  FreeAndNil(FcontrollerProduto);
  FreeAndNil(FModel);
  inherited;
end;

function TPedidosController.GravarItensPedidos( AModel: TItemPedidoEntity): TList<TItemPedidoEntity>;
begin
  Result := FModel.GravarItensPedidos(AModel);
end;

function TPedidosController.GravarPedidos( AModel: TPedidoEntity): TList<TPedidoEntity>;
begin
  Result := FModel.GravarPedidos(AModel);
end;

end.
