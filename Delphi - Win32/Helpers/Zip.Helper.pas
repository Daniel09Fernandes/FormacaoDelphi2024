unit Zip.Helper;

interface
uses  System.Zip, System.Classes, System.SysUtils;
 type

  TIminhaString = String;

  THelperString = record helper for TIminhaString
     Function GetMYName: string;
  end;

  TZipHelper = class helper for TZipFile
    class procedure Zippar(ArquivoSaida: string; ListaArquivos: TStrings);
    class procedure DesZippar(Dir: string);
    procedure CountFiles;
  end;

implementation

uses
  Vcl.Dialogs;

{ THelperString }

function THelperString.GetMYName: string;
begin
  Result := 'Daniel';
end;

{ TZipHelper }

procedure TZipHelper.CountFiles;
begin
  ShowMessage('Adicionados:  ' + self.FileCount.ToString + ' Registros');
end;

class procedure TZipHelper.DesZippar(Dir: string);
begin
  var zip := TZipFile.Create;
   try
     var saida: string := Dir+'\Files.zip';

     if not FileExists(saida) then
       raise Exception.Create('Arquivo n�o encontrado');

     zip.Open(saida, zmRead);
     zip.ExtractAll(Dir);
   finally
     Zip.Free;
   end;
end;

class procedure TZipHelper.Zippar(ArquivoSaida: string; ListaArquivos: TStrings);
begin
    var zip := TZipFile.Create;
   try
     var saida:string := ArquivoSaida+'\Files.zip';

     zip.Open(saida, zmWrite);

     for var i := 0 to ListaArquivos.Count -1 do
        zip.Add(ListaArquivos[i]);
   finally
     Zip.Free;
   end;
end;

end.
