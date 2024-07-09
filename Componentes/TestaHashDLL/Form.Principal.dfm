object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object PanelHash: TPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 837
    object ButtonDLLVar: TButton
      Left = 24
      Top = 25
      Width = 113
      Height = 33
      Caption = 'DLL Var'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ButtonDLLVarClick
    end
    object ButtonVisualiza: TButton
      Left = 152
      Top = 25
      Width = 161
      Height = 33
      Caption = 'Visualiza Hash'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonVisualizaClick
    end
  end
  object MemoResult: TMemo
    Left = 0
    Top = 89
    Width = 843
    Height = 352
    Align = alClient
    Lines.Strings = (
      '')
    TabOrder = 1
    ExplicitTop = 95
  end
end
