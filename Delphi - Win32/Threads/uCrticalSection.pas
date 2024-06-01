unit uCrticalSection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, system.SyncObjs, system.Generics.Collections,
  Vcl.ExtCtrls;

type
  TMinhaThread = class(TThread)
    private
    FInicio, FFim:integer;
    FProcAddSync: TProc<integer>;
    //Assinatura da TProc dessa forma TProc<integer>
    //Está pronta para receber uma procedure equivalente a:
         // procedure ExecutaAlgo(AParam: integer);

    procedure GerarNumerosPrimos;
   protected
     procedure Execute; override;
   public
     constructor Create(AInicio, AFim:Integer;  AProcAddSync: TProc<integer>);
     destructor Destroy; override;
  end;


  TFrCritical = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FCriticalSection:  TCriticalSection;
    class var FlistaNumPrimos: TList<integer>;
    class function GetPrimeNumber: TList<Integer>; static;
    class procedure SetPrimeNumber(const Value: TList<Integer>); static;
  public
    class property ListaNumPrimos: TList<Integer> read GetPrimeNumber write SetPrimeNumber;
  end;

var
  FrCritical: TFrCritical;

implementation

{$R *.dfm}

{ TMinhaThread }

constructor TMinhaThread.Create(AInicio, AFim: Integer; AProcAddSync: TProc<integer>);
begin
  inherited Create(false);

  FInicio := AInicio;
  FFim    := AFim;
  FProcAddSync := AProcAddSync;
end;

destructor TMinhaThread.Destroy;
begin

  inherited;
end;

procedure TMinhaThread.Execute;
begin
  GerarNumerosPrimos;
end;

procedure TMinhaThread.GerarNumerosPrimos;
var isPrime: Boolean;
begin
    for var I := FInicio to FFim do
    begin
      isPrime := true;
      sleep(10);

      for var J := 2 to i -1 do
      begin
        if I mod J = 0 then
        begin
          isPrime := false;
          break;
        end;
      end;

      if isPrime then
      begin
        if Assigned(FProcAddSync) then
           FProcAddSync(I);
      end;
    end;
end;

{ TForm1 }

procedure TFrCritical.Button1Click(Sender: TObject);
begin
  var Proc: TProc<Integer>;

  proc :=
    procedure(NumPrimo: integer)
    begin
      FCriticalSection.Acquire;
      try
        {Região segura, protegida pelo Critical Section}
          ListaNumPrimos.add(NumPrimo);
      finally
       FCriticalSection.Leave;
      end;
    end;

    TMinhaThread.Create(1  ,100, proc);
    TMinhaThread.Create(101,200, proc);
    TMinhaThread.Create(201,300, proc);
    TMinhaThread.Create(301,400, proc);
end;

procedure TFrCritical.FormCreate(Sender: TObject);
begin
  FCriticalSection := TCriticalSection.Create;
end;

procedure TFrCritical.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCriticalSection);
  FreeAndNil(FlistaNumPrimos);
end;

class function TFrCritical.GetPrimeNumber: TList<Integer>;
begin
  //Singleton patterns
  if not Assigned(FlistaNumPrimos) then
    FlistaNumPrimos := TList<integer>.Create;

  Result := FlistaNumPrimos;
end;

class procedure TFrCritical.SetPrimeNumber(const Value: TList<Integer>);
begin
//   FlistaNumPrimos.Add(value);
end;

procedure TFrCritical.Timer1Timer(Sender: TObject);
begin
   if Memo1.Lines.Count <> ListaNumPrimos.Count  then
   begin
     memo1.Lines.Clear;
     for var I := 0 to ListaNumPrimos.count -1 do
     begin
       Memo1.Lines.Add(ListaNumPrimos.Items[i].ToString);
     end;

   end;
end;

end.
