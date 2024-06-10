unit uDllSoma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  ICalc = Interface
      ['{298FCB3A-6BDA-4E19-9601-C42A0012463C}']
      function Multiplicacao (a,b: integer): integer;
    End;

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
 var soma : function(a,b: integer):integer; stdcall;
 var calc : function():ICalc; stdcall;
 hdll: THandle;
begin
   hdll := LoadLibrary('prjDllCalc.dll');

   @soma := GetProcAddress(hDll,'Soma');
   @calc := GetProcAddress(hDll,'getCalc');

   ShowMessage(calc.Multiplicacao(1,2).ToString);

   if Assigned(soma) then
   begin
     ShowMessage(soma(1,2).ToString);
   end;

   FreeLibrary(hdll);
end;

end.
