//
// Created by the DataSnap proxy generator.
// 29/06/2024 14:23:47
//

unit ClientClassesUnit1;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, ClassePessoa, Data.DBXJSONReflect;

type

  IDSRestCachedTPessoa = interface;
  IDSRestCachedTListaPessoa = interface;

  TServerMethods1Client = class(TDSAdminRestClient)
  private
    FDSServerModuleCreateCommand: TDSRestCommand;
    FDSServerModuleDestroyCommand: TDSRestCommand;
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FSetaRetornaPessoaCommand: TDSRestCommand;
    FSetaRetornaPessoaCommand_Cache: TDSRestCommand;
    FRetornaPessoaCommand: TDSRestCommand;
    FRetornaPessoaCommand_Cache: TDSRestCommand;
    FGetPessoaDBCommand: TDSRestCommand;
    FSetPessoaDBCommand: TDSRestCommand;
    FGetPessoaNativoCommand: TDSRestCommand;
    FGetPessoaNativoCommand_Cache: TDSRestCommand;
    FSetPessoaNativoCommand: TDSRestCommand;
    FGetPessoaNaoNativoCommand: TDSRestCommand;
    FSetPessoaNaoNativoCommand: TDSRestCommand;
    FGetlistaPessoaCommand: TDSRestCommand;
    FGetlistaPessoaCommand_Cache: TDSRestCommand;
    FGetListaPessoaGeralCommand: TDSRestCommand;
    FGetListaPessoaGeral2Command: TDSRestCommand;
    FGetThreadIDCommand: TDSRestCommand;
    FGetThreadsAtivasCommand: TDSRestCommand;
    FGetQtdMaxThreadsCommand: TDSRestCommand;
    FGetMetodoDemoradoCommand: TDSRestCommand;
    FGetLogCommand: TDSRestCommand;
    FAutenticaUsuarioCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function SetaRetornaPessoa(const ARequestFilter: string = ''): TPessoa;
    function SetaRetornaPessoa_Cache(const ARequestFilter: string = ''): IDSRestCachedTPessoa;
    function RetornaPessoa(const ARequestFilter: string = ''): TPessoa;
    function RetornaPessoa_Cache(const ARequestFilter: string = ''): IDSRestCachedTPessoa;
    function GetPessoaDB(const ARequestFilter: string = ''): string;
    function SetPessoaDB(dbPessoa: string; const ARequestFilter: string = ''): Boolean;
    function GetPessoaNativo(const ARequestFilter: string = ''): TPessoa;
    function GetPessoaNativo_Cache(const ARequestFilter: string = ''): IDSRestCachedTPessoa;
    function SetPessoaNativo(pes: TPessoa; const ARequestFilter: string = ''): Boolean;
    function GetPessoaNaoNativo(const ARequestFilter: string = ''): string;
    function SetPessoaNaoNativo(pessoa: string; const ARequestFilter: string = ''): Boolean;
    function GetlistaPessoa(Count: Integer; const ARequestFilter: string = ''): TListaPessoa;
    function GetlistaPessoa_Cache(Count: Integer; const ARequestFilter: string = ''): IDSRestCachedTListaPessoa;
    function GetListaPessoaGeral(Count: Integer; const ARequestFilter: string = ''): string;
    function GetListaPessoaGeral2(Count: Integer; const ARequestFilter: string = ''): string;
    function GetThreadID(const ARequestFilter: string = ''): Cardinal;
    function GetThreadsAtivas(const ARequestFilter: string = ''): Integer;
    function GetQtdMaxThreads(const ARequestFilter: string = ''): Integer;
    function GetMetodoDemorado(tempoemMS: Integer; const ARequestFilter: string = ''): Boolean;
    function GetLog(const ARequestFilter: string = ''): string;
    function AutenticaUsuario(senha: string; const ARequestFilter: string = ''): string;
  end;

  IDSRestCachedTPessoa = interface(IDSRestCachedObject<TPessoa>)
  end;

  TDSRestCachedTPessoa = class(TDSRestCachedObject<TPessoa>, IDSRestCachedTPessoa, IDSRestCachedCommand)
  end;
  IDSRestCachedTListaPessoa = interface(IDSRestCachedObject<TListaPessoa>)
  end;

  TDSRestCachedTListaPessoa = class(TDSRestCachedObject<TListaPessoa>, IDSRestCachedTListaPessoa, IDSRestCachedCommand)
  end;

const
  TServerMethods1_DSServerModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TServerMethods1_DSServerModuleDestroy: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TServerMethods1_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_SetaRetornaPessoa: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TPessoa')
  );

  TServerMethods1_SetaRetornaPessoa_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_RetornaPessoa: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TPessoa')
  );

  TServerMethods1_RetornaPessoa_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPessoaDB: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_SetPessoaDB: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'dbPessoa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPessoaNativo: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TPessoa')
  );

  TServerMethods1_GetPessoaNativo_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_SetPessoaNativo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'pes'; Direction: 1; DBXType: 37; TypeName: 'TPessoa'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPessoaNaoNativo: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_SetPessoaNaoNativo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'pessoa'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetlistaPessoa: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Count'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TListaPessoa')
  );

  TServerMethods1_GetlistaPessoa_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Count'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetListaPessoaGeral: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Count'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_GetListaPessoaGeral2: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Count'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_GetThreadID: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 13; TypeName: 'Cardinal')
  );

  TServerMethods1_GetThreadsAtivas: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 6; TypeName: 'Integer')
  );

  TServerMethods1_GetQtdMaxThreads: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 6; TypeName: 'Integer')
  );

  TServerMethods1_GetMetodoDemorado: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'tempoemMS'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetLog: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_AutenticaUsuario: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'senha'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

implementation

procedure TServerMethods1Client.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FConnection.CreateCommand;
    FDSServerModuleCreateCommand.RequestType := 'POST';
    FDSServerModuleCreateCommand.Text := 'TServerMethods1."DSServerModuleCreate"';
    FDSServerModuleCreateCommand.Prepare(TServerMethods1_DSServerModuleCreate);
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.Execute;
end;

procedure TServerMethods1Client.DSServerModuleDestroy(Sender: TObject);
begin
  if FDSServerModuleDestroyCommand = nil then
  begin
    FDSServerModuleDestroyCommand := FConnection.CreateCommand;
    FDSServerModuleDestroyCommand.RequestType := 'POST';
    FDSServerModuleDestroyCommand.Text := 'TServerMethods1."DSServerModuleDestroy"';
    FDSServerModuleDestroyCommand.Prepare(TServerMethods1_DSServerModuleDestroy);
  end;
  if not Assigned(Sender) then
    FDSServerModuleDestroyCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDSServerModuleDestroyCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleDestroyCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleDestroyCommand.Execute;
end;

function TServerMethods1Client.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare(TServerMethods1_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare(TServerMethods1_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.SetaRetornaPessoa(const ARequestFilter: string): TPessoa;
begin
  if FSetaRetornaPessoaCommand = nil then
  begin
    FSetaRetornaPessoaCommand := FConnection.CreateCommand;
    FSetaRetornaPessoaCommand.RequestType := 'GET';
    FSetaRetornaPessoaCommand.Text := 'TServerMethods1.SetaRetornaPessoa';
    FSetaRetornaPessoaCommand.Prepare(TServerMethods1_SetaRetornaPessoa);
  end;
  FSetaRetornaPessoaCommand.Execute(ARequestFilter);
  if not FSetaRetornaPessoaCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FSetaRetornaPessoaCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TPessoa(FUnMarshal.UnMarshal(FSetaRetornaPessoaCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FSetaRetornaPessoaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.SetaRetornaPessoa_Cache(const ARequestFilter: string): IDSRestCachedTPessoa;
begin
  if FSetaRetornaPessoaCommand_Cache = nil then
  begin
    FSetaRetornaPessoaCommand_Cache := FConnection.CreateCommand;
    FSetaRetornaPessoaCommand_Cache.RequestType := 'GET';
    FSetaRetornaPessoaCommand_Cache.Text := 'TServerMethods1.SetaRetornaPessoa';
    FSetaRetornaPessoaCommand_Cache.Prepare(TServerMethods1_SetaRetornaPessoa_Cache);
  end;
  FSetaRetornaPessoaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTPessoa.Create(FSetaRetornaPessoaCommand_Cache.Parameters[0].Value.GetString);
end;

function TServerMethods1Client.RetornaPessoa(const ARequestFilter: string): TPessoa;
begin
  if FRetornaPessoaCommand = nil then
  begin
    FRetornaPessoaCommand := FConnection.CreateCommand;
    FRetornaPessoaCommand.RequestType := 'GET';
    FRetornaPessoaCommand.Text := 'TServerMethods1.RetornaPessoa';
    FRetornaPessoaCommand.Prepare(TServerMethods1_RetornaPessoa);
  end;
  FRetornaPessoaCommand.Execute(ARequestFilter);
  if not FRetornaPessoaCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FRetornaPessoaCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TPessoa(FUnMarshal.UnMarshal(FRetornaPessoaCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FRetornaPessoaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.RetornaPessoa_Cache(const ARequestFilter: string): IDSRestCachedTPessoa;
begin
  if FRetornaPessoaCommand_Cache = nil then
  begin
    FRetornaPessoaCommand_Cache := FConnection.CreateCommand;
    FRetornaPessoaCommand_Cache.RequestType := 'GET';
    FRetornaPessoaCommand_Cache.Text := 'TServerMethods1.RetornaPessoa';
    FRetornaPessoaCommand_Cache.Prepare(TServerMethods1_RetornaPessoa_Cache);
  end;
  FRetornaPessoaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTPessoa.Create(FRetornaPessoaCommand_Cache.Parameters[0].Value.GetString);
end;

function TServerMethods1Client.GetPessoaDB(const ARequestFilter: string): string;
begin
  if FGetPessoaDBCommand = nil then
  begin
    FGetPessoaDBCommand := FConnection.CreateCommand;
    FGetPessoaDBCommand.RequestType := 'GET';
    FGetPessoaDBCommand.Text := 'TServerMethods1.GetPessoaDB';
    FGetPessoaDBCommand.Prepare(TServerMethods1_GetPessoaDB);
  end;
  FGetPessoaDBCommand.Execute(ARequestFilter);
  Result := FGetPessoaDBCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.SetPessoaDB(dbPessoa: string; const ARequestFilter: string): Boolean;
begin
  if FSetPessoaDBCommand = nil then
  begin
    FSetPessoaDBCommand := FConnection.CreateCommand;
    FSetPessoaDBCommand.RequestType := 'GET';
    FSetPessoaDBCommand.Text := 'TServerMethods1.SetPessoaDB';
    FSetPessoaDBCommand.Prepare(TServerMethods1_SetPessoaDB);
  end;
  FSetPessoaDBCommand.Parameters[0].Value.SetWideString(dbPessoa);
  FSetPessoaDBCommand.Execute(ARequestFilter);
  Result := FSetPessoaDBCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.GetPessoaNativo(const ARequestFilter: string): TPessoa;
begin
  if FGetPessoaNativoCommand = nil then
  begin
    FGetPessoaNativoCommand := FConnection.CreateCommand;
    FGetPessoaNativoCommand.RequestType := 'GET';
    FGetPessoaNativoCommand.Text := 'TServerMethods1.GetPessoaNativo';
    FGetPessoaNativoCommand.Prepare(TServerMethods1_GetPessoaNativo);
  end;
  FGetPessoaNativoCommand.Execute(ARequestFilter);
  if not FGetPessoaNativoCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPessoaNativoCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TPessoa(FUnMarshal.UnMarshal(FGetPessoaNativoCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPessoaNativoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPessoaNativo_Cache(const ARequestFilter: string): IDSRestCachedTPessoa;
begin
  if FGetPessoaNativoCommand_Cache = nil then
  begin
    FGetPessoaNativoCommand_Cache := FConnection.CreateCommand;
    FGetPessoaNativoCommand_Cache.RequestType := 'GET';
    FGetPessoaNativoCommand_Cache.Text := 'TServerMethods1.GetPessoaNativo';
    FGetPessoaNativoCommand_Cache.Prepare(TServerMethods1_GetPessoaNativo_Cache);
  end;
  FGetPessoaNativoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTPessoa.Create(FGetPessoaNativoCommand_Cache.Parameters[0].Value.GetString);
end;

function TServerMethods1Client.SetPessoaNativo(pes: TPessoa; const ARequestFilter: string): Boolean;
begin
  if FSetPessoaNativoCommand = nil then
  begin
    FSetPessoaNativoCommand := FConnection.CreateCommand;
    FSetPessoaNativoCommand.RequestType := 'POST';
    FSetPessoaNativoCommand.Text := 'TServerMethods1."SetPessoaNativo"';
    FSetPessoaNativoCommand.Prepare(TServerMethods1_SetPessoaNativo);
  end;
  if not Assigned(pes) then
    FSetPessoaNativoCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FSetPessoaNativoCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FSetPessoaNativoCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(pes), True);
      if FInstanceOwner then
        pes.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSetPessoaNativoCommand.Execute(ARequestFilter);
  Result := FSetPessoaNativoCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.GetPessoaNaoNativo(const ARequestFilter: string): string;
begin
  if FGetPessoaNaoNativoCommand = nil then
  begin
    FGetPessoaNaoNativoCommand := FConnection.CreateCommand;
    FGetPessoaNaoNativoCommand.RequestType := 'GET';
    FGetPessoaNaoNativoCommand.Text := 'TServerMethods1.GetPessoaNaoNativo';
    FGetPessoaNaoNativoCommand.Prepare(TServerMethods1_GetPessoaNaoNativo);
  end;
  FGetPessoaNaoNativoCommand.Execute(ARequestFilter);
  Result := FGetPessoaNaoNativoCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.SetPessoaNaoNativo(pessoa: string; const ARequestFilter: string): Boolean;
begin
  if FSetPessoaNaoNativoCommand = nil then
  begin
    FSetPessoaNaoNativoCommand := FConnection.CreateCommand;
    FSetPessoaNaoNativoCommand.RequestType := 'GET';
    FSetPessoaNaoNativoCommand.Text := 'TServerMethods1.SetPessoaNaoNativo';
    FSetPessoaNaoNativoCommand.Prepare(TServerMethods1_SetPessoaNaoNativo);
  end;
  FSetPessoaNaoNativoCommand.Parameters[0].Value.SetWideString(pessoa);
  FSetPessoaNaoNativoCommand.Execute(ARequestFilter);
  Result := FSetPessoaNaoNativoCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.GetlistaPessoa(Count: Integer; const ARequestFilter: string): TListaPessoa;
begin
  if FGetlistaPessoaCommand = nil then
  begin
    FGetlistaPessoaCommand := FConnection.CreateCommand;
    FGetlistaPessoaCommand.RequestType := 'GET';
    FGetlistaPessoaCommand.Text := 'TServerMethods1.GetlistaPessoa';
    FGetlistaPessoaCommand.Prepare(TServerMethods1_GetlistaPessoa);
  end;
  FGetlistaPessoaCommand.Parameters[0].Value.SetInt32(Count);
  FGetlistaPessoaCommand.Execute(ARequestFilter);
  if not FGetlistaPessoaCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetlistaPessoaCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TListaPessoa(FUnMarshal.UnMarshal(FGetlistaPessoaCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetlistaPessoaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetlistaPessoa_Cache(Count: Integer; const ARequestFilter: string): IDSRestCachedTListaPessoa;
begin
  if FGetlistaPessoaCommand_Cache = nil then
  begin
    FGetlistaPessoaCommand_Cache := FConnection.CreateCommand;
    FGetlistaPessoaCommand_Cache.RequestType := 'GET';
    FGetlistaPessoaCommand_Cache.Text := 'TServerMethods1.GetlistaPessoa';
    FGetlistaPessoaCommand_Cache.Prepare(TServerMethods1_GetlistaPessoa_Cache);
  end;
  FGetlistaPessoaCommand_Cache.Parameters[0].Value.SetInt32(Count);
  FGetlistaPessoaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTListaPessoa.Create(FGetlistaPessoaCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetListaPessoaGeral(Count: Integer; const ARequestFilter: string): string;
begin
  if FGetListaPessoaGeralCommand = nil then
  begin
    FGetListaPessoaGeralCommand := FConnection.CreateCommand;
    FGetListaPessoaGeralCommand.RequestType := 'GET';
    FGetListaPessoaGeralCommand.Text := 'TServerMethods1.GetListaPessoaGeral';
    FGetListaPessoaGeralCommand.Prepare(TServerMethods1_GetListaPessoaGeral);
  end;
  FGetListaPessoaGeralCommand.Parameters[0].Value.SetInt32(Count);
  FGetListaPessoaGeralCommand.Execute(ARequestFilter);
  Result := FGetListaPessoaGeralCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetListaPessoaGeral2(Count: Integer; const ARequestFilter: string): string;
begin
  if FGetListaPessoaGeral2Command = nil then
  begin
    FGetListaPessoaGeral2Command := FConnection.CreateCommand;
    FGetListaPessoaGeral2Command.RequestType := 'GET';
    FGetListaPessoaGeral2Command.Text := 'TServerMethods1.GetListaPessoaGeral2';
    FGetListaPessoaGeral2Command.Prepare(TServerMethods1_GetListaPessoaGeral2);
  end;
  FGetListaPessoaGeral2Command.Parameters[0].Value.SetInt32(Count);
  FGetListaPessoaGeral2Command.Execute(ARequestFilter);
  Result := FGetListaPessoaGeral2Command.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetThreadID(const ARequestFilter: string): Cardinal;
begin
  if FGetThreadIDCommand = nil then
  begin
    FGetThreadIDCommand := FConnection.CreateCommand;
    FGetThreadIDCommand.RequestType := 'GET';
    FGetThreadIDCommand.Text := 'TServerMethods1.GetThreadID';
    FGetThreadIDCommand.Prepare(TServerMethods1_GetThreadID);
  end;
  FGetThreadIDCommand.Execute(ARequestFilter);
  Result := FGetThreadIDCommand.Parameters[0].Value.GetInt64;
end;

function TServerMethods1Client.GetThreadsAtivas(const ARequestFilter: string): Integer;
begin
  if FGetThreadsAtivasCommand = nil then
  begin
    FGetThreadsAtivasCommand := FConnection.CreateCommand;
    FGetThreadsAtivasCommand.RequestType := 'GET';
    FGetThreadsAtivasCommand.Text := 'TServerMethods1.GetThreadsAtivas';
    FGetThreadsAtivasCommand.Prepare(TServerMethods1_GetThreadsAtivas);
  end;
  FGetThreadsAtivasCommand.Execute(ARequestFilter);
  Result := FGetThreadsAtivasCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethods1Client.GetQtdMaxThreads(const ARequestFilter: string): Integer;
begin
  if FGetQtdMaxThreadsCommand = nil then
  begin
    FGetQtdMaxThreadsCommand := FConnection.CreateCommand;
    FGetQtdMaxThreadsCommand.RequestType := 'GET';
    FGetQtdMaxThreadsCommand.Text := 'TServerMethods1.GetQtdMaxThreads';
    FGetQtdMaxThreadsCommand.Prepare(TServerMethods1_GetQtdMaxThreads);
  end;
  FGetQtdMaxThreadsCommand.Execute(ARequestFilter);
  Result := FGetQtdMaxThreadsCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethods1Client.GetMetodoDemorado(tempoemMS: Integer; const ARequestFilter: string): Boolean;
begin
  if FGetMetodoDemoradoCommand = nil then
  begin
    FGetMetodoDemoradoCommand := FConnection.CreateCommand;
    FGetMetodoDemoradoCommand.RequestType := 'GET';
    FGetMetodoDemoradoCommand.Text := 'TServerMethods1.GetMetodoDemorado';
    FGetMetodoDemoradoCommand.Prepare(TServerMethods1_GetMetodoDemorado);
  end;
  FGetMetodoDemoradoCommand.Parameters[0].Value.SetInt32(tempoemMS);
  FGetMetodoDemoradoCommand.Execute(ARequestFilter);
  Result := FGetMetodoDemoradoCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.GetLog(const ARequestFilter: string): string;
begin
  if FGetLogCommand = nil then
  begin
    FGetLogCommand := FConnection.CreateCommand;
    FGetLogCommand.RequestType := 'GET';
    FGetLogCommand.Text := 'TServerMethods1.GetLog';
    FGetLogCommand.Prepare(TServerMethods1_GetLog);
  end;
  FGetLogCommand.Execute(ARequestFilter);
  Result := FGetLogCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.AutenticaUsuario(senha: string; const ARequestFilter: string): string;
begin
  if FAutenticaUsuarioCommand = nil then
  begin
    FAutenticaUsuarioCommand := FConnection.CreateCommand;
    FAutenticaUsuarioCommand.RequestType := 'GET';
    FAutenticaUsuarioCommand.Text := 'TServerMethods1.AutenticaUsuario';
    FAutenticaUsuarioCommand.Prepare(TServerMethods1_AutenticaUsuario);
  end;
  FAutenticaUsuarioCommand.Parameters[0].Value.SetWideString(senha);
  FAutenticaUsuarioCommand.Execute(ARequestFilter);
  Result := FAutenticaUsuarioCommand.Parameters[1].Value.GetWideString;
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FDSServerModuleCreateCommand.Free;
  FDSServerModuleDestroyCommand.Free;
  FEchoStringCommand.Free;
  FReverseStringCommand.Free;
  FSetaRetornaPessoaCommand.Free;
  FSetaRetornaPessoaCommand_Cache.Free;
  FRetornaPessoaCommand.Free;
  FRetornaPessoaCommand_Cache.Free;
  FGetPessoaDBCommand.Free;
  FSetPessoaDBCommand.Free;
  FGetPessoaNativoCommand.Free;
  FGetPessoaNativoCommand_Cache.Free;
  FSetPessoaNativoCommand.Free;
  FGetPessoaNaoNativoCommand.Free;
  FSetPessoaNaoNativoCommand.Free;
  FGetlistaPessoaCommand.Free;
  FGetlistaPessoaCommand_Cache.Free;
  FGetListaPessoaGeralCommand.Free;
  FGetListaPessoaGeral2Command.Free;
  FGetThreadIDCommand.Free;
  FGetThreadsAtivasCommand.Free;
  FGetQtdMaxThreadsCommand.Free;
  FGetMetodoDemoradoCommand.Free;
  FGetLogCommand.Free;
  FAutenticaUsuarioCommand.Free;
  inherited;
end;

end.

