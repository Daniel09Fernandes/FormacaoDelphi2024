unit uThreadExcept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, system.Generics.Collections,
  Vcl.ExtCtrls;

type
  TFrThreadsExcept = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FListaErrosThread: TDictionary<string, integer>;
  public
    { Public declarations }
  end;

var
  FrThreadsExcept: TFrThreadsExcept;

implementation

{$R *.dfm}

procedure TFrThreadsExcept.Button1Click(Sender: TObject);
begin
  var S := 'r';
  try
    strToInt(s);
  except
    On E: Exception do
    begin
      ShowMessage('Erro ' + sLineBreak +E.Message);
    end;
  end;
end;

procedure TFrThreadsExcept.Button2Click(Sender: TObject);
begin
   for var I := 0 to 10 do
   begin
     TThread.CreateAnonymousThread(
       procedure
       begin
           TThread.NameThreadForDebugging('Testes de exception thread');
           try
             {Nunca utilize desta forma em threads, para não engolir os erros}
//               try
//                 raise Exception.Create('Error Message');
//               except
//
//               end;
              var ALetras := ['A','N','R','G','E','U'];
              var Erros := ALetras[Random(5)]+
                           ALetras[Random(5)]+
                           ALetras[Random(5)]+
                           ALetras[Random(5)];

              raise Exception.Create(Erros);

           Except
             On E: Exception do
             begin
               TThread.Synchronize(nil,
                 procedure
                 begin
                   if FListaErrosThread.ContainsKey(E.Message) then
                     FListaErrosThread[E.Message] := FListaErrosThread[E.Message] + 1
                   else
                     FListaErrosThread.Add(E.Message,1);
                 end)
             end;
           end;
       end).Start;
   end;
end;

procedure TFrThreadsExcept.FormCreate(Sender: TObject);
begin
  TThread.NameThreadForDebugging('Main');
  FListaErrosThread := TDictionary<string, integer>.Create;
end;

procedure TFrThreadsExcept.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FListaErrosThread);
end;

procedure TFrThreadsExcept.Timer1Timer(Sender: TObject);
begin
   if Memo1.Lines.Count <> FListaErrosThread.Count  then
   begin
     memo1.Lines.Clear;

     for var Key in FListaErrosThread.keys do
     begin
       Memo1.Lines.Add('Erro: '+ Key + ' -- N° Ocorrencias: ' + FListaErrosThread.Items[key].ToString);
     end;
   end;
end;

end.
