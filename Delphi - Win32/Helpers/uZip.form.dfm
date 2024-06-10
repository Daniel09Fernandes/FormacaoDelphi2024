object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtArquivos: TEdit
    Left = 8
    Top = 16
    Width = 433
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 447
    Top = 15
    Width = 18
    Height = 25
    Caption = '[]'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 41
    Caption = 'Zip files'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 64
    Width = 75
    Height = 41
    Caption = 'UnZip files'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 176
    Width = 105
    Height = 57
    Caption = 'Button4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 488
    Top = 16
  end
end
