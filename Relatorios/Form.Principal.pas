unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  System.Actions, Vcl.ActnList, Vcl.CategoryButtons, frxGradient, frxClass,
  frxExportBaseDialog, frxExportImage;

type
  TFormPrincipal = class(TForm)
    SV: TSplitView;
    CategoryButtons1: TCategoryButtons;
    ActionListMenu: TActionList;
    ActionSimples: TAction;
    ImagePreview: TImage;
    ActionPreview: TAction;
    frxPNGExport1: TfrxPNGExport;
    frxJPEGExport1: TfrxJPEGExport;
    procedure ActionSimplesExecute(Sender: TObject);
    procedure ActionPreviewExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses Form.Relatorio.Simples, Data.Relatorio.Simples_2024;

procedure TFormPrincipal.ActionPreviewExecute(Sender: TObject);
begin
  dmRelatorioSimples.frxReportListaSimples.PrepareReport;

  frxPNGExport1.Monochrome := False;
  frxPNGExport1.CropImages := False;
  frxPNGExport1.Resolution := 96;
  frxPNGExport1.OpenAfterExport := False;
  frxPNGExport1.ShowProgress := False;

  frxPNGExport1.ShowDialog := False;
  frxPNGExport1.FileName :=
   'C:\Users\Gustavo Mena Barreto\OneDrive\Área de Trabalho\Relatorios\RelatorioModelos\TestePreview.png';

  dmRelatorioSimples.frxReportListaSimples.Export(frxPNGExport1);
  ImagePreview.Picture.LoadFromFile(
   'C:\Users\Gustavo Mena Barreto\OneDrive\Área de Trabalho\Relatorios\RelatorioModelos\TestePreview.1.png');
end;

procedure TFormPrincipal.ActionSimplesExecute(Sender: TObject);
begin
  FormRelatorioSimples.Show;
end;

end.
