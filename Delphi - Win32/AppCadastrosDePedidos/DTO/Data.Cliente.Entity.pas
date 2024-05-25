unit Data.Cliente.Entity;

interface
type
  TClienteEntity = class
    private
    FIdCliente: Integer;
    FNomeCliente: String;
    FEndereco: String;
    FDataCadastro: TDateTime;
    public
      property IdCliente: Integer read FIdCliente write FIdCliente;
      property NomeCliente: String read FNomeCliente write FNomeCliente;
      property Endereco: String read FEndereco write FEndereco;
      property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
  end;

implementation

end.
