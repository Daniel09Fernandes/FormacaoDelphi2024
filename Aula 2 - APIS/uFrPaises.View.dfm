object frPaises: TfrPaises
  Left = 0
  Top = 0
  Caption = 'frPaises'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 429
    Top = 0
    Height = 441
    Align = alRight
    ExplicitLeft = 424
    ExplicitTop = 8
  end
  object Panel1: TPanel
    Left = 432
    Top = 0
    Width = 192
    Height = 441
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 0
    object imgFlag: TImage
      Left = 1
      Top = 1
      Width = 190
      Height = 439
      Align = alClient
      Proportional = True
      Stretch = True
      ExplicitLeft = 6
      ExplicitWidth = 281
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 8
    Width = 423
    Height = 97
    TabOrder = 1
    object edtSigla: TEdit
      Left = 8
      Top = 16
      Width = 81
      Height = 23
      TabOrder = 0
      Text = 'Br'
      TextHint = 'Br'
    end
    object Button1: TButton
      Left = 95
      Top = 15
      Width = 98
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 111
    Width = 423
    Height = 226
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object memPais: TFDMemTable
    AfterScroll = memPaisAfterScroll
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 248
    Top = 288
    object memPaisPais: TStringField
      FieldName = 'Pais'
    end
    object memPaisBandeira: TStringField
      FieldName = 'Bandeira'
      Size = 300
    end
    object memPaisPopulacao: TStringField
      FieldName = 'Populacao'
      Size = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = memPais
    Left = 120
    Top = 336
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 304
    Top = 200
  end
end
