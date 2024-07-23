unit Classe.Registro.Card.Viewer;

interface

uses
  System.SysUtils, System.Classes, Classe.Card.Viewer, Classe.Editor.Propriedade.CardViewer, DesignIntf;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Turma2024', [TCardViewer]);
  RegisterComponentEditor(TCardViewer, TEditorMenu);
  RegisterPropertyEditor(TypeInfo(string),TCardViewer,'Sobre',TFileNameProperty);
//  RegisterPropertyEditor(TypeInfo(string),TCardViewer,'Sobre',TShowAbout);
end;

end.
