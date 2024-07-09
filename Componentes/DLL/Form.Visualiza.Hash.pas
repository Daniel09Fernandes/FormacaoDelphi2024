unit Form.Visualiza.Hash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormVisualizaHash = class(TForm)
    StaticText1: TStaticText;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetHash(pHash: string);
    class procedure Executa(pHash: string);
  end;

//var
//  FormVisualizaHash: TFormVisualizaHash;

implementation

{$R *.dfm}

procedure TFormVisualizaHash.Button1Click(Sender: TObject);
begin
  Close;
end;

class procedure TFormVisualizaHash.Executa(pHash: string);
begin
  var lfrm: TFormVisualizaHash := TFormVisualizaHash.Create(nil);

  lfrm.SetHash(pHash);
  lfrm.ShowModal;

  lfrm.Free;
end;

procedure TFormVisualizaHash.SetHash(pHash: string);
begin
  StaticText1.Caption := pHash;
end;

initialization
  RegisterClass(TFormVisualizaHash);

finalization
  UnRegisterClass(TFormVisualizaHash);

end.
