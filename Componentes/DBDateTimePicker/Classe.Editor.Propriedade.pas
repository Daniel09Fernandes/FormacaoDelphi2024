unit Classe.Editor.Propriedade;

interface

uses
  DesignEditors, DesignIntf, Vcl.Dialogs;

type
  //object inspector
  TShowAbout = class(TStringProperty)
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  end;

  // popup Menu da IDE
  TEditorMenu = class(TComponentEditor)
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

implementation

uses
  Form.Sobre;

{ TShowAbout }

procedure TShowAbout.Edit;
begin
  inherited;

  var lfrm: TfrmSobre := TfrmSobre.Create(nil);
  lfrm.ShowModal;
  lfrm.Free
end;

function TShowAbout.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

{ TEditorMenu }

procedure TEditorMenu.ExecuteVerb(Index: Integer);
var
  lFrm: TfrmSobre;
begin
  inherited;

  case Index of
    0:
    begin
      lFrm := TfrmSobre.Create(nil);
      lFrm.ShowModal;
      lFrm.Free;
    end;
  end;

end;

function TEditorMenu.GetVerb(Index: Integer): string;
begin
  case Index of
    0: Result := 'Sobre o DBDateTimePicker';
  end;
end;

function TEditorMenu.GetVerbCount: Integer;
begin
  Result := 1;
end;

end.
