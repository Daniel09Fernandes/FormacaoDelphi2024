object FormComps: TFormComps
  Left = 0
  Top = 0
  Caption = 'Testa Componentes'
  ClientHeight = 589
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 809
    Height = 589
    ActivePage = TabPanelObrig
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 803
    ExplicitHeight = 572
    object TabPanelObrig: TTabSheet
      Caption = 'Panel Obrigatorio'
      object PanelControle: TPanel
        Left = 0
        Top = 0
        Width = 801
        Height = 73
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 795
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 799
          Height = 71
          DataSource = dtsPessoa
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 793
        end
      end
      object PanelGrid: TPanel
        Left = 520
        Top = 73
        Width = 281
        Height = 415
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 514
        ExplicitHeight = 398
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 279
          Height = 413
          Align = alClient
          DataSource = dtsPessoa
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 488
        Width = 801
        Height = 71
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 471
        ExplicitWidth = 795
        object ButtonValidaCampos: TButton
          Left = 128
          Top = 11
          Width = 137
          Height = 38
          Caption = 'ValidaCampos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object PanelObrigatorio1: TPanelObrigatorio
        AlignWithMargins = True
        Left = 3
        Top = 76
        Width = 514
        Height = 409
        Caption = 'PanelObrigatorio1'
        Align = alClient
        DesenhaObrigatorios = True
        Datasource = dtsPessoa
        ExplicitWidth = 508
        ExplicitHeight = 392
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 19
          Height = 28
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 79
          Width = 54
          Height = 28
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 142
          Width = 33
          Height = 28
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 50
          Width = 121
          Height = 23
          DataField = 'ID'
          DataSource = dtsPessoa
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 113
          Width = 121
          Height = 23
          DataField = 'Nome'
          DataSource = dtsPessoa
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 176
          Width = 121
          Height = 23
          DataField = 'CPF'
          DataSource = dtsPessoa
          TabOrder = 2
        end
      end
    end
  end
  object dtsPessoa: TDataSource
    DataSet = memPessoa
    Left = 423
    Top = 246
  end
  object memPessoa: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 319
    Top = 310
    object memPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object memPessoaNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
    object memPessoaCPF: TStringField
      FieldName = 'CPF'
      Required = True
      Size = 11
    end
  end
end
