program Cadastros;

uses
  Vcl.Forms,
  uCadastro.View in 'uCadastro.View.pas' {frHome},
  uPokemon.View in 'uPokemon.View.pas' {frPokemon},
  uPokemon.Model in 'uPokemon.Model.pas',
  uPokemon.API in 'uPokemon.API.pas' {$R *.res},
  Vcl.Themes,
  Vcl.Styles,
  uTema.conf in 'uTema.conf.pas',
  uHttp.Bytes in 'uHttp.Bytes.pas',
  uFrQRCode.View in 'uFrQRCode.View.pas' {frQrCode},
  uQRCode.Api in 'uQRCode.Api.pas',
  uPaises.Model in 'uPaises.Model.pas',
  uPaises.Api in 'uPaises.Api.pas',
  uFrPaises.View in 'uFrPaises.View.pas' {frPaises};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrHome, frHome);
  Application.Run;
end.
