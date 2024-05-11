unit uCachorro.Classes;

interface
uses uAnimais.Interfaces;
  type
    ITeste = interface
      ['{06995619-569E-43FE-A505-FEE03B5CD777}']
    end;

    TCachorro = class(TInterfacedObject, IMamiferos, ITeste, IAnimalTipos)
    private
      FTipo: EnumTipo;
      FHabitat: string;
    public
      procedure Alimentar;
      procedure Mover;
      function  Reproduzir: string;
      procedure Dormir;
      procedure SetTipo(ATipo: EnumTipo);
      procedure Mamar;
      procedure SetHabitats(AHabitat :string);
      procedure EmitirSons;

      function getTipo:EnumTipo;
    end;


implementation

{ TCachorro }
uses uMessage.padrao, StrUtils, sysUtils;

procedure TCachorro.Alimentar;
begin
  TMessage.ShowMessage('Cachorro Alimentado');
end;

procedure TCachorro.Dormir;
begin
  TMessage.ShowMessage('Cachorro Dormindo');
end;

procedure TCachorro.EmitirSons;
begin
  TMessage.ShowMessage('Auu Auuu Auuu Auu Auuu Auuu');
end;

function TCachorro.getTipo: EnumTipo;
begin
  Result := FTipo;
end;

procedure TCachorro.Mamar;
begin
  Alimentar;
end;

procedure TCachorro.Mover;
begin
  TMessage.ShowMessage('Cachorro Correndo atras de moto');
end;

function TCachorro.Reproduzir: string;
begin
  Result := 'O Cachorro acabou de ter '+ Random(5).toString+ ' filhotes';
end;

procedure TCachorro.SetHabitats(AHabitat: string);
begin
  FHabitat := AHabitat;
end;

procedure TCachorro.SetTipo(ATipo: EnumTipo);
begin
   FTipo := ATipo;
end;

end.
