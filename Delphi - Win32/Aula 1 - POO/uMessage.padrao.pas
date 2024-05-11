unit uMessage.padrao;

interface

uses Windows;

  Type
    TMessage = class
     private

     public
       class procedure ShowMessage(AMsg:string);

    end;

implementation

uses
  Vcl.Forms;

{ TMessage }

class procedure TMessage.ShowMessage(AMsg: string);
begin
   Application.MessageBox(PChar(AMsg), 'Menssagem do sistema',MB_YESNOCANCEL);
end;

end.
