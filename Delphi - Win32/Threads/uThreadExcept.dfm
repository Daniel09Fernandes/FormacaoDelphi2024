object FrThreadsExcept: TFrThreadsExcept
  Left = 0
  Top = 0
  Caption = 'FrThreadsExcept'
  ClientHeight = 441
  ClientWidth = 555
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
    Left = 0
    Top = 32
    Width = 97
    Height = 41
    Caption = 'Except'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 88
    Width = 553
    Height = 345
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 112
    Top = 32
    Width = 113
    Height = 41
    Caption = 'Except Threads'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 416
    Top = 32
  end
end
