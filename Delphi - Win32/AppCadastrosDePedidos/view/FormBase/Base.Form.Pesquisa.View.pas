unit Base.Form.Pesquisa.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.StdCtrls, FMX.Grid, FMX.ScrollBox,
  FMX.Controls.Presentation, FMX.Objects;

type
  TRecSelecao = record
    ID, IDX: Integer;
    Descricao: string;
  end;

  TfrPesquisa = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    ClCod: TStringColumn;
    clDesc: TStringColumn;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FSel: TRecSelecao;
    { Private declarations }
  public
   property Selecao: TRecSelecao read FSel;
  end;

var
  frPesquisa: TfrPesquisa;

implementation

{$R *.fmx}

procedure TfrPesquisa.Button1Click(Sender: TObject);
begin
  FSel.ID :=  StringGrid1.Cells[ClCod.Index,StringGrid1.Selected].ToInteger;
  FSel.IDX := StringGrid1.Selected;
  FSel.Descricao  :=  StringGrid1.Cells[clDesc.Index,StringGrid1.Selected];
  close;
end;

procedure TfrPesquisa.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
