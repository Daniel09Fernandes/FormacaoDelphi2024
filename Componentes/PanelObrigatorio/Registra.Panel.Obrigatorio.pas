unit Registra.Panel.Obrigatorio;

interface

procedure Register;

implementation

uses System.Classes, Componente.Panel.Obrigatorio;

procedure Register;
begin
  RegisterComponents('Turma2024',[TPanelObrigatorio]);
end;

end.
