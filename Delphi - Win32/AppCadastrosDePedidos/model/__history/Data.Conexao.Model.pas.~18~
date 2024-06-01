unit Data.Conexao.Model;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Comp.UI,
  {$IFDEF MSWINDOWS} FireDAC.VCLUI.Wait, FireDAC.FMXUI.Wait{$ELSE} FireDAC.FMXUI.Wait {$ENDIF} ;

type
  TUsuarioLogado = record
    CodUsuario: integer;
    NomeUsuario: string;
  end;


  TDmConexaoModel = class(TDataModule)
    FDConn: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleDestroy(Sender: TObject);
  private
    FUsuarioLogado: TUsuarioLogado;
    function getConexao: TFDConnection;
  public
    property Conexao: TFDConnection read getConexao;
    property UsuarioLogado: TUsuarioLogado read FUsuarioLogado write  FUsuarioLogado;
  end;

var
  DmConexaoModel: TDmConexaoModel;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDmConexaoModel.DataModuleDestroy(Sender: TObject);
begin
   DmConexaoModel.FDConn.Connected := false;
end;

function TDmConexaoModel.getConexao: TFDConnection;
begin
  Result := FDConn;
end;

end.
