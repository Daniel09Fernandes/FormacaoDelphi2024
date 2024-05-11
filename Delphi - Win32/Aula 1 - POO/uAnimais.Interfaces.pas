unit uAnimais.Interfaces;

interface

Type
  EnumTipo = (Carnivoro, Herbivero, Onivoros);

  IAnimal = interface
    ['{A1646D63-421C-401F-973D-C44062902430}']
    procedure Alimentar;
    procedure Mover;
    function  Reproduzir: string;
    procedure Dormir;
    procedure SetTipo(ATipo: EnumTipo);
  end;

  IAnimalTipos = Interface
    ['{436484EF-9ED0-4513-BFAD-FC066AB81A3F}']
    function getTipo:EnumTipo;
  End;

  IMamiferos = interface(IAnimal)
  ['{0511A18E-AD96-4A3F-AB03-461571DD207D}']

    procedure Mamar;
    procedure SetHabitats(AHabitat :string);
    procedure EmitirSons;
  end;

implementation

end.
