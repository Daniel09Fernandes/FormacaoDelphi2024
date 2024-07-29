program Relatorios;

uses
  Vcl.Forms,
  Form.Principal in 'Form.Principal.pas' {FormPrincipal},
  Data.Relatorio.Simples_2024 in 'Data.Relatorio.Simples_2024.pas' {dmRelatorioSimples: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Form.Relatorio.Simples in 'Form.Relatorio.Simples.pas' {FormRelatorioSimples};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TdmRelatorioSimples, dmRelatorioSimples);
  Application.CreateForm(TFormRelatorioSimples, FormRelatorioSimples);
  Application.Run;
end.
