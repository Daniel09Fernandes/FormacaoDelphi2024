object FormRelatorioSimples: TFormRelatorioSimples
  Left = 0
  Top = 0
  Caption = 'Relatorio Simples'
  ClientHeight = 443
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Sky'
  OnShow = FormShow
  TextHeight = 15
  object PanelControleRelatorio: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 618
    object ButtonRelatorioSimples: TButton
      Left = 8
      Top = 16
      Width = 113
      Height = 36
      Caption = 'Exemplo Simples'
      TabOrder = 0
      OnClick = ButtonRelatorioSimplesClick
    end
    object ButtonListaSimples: TButton
      Left = 127
      Top = 16
      Width = 113
      Height = 36
      Caption = 'Lista Simples'
      TabOrder = 1
      OnClick = ButtonListaSimplesClick
    end
    object ButtonMainDetail: TButton
      Left = 246
      Top = 16
      Width = 113
      Height = 36
      Caption = 'Main/Detail'
      TabOrder = 2
      OnClick = ButtonMainDetailClick
    end
  end
  object PanelCountry: TPanel
    Left = 0
    Top = 65
    Width = 747
    Height = 240
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 642
    object DBGridCountry: TDBGrid
      Left = 1
      Top = 1
      Width = 745
      Height = 238
      Align = alClient
      DataSource = dtsCountry
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object PanelCustomer: TPanel
    Left = 0
    Top = 305
    Width = 747
    Height = 138
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 216
    ExplicitTop = 336
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGridCustomer: TDBGrid
      Left = 1
      Top = 1
      Width = 745
      Height = 136
      Align = alClient
      DataSource = dtsCustomer
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object dtsCountry: TDataSource
    DataSet = dmRelatorioSimples.memCountry
    Left = 480
    Top = 185
  end
  object dtsCustomer: TDataSource
    DataSet = dmRelatorioSimples.memCustomer
    Left = 456
    Top = 353
  end
end
