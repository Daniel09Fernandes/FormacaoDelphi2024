unit Registra.Classe.DBDateTimePicker;

interface

procedure register;

implementation

uses
  System.Classes, DesignIntf, Classe.DBDateTimePicker, Classe.Editor.Propriedade;

procedure register;
begin
  RegisterComponents('Turma2024', [TDBDateTimePicker]);
  RegisterComponentEditor(TDBDateTimePicker, TEditorMenu);
  RegisterPropertyEditor(TypeInfo(string), TDBDateTimePicker,'Sobre', TShowAbout);
end;

end.
