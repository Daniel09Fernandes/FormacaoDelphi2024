object FrCadastroPadaro: TFrCadastroPadaro
  Left = 0
  Top = 0
  Caption = 'FrCadastroPadaro'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 618
    Height = 41
    Align = alTop
    Caption = '*Titulo*'
    Color = 16645824
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 296
    ExplicitTop = 152
    ExplicitWidth = 185
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 400
    Width = 624
    Height = 41
    Align = alBottom
    Color = 16645824
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 406
    object Button1: TButton
      AlignWithMargins = True
      Left = 545
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 432
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 462
      Top = 4
      Width = 75
      Height = 33
      Margins.Left = 5
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 432
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 137
    Width = 624
    Height = 263
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object PnlInformacoes: TPanel
    Left = 0
    Top = 47
    Width = 624
    Height = 90
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Button4: TButton
      Left = 529
      Top = 59
      Width = 92
      Height = 25
      Caption = 'Novo Registro'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object MemDados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 328
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = MemDados
    Left = 232
    Top = 152
  end
end
