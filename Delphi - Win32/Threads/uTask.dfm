object FrTask: TFrTask
  Left = 0
  Top = 0
  Caption = 'FrTask'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 129
    Height = 49
    Caption = 'Task'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 32
    Width = 105
    Height = 49
    Caption = 'For'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 112
    Width = 457
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
