unit uQRCode.Api;

interface
uses uHttp.Bytes , System.Classes,strUtils, sysUtils;
  type
    TQrCodeApi = class
      private
        Const URL_QRCODE_API = 'https://qrcode.tec-it.com/API/QRCode?data=[VALOR]&backcolor=%23ffffff&size=small&quietzone=1&errorcorrection=H';
      public
        class procedure GerarQrCode(AValor:string; AImg: TStream);
    end;

implementation

{ TQrCodeApi }

class procedure TQrCodeApi.GerarQrCode(AValor: string; AImg: TStream);
begin
  if AValor.Trim.IsEmpty then
    raise Exception.Create('Informe um valor, para gerar o QRCode!');

  var url:string := URL_QRCODE_API;
  THttpBytes.GetBytes(url.Replace('[VALOR]', AValor), AImg);
end;

end.
