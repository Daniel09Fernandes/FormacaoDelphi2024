unit TesteEscopoVisibilidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormTesteEscopoVisibilidade = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    // METODOS, VARIAVEIS, PROPRIEDADES NAO ACESSIVEIS PARA OUTRAS UNITS, FORMS
    varPrivate: string;

  strict private
  // IGUAL AO PRIVATE, POREM NAO PODE SER ACESSADO POR CLASSES DESCENDENTES, MESMO QUE ESTEJA NA MESMA UNIT
    varStrictPrivate: string;

  protected
    // NAO ACESSIVEL PARA OUTRAS UNITS
    varProtected: string;

  strict protected
    // ACESSIVEL EM FORMS HERDADOS
    varStrictProtected: string;

  public
    { Public declarations }
    // ACESSIVEL PARA TODAS UNITS, FORMS E CLASSES
    varPublic: string;

  published
    // USADA PARA PUBLICAR PROPRIEDADES DO COMPONENTES
    property Propriedade: string read varProtected write varProtected;
  end;

  TFormHerdado = class(TFormTesteEscopoVisibilidade)
  public
    procedure TestaDeclaracoesEscopo;
  end;

  TClasseTeste = class
  public
    procedure TestaDeclaracoes;
  end;

var
  FormTesteEscopoVisibilidade: TFormTesteEscopoVisibilidade;

implementation

{$R *.dfm}

procedure TFormTesteEscopoVisibilidade.FormCreate(Sender: TObject);
begin
  varPrivate := '';
  varStrictPrivate := '';
  varPublic := '';
  varProtected := '';
  varStrictProtected := '';
  Propriedade := '';
end;

{ TFormHerdado }

procedure TFormHerdado.TestaDeclaracoesEscopo;
begin
  varPrivate := '';
  //varStrictPrivate := '';
  varPublic := '';
  varProtected := '';
  varStrictProtected := '';
  Propriedade := '';
end;

{ TClasseTeste }

procedure TClasseTeste.TestaDeclaracoes;
begin
  FormTesteEscopoVisibilidade.varPrivate := '';
  //FormTesteEscopoVisibilidade.varStrictPrivate := '';
  FormTesteEscopoVisibilidade.varPublic := '';
  FormTesteEscopoVisibilidade.varProtected := '';
  //FormTesteEscopoVisibilidade.varStrictProtected := '';
  FormTesteEscopoVisibilidade.Propriedade := '';
end;

end.
