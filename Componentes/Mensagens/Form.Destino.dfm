object frmDestino: TfrmDestino
  Left = 0
  Top = 0
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object PanelMov: TPanel
    Left = 8
    Top = 8
    Width = 185
    Height = 121
    Color = clBlue
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = PanelMovMouseDown
  end
  object PanelSize: TPanel
    Left = 400
    Top = 312
    Width = 233
    Height = 105
    Color = clYellow
    ParentBackground = False
    TabOrder = 1
    OnMouseDown = PanelSizeMouseDown
  end
end
