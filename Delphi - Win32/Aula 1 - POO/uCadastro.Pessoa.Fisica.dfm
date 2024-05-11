inherited FrCadastroPessoaFisica: TFrCadastroPessoaFisica
  Caption = 'Cadastro de pessoas'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -29
  TextHeight = 15
  inherited pnlTitulo: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlBottom: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Button2: TButton
      OnClick = Button2Click
    end
    object GerarClassePessoa: TButton
      Left = 16
      Top = 6
      Width = 129
      Height = 25
      Caption = 'Gerar Classe Pessoa'
      TabOrder = 2
      OnClick = GerarClassePessoaClick
    end
    object Edit1: TEdit
      Left = 151
      Top = 7
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit1'
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 121
    Height = 279
  end
  inherited PnlInformacoes: TPanel
    Height = 74
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 74
    object Label1: TLabel [0]
      Left = 3
      Top = 15
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label2: TLabel [1]
      Left = 3
      Top = 43
      Width = 19
      Height = 15
      Caption = 'Cpf'
    end
    object Label3: TLabel [2]
      Left = 280
      Top = 43
      Width = 32
      Height = 15
      Caption = 'Altura'
    end
    object DBEdit1: TDBEdit [3]
      Left = 42
      Top = 12
      Width = 411
      Height = 23
      DataField = 'Nome'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit [4]
      Left = 42
      Top = 41
      Width = 199
      Height = 23
      DataField = 'Cpf'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit [5]
      Left = 318
      Top = 41
      Width = 135
      Height = 23
      DataField = 'Altura'
      DataSource = DataSource1
      TabOrder = 2
    end
    inherited Button4: TButton
      Left = 528
      Top = 43
      TabOrder = 3
      ExplicitLeft = 528
      ExplicitTop = 43
    end
  end
  inherited MemDados: TFDMemTable
    Active = True
    object MemDadosNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object MemDadosCpf: TStringField
      FieldName = 'Cpf'
      Size = 15
    end
    object MemDadosAltura: TFloatField
      FieldName = 'Altura'
    end
  end
end
