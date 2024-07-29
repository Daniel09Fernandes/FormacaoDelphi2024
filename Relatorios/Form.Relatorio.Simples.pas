unit Form.Relatorio.Simples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormRelatorioSimples = class(TForm)
    PanelControleRelatorio: TPanel;
    ButtonRelatorioSimples: TButton;
    ButtonListaSimples: TButton;
    PanelCountry: TPanel;
    DBGridCountry: TDBGrid;
    dtsCountry: TDataSource;
    PanelCustomer: TPanel;
    ButtonMainDetail: TButton;
    DBGridCustomer: TDBGrid;
    dtsCustomer: TDataSource;
    procedure ButtonRelatorioSimplesClick(Sender: TObject);
    procedure ButtonListaSimplesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonMainDetailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioSimples: TFormRelatorioSimples;

implementation

{$R *.dfm}

uses Data.Relatorio.Simples_2024;

procedure TFormRelatorioSimples.ButtonListaSimplesClick(Sender: TObject);
begin
 dmRelatorioSimples.frxReportListaSimples.ShowReport;
end;

procedure TFormRelatorioSimples.ButtonMainDetailClick(Sender: TObject);
begin
  dmRelatorioSimples.AjustaDadosCustomers;
  dmRelatorioSimples.frxReportMainDetail.ShowReport;
end;

procedure TFormRelatorioSimples.ButtonRelatorioSimplesClick(Sender: TObject);
begin
  dmRelatorioSimples.frxReportExemploSimples.ShowReport;
end;

procedure TFormRelatorioSimples.FormShow(Sender: TObject);
begin
  dmRelatorioSimples.memCountry.Open;
end;

end.
