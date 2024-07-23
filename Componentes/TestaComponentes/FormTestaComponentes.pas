unit FormTestaComponentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Componente.Panel.Obrigatorio, Classe.DBDateTimePicker, Classe.Card.Viewer,
  Vcl.Imaging.jpeg, vcl.imaging.pngimage;

type
  TFormComps = class(TForm)
    PageControl1: TPageControl;
    TabPanelObrig: TTabSheet;
    PanelControle: TPanel;
    DBNavigator1: TDBNavigator;
    PanelGrid: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    dtsPessoa: TDataSource;
    memPessoa: TFDMemTable;
    memPessoaID: TIntegerField;
    memPessoaNome: TStringField;
    memPessoaCPF: TStringField;
    ButtonValidaCampos: TButton;
    PanelObrigatorio1: TPanelObrigatorio;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateTimePicker1: TDBDateTimePicker;
    TabCardViewer: TTabSheet;
    EditPrompt: TEdit;
    procedure FormShow(Sender: TObject);
    procedure EditPromptKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCardViewerTeste: TCardViewer;
  public
    { Public declarations }
  end;

var
  FormComps: TFormComps;

implementation

{$R *.dfm}

procedure TFormComps.EditPromptKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FCardViewerTeste.GeraImagemAI(EditPrompt.Text);
  end;
end;

procedure TFormComps.FormShow(Sender: TObject);
begin
  //memPessoa.Active := True;

  FCardViewerTeste := TCardViewer.Create(Self);
  FCardViewerTeste.Parent := TabCardViewer;

  FCardViewerTeste.Proportional := False;
  FCardViewerTeste.Align := alClient;

//  FCardViewerTeste.PastaImagens := 'C:\Users\Gustavo Mena Barreto\OneDrive\햞ea de Trabalho\Componentes\Imagens\';

{  FCardViewerTeste.CarregaImagemPrincipal('C:\Users\Gustavo Mena Barreto\OneDrive\햞ea de Trabalho\Componentes\Imagens\queenLOGO.jpg');
  FCardViewerTeste.CarregaImagemEsquerda('C:\Users\Gustavo Mena Barreto\OneDrive\햞ea de Trabalho\Componentes\Imagens\metallica.jpeg');
  FCardViewerTeste.CarregaImagemDireita('C:\Users\Gustavo Mena Barreto\OneDrive\햞ea de Trabalho\Componentes\Imagens\beatles.jpg');
}
{
  //Outra forma de carregar imagens
  var png: TPngImage := TPngImage.Create;
  png.LoadFromFile('C:\Users\Gustavo Mena Barreto\OneDrive\햞ea de Trabalho\Componentes\Logo.png');
  FCardViewerTeste.ImagemEsquerda.Picture.Assign(png);

  var jpeg: TJpegImage := TJPEGImage.Create;
  jpeg.LoadFromFile('C:\Users\Gustavo Mena Barreto\OneDrive\햞ea de Trabalho\Componentes\Imagens\queenLOGO.jpg');
  FCardViewerTeste.ImagemDireita.Picture.Assign(jpeg);
}
end;

end.
