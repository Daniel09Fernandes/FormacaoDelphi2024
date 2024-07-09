object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conceitos OO'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object PanelOO: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 618
    object ButtoOO: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 149
      Height = 121
      Align = alLeft
      Caption = 'ConceitoOO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ButtoOOClick
    end
    object ButtonInterfaces: TButton
      AlignWithMargins = True
      Left = 159
      Top = 4
      Width = 141
      Height = 121
      Align = alLeft
      Caption = 'Interfaces'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonInterfacesClick
    end
  end
end
