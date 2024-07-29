object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Relatorios'
  ClientHeight = 517
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Sky'
  TextHeight = 15
  object ImagePreview: TImage
    Left = 200
    Top = 0
    Width = 520
    Height = 517
    Align = alClient
    ExplicitLeft = 248
    ExplicitTop = 72
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object SV: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 517
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    ExplicitHeight = 500
    object CategoryButtons1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 517
      Align = alClient
      ButtonFlow = cbfVertical
      ButtonHeight = 35
      ButtonWidth = 30
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Color = 15395839
          Collapsed = False
          Items = <
            item
              Action = ActionSimples
            end
            item
              Action = ActionPreview
            end>
        end>
      RegularButtonColor = clWhite
      SelectedButtonColor = 15132390
      TabOrder = 0
      ExplicitHeight = 500
    end
  end
  object ActionListMenu: TActionList
    Left = 304
    Top = 272
    object ActionSimples: TAction
      Caption = 'Simples'
      OnExecute = ActionSimplesExecute
    end
    object ActionPreview: TAction
      Caption = 'Preview'
      OnExecute = ActionPreviewExecute
    end
  end
  object frxPNGExport1: TfrxPNGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 456
    Top = 152
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 480
    Top = 272
  end
end
