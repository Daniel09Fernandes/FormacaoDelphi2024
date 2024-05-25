unit Data.Login.Model;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMLoginModel = class(TDataModule)
    FDQLogin: TFDQuery;
    FDQLoginCodUsuario: TIntegerField;
    FDQLoginNomeUsuario: TWideStringField;
    procedure FDQLoginBeforeOpen(DataSet: TDataSet);
    procedure FDQLoginAfterClose(DataSet: TDataSet);
  private
//    FConn: TFDConnection;
    FCodUsuario: Integer;
    FNomeUsuario: String;
  public
    Function  ValidarLogin(AUsuario, ASenha: string): Boolean;
//    property  Conexao : TFDConnection read FConn write FConn;
    Property  CodUsuario : Integer read FCodUsuario write FCodUsuario;
    Property  NomeUsuario : String read FNomeUsuario write FNomeUsuario;

    constructor Create(AOwner: TComponent); override;
  end;

var
  DMLoginModel: TDMLoginModel;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TDMLoginModel.Create(AOwner: TComponent);
begin
  inherited;
  if AOwner is TFDConnection then
    FDQLogin.Connection :=  TFDConnection(AOwner);
end;

procedure TDMLoginModel.FDQLoginAfterClose(DataSet: TDataSet);
begin
  FDQLogin.Connection.Connected := false;
end;

procedure TDMLoginModel.FDQLoginBeforeOpen(DataSet: TDataSet);
begin
  if not FDQLogin.Connection.Connected then
    FDQLogin.Connection.Connected := true;
end;

function TDMLoginModel.ValidarLogin(AUsuario, ASenha: string): Boolean;
begin
  FDQLogin.ParamByName('Usuario').AsString := AUsuario;
  FDQLogin.ParamByName('Senha').AsString   := ASenha;

  try
     FDQLogin.Open();
//     if FDQLogin.RecordCount > 0 then
//     begin
//       Result := true
//     end
//     else
//     begin
//      Result := false;
//     end;
     Result :=  (FDQLogin.RecordCount > 0);

     CodUsuario := FDQLoginCodUsuario.AsInteger;
     NomeUsuario := FDQLoginNomeUsuario.AsString;
  finally
    FDQLogin.Close;
  end;

end;

end.
