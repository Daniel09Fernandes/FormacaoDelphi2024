unit Principal.Form.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Base.Form.View, FMX.Objects, FMX.Controls.Presentation, FMX.Menus,
  Winapi.Windows;

type
  TFrPrincipalView = class(TFrBase)
    MenuBar1: TMenuBar;
    miCadastros: TMenuItem;
    MainMenu1: TMainMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    pmCadastros: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Timer1: TTimer;
    CadPedido: TMenuItem;
    procedure miCadastrosClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure CadPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrincipalView: TFrPrincipalView;

implementation

{$R *.fmx}
 uses Principal.Controller;

procedure TFrPrincipalView.CadPedidoClick(Sender: TObject);
begin
  inherited;
  TPrincipalController .AbrirTelaPedidos;
end;

procedure TFrPrincipalView.MenuItem2Click(Sender: TObject);
begin
  inherited;
  TPrincipalController.AberTelaProduto;
end;

procedure TFrPrincipalView.MenuItem3Click(Sender: TObject);
begin
  inherited;
  TPrincipalController.AberTelaCliente;
end;

procedure TFrPrincipalView.MenuItem4Click(Sender: TObject);
begin
  inherited;
  TPrincipalController.AberTelaProduto;
end;

procedure TFrPrincipalView.MenuItem5Click(Sender: TObject);
begin
  inherited;
  TPrincipalController.AberTelaCliente;
end;

procedure TFrPrincipalView.miCadastrosClick(Sender: TObject);
begin
  inherited;
    var mouse : TPoint;
    GetCursorPos(mouse);
    pmCadastros.Popup(mouse.x, mouse.y);
end;

procedure TFrPrincipalView.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := false;
  {$ifdef Release}
    TPrincipalController.AbreTelaLogin;
  {$ENDIF}
end;

end.
