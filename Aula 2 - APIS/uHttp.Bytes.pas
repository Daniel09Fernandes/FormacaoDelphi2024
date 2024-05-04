unit uHttp.Bytes;

interface
uses  System.Classes,WinApi.WinInet;
type
  THttpBytes = class
    private
    public
      class procedure GetBytes(const AUrlFoto: string; AImage: TStream);
  end;

implementation

{ THttpBytes }

class procedure THttpBytes.GetBytes(const AUrlFoto: string; AImage: TStream);
const
  BUFFER_SIZE = 1024*1024;
var
  lBuffer,
  lHiNet,
  lUrlOpen : Pointer;
  lBytesReaded: Cardinal;
begin

  lHiNet := InternetOpen('',INTERNET_OPEN_TYPE_PRECONFIG, NIL, NIL, 0);
  if Assigned(lHiNet) then
  try
    AImage.Position := 0;
    GetMem(lBuffer,BUFFER_SIZE);
    try
      lUrlOpen := InternetOpenUrl(lHiNet, PChar(AUrlFoto), nil, 0, INTERNET_FLAG_RELOAD,0);
      if Assigned(lUrlOpen) then
      begin
        repeat
          InternetReadFile(lUrlOpen, lBuffer, BUFFER_SIZE, lBytesReaded);
          if lBytesReaded > 0 then
            AImage.write(lBuffer^, lBytesReaded);
        until (lBytesReaded = 0);
      end;
    finally
      FreeMem(lBuffer);
    end;
  finally
    InternetCloseHandle(lHiNet);
  end;
end;

end.
