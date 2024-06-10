program prjRTTIClassAtrib;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  TypInfo,
  RTTI;

Type
    TTabela = class(TCustomAttribute)
      private
       FValue: string;
      public
       constructor Create(const value: string);
       property Value: String read FValue;
    end;

    TField = class(TCustomAttribute)
      private
       FValue: string;
      public
       constructor Create(const value: string);
       property Value: String read FValue;
    end;

   [TTabela('PRODUTOS')]
   TProduto = class
   private
     FCodigo : string;
   public
     [TField('CODIGO')]
     property Codigo: string read FCodigo;
   end;

{ TMyAtrribute }

constructor TTabela.Create(const value: string);
begin
  inherited create;
  FValue := value;
end;

{ TField }

constructor TField.Create(const value: string);
begin
  inherited create;
  FValue := value;
end;

begin
  try
    var RttiContext : TRttiContext;
    var RttiType: TRttiType;
    var Propriedade: TRttiProperty;
    var Attribute,
        AttributePrpo : TCustomAttribute;

    RttiContext := TRttiContext.Create;
    try
      RttiType := RttiContext.GetType(TProduto);

      for Attribute in RttiType.GetAttributes do
        Writeln('Class Atribute: '+ TTabela(Attribute).Value);

     for Propriedade in RttiType.GetProperties do
       for AttributePrpo in Propriedade.GetAttributes do
       begin
        // Writeln('Atribute: '+ TMyAtrribute(AttributePrpo).Value);
         if AttributePrpo is TField then
         begin
           //Exemplo de passagem de valor de um cds para um classe, usando rtti
//           if cds.fields[i].fieldName = TField(AttributePrpo).Value then
//             Propriedade.setValue(obj, cds.fields[i].value );

          Writeln('Property Atribute: '+ Propriedade.Name + ': ' + TField(AttributePrpo).Value);
         end;
       end;
      readln;
    finally
      RttiContext.Free;
    end;
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
