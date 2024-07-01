object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 720
  ClientWidth = 999
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 720
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 993
    ExplicitHeight = 703
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 997
      Height = 718
      ActivePage = TabHash
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 991
      ExplicitHeight = 701
      object TabSheet1: TTabSheet
        Caption = 'ClassePessoa'
        object Button1: TButton
          Left = 3
          Top = 16
          Width = 238
          Height = 81
          Caption = 'SetaRetornaPessoa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Memo1: TMemo
          Left = 264
          Top = 16
          Width = 337
          Height = 153
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
        end
        object buttonRetornaPessoa: TButton
          Left = 8
          Top = 160
          Width = 238
          Height = 49
          Caption = 'RetornaPessoa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = buttonRetornaPessoaClick
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'JSON'
        ImageIndex = 1
        object MemoJSON: TMemo
          Left = 0
          Top = 73
          Width = 989
          Height = 416
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Lines.Strings = (
            '{'
            
              '  "block_hash": "0000000000000000c504bdea36e531d8089d324f2d936c8' +
              '6e3274f97f8a44328",'
            '  "inputs": ['
            '    {'
            
              '      "prev_hash": "583910b7bf90ab802e22e5c25a89b59862b20c8c1aeb' +
              '24dfb94e7a508a70f121",'
            '      "output_index": 1,'
            '      "script": "48304502210086de855e03008ab",'
            '      "output_value": 16450000,'
            '      "sequence": 4294967295,'
            '      "addresses": ['
            '        "1GbMfYui17L5m6sAy3L3WXAtf1P32bxJXq"'
            '      ],'
            '      "script_type": "pay-to-pubkey-hash",'
            '      "age": 292997'
            '    },'
            '    {'
            
              '      "prev_hash": "f6966bb3d3ba0eb97fd11b223fb13c793c0b4a1b3deb' +
              '575e8ae38d666c1d00d9",'
            '      "output_index": 36,'
            '      "script": "48304502210086de855e03008ab",'
            '      "output_value": 10061545,'
            '      "sequence": 4294967295,'
            '      "addresses": ['
            '        "19YtzZdcfs1V2ZCgyRWo8i2wLT8ND1Tu4L"'
            '      ],'
            '      "script_type": "pay-to-pubkey-hash",'
            '      "age": 292998'
            '    }'
            '  ]'
            '}')
          ParentFont = False
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 73
          Align = alTop
          TabOrder = 1
          object Button2: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 136
            Height = 65
            Align = alLeft
            Caption = 'Serializar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button2Click
          end
          object Button3: TButton
            AlignWithMargins = True
            Left = 146
            Top = 4
            Width = 144
            Height = 65
            Align = alLeft
            Caption = 'Deserializar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button3Click
          end
          object Button4: TButton
            AlignWithMargins = True
            Left = 770
            Top = 4
            Width = 191
            Height = 65
            Align = alLeft
            Caption = 'JsonToDelphi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = Button4Click
          end
          object Button5: TButton
            AlignWithMargins = True
            Left = 296
            Top = 4
            Width = 231
            Height = 65
            Align = alLeft
            Caption = 'Leitura BlockChain'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = Button5Click
          end
          object Button6: TButton
            AlignWithMargins = True
            Left = 533
            Top = 4
            Width = 231
            Height = 65
            Align = alLeft
            Caption = 'Escrita BlockChain'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = Button6Click
          end
        end
        object MemoResultado: TMemo
          Left = 0
          Top = 489
          Width = 989
          Height = 199
          Align = alClient
          Lines.Strings = (
            'MemoResultado')
          ScrollBars = ssVertical
          TabOrder = 2
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'RestDebugger'
        ImageIndex = 2
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 73
          Align = alTop
          TabOrder = 0
          object Button7: TButton
            Left = 1
            Top = 1
            Width = 224
            Height = 71
            Align = alLeft
            Caption = 'RestDebugger'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button7Click
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 73
          Width = 989
          Height = 615
          Align = alClient
          DataSource = dsRestDebugger
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Dataset'
        ImageIndex = 3
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 688
          Align = alClient
          TabOrder = 0
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 987
            Height = 240
            Align = alTop
            TabOrder = 0
            object Panel8: TPanel
              Left = 1
              Top = 1
              Width = 985
              Height = 48
              Align = alTop
              Alignment = taLeftJustify
              Caption = 'Dados Memoria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Button8: TButton
                AlignWithMargins = True
                Left = 885
                Top = 4
                Width = 96
                Height = 40
                Align = alRight
                Caption = 'Delta'
                TabOrder = 0
                OnClick = Button8Click
              end
              object Button9: TButton
                AlignWithMargins = True
                Left = 783
                Top = 4
                Width = 96
                Height = 40
                Align = alRight
                Caption = 'Load'
                TabOrder = 1
                OnClick = Button9Click
              end
              object Button10: TButton
                AlignWithMargins = True
                Left = 689
                Top = 4
                Width = 88
                Height = 40
                Align = alRight
                Caption = 'Save'
                TabOrder = 2
                OnClick = Button10Click
              end
              object Button11: TButton
                AlignWithMargins = True
                Left = 523
                Top = 4
                Width = 160
                Height = 40
                Align = alRight
                Caption = 'Set Server'
                TabOrder = 3
                OnClick = Button11Click
              end
              object Button12: TButton
                AlignWithMargins = True
                Left = 389
                Top = 4
                Width = 128
                Height = 40
                Align = alRight
                Caption = 'Get Server'
                TabOrder = 4
                OnClick = Button12Click
              end
            end
            object DBGrid2: TDBGrid
              Left = 1
              Top = 74
              Width = 985
              Height = 165
              Align = alClient
              DataSource = dsPessoa
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
            object DBNavigator1: TDBNavigator
              Left = 1
              Top = 49
              Width = 985
              Height = 25
              DataSource = dsPessoa
              Align = alTop
              TabOrder = 2
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 241
            Width = 987
            Height = 216
            Align = alTop
            TabOrder = 1
            object Panel9: TPanel
              Left = 1
              Top = 1
              Width = 985
              Height = 41
              Align = alTop
              Caption = 'Status Filter'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBGrid3: TDBGrid
              Left = 1
              Top = 42
              Width = 985
              Height = 173
              Align = alClient
              DataSource = dsDelta
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 457
            Width = 987
            Height = 230
            Align = alClient
            TabOrder = 2
            object Panel10: TPanel
              Left = 1
              Top = 1
              Width = 352
              Height = 228
              Align = alLeft
              TabOrder = 0
              object Panel13: TPanel
                Left = 1
                Top = 1
                Width = 350
                Height = 41
                Align = alTop
                Caption = 'Deletados'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBGrid4: TDBGrid
                Left = 1
                Top = 42
                Width = 350
                Height = 185
                Align = alClient
                DataSource = dsDeletados
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
              end
            end
            object Panel11: TPanel
              Left = 353
              Top = 1
              Width = 331
              Height = 228
              Align = alLeft
              TabOrder = 1
              object Panel14: TPanel
                Left = 1
                Top = 1
                Width = 329
                Height = 41
                Align = alTop
                Caption = 'Incluidos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBGrid5: TDBGrid
                Left = 1
                Top = 42
                Width = 329
                Height = 185
                Align = alClient
                DataSource = dsIncluidos
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
              end
            end
            object Panel12: TPanel
              Left = 684
              Top = 1
              Width = 302
              Height = 228
              Align = alClient
              TabOrder = 2
              object Panel15: TPanel
                Left = 1
                Top = 1
                Width = 300
                Height = 41
                Align = alTop
                Caption = 'Alterados'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBGrid6: TDBGrid
                Left = 1
                Top = 42
                Width = 300
                Height = 185
                Align = alClient
                DataSource = dsAlterados
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
              end
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'DataSnap'
        ImageIndex = 4
        object Panel16: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 345
          Align = alTop
          TabOrder = 0
          object Panel18: TPanel
            Left = 1
            Top = 42
            Width = 336
            Height = 302
            Align = alLeft
            TabOrder = 0
            object Button13: TButton
              Left = 1
              Top = 1
              Width = 334
              Height = 40
              Align = alTop
              Caption = 'Envia Pessoa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button13Click
            end
            object MemoDataSnapNativoEnvio: TMemo
              Left = 1
              Top = 41
              Width = 334
              Height = 260
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = []
              Lines.Strings = (
                '{'
                #9'"iD": 23123,'
                #9'"nome": "Teste",'
                #9'"idade": 33'
                '}')
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel19: TPanel
            Left = 337
            Top = 42
            Width = 368
            Height = 302
            Align = alLeft
            TabOrder = 1
            object Button14: TButton
              Left = 1
              Top = 1
              Width = 366
              Height = 40
              Align = alTop
              Caption = 'Recebe Pessoa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button14Click
            end
            object MemoDataSnapNativoRecebimento: TMemo
              Left = 1
              Top = 41
              Width = 366
              Height = 260
              Align = alClient
              Lines.Strings = (
                '')
              TabOrder = 1
            end
          end
          object Panel20: TPanel
            Left = 1
            Top = 1
            Width = 987
            Height = 41
            Align = alTop
            Caption = 'Nativo DataSnap'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 345
          Width = 989
          Height = 343
          Align = alClient
          TabOrder = 1
          object Panel21: TPanel
            Left = 1
            Top = 1
            Width = 987
            Height = 48
            Align = alTop
            Caption = 'TJSON'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Panel22: TPanel
            Left = 1
            Top = 49
            Width = 335
            Height = 293
            Align = alLeft
            TabOrder = 1
            object Button15: TButton
              Left = 1
              Top = 1
              Width = 333
              Height = 32
              Align = alTop
              Caption = 'Envia Pessoa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button15Click
            end
            object MemoDSNaoNativoEnvia: TMemo
              Left = 1
              Top = 33
              Width = 333
              Height = 259
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = []
              Lines.Strings = (
                '{'
                #9'"iD": 23123,'
                #9'"nome": "",'
                #9'"idade": 33'
                '}'
                '')
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel23: TPanel
            Left = 336
            Top = 49
            Width = 368
            Height = 293
            Align = alLeft
            TabOrder = 2
            object Button16: TButton
              Left = 1
              Top = 1
              Width = 366
              Height = 32
              Align = alTop
              Caption = 'Recebe Pessoa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button16Click
            end
            object MemoDSNaoNativoRecebe: TMemo
              Left = 1
              Top = 33
              Width = 366
              Height = 259
              Align = alClient
              Lines.Strings = (
                '')
              TabOrder = 1
            end
          end
        end
      end
      object tabListas: TTabSheet
        Caption = 'Listas'
        ImageIndex = 5
        object PnlControles: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 57
          Align = alTop
          TabOrder = 0
          object ButtonListaDataSnap: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 157
            Height = 49
            Align = alLeft
            Caption = 'Listas DataSnap'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ButtonListaDataSnapClick
          end
          object ButtonRetornoListaString: TButton
            AlignWithMargins = True
            Left = 167
            Top = 4
            Width = 191
            Height = 49
            Align = alLeft
            Caption = 'Retorno Lista String'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonRetornoListaStringClick
          end
          object ButtonRetornoResponse: TButton
            AlignWithMargins = True
            Left = 364
            Top = 4
            Width = 201
            Height = 49
            Align = alLeft
            Caption = 'Retorno no Response'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = ButtonRetornoResponseClick
          end
          object EditQtdPessoas: TEdit
            Left = 824
            Top = 24
            Width = 164
            Height = 23
            TabOrder = 3
            Text = 'Qtd Pessoas'
          end
        end
        object MemoRetornoListas: TMemo
          Left = 0
          Top = 57
          Width = 989
          Height = 631
          Align = alClient
          Lines.Strings = (
            'MemoRetornoListas')
          TabOrder = 1
        end
      end
      object TabThreads: TTabSheet
        Caption = 'Threads'
        ImageIndex = 6
        object PanelThreads: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 81
          Align = alTop
          TabOrder = 0
          object ButtonCurrentThread: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 189
            Height = 73
            Align = alLeft
            Caption = 'Current Thread ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ButtonCurrentThreadClick
          end
          object ButtonGetThreadID: TButton
            AlignWithMargins = True
            Left = 199
            Top = 4
            Width = 172
            Height = 73
            Align = alLeft
            Caption = 'Get Thread ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonGetThreadIDClick
          end
          object ButtonMetodoDemorado: TButton
            AlignWithMargins = True
            Left = 377
            Top = 4
            Width = 203
            Height = 73
            Align = alLeft
            Caption = 'Metodo Demorado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = ButtonMetodoDemoradoClick
          end
          object ButtonLogServer: TButton
            AlignWithMargins = True
            Left = 586
            Top = 4
            Width = 154
            Height = 73
            Align = alLeft
            Caption = 'Log Server'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = ButtonLogServerClick
          end
        end
        object MemoThreads: TMemo
          Left = 0
          Top = 81
          Width = 989
          Height = 607
          Align = alClient
          Lines.Strings = (
            'MemoThreads')
          TabOrder = 1
        end
      end
      object TabZip: TTabSheet
        Caption = 'Zip'
        ImageIndex = 7
        object PanelZip: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 73
          Align = alTop
          TabOrder = 0
          object ButtonZiparArquivos: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 165
            Height = 65
            Align = alLeft
            Caption = 'Zipar Arquivos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ButtonZiparArquivosClick
          end
          object ButtonExtrairArquivos: TButton
            AlignWithMargins = True
            Left = 175
            Top = 4
            Width = 165
            Height = 65
            Align = alLeft
            Caption = 'Extrair Arquivos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonExtrairArquivosClick
          end
        end
      end
      object TabHash: TTabSheet
        Caption = 'Hash'
        ImageIndex = 8
        object PanelHash: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 89
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 983
          object LabelSenha: TLabel
            Left = 16
            Top = 0
            Width = 53
            Height = 28
            Caption = 'Senha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object EditSenha: TEdit
            Left = 16
            Top = 34
            Width = 145
            Height = 23
            TabOrder = 0
          end
          object ButtonAutenticar: TButton
            Left = 167
            Top = 34
            Width = 137
            Height = 37
            Caption = 'Autenticar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonAutenticarClick
          end
        end
        object MemoRespostaHash: TMemo
          Left = 0
          Top = 409
          Width = 989
          Height = 279
          Align = alClient
          Color = clScrollBar
          Lines.Strings = (
            '')
          TabOrder = 1
          ExplicitWidth = 983
          ExplicitHeight = 262
        end
        object MemoHash: TMemo
          Left = 0
          Top = 217
          Width = 989
          Height = 192
          Align = alTop
          Lines.Strings = (
            '')
          TabOrder = 2
          ExplicitWidth = 983
        end
        object MemoDados: TMemo
          Left = 0
          Top = 89
          Width = 989
          Height = 128
          Align = alTop
          Lines.Strings = (
            '')
          TabOrder = 3
          OnChange = MemoDadosChange
          ExplicitWidth = 983
        end
      end
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://api.blockcypher.com/v1/btc/main/txs/f854aebae95150b379cc' +
      '1187d848d58225f3c4157fe992bcd166f58bd5063449'
    Params = <>
    SynchronizedEvents = False
    Left = 936
    Top = 112
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 936
    Top = 392
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 936
    Top = 328
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 936
    Top = 264
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'block_hash'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'block_height'
        DataType = ftFloat
      end
      item
        Name = 'block_index'
        DataType = ftFloat
      end
      item
        Name = 'hash'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'addresses'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'fees'
        DataType = ftFloat
      end
      item
        Name = 'size'
        DataType = ftFloat
      end
      item
        Name = 'vsize'
        DataType = ftFloat
      end
      item
        Name = 'preference'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'confirmed'
        DataType = ftDateTime
      end
      item
        Name = 'received'
        DataType = ftDateTime
      end
      item
        Name = 'ver'
        DataType = ftFloat
      end
      item
        Name = 'double_spend'
        DataType = ftBoolean
      end
      item
        Name = 'vin_sz'
        DataType = ftFloat
      end
      item
        Name = 'vout_sz'
        DataType = ftFloat
      end
      item
        Name = 'confirmations'
        DataType = ftFloat
      end
      item
        Name = 'confidence'
        DataType = ftFloat
      end
      item
        Name = 'inputs'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'outputs'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 936
    Top = 192
    object FDMemTable1block_hash: TWideStringField
      FieldName = 'block_hash'
      Size = 64
    end
    object FDMemTable1block_height: TFloatField
      FieldName = 'block_height'
    end
    object FDMemTable1block_index: TFloatField
      FieldName = 'block_index'
    end
    object FDMemTable1hash: TWideStringField
      FieldName = 'hash'
      Size = 64
    end
    object FDMemTable1addresses: TWideStringField
      FieldName = 'addresses'
      Size = 255
    end
    object FDMemTable1total: TFloatField
      FieldName = 'total'
    end
    object FDMemTable1fees: TFloatField
      FieldName = 'fees'
    end
    object FDMemTable1size: TFloatField
      FieldName = 'size'
    end
    object FDMemTable1vsize: TFloatField
      FieldName = 'vsize'
    end
    object FDMemTable1preference: TWideStringField
      FieldName = 'preference'
      Size = 3
    end
    object FDMemTable1confirmed: TDateTimeField
      FieldName = 'confirmed'
    end
    object FDMemTable1received: TDateTimeField
      FieldName = 'received'
    end
    object FDMemTable1ver: TFloatField
      FieldName = 'ver'
    end
    object FDMemTable1double_spend: TBooleanField
      FieldName = 'double_spend'
    end
    object FDMemTable1vin_sz: TFloatField
      FieldName = 'vin_sz'
    end
    object FDMemTable1vout_sz: TFloatField
      FieldName = 'vout_sz'
    end
    object FDMemTable1confirmations: TFloatField
      FieldName = 'confirmations'
    end
    object FDMemTable1confidence: TFloatField
      FieldName = 'confidence'
    end
    object FDMemTable1inputs: TWideStringField
      FieldName = 'inputs'
      Size = 255
    end
    object FDMemTable1outputs: TWideStringField
      FieldName = 'outputs'
      Size = 255
    end
  end
  object dsRestDebugger: TDataSource
    DataSet = FDMemTable1
    Left = 941
    Top = 459
  end
  object memPessoa: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 590
    Top = 132
    object memPessoaId: TIntegerField
      FieldName = 'Id'
    end
    object memPessoaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dsPessoa: TDataSource
    DataSet = memPessoa
    Left = 670
    Top = 140
  end
  object memDelta: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 438
    Top = 364
  end
  object dsDelta: TDataSource
    DataSet = memDelta
    Left = 518
    Top = 372
  end
  object memDeletados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 111
    Top = 573
  end
  object dsDeletados: TDataSource
    DataSet = memDeletados
    Left = 223
    Top = 589
  end
  object memIncluidos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 503
    Top = 573
  end
  object memAlterados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 770
    Top = 589
  end
  object dsIncluidos: TDataSource
    DataSet = memIncluidos
    Left = 607
    Top = 589
  end
  object dsAlterados: TDataSource
    DataSet = memAlterados
    Left = 890
    Top = 573
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 710
    Top = 356
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 221
    Top = 347
  end
  object OpenDialog1: TOpenDialog
    Left = 397
    Top = 219
  end
end
