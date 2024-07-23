unit Classe.OpenAI.Image;

interface

type
  TOpenAIItem = class
  private
    FImage: string;
  public
    property Image: string read FImage write FImage;
  end;

  TOpenAI = class
  private
    FStatus: string;
    FItems: TArray<TOpenAIItem>;
  public
    property Status: String read FStatus write FStatus;
    property Items: TArray<TOpenAIItem> read FItems;
  end;

  TOpenAIRoot = class
  private
    FOpenAI: TOpenAI;
    FdeepAI: TopenAI;
    FAmazon: TOpenAI;
  public
    property OpenAI: TOpenAI read FOpenAI write FOpenAI;
    property deepAI: TOpenAI read FdeepAI write FdeepAI;
    property amazon:  TOpenAI read FAmazon write FAmazon;
  end;

implementation

end.
