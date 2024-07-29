unit Data.Relatorio.Simples_2024;

interface

uses
  System.SysUtils, System.Classes, frxSmartMemo, frCoreClasses, frxClass,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, frxDBSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmRelatorioSimples = class(TDataModule)
    frxReportExemploSimples: TfrxReport;
    frxReportListaSimples: TfrxReport;
    memCountry: TFDMemTable;
    frxDBDatasetCountry: TfrxDBDataset;
    frxReportMainDetail: TfrxReport;
    frxDBDatasetCustomer: TfrxDBDataset;
    dtsCountry: TDataSource;
    memCustomer: TFDMemTable;
    memCustomerCustNo: TFloatField;
    memCustomerCompany: TStringField;
    memCustomerAddr1: TStringField;
    memCustomerAddr2: TStringField;
    memCustomerCity: TStringField;
    memCustomerState: TStringField;
    memCustomerZip: TStringField;
    memCustomerCountry: TStringField;
    memCustomerPhone: TStringField;
    memCustomerFAX: TStringField;
    memCustomerTaxRate: TFloatField;
    memCustomerContact: TStringField;
    memCustomerLastInvoiceDate: TDateTimeField;
    frxReportGroupSimples: TfrxReport;
    memOrderIndexado: TFDMemTable;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    CurrencyField1: TCurrencyField;
    FloatField5: TFloatField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    frxDBOrderIndex: TfrxDBDataset;
    frxReportImagem: TfrxReport;
    frxDBDatasetCliComImg: TfrxDBDataset;
    memCliComImg: TFDMemTable;
    frxReportPedidosCliente: TfrxReport;
    memCliente: TFDMemTable;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    DateTimeField1: TDateTimeField;
    dtsMasterCustormer: TDataSource;
    memPedido: TFDMemTable;
    memPedidoOrderNo: TFloatField;
    memPedidoCustNo: TFloatField;
    memPedidoSaleDate: TDateTimeField;
    memPedidoShipDate: TDateTimeField;
    memPedidoEmpNo: TIntegerField;
    memPedidoShipToContact: TStringField;
    memPedidoShipToAddr1: TStringField;
    memPedidoShipToAddr2: TStringField;
    memPedidoShipToCity: TStringField;
    memPedidoShipToState: TStringField;
    memPedidoShipToZip: TStringField;
    memPedidoShipToCountry: TStringField;
    memPedidoShipToPhone: TStringField;
    memPedidoShipVIA: TStringField;
    memPedidoPO: TStringField;
    memPedidoTerms: TStringField;
    memPedidoPaymentMethod: TStringField;
    memPedidoItemsTotal: TCurrencyField;
    memPedidoTaxRate: TFloatField;
    memPedidoFreight: TCurrencyField;
    memPedidoAmountPaid: TCurrencyField;
    frxDBDatasetCliente: TfrxDBDataset;
    frxDBDatasetPedido: TfrxDBDataset;
    frxReportBioLifeWizard: TfrxReport;
    frxDBDatasetBioLife: TfrxDBDataset;
    memBioLife: TFDMemTable;
    frxReportPaginas: TfrxReport;
    memImg2: TFDMemTable;
    frxDBDatasetImg2: TfrxDBDataset;
    frxReportColunas: TfrxReport;
    frxReportModelo: TfrxReport;
    frxReportFilho: TfrxReport;
  private
    { Private declarations }
    FExecutouAjusteCustomers: Boolean;
  public
    { Public declarations }
    procedure AjustaDadosCustomers;
  end;

var
  dmRelatorioSimples: TdmRelatorioSimples;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRelatorioSimples }

procedure TdmRelatorioSimples.AjustaDadosCustomers;
begin
  if FExecutouAjusteCustomers then exit;

  memCustomer.IndexFieldNames := '';
  memCustomer.DisableControls;
  memCustomer.First;
  while not memCustomer.Eof do
  begin
    memCustomer.Edit;
    if memCustomerCountry.AsString = 'Venezuela' then
    begin
      memCustomerCountry.AsString := 'Brazil';
    end;

    if memCustomerCountry.AsString = 'Canada' then
    begin
      memCustomerCountry.AsString := 'Mexico';
    end;

    memCustomer.Post;

    memCustomer.Next;
  end;

  memCustomer.First;
  memCustomer.IndexFieldNames := 'Country';
  memCustomer.EnableControls;
  FExecutouAjusteCustomers := True;
end;

end.
