program Mensagens;

uses
  Vcl.Forms,
  Form.Principal.Mensagens in 'Form.Principal.Mensagens.pas' {frmPrincipalMensagens},
  Form.Destino in 'Form.Destino.pas' {frmDestino};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipalMensagens, frmPrincipalMensagens);
  Application.CreateForm(TfrmDestino, frmDestino);
  Application.Run;
end.
