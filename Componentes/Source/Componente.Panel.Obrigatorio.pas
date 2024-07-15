unit Componente.Panel.Obrigatorio;

interface

uses
  Vcl.ExtCtrls, System.SysUtils, System.Classes, Vcl.Controls, Vcl.Graphics,
  System.Generics.Collections, Data.DB, Vcl.DBCtrls;

type
  TEditConfig = class(TComponent)
  private
    FBevelInner: TBevelCut;
    FBevelOuter: TBevelCut;
    FBevelKind: TBevelKind;
    FBevelWidth: TBevelWidth;
    FColor: TColor;
  protected
   procedure PreencheProps(BevelInner: TBevelCut; BevelOuter: TBevelCut; BevelKind: TBevelKind; BevelWidth: TBevelWidth; Color: TColor);
  public
    constructor Create(AOwner: TDBEDit); reintroduce; overload;
  published
    property BevelInner: TBevelCut read FBevelInner write FBevelInner;
    property BevelOuter: TbevelCut read FBevelOuter write FBevelOuter;
    property BevelKind: TBevelKind read FBevelKind write FBevelKind;
    property BevelWidth: TBevelWidth read FBevelWidth write FBevelWidth;
    property Color: TColor read FColor write FColor;
  end;

  TMeuEvento = procedure (Sender: TObject) of object;

  TCustomPanelObrigatorio = class(TCustomPanel)
  const
    CAMPO_OBRIGATORIO = 'Campo %s obrigatorio';
  private
    FListaComps: TDictionary<TControl,TEditConfig>;
    FAtivo: Boolean;
    FDesenhaObrigatorios: Boolean;
    FMensagem: string;
    FDataSource: TDataSource;
    FConfigEditObrigatorio: TEditConfig;
    FOldBeforePost: TDatasetNotifyEvent;
    FMeuEvento: TMeuEvento;
    procedure SetDataSource(const Value: TDataSource);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    function GetMensagem: string;
    procedure OnBeforePostDts(DataSet: TDataSet);
  public
    function ValidaObrigatorios: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property OnMeuEvento: TMeuEvento read FMeuEvento write FMeuEvento;
  end;

  TPanelObrigatorio = class(TCustomPanelObrigatorio)
   published
    property Caption;
    property Align;
    property Ativo: Boolean read FAtivo write FAtivo default true;
    property DesenhaObrigatorios: Boolean read FDesenhaObrigatorios write FDesenhaObrigatorios;
    property ConfigEditObrigatorio: TEditConfig read FConfigEditObrigatorio write FConfigEditObrigatorio;
    property Mensagem: string read FMensagem write FMensagem;
    property Datasource: TDataSource read FDatasource write FDataSource;
    property OnMeuEvento;
  end;

implementation

{ TPanelObrigatorio }

constructor TCustomPanelObrigatorio.Create(AOwner: TComponent);
begin
  inherited;
// Nao funciona pois o caption alimentaco depois da criacao
//  Caption := '';
  FListaComps := TDictionary<TControl,TEditConfig>.Create;
  FAtivo := True;
  FDesenhaObrigatorios := True;

  FConfigEditObrigatorio := TEditConfig.Create(Self);
  FConfigEditObrigatorio.BevelInner := bvSpace;
  FConfigEditObrigatorio.FBevelOuter := bvRaised;
  FConfigEditObrigatorio.FBevelKind := bkTile;
  FConfigEditObrigatorio.FBevelWidth := 2;
  FConfigEditObrigatorio.Color := clRed;

  if not(csDesigning in ComponentState) then
  begin
    if Assigned(FMeuEvento) then
    begin
      FMeuEvento(Self);
    end;
  end;

end;

procedure TCustomPanelObrigatorio.CreateParams(var Params: TCreateParams);
begin
  inherited;

  ShowCaption := false;
  BevelOuter := bvNone;
  AlignWithMargins := True;

  if Assigned(FDataSource) then
  begin
    var dts: TDataSource := FDataSource;
    SetDataSource(nil);
    SetDataSource(dts);
  end;

end;

destructor TCustomPanelObrigatorio.Destroy;
begin
  FListaComps.Free;
  inherited;
end;

function TCustomPanelObrigatorio.GetMensagem: string;
begin
  Result := FMensagem;
  if Result = '' then
  begin
    Result := CAMPO_OBRIGATORIO;
  end;
end;

procedure TCustomPanelObrigatorio.OnBeforePostDts(DataSet: TDataSet);
begin
  if not FAtivo then
  begin
    if Assigned(FOldBeforePost) then
    begin
      FOldBeforePost(DataSet);
    end;

    Exit;
  end;

  var msgObrig: string := ValidaObrigatorios;
  var campoOk: Boolean := msgObrig = '';

  if campoOk then
  begin
    if Assigned(FOldBeforePost) then
    begin
      FOldBeforePost(DataSet);
    end;
  end
  else
  begin
    raise Exception.Create(msgObrig);
  end;

end;

procedure TCustomPanelObrigatorio.SetDataSource(const Value: TDataSource);
begin
  if FDataSource = Value then
  begin
    Exit;
  end;

  if Assigned(FOldBeforePost) then
  begin
    FDataSource.DataSet.BeforePost := FOldBeforePost;
    FOldBeforePost := nil;
  end;

  FDataSource := Value;

  if not (Assigned(FDataSource) and Assigned(FDataSource.DataSet))  then
  begin
    Exit;
  end;

  if not(csDesigning in ComponentState) then
  begin
    if Assigned(FDataSource.DataSet.BeforePost) then
    begin
      FOldBeforePost := FDataSource.DataSet.BeforePost;
    end;

    FDataSource.DataSet.BeforePost := OnBeforePostDts;
  end;
end;

function TCustomPanelObrigatorio.ValidaObrigatorios: string;
begin
  Result := '';
  if not Assigned(FDataSource) then
  begin
    Exit('DataSource nao informado!');
  end;

  if not Assigned(FDataSource.DataSet) then
  begin
    Exit('DataSet nao informado no DataSource');
  end;

  if FDataSource.DataSet.FieldCount <= 0 then
  begin
    Exit('DataSet sem fields informados');
  end;

  if not FDesenhaObrigatorios then
  begin
    Exit('Desativado o controle de campos obrigatorios');
  end;

  for var i:Integer := 0 to Self.ControlCount - 1 do
    begin
      if not(Self.Controls[i] is TDBEdit) then
      begin
        Continue;
      end;

      if not Assigned(TDBEdit(Self.Controls[i]).Field) then
      begin
        Continue;
      end;

      var dbE: TDBEdit := Self.Controls[i] as TDBEdit;

      if Self.Controls[i].GetTextLen = 0 then
      begin
        if dbE.Field.Required then
        begin
          if not FListaComps.ContainsKey(dbE) then
          begin
            FListaComps.Add(dbE,TEditConfig.Create(dbE));
          end;

          dbE.BevelInner := FConfigEditObrigatorio.BevelInner;
          dbE.BevelOuter := FConfigEditObrigatorio.BevelOuter;
          dbE.BevelKind := FConfigEditObrigatorio.BevelKind;
          dbE.BevelWidth := FConfigEditObrigatorio.BevelWidth;
          dbE.Color := FConfigEditObrigatorio.Color;

          Result := Result + sLineBreak + Format(GetMensagem,[dbE.Field.DisplayName]);
        end;
      end
      else
      begin
        dbE.BevelInner := FListaComps[dbE].BevelInner;
        dbE.BevelOuter := FListaComps[dbE].BevelOuter;
        dbE.BevelKind := FListaComps[dbE].BevelKind;
        dbE.BevelWidth := FListaComps[dbE].BevelWidth;
        dbE.Color := FListaComps[dbE].Color;
      end;


    end;
end;

{ TEditConfig }

constructor TEditConfig.Create(AOwner: TDBEDit);
begin
  inherited Create(AOwner);
  PreencheProps(AOwner.BevelInner, AOwner.BevelOuter, Aowner.BevelKind, AOwner.BevelWidth, AOwner.Color);
end;

procedure TEditConfig.PreencheProps(BevelInner, BevelOuter: TBevelCut;
  BevelKind: TBevelKind; BevelWidth: TBevelWidth; Color: TColor);
begin
  FBevelInner := BevelInner;
  FBevelOuter := BevelOuter;
  FBevelKind :=  BevelKind;
  FBevelWidth := BevelWidth;
  FColor := Color;
end;

end.
