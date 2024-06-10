unit Data.Pedidos.Entity;

interface
type
 TPedidoEntity = class
   private
    FIDPedido: Integer;
    FIdCliente: Integer;
    FNomeCliente: String;
    FTotalPedido: Double;
   public
     property IdPedido: Integer read FIDPedido write FIDPedido;
     property IdCliente: Integer read FIdCliente write FIdCliente;
     property NomeCliente: String read FNomeCliente write FNomeCliente;
     property TotalPedido: Double read FTotalPedido write FTotalPedido;
 end;

 TItemPedidoEntity = class
   private
    FIdProduto: Integer;
    FIdItem: Integer;
    FIdPedido: Integer;
    FNomeProduto: String;
    FPreco: Double;
   public
    property IdProduto: Integer read FIdProduto write FIdProduto;
    property IdItem: Integer read FIdItem write FIdItem;
    property IdPedido: Integer read FIdPedido write FIdPedido;
    property NomeProduto: String read FNomeProduto write FNomeProduto;
    property Preco: Double read FPreco write FPreco;
 end;

implementation

end.
