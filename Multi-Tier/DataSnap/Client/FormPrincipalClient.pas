unit FormPrincipalClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.JSON, REST.JSON,
  REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Buttons, Vcl.DBCtrls, FireDAC.Stan.StorageXML,
  FireDAC.Stan.StorageJSON, Datasnap.DBClient;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    MemoJSON: TMemo;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MemoResultado: TMemo;
    Button6: TButton;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Button7: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DBGrid1: TDBGrid;
    dsRestDebugger: TDataSource;
    FDMemTable1block_hash: TWideStringField;
    FDMemTable1block_height: TFloatField;
    FDMemTable1block_index: TFloatField;
    FDMemTable1hash: TWideStringField;
    FDMemTable1addresses: TWideStringField;
    FDMemTable1total: TFloatField;
    FDMemTable1fees: TFloatField;
    FDMemTable1size: TFloatField;
    FDMemTable1vsize: TFloatField;
    FDMemTable1preference: TWideStringField;
    FDMemTable1confirmed: TDateTimeField;
    FDMemTable1received: TDateTimeField;
    FDMemTable1ver: TFloatField;
    FDMemTable1double_spend: TBooleanField;
    FDMemTable1vin_sz: TFloatField;
    FDMemTable1vout_sz: TFloatField;
    FDMemTable1confirmations: TFloatField;
    FDMemTable1confidence: TFloatField;
    FDMemTable1inputs: TWideStringField;
    FDMemTable1outputs: TWideStringField;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    memPessoa: TFDMemTable;
    dsPessoa: TDataSource;
    Panel9: TPanel;
    DBGrid3: TDBGrid;
    memDelta: TFDMemTable;
    dsDelta: TDataSource;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    DBGrid4: TDBGrid;
    Panel14: TPanel;
    Panel15: TPanel;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    memDeletados: TFDMemTable;
    dsDeletados: TDataSource;
    memIncluidos: TFDMemTable;
    memAlterados: TFDMemTable;
    dsIncluidos: TDataSource;
    dsAlterados: TDataSource;
    memPessoaId: TIntegerField;
    memPessoaNome: TStringField;
    memPessoaIdade: TIntegerField;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    TabSheet5: TTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Button13: TButton;
    Button14: TButton;
    MemoDataSnapNativoEnvio: TMemo;
    MemoDataSnapNativoRecebimento: TMemo;
    cdsPessoa: TClientDataSet;
    cdsDelta: TClientDataSet;
    cdsDeletados: TClientDataSet;
    cdsIncluidos: TClientDataSet;
    cdsAlterados: TClientDataSet;
    cdsPessoaId: TIntegerField;
    cdsPessoaNome: TStringField;
    cdsPessoaIdade: TIntegerField;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Button15: TButton;
    Button16: TButton;
    MemoDSNaoNativoEnvia: TMemo;
    MemoDSNaoNativoRecebe: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
    const
      DB_PESSOA = 'DB-Pessoa.json';
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses ClientModuleUnit1, ClassePessoa, RootUnit;

procedure TForm3.Button10Click(Sender: TObject);
begin
  memPessoa.SaveToFile(DB_PESSOA,sfJSON);
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
  var strStm: TStringStream := TStringStream.Create;
  memPessoa.SaveToStream(strStm,sfJSON);

  ClientModule1.ServerMethods1Client.SetPessoaDB(strStm.DataString);
  strStm.Free;
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
  var srtStm: TStringStream := TStringStream.Create(ClientModule1.ServerMethods1Client.GetPessoaDB);
  memPessoa.LoadFromStream(srtStm, sfJSON);
  srtStm.Free;
end;

procedure TForm3.Button13Click(Sender: TObject);
begin
  var pessoa: TPessoa := TJson.JsonToObject<TPessoa>(MemoDataSnapNativoEnvio.Text);
  ClientModule1.ServerMethods1Client.SetPessoaNativo(pessoa);
end;

procedure TForm3.Button14Click(Sender: TObject);
begin
  var pes: TPessoa := ClientModule1.ServerMethods1Client.GetPessoaNativo;
  MemoDataSnapNativoRecebimento.Lines.Add(pes.Id.ToString);
  MemoDataSnapNativoRecebimento.Lines.Add(pes.Nome);
  MemoDataSnapNativoRecebimento.Lines.Add(pes.Idade.ToString);

  //pes.free; servidor libera da memoria
end;

procedure TForm3.Button15Click(Sender: TObject);
begin
  var pes : TPessoa := TJson.JsonToObject<TPessoa>(MemoDSNaoNativoEnvia.Text);
  ClientModule1.ServerMethods1Client.SetPessoaNaoNativo(TJson.ObjectToJsonString(pes));

  pes.Free;
end;

procedure TForm3.Button16Click(Sender: TObject);
begin
  var pes: TPessoa := TJson.JsonToObject<TPessoa>(ClientModule1.ServerMethods1Client.GetPessoaNaoNativo);
  MemoDSNaoNativoRecebe.Lines.Add(pes.Id.ToString);
  MemoDSNaoNativoRecebe.Lines.Add(pes.Nome);
  MemoDSNaoNativoRecebe.Lines.Add(pes.Idade.ToString);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  var Pess := ClientModule1.ServerMethods1Client.SetaRetornaPessoa;

  Memo1.Lines.Clear;
  Memo1.Lines.Add(Pess.Id.ToString);
  Memo1.Lines.Add(Pess.Nome);
  Memo1.Lines.Add(Pess.Idade.ToString);

  //Nao precrisa, server libera da memoria
  // Pess.Free;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  var pessoa: TPessoa := TPessoa.Create;

  pessoa.Id := 1;
  pessoa.Nome := 'Daniel';
  Pessoa.Idade := 28;

  //System.JSON, REST.JSON
  var jsonStr: string := TJson.ObjectToJsonString(pessoa);

  MemoJSON.Lines.Add(jsonStr);

  Pessoa.Free;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  var pessoa: TPessoa := TJson.JsonToObject<TPessoa>(MemoJSON.Text);

  MemoJSON.Lines.Add(pessoa.Id.ToString);
  MemoJSON.Lines.Add(pessoa.Nome);
  MemoJSON.Lines.Add(pessoa.Idade.ToString);

  pessoa.Free;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  var ClasseJson: TRoot := TJson.JsonToObject<TRoot>(MemoJSON.Text);

  MemoResultado.Text := ClasseJson.BlockHash;

  var Inputs: TInputs;
  Var I: Integer;

  for Inputs in ClasseJson.Inputs do
  begin
    MemoResultado.Lines.Add(Inputs.Script);
  end;

  var ClasseJsonEscrita: TRoot := TRoot.Create;
  ClasseJsonEscrita.BlockHash := '123456789';

  for I := 0 to 1 do
  begin
    Inputs := TInputs.Create;
    Inputs.Script := 'Teste';
    Inputs.Age := 10;

    ClasseJsonEscrita.Inputs.Add(Inputs);
  end;

//Revisar
  MemoResultado.Lines.Text :=
    ClasseJsonEscrita.PrettyPrintJSON(ClasseJsonEscrita.AsJson);

 ClasseJson.Free;
 ClasseJsonEscrita.Free;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  var objeto: TJSONObject := TJSONObject.ParseJSONValue(MemoJSON.Lines.Text) as TJSONObject;

//  ShowMessage(objeto.Get('block_hash').ToString);
//  Showmessage(Objeto.GetValue('block_hash').Value);

  MemoResultado.Clear;
  MemoResultado.Lines.Add(objeto.Get('block_hash').ToString);
  MemoResultado.Lines.Add(Objeto.GetValue('block_hash').Value);

  var ObjetoArray: TJSONArray := objeto.Get('inputs').JsonValue as TJSONArray;

  var I: integer;
  //Pega primeiro registro da lista inputs (posicao 0)
  var objeto2: TJSONObject := TJSONObject.ParseJSONValue(ObjetoArray.Get(0).ToString) as TJsonOBject;

  MemoResultado.Lines.Add(objeto2.Get('script').ToString);

  for I := 0 to ObjetoArray.Size - 1 do
  begin
    MemoResultado.Lines.Add(ObjetoArray.Get(I).ToString);
  end;

  objeto.Free;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  var objeto: TJSONObject := TJSONObject.Create;
  var objetoArray: TJSONArray := TJSONArray.Create;

  objeto.AddPair('block_hash','123456789');
  objeto.AddPair('inputs',objetoArray);

  var ObjetoInputs: TJSONObject := TJSONObject.Create;
  ObjetoInputs.AddPair('prev_hash','98765');
  ObjetoInputs.AddPair('script','123');

  objetoArray.Add(ObjetoInputs);

  MemoResultado.Lines.Text := objeto.ToString;

  ObjetoInputs := TJSONObject.Create;
  ObjetoInputs.AddPair('prev_hash','874982374982347');
  ObjetoInputs.AddPair('script','098766');

  objetoArray.Add(ObjetoInputs);

  MemoResultado.Lines.Text := objeto.ToString;


  objeto.Free;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  RESTRequest1.Execute;
  RESTResponseDataSetAdapter1.Active := True;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
  memDelta.Close;
  memDeletados.Close;
  memAlterados.Close;
  memIncluidos.Close;

  memDelta.Data := memPessoa.Delta;
  memDeletados.Data := memPessoa.Delta;
  memAlterados.Data := memPessoa.Delta;
  memIncluidos.Data := memPessoa.Delta;

  memDelta.StatusFilter :=
    [rtModified, rtInserted, rtDeleted, rtUnmodified, rtHasErrors];

  memDeletados.StatusFilter := [rtDeleted];
  memAlterados.StatusFilter := [rtModified];

  memIncluidos.StatusFilter := [rtInserted];
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
  memPessoa.EmptyDataSet;
  cdsPessoa.EmptyDataSet;
  if FileExists(DB_PESSOA) then
  begin
    //memPessoa.LoadFromFile(DB_PESSOA, sfJSON);
    cdsPessoa.LoadFromFile(DB_PESSOA);
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;

  memPessoa.CachedUpdates := True;
  memPessoa.Open;

  cdsPessoa.Open;
end;

end.
