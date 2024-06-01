program Threads;

uses
  Vcl.Forms,
  uThread.Main in 'uThread.Main.pas' {FrThreads},
  uThreadExcept in 'uThreadExcept.pas' {FrThreadsExcept},
  uCrticalSection in 'uCrticalSection.pas' {FrCritical},
  uTask in 'uTask.pas' {FrTask};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  Application.CreateForm(TFrThreads, FrThreads);
//  Application.CreateForm(TFrThreadsExcept, FrThreadsExcept);
//  Application.CreateForm(TFrCritical, FrCritical);
  Application.CreateForm(TFrTask, FrTask);
  Application.Run;
end.
