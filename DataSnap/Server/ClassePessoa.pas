unit ClassePessoa;

interface

uses
  System.Generics.Collections;

type
  TPessoa = class;
  TListaPessoa = class(TObjectList<TPessoa>);

  TPessoa = class(TObject)
  private
    FNome: string;
    FId: Integer;
    FIdade: Integer;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Idade: Integer read FIdade write FIdade;
  published
    { published declarations }
  end;

implementation

end.
