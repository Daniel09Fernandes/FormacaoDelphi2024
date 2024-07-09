unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TGetVal = function: Integer; stdcall;
  TSetVal = procedure (pTkn: Integer); stdcall;
  TVisualizaHash = procedure (pHash: PChar); stdcall;

  function GeraHashArquivo(pNomeArq: Pchar): PChar; Stdcall;

type
  TForm1 = class(TForm)
    PanelHash: TPanel;
    ButtonDLLVar: TButton;
    ButtonVisualiza: TButton;
    MemoResult: TMemo;
    procedure ButtonDLLVarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonVisualizaClick(Sender: TObject);
  private
    { Private declarations }
    FDLL: THandle;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//modo estatico
function GetDLLVersion: Integer; External '..\DLL\Win32\Debug\Hash.dll' name 'GetDLLVersion' delayed;
function GeraHashArquivo; External 'C:\Users\Gustavo Mena Barreto\OneDrive\�rea de Trabalho\Componentes\DLL\Win32\Debug\Hash.dll' name 'GeraHashArquivo' delayed;

procedure TForm1.ButtonDLLVarClick(Sender: TObject);
//var
//  hDLL: HModule;
begin
//  hDLL := LoadLibrary('..\DLL\Win32\Debug\Hash.dll');

  try

    var getTkn: TGetVal := TGetVal(GetProcAddress(FDLL, 'GetTokenExecucao'));
    var setTkn: TSetVal := TSetval(GetProcAddress(FDLL, 'SetTokenExecucao'));

    if Assigned(getTkn) and Assigned(setTkn) then
    begin
      var i: Integer := getTkn();
      if i = 0 then
      begin
        i := GetTickCount;

        MemoResult.Lines.Insert(0, 'Gerado tkn: '+i.ToString);
        setTkn(i);
        MemoResult.Lines.Insert(0, 'Setado tkn: '+i.ToString);
      end
      else
      begin
        MemoResult.Lines.Insert(0, 'tkn: '+i.ToString);
      end;
    end;

  finally
  //  FreeLibrary(hDLL);
  end;

end;

procedure TForm1.ButtonVisualizaClick(Sender: TObject);
begin
  var vh: TVisualizaHash := TVisualizaHash(GetProcAddress(FDLL,'VisualizaHash'));

  if Assigned(vh) then
  begin
    vh(GeraHashArquivo(Pchar(ParamStr(0))));
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 // FDLL := LoadLibrary('..\DLL\Win32\Debug\Hash.dll');

  FDLL := LoadLibrary('C:\Users\Gustavo Mena Barreto\OneDrive\�rea de Trabalho\Componentes\DLL\Win32\Debug\Hash.dll');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeLibrary(FDLL);
end;

end.
