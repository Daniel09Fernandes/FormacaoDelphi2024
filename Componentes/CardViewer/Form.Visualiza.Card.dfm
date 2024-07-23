object frmVisualizaCard: TfrmVisualizaCard
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
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object ImagePreview: TImage
    Left = 0
    Top = 41
    Width = 624
    Height = 400
    Align = alClient
    ExplicitLeft = 112
    ExplicitTop = 152
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object PanelControles: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object CheckBoxProportional: TCheckBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 97
      Height = 33
      Align = alLeft
      Caption = 'Proportional'
      TabOrder = 0
      OnClick = CheckBoxProportionalClick
      ExplicitLeft = 32
      ExplicitTop = 21
      ExplicitHeight = 17
    end
    object CheckBoxStretch: TCheckBox
      AlignWithMargins = True
      Left = 107
      Top = 4
      Width = 97
      Height = 33
      Align = alLeft
      Caption = 'Stretch'
      TabOrder = 1
      OnClick = CheckBoxStretchClick
      ExplicitLeft = 135
      ExplicitTop = 21
      ExplicitHeight = 17
    end
  end
end
