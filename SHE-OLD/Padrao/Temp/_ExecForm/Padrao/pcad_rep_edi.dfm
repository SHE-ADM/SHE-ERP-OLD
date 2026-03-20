inherited frmcad_rep_edi: Tfrmcad_rep_edi
  Left = 374
  Top = 50
  ActiveControl = edfant
  AlphaBlendValue = 0
  ClientHeight = 602
  ClientWidth = 542
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 542
    Height = 502
    inherited PaintBox: TPaintBox
      Width = 542
      Height = 240
    end
    object pcinfo: TdxPageControl
      Left = 0
      Top = 0
      Width = 542
      Height = 240
      ActivePage = tsicad
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      ParentFont = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 1
      TabPosition = dxtpTop
      TabWidth = 0
      object tsicad: TdxTabSheet
        Caption = 'Informa'#231#245'es Cadastrais'
        object Bevel4: TBevel
          Left = 0
          Top = 0
          Width = 542
          Height = 216
          Align = alClient
        end
        object Label1: TLabel
          Left = 49
          Top = 13
          Width = 43
          Height = 14
          Caption = 'C'#243'digo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 4
          Top = 37
          Width = 88
          Height = 14
          Caption = 'Nome Fantasia'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 61
          Width = 76
          Height = 14
          Caption = 'Raz'#227'o Social'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 65
          Top = 85
          Width = 27
          Height = 14
          Caption = 'CNPJ'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 81
          Top = 109
          Width = 11
          Height = 14
          Caption = 'IE'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 324
          Top = 85
          Width = 44
          Height = 14
          Caption = 'Suframa'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 324
          Top = 109
          Width = 13
          Height = 14
          Caption = 'IM'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 72
          Top = 133
          Width = 20
          Height = 14
          Caption = 'CPF'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 324
          Top = 133
          Width = 15
          Height = 14
          Caption = 'RG'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 324
          Top = 157
          Width = 41
          Height = 14
          Caption = 'Status'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 17
          Top = 157
          Width = 75
          Height = 14
          Caption = 'Comiss'#227'o (%)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 33
          Top = 181
          Width = 59
          Height = 14
          Caption = 'Vendedor'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object eddalt: TdxDateEdit
          Left = 439
          Top = 8
          Width = 95
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 13
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object edcrep: TdxEdit
          Tag = 1
          Left = 96
          Top = 8
          Width = 57
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          AutoSize = False
          CharCase = ecUpperCase
          OnValidate = edcrepValidate
          Height = 24
        end
        object edfant: TdxEdit
          Tag = 1
          Left = 96
          Top = 32
          Width = 441
          Hint = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object edraza: TdxEdit
          Tag = 1
          Left = 96
          Top = 56
          Width = 441
          Hint = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 2
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 60
          Height = 24
          StoredValues = 2
        end
        object edcnpj: TdxMaskEdit
          Left = 96
          Top = 80
          Width = 165
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          AutoSize = False
          EditMask = '99.999.999/9999-999;0; '
          IgnoreMaskBlank = False
          OnValidate = edcnpjValidate
          Height = 24
          StoredValues = 4
        end
        object edinsc: TdxEdit
          Left = 96
          Top = 104
          Width = 165
          Hint = 'C'#243'digo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edCCM: TdxEdit
          Left = 372
          Top = 80
          Width = 165
          Hint = 'C'#243'digo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 8
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edimun: TdxEdit
          Left = 372
          Top = 104
          Width = 165
          Hint = 'C'#243'digo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 9
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edcpf: TdxMaskEdit
          Left = 96
          Top = 128
          Width = 165
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          AutoSize = False
          EditMask = '999.999.999-99;0; '
          IgnoreMaskBlank = False
          OnValidate = edcpfValidate
          Height = 24
          StoredValues = 4
        end
        object edrg: TdxEdit
          Left = 372
          Top = 128
          Width = 165
          Hint = 'C'#243'digo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 10
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 15
          Height = 24
          StoredValues = 2
        end
        object eddcad: TdxDateEdit
          Left = 442
          Top = 8
          Width = 95
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 12
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object cbstav: TdxImageEdit
          Tag = 1
          Left = 372
          Top = 152
          Width = 165
          Color = 14065456
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 11
          Text = 'ATIVO'
          OnKeyDown = cbstavKeyDown
          AutoSize = False
          Descriptions.Strings = (
            'ATIVO'
            'INATIVO'
            'PRE-CADASTRO')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            'A'
            'I'
            'P')
          Height = 24
        end
        object edcomi: TdxEdit
          Left = 96
          Top = 152
          Width = 165
          Hint = 'C'#243'digo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 6
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 15
          OnValidate = edcomiValidate
          Height = 24
          StoredValues = 3
        end
        object IEIDCV: TdxImageEdit
          Tag = 1
          Left = 96
          Top = 176
          Width = 165
          Hint = 'Vendedor'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 7
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
          Height = 24
        end
      end
      object tsobs: TdxTabSheet
        Caption = 'Observa'#231#245'es'
        object pcOBS: TdxPageControl
          Left = 0
          Top = 0
          Width = 542
          Height = 216
          ActivePage = ts1
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          ParentFont = False
          RaggedRight = False
          ScrollOpposite = False
          Style = dxtsFlatButtons
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpTop
          TabWidth = 0
          object ts1: TdxTabSheet
            Caption = 'Geral'
            object Bevel10: TBevel
              Left = 0
              Top = 0
              Width = 542
              Height = 176
              Align = alClient
            end
            object edobse: TdxMemo
              Left = 0
              Top = 0
              Width = 542
              Align = alClient
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderStyle = xbsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 176
            end
          end
          object ts2: TdxTabSheet
            Caption = 'Ocorrencias'
            object Bevel11: TBevel
              Left = 0
              Top = 0
              Width = 542
              Height = 188
              Align = alClient
            end
            object edobso: TdxMemo
              Left = 0
              Top = 0
              Width = 542
              Align = alClient
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderStyle = xbsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 188
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 240
      Width = 542
      Height = 262
      Align = alBottom
      TabOrder = 0
      object pcmain: TdxPageControl
        Left = 1
        Top = 1
        Width = 540
        Height = 260
        ActivePage = tscon
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        ParentFont = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object tscon: TdxTabSheet
          Caption = 'Contatos'
          object pccom: TdxPageControl
            Left = 0
            Top = 0
            Width = 540
            Height = 236
            ActivePage = tsccom
            Align = alClient
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            Style = dxtsFlatButtons
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpTop
            TabWidth = 0
            object tsccom: TdxTabSheet
              Caption = 'Comercial'
              object Label10: TLabel
                Left = 5
                Top = 37
                Width = 27
                Height = 14
                Caption = 'Email'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label6: TLabel
                Left = 5
                Top = 13
                Width = 32
                Height = 14
                Caption = 'Nome'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label7: TLabel
                Left = 5
                Top = 61
                Width = 62
                Height = 14
                Caption = 'Fone (NFe)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label12: TLabel
                Left = 196
                Top = 61
                Width = 41
                Height = 14
                Caption = 'Fone_2'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label9: TLabel
                Left = 196
                Top = 85
                Width = 18
                Height = 14
                Caption = 'Fax'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label50: TLabel
                Left = 5
                Top = 109
                Width = 35
                Height = 14
                Caption = 'Celular'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label51: TLabel
                Left = 5
                Top = 133
                Width = 35
                Height = 14
                Caption = 'Nextel'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label71: TLabel
                Left = 5
                Top = 85
                Width = 41
                Height = 14
                Caption = 'Fone_3'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label11: TLabel
                Left = 5
                Top = 157
                Width = 12
                Height = 14
                Caption = 'ID'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Bevel7: TBevel
                Left = 0
                Top = 0
                Width = 540
                Height = 210
                Align = alClient
              end
              object edddd: TdxMaskEdit
                Left = 72
                Top = 56
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edmail: TdxEdit
                Left = 72
                Top = 32
                Width = 465
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                CharCase = ecLowerCase
                MaxLength = 60
                StoredValues = 2
              end
              object edcont: TdxEdit
                Left = 72
                Top = 8
                Width = 270
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 30
                StoredValues = 2
              end
              object edtel1: TdxMaskEdit
                Left = 105
                Top = 56
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                OnDblClick = edtel1DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edtel2: TdxMaskEdit
                Left = 271
                Top = 56
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfax: TdxMaskEdit
                Left = 271
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                OnDblClick = edfaxDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcel: TdxMaskEdit
                Left = 105
                Top = 104
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 11
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edneid: TdxMaskEdit
                Left = 72
                Top = 152
                Width = 108
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 16
                OnDblClick = edtel2DblClick
                AutoSize = False
                IgnoreMaskBlank = False
                MaxLength = 15
                Height = 24
                StoredValues = 6
              end
              object edncel: TdxMaskEdit
                Left = 105
                Top = 128
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 14
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edDD2: TdxMaskEdit
                Left = 238
                Top = 56
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edDD3: TdxMaskEdit
                Left = 72
                Top = 80
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edtel3: TdxMaskEdit
                Left = 105
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edDD4: TdxMaskEdit
                Left = 238
                Top = 80
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 8
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edDD5: TdxMaskEdit
                Left = 72
                Top = 104
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 10
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edDD6: TdxMaskEdit
                Left = 72
                Top = 128
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 13
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object cbtce1: TdxImageEdit
                Left = 179
                Top = 104
                Width = 170
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 12
                AutoSize = False
                Descriptions.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                Values.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                Height = 24
              end
              object cbtce2: TdxImageEdit
                Left = 179
                Top = 128
                Width = 170
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 15
                AutoSize = False
                Descriptions.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                Values.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                Height = 24
              end
            end
            object tscfin: TdxTabSheet
              Caption = 'Financeiro'
              object Label44: TLabel
                Left = 5
                Top = 37
                Width = 27
                Height = 14
                Caption = 'Email'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label45: TLabel
                Left = 5
                Top = 13
                Width = 32
                Height = 14
                Caption = 'Nome'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label48: TLabel
                Left = 5
                Top = 61
                Width = 41
                Height = 14
                Caption = 'Fone_1'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label49: TLabel
                Left = 196
                Top = 61
                Width = 41
                Height = 14
                Caption = 'Fone_2'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label52: TLabel
                Left = 196
                Top = 85
                Width = 18
                Height = 14
                Caption = 'Fax'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label69: TLabel
                Left = 5
                Top = 109
                Width = 35
                Height = 14
                Caption = 'Celular'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label70: TLabel
                Left = 5
                Top = 133
                Width = 35
                Height = 14
                Caption = 'Nextel'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label72: TLabel
                Left = 5
                Top = 85
                Width = 41
                Height = 14
                Caption = 'Fone_3'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label73: TLabel
                Left = 5
                Top = 157
                Width = 12
                Height = 14
                Caption = 'ID'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Bevel8: TBevel
                Left = 0
                Top = 0
                Width = 540
                Height = 210
                Align = alClient
              end
              object edfddd: TdxMaskEdit
                Left = 72
                Top = 56
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edfmai: TdxEdit
                Left = 72
                Top = 32
                Width = 465
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                CharCase = ecLowerCase
                MaxLength = 60
                StoredValues = 2
              end
              object edfcon: TdxEdit
                Left = 72
                Top = 8
                Width = 270
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 30
                StoredValues = 2
              end
              object edfte1: TdxMaskEdit
                Left = 105
                Top = 56
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                OnDblClick = edtel1DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfte2: TdxMaskEdit
                Left = 271
                Top = 56
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edffax: TdxMaskEdit
                Left = 271
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                OnDblClick = edfaxDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfcel: TdxMaskEdit
                Left = 105
                Top = 104
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 11
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfnid: TdxMaskEdit
                Left = 72
                Top = 152
                Width = 108
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 16
                OnDblClick = edtel2DblClick
                AutoSize = False
                IgnoreMaskBlank = False
                MaxLength = 15
                Height = 24
                StoredValues = 6
              end
              object edfnce: TdxMaskEdit
                Left = 105
                Top = 128
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 14
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfdd2: TdxMaskEdit
                Left = 238
                Top = 56
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edfdd3: TdxMaskEdit
                Left = 72
                Top = 80
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edfte3: TdxMaskEdit
                Left = 105
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfdd4: TdxMaskEdit
                Left = 238
                Top = 80
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 8
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edfdd5: TdxMaskEdit
                Left = 72
                Top = 104
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 10
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edfdd6: TdxMaskEdit
                Left = 72
                Top = 128
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 13
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object cbftc1: TdxImageEdit
                Left = 179
                Top = 104
                Width = 169
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 12
                AutoSize = False
                Descriptions.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                Values.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                Height = 24
              end
              object cbftc2: TdxImageEdit
                Left = 179
                Top = 128
                Width = 169
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 15
                AutoSize = False
                Descriptions.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                Values.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                Height = 24
              end
            end
            object tsccco: TdxTabSheet
              Caption = 'Compras'
              object Label74: TLabel
                Left = 5
                Top = 37
                Width = 27
                Height = 14
                Caption = 'Email'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label75: TLabel
                Left = 5
                Top = 13
                Width = 32
                Height = 14
                Caption = 'Nome'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label76: TLabel
                Left = 5
                Top = 61
                Width = 41
                Height = 14
                Caption = 'Fone_1'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label106: TLabel
                Left = 196
                Top = 61
                Width = 41
                Height = 14
                Caption = 'Fone_2'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label107: TLabel
                Left = 196
                Top = 85
                Width = 18
                Height = 14
                Caption = 'Fax'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label108: TLabel
                Left = 5
                Top = 109
                Width = 35
                Height = 14
                Caption = 'Celular'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label109: TLabel
                Left = 5
                Top = 133
                Width = 35
                Height = 14
                Caption = 'Nextel'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label110: TLabel
                Left = 5
                Top = 85
                Width = 41
                Height = 14
                Caption = 'Fone_3'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label111: TLabel
                Left = 5
                Top = 157
                Width = 12
                Height = 14
                Caption = 'ID'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Bevel9: TBevel
                Left = 0
                Top = 0
                Width = 540
                Height = 210
                Align = alClient
              end
              object edcddd: TdxMaskEdit
                Left = 72
                Top = 56
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edcmai: TdxEdit
                Left = 72
                Top = 32
                Width = 465
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                CharCase = ecLowerCase
                MaxLength = 60
                StoredValues = 2
              end
              object edccon: TdxEdit
                Left = 72
                Top = 8
                Width = 270
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 30
                StoredValues = 2
              end
              object edcte1: TdxMaskEdit
                Left = 105
                Top = 56
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                OnDblClick = edtel1DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcte2: TdxMaskEdit
                Left = 271
                Top = 56
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcfax: TdxMaskEdit
                Left = 271
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                OnDblClick = edfaxDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edccel: TdxMaskEdit
                Left = 105
                Top = 104
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 11
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcnid: TdxMaskEdit
                Left = 72
                Top = 152
                Width = 108
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 16
                OnDblClick = edtel2DblClick
                AutoSize = False
                IgnoreMaskBlank = False
                MaxLength = 15
                Height = 24
                StoredValues = 6
              end
              object edcnce: TdxMaskEdit
                Left = 105
                Top = 128
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 14
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcdd2: TdxMaskEdit
                Left = 238
                Top = 56
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edcdd3: TdxMaskEdit
                Left = 72
                Top = 80
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edcte3: TdxMaskEdit
                Left = 105
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcdd4: TdxMaskEdit
                Left = 238
                Top = 80
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 8
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edcdd5: TdxMaskEdit
                Left = 72
                Top = 104
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 10
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object edcdd6: TdxMaskEdit
                Left = 72
                Top = 128
                Width = 35
                Hint = 'DDD'
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 13
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
              object cbctc1: TdxImageEdit
                Left = 179
                Top = 104
                Width = 169
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 12
                AutoSize = False
                Descriptions.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                Values.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                Height = 24
              end
              object cbctc2: TdxImageEdit
                Left = 179
                Top = 128
                Width = 169
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 15
                AutoSize = False
                Descriptions.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                Values.Strings = (
                  'VIVO'
                  'CLARO'
                  'OI'
                  'TIM'
                  'NEXTEL')
                Height = 24
              end
            end
          end
        end
        object tsEND: TdxTabSheet
          Caption = 'Endere'#231'os'
          object PCEnderecos: TdxPageControl
            Left = 0
            Top = 0
            Width = 540
            Height = 236
            ActivePage = tsCEP_COM
            Align = alClient
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            Style = dxtsFlatButtons
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpTop
            TabWidth = 0
            object tsCEP_COM: TdxTabSheet
              Tag = 1
              Caption = 'Comercial'
              object Bevel1: TBevel
                Left = 0
                Top = 0
                Width = 540
                Height = 210
                Align = alClient
              end
              object Label22: TLabel
                Left = 3
                Top = 3
                Width = 24
                Height = 14
                Caption = 'Tipo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label23: TLabel
                Left = 94
                Top = 3
                Width = 62
                Height = 14
                Caption = 'Logradouro'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label24: TLabel
                Left = 3
                Top = 43
                Width = 21
                Height = 14
                Caption = 'Cep'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label53: TLabel
                Left = 94
                Top = 43
                Width = 43
                Height = 14
                Caption = 'N'#250'mero'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label66: TLabel
                Left = 186
                Top = 43
                Width = 76
                Height = 14
                Caption = 'Complemento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label102: TLabel
                Left = 369
                Top = 43
                Width = 89
                Height = 14
                Caption = 'C'#243'digo Municipal'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label103: TLabel
                Left = 3
                Top = 84
                Width = 30
                Height = 14
                Caption = 'Bairro'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label104: TLabel
                Left = 1
                Top = 164
                Width = 14
                Height = 14
                Caption = 'UF'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label105: TLabel
                Left = 1
                Top = 124
                Width = 36
                Height = 14
                Caption = 'Cidade'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAPSQCEP: TLabel
                Left = 427
                Top = 3
                Width = 110
                Height = 14
                Cursor = crHandPoint
                Hint = 
                  'Habilitar ou n'#227'o a pesquisa autom'#225'tica realizada pela tabela de ' +
                  'cep dos correios'
                Alignment = taRightJustify
                Caption = 'Pesquisa autom'#225'tica'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 14065456
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
                OnClick = LAPSQCEPClick
              end
              object EDCOM_TLO_TX: TdxEdit
                Left = 3
                Top = 18
                Width = 90
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 15
                StoredValues = 2
              end
              object EDCOM_LOG_NO: TdxEdit
                Left = 94
                Top = 18
                Width = 515
                HelpType = htKeyword
                HelpKeyword = 'Logradouro'
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 60
                OnValidate = EDCOM_LOG_NOValidate
                StoredValues = 2
              end
              object BECOM_CEP: TdxButtonEdit
                Tag = 1
                Left = 3
                Top = 58
                Width = 90
                Hint = 'Click na lupa para mais pesquisas'
                HelpType = htKeyword
                HelpKeyword = 'Cep'
                Color = clWhite
                ParentShowHint = False
                ShowHint = True
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 2
                CharCase = ecUpperCase
                EditMask = '99999-999;0; '
                MaxLength = 9
                OnValidate = EDCOM_LOG_NOValidate
                Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
                      E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
                      FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
                      F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
                      AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
                      A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
                      EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
                      DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
                      7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
                      FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
                      CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
                      DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
                      FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
                      D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
                      CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
                      D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
                      EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
                      63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
                      EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
                      27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
                      A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
                    Kind = bkGlyph
                  end>
                StoredValues = 6
                ExistButtons = True
              end
              object EDCOM_NRO: TdxEdit
                Left = 94
                Top = 58
                Width = 91
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 3
                CharCase = ecUpperCase
                MaxLength = 10
                StoredValues = 2
              end
              object EDCOM_XCPL: TdxEdit
                Left = 186
                Top = 58
                Width = 182
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 4
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object BECOM_CMUN: TdxButtonEdit
                Left = 369
                Top = 58
                Width = 90
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 5
                CharCase = ecUpperCase
                MaxLength = 0
                Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
                      E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
                      FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
                      F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
                      AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
                      A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
                      EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
                      DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
                      7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
                      FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
                      CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
                      DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
                      FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
                      D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
                      CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
                      D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
                      EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
                      63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
                      EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
                      27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
                      A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
                    Kind = bkGlyph
                  end>
                OnButtonClick = BECOM_CMUNButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object EDCOM_BAI_NO: TdxEdit
                Left = 3
                Top = 99
                Width = 455
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 6
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object EDCOM_UF: TdxEdit
                Left = 1
                Top = 179
                Width = 29
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 8
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                MaxLength = 2
                StoredValues = 3
              end
              object EDCOM_LOC_NO: TdxEdit
                Left = 1
                Top = 139
                Width = 454
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 7
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
            end
            object tsCEP_COB: TdxTabSheet
              Tag = 2
              Caption = 'Cobran'#231'a'
              object Label3: TLabel
                Left = 3
                Top = 3
                Width = 24
                Height = 14
                Caption = 'Tipo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label8: TLabel
                Left = 94
                Top = 3
                Width = 62
                Height = 14
                Caption = 'Logradouro'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label17: TLabel
                Left = 3
                Top = 43
                Width = 21
                Height = 14
                Caption = 'Cep'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label19: TLabel
                Left = 94
                Top = 43
                Width = 43
                Height = 14
                Caption = 'N'#250'mero'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label20: TLabel
                Left = 186
                Top = 43
                Width = 76
                Height = 14
                Caption = 'Complemento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label26: TLabel
                Left = 369
                Top = 43
                Width = 89
                Height = 14
                Caption = 'C'#243'digo Municipal'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label27: TLabel
                Left = 3
                Top = 84
                Width = 30
                Height = 14
                Caption = 'Bairro'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label28: TLabel
                Left = 1
                Top = 165
                Width = 14
                Height = 14
                Caption = 'UF'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label29: TLabel
                Left = 1
                Top = 124
                Width = 36
                Height = 14
                Caption = 'Cidade'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Bevel2: TBevel
                Left = 0
                Top = 0
                Width = 540
                Height = 210
                Align = alClient
              end
              object EDCOB_TLO_TX: TdxEdit
                Left = 3
                Top = 18
                Width = 90
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 15
                StoredValues = 2
              end
              object EDCOB_LOG_NO: TdxEdit
                Left = 94
                Top = 18
                Width = 515
                HelpType = htKeyword
                HelpKeyword = 'Logradouro'
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 60
                OnValidate = EDCOM_LOG_NOValidate
                StoredValues = 2
              end
              object BECOB_CEP: TdxButtonEdit
                Left = 3
                Top = 58
                Width = 90
                HelpType = htKeyword
                HelpKeyword = 'Cep'
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 2
                CharCase = ecUpperCase
                EditMask = '99999-999;0; '
                MaxLength = 9
                OnValidate = EDCOM_LOG_NOValidate
                Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
                      E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
                      FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
                      F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
                      AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
                      A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
                      EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
                      DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
                      7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
                      FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
                      CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
                      DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
                      FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
                      D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
                      CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
                      D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
                      EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
                      63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
                      EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
                      27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
                      A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
                    Kind = bkGlyph
                  end>
                StoredValues = 6
                ExistButtons = True
              end
              object EDCOB_NRO: TdxEdit
                Left = 94
                Top = 58
                Width = 91
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 3
                CharCase = ecUpperCase
                MaxLength = 10
                StoredValues = 2
              end
              object EDCOB_XCPL: TdxEdit
                Left = 186
                Top = 58
                Width = 182
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 4
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object BECOB_CMUN: TdxButtonEdit
                Left = 369
                Top = 58
                Width = 90
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 5
                CharCase = ecUpperCase
                MaxLength = 0
                Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
                      E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
                      FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
                      F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
                      AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
                      A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
                      EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
                      DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
                      7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
                      FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
                      CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
                      DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
                      FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
                      D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
                      CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
                      D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
                      EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
                      63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
                      EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
                      27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
                      A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
                    Kind = bkGlyph
                  end>
                OnButtonClick = BECOM_CMUNButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object EDCOB_BAI_NO: TdxEdit
                Left = 3
                Top = 99
                Width = 455
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 6
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object EDCOB_UF: TdxEdit
                Left = 1
                Top = 179
                Width = 29
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 8
                CharCase = ecUpperCase
                MaxLength = 2
                StoredValues = 2
              end
              object EDCOB_LOC_NO: TdxEdit
                Left = 1
                Top = 139
                Width = 454
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 7
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
            end
            object tsCEP_ENT: TdxTabSheet
              Tag = 3
              Caption = 'Entrega'
              object Bevel3: TBevel
                Left = 0
                Top = 0
                Width = 540
                Height = 210
                Align = alClient
              end
              object Label30: TLabel
                Left = 3
                Top = 3
                Width = 24
                Height = 14
                Caption = 'Tipo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label31: TLabel
                Left = 94
                Top = 3
                Width = 62
                Height = 14
                Caption = 'Logradouro'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label32: TLabel
                Left = 3
                Top = 43
                Width = 21
                Height = 14
                Caption = 'Cep'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label33: TLabel
                Left = 94
                Top = 43
                Width = 43
                Height = 14
                Caption = 'N'#250'mero'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label34: TLabel
                Left = 186
                Top = 43
                Width = 76
                Height = 14
                Caption = 'Complemento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label35: TLabel
                Left = 369
                Top = 43
                Width = 89
                Height = 14
                Caption = 'C'#243'digo Municipal'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label36: TLabel
                Left = 3
                Top = 84
                Width = 30
                Height = 14
                Caption = 'Bairro'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label38: TLabel
                Left = 3
                Top = 124
                Width = 36
                Height = 14
                Caption = 'Cidade'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label39: TLabel
                Left = 3
                Top = 165
                Width = 14
                Height = 14
                Caption = 'UF'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object EDENT_LOC_NO: TdxEdit
                Left = 3
                Top = 139
                Width = 454
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 7
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object EDENT_TLO_TX: TdxEdit
                Left = 3
                Top = 18
                Width = 90
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 15
                StoredValues = 2
              end
              object EDENT_LOG_NO: TdxEdit
                Left = 94
                Top = 18
                Width = 515
                HelpType = htKeyword
                HelpKeyword = 'Logradouro'
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 60
                OnValidate = EDCOM_LOG_NOValidate
                StoredValues = 2
              end
              object BEENT_CEP: TdxButtonEdit
                Left = 3
                Top = 58
                Width = 90
                HelpType = htKeyword
                HelpKeyword = 'Cep'
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 2
                CharCase = ecUpperCase
                EditMask = '99999-999;0; '
                MaxLength = 9
                OnValidate = EDCOM_LOG_NOValidate
                Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
                      E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
                      FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
                      F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
                      AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
                      A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
                      EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
                      DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
                      7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
                      FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
                      CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
                      DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
                      FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
                      D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
                      CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
                      D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
                      EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
                      63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
                      EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
                      27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
                      A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
                    Kind = bkGlyph
                  end>
                StoredValues = 6
                ExistButtons = True
              end
              object EDENT_NRO: TdxEdit
                Left = 94
                Top = 58
                Width = 91
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 3
                CharCase = ecUpperCase
                MaxLength = 10
                StoredValues = 2
              end
              object EDENT_XCPL: TdxEdit
                Left = 186
                Top = 58
                Width = 182
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 4
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object BEENT_CMUN: TdxButtonEdit
                Left = 369
                Top = 58
                Width = 90
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 5
                CharCase = ecUpperCase
                MaxLength = 0
                Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
                      E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
                      FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
                      F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
                      AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
                      A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
                      EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
                      DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
                      7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
                      FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
                      CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
                      DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
                      FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
                      D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
                      CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
                      D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
                      EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
                      63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
                      EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
                      27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
                      A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
                    Kind = bkGlyph
                  end>
                OnButtonClick = BECOM_CMUNButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object EDENT_BAI_NO: TdxEdit
                Left = 3
                Top = 99
                Width = 455
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 6
                CharCase = ecUpperCase
                MaxLength = 40
                StoredValues = 2
              end
              object EDENT_UF: TdxEdit
                Left = 3
                Top = 179
                Width = 29
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 8
                CharCase = ecUpperCase
                MaxLength = 2
                StoredValues = 2
              end
            end
          end
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 577
    Width = 542
    inherited SBRodape: TdxStatusBar
      Width = 536
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 125
          Text = 'Consulta'
          Width = 125
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 0
          Width = 260
        end
        item
          PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
          PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
          PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
          PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
          PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
          PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
          PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
          PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
          PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
          MinWidth = 137
          Width = 137
        end>
    end
    inherited PNLSBRodapeSynchronize: TPanel
      Width = 536
      inherited PNLSynchronize: TPanel
        Width = 475
      end
      inherited PNLGF: TPanel
        inherited GFSynchronize: TRxGIFAnimator
          Image.Data = {
            251F0000474946383961DC00DB00F7F900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0015
            1515535353818180B1B1B1E6E6E4FEFEFC21FF0B4E45545343415045322E3003
            0100000021F904050A00F9002C00000000DC00DB000008FF0001081C48B0A0C1
            8308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C
            49B2A4C9932853AA5CC9B2A5CB973063CA9C49B3A6CD9B3873EADCC9B3A7CF9F
            40830A1D4AB4A8D1A348932A5DCAB4A9D3A750A34A9D4AB5AAD5AB58B36ADDCA
            B5ABD7AF60C38A1D4BB6ACD9B368D3AA5DCBB6ADDBB770E3CA9D4BB7AEDDBB78
            F3EADDCBB7AFDFBF80030B1E4CB8B0E1C388132B5ECCB8B1E3C790234B9E4CB9
            B2E5CB98336BDECCB9B3E7CFA0438B1E4DBAB4E9D3A853AB5ECDBAB5EBD7B063
            CB9E4DBBB6EDDBB5F5F1EBC7AFB7EFDFC07F57D4CD3BB8F1DFFB36EFFBC7BCB9
            F3E7D0F551E407BD7A757FCAAD6B772E7D22F5EDDAB16BFF5E0E5E7B7789DFCB
            43179F39BDFAE7E723BA7FCF9C3DE6F9F4FFC58788FFBDFDCBFDBDB7DF430196
            F79F65059637A043096E7760650D6EB76043115AF72065155A37214319AEB759
            87D14D979F73174E06227C228E58DF872A36B7E142273657A26431BA98A28A33
            465623732F2AB4638E90EDA8DF8D2302F998903D26F4238B2D0EE95D93463A86
            2491F945D9D89413F50325932D2689D092E3F923E698649659663F15ED63E69A
            6BA289DB9B70C629E79C74D669E79D78E6A9E79E7CF6E9E79F80062AE8A08416
            2A953EFD24AAE8A28A8AC9A89B13EDF3E8A493F2935D935E1E04667B4D3A89DE
            969A61F9698B563226AA7CA0728A2995F495BAD8A9FCA5B67A5FA7991AB4E9AC
            AB3E492A972AD65AD0AD00D2CAAA7FBC8EE82B41C02228ACAE38169BDFB10325
            0BE1B2A3361B2AB5A8EE7A6DAED516E92C7DD00A242D86D8C6AAADAA5D0EAB9E
            AB8AC14AA0AC97214AE9BC895A4A91A4F4CE6BAFA1FCF6EBEFBF00072CF0C004
            176CF0C10827ACF0C20C37ECF0C310472CF1C414576CF1C51867ACF1C61C77EC
            F1C720872CF2C824976CF2C928A7ACF2CA2CB7ECF2CB30C72CF3CC34D76CF3CD
            38E7ACF3CE3CF7ECF3CF40A714100021F904050A00F9002C4C004C0043004300
            0008FF00F3091C48B0A0C1830813EA5BC8B0A1438703014804F070E1BE8B1709
            EA4BC851A0BF8F20438A1C29505FBF91FE3A0ADC0740E5417DFF5C1EE4976F5F
            4C990559E2D47873A7409A367D0ED42914A6D09FF98C1EE5D7B2684F9F34950A
            657A542AD4A44F7752757A345FD4AC38B7FAB4AA156B57B13BC986F5D8B55FD3
            B16065D2CC97F2A8DBAA715DCEAD2BF42ED7A56CEDBE4D9B57E5DEB68371AA95
            2BB01F62BC671B77F59758E662BD928F52860C389F63CD955D5E36DC75E0E6BF
            534B7B0CAD7274C7B9AA59ABE47BD5EBBFDBB873EB2E3C959FEFDFC08303DF58
            B39F71E3C0315E84A8BAB9F3E7D0A34B9F4EBDBAF5EBD8B36BDFCEBDBBF7EFE0
            C38BC01F4FBEBCF9F3E8D3AB5FCFBEBDFBA40E95EF038E5C2000F9F8F363243E
            39E4EEFFFFD4A50F6D6579F7CF46FCA5662082A5C1C6DD814935D8D53E5D4198
            606D425178948504AE75948642FD43E180917D58E188129AB8E1881D32A66288
            2C9658D48949B5885955154695E28C1B4665236938F658A38C63E538646745FD
            C8D13F8E9188A44F0028991093472A2854941B362965420EEE8465885A12E9E5
            960751E9A4955092E911485EE513258070E2D6254EF705875F45FABC85E79E0D
            8917100021F904050A00F9002C49004B00490045000008FF00F3091C48B0A0C1
            830813EEE3C79061BF8710234ADC97B0A2C58B08F5F9FBC7B1A3C78F1FFB01C0
            980F80C993284DEA434992A0469030618A1C6930A54D00FAF62DECE7CFDFBE93
            2D07BE0C3A70E6419BFA72F2E3E9CF203FA0448712CD67D460CE9D3C2FCEA419
            542AD17E2B0BEE63FA7525D7965E83823DFBF2DF547F66A7A66DB996E0BE8D6E
            89FA342977E3D47C70D9F6E3F8F7E759927349062E38382FD1A7873126C6B898
            20BF8E53AB76F5FB36AC5DCC7A3D6F761CB4B250BC9D23631CFCD7B4C0B68555
            6B25DDD2B5C0C67F9FFE659DDA29E1A9BA33D3562C7AE0BEDF5F655BE41D3AF2
            E48B70770FA75CFC3567B9D25B57BF3D1D2345E1DA555FFFFE9B8F5FEEA63DD3
            AB5FAFBEAEC1E3E4FB914F4ABFBEFDFB71AD7647E891BCC09B00DE84105E317D
            E44F3FFCECA38F7F0C26D4184C3D21A8E0820D5688D0651D4598A082167658D1
            581272E8E188165148E28928A6A8E28A2CB6E8E28B30C628E38C34D668E38D38
            E6A8E38E3CF698E2554B99E763463A2DD5538626FA98D44E47C6F49D8E4B1A59
            20484F1614E09550F5F51149FF0869A54AF88559DF7CFEC957130063B1A7267B
            604D054053DA9DE965501C55491200664EF58F9D250130674B75BA9927517BCA
            F957A044F9495E9767F28911A241A1B9E8A0FF49AA67A1896A7468740499E4E8
            4590B684139C84623A90A7879A2A2A9EA9FE89EAA59F569264D29F5C32DAA9A5
            A5C69AD0ABA5B6792AAE74AA7A279AA402FA0FA795EA9A1047B45EA452B1B5FA
            74ABB2FCD91A294E943ECAECB4ADBA6952B6A0724429B0C636EBACA2A55AFB1F
            B5076DEBED5DA545986449EC1AE46EA2C442F7D086F3AEDBADB79A16A4E18429
            21446EADE65AA4927C07F28BA5C1F51674EFB5382585255FB21E37E59409CBA8
            8F4420870C51C42406040021F904050A00F9002C4400470054004D000008FF00
            F3091C48B0A0C183081322D4C7B061C37D10F5299C48B1A24581FAF8F1EBC7B1
            A3C77EFE428A0CC94FE2C5932827EEEBF7AFA5CB973061FADB97B2A6CD812B63
            EAD4E98FDFCD9F2873EE1CDAB22780A300802A4D28D4E545A34897564C7AB269
            CBA7FC9052954A50ABD6AA2C5F62FDBAD4ABD9A817F585756A11EA519B6791EE
            E3B7EFEC49B530C7A23D19F7E84A7FFD4ADAB588576CDBAC7B2DF6553B10705D
            B369411AAEE876AB62B319FD11042CD86B647F93295646E935F341CE90094B66
            4B1971E2A90032F65308589F67D5A0598B76FDF6EEDF89A8C956549BFB6ADB7E
            B65F2BD4F79B32F2DB14338706FE5CF941E61B41EBB57E9D5FF17F4FABF7FF5E
            9E5D37F5E4E3274A374F5BBC6584FB424E07CEFBA2F7F9096B0B5FB89AFDC47E
            8FBDA7D07DFE25E49E4AFD19B79D7DDF85879E8005FD15134A33A587E048188E
            F411479D5968906CDF81875275694164E23E0EA5D8505C14CDB596824F3D5653
            5F34EEC7548235F5E3216C35F645D846F85554175C3D0E669184309EA423574C
            0A64D5452EF9D46493EB8978904E004EA925920411D5939660E6131F51302117
            2698550E35D3996716B6534F26B119E698313926E79DFCC814589C77B6995B48
            59F6D9677C9CF1296874406D84E2A184AD44D34D0C317A6476664A1A2688B949
            69E9947F7DB7E6A65C8188A5A1A0DA84244F9A965A539A3B05AA6A502F7AFF59
            E9ABC311B8D3402E7D496B8B2126D9654BAEEE5A50526B41595449C20EAB8F66
            29BDB4279145C2C558B3B906AB509134CE181FB52E3D4B11B63EA674D46CDCFE
            53E8B78BA9A8EEA217F9C5EC497A3E7AAD5C1B6DD8518623A53A1152DEA1A427
            B2F3BA0B6FB7F2EEEB17B9C6BE549BC10227FC8FB50969D5AFC3C7A27BF0C045
            15CC707316293C6BC472215C91C21A076C9AB180EA8B90562B616C6EC9201F45
            1C949CB1CB30002D3BFC298F476547593E74911A33CE22534472BB5ACD4C1DCC
            37E7DC71AE4C1F549ACF0839961C6921BBAC2BCF324F6C10800F627DB1CE2A07
            1CF2BB02C1991AD232173D91C2650FDD3548697708DD656D6B1DF7CA667555EA
            DEDA78C7E6B64270F38599460F02CEB6E07A1B1EAD5249D3FD74C58BDFCD55E4
            8D1B7E67E468BF9DEBDEAA269D4FAF641E2B74B2C495CED3C7C90E94BAEA7A9E
            9E6CA7F8026A6F60AD27C4DC8928AA1B29AD01010021F904050A00F9002C4200
            4300580055000008FF00F3091C48B0A0C18308131ED4C750A1C38710234264A8
            6F9F457E18FBF5F3C7D19FC67DFA248A1C19B162C68D1DFFA95CC952A5477EFB
            48CA9C49501F3F8DFE5AEADCF93226CD9F236DE2DC4974654F0048932605CAD4
            E0BEA14589FA13B84FA955A44DB33EDD18F5DF418FFD405E559AB5E9BE9B39A3
            7ED5C84FDFD8A565819EE5AAD620C77E6DDF628DFB736EDAA25F5FBAD5CBB72F
            DAAE81F10E7E5B98A65FC47605EB05D078A6508E750BDECD4BB87241B8082FFF
            DD89F06867CFF9AE26144A976869BC554F37661CFA666BD776614FAE3C99F2C2
            ADA349E786B99B6FEFBD078143D6FCB178D6E3649343059C3BAC73A0D0AD227C
            9C992058B1B26566FF1F9BFC70F7819B17939F399E7641EED4354B0E2FB13DFD
            CB6A3B82C50B3336FD88F6B93790492869C4567F2051A41E74E229555182F691
            14A06A122A751646162D781D8013463792830662D49F860242D4A1872229659B
            81FCC1C4506F1546881D00FBE8C7E281196E88DA4F21E5A35F47376248A26F3B
            3255A357DEFDB8DF881416F9133F2B29F4235BE021C7D78309FED44F9412DDE5
            1F9157AE28A24519F6E8903E5B7219914783A186264AFBB58860994E05D7253F
            6056F6D46877052922860541D952973EEDB8A74E36FAC94F4D690EEA904AFD38
            99CF4D5125CAA29947EAA4104B8B3AC94F705201F991403681AAD2412DF963A6
            9BB77565A34F67C5FF27D04E913A89665752E14555A3C215D56991FA988AEB3F
            FE2C2AD4B044156AA8B0B8166B12B3AEAE8A9AA0C8B6A4D8A1D5B2D48FB49EF1
            9AED3F61E58326B451D5EA24B3B34A0593B89F92CBD3AF3BEA835BBAEFF6D86E
            4AC8FAA3ECB49A1A4454B802ADA85FB30017C96B42FF627A239CCCB2E964A60F
            EDA4AC4D27B1886FAADB7A3A154488AE6AD29F15C36994623B0280A648D61AC4
            109964FE69F16625D3686E449C9EA920CB2286E85952A24964D4BE12DD0C126F
            0ECEC5F0C608B904B4A4295AF5F1CB1DF93810A4DC325DDF580F867C74475559
            4D935E2BE77C23906D96955D8C605FA4B57556367D22DA607F7C129E285E7D62
            9E0F8DB7F2859C81F6E6F6DB2A2BD4DEDE5FE2CDA1DE14593469C540AEFB997D
            2F6AD7E05B4FE3347051E9197477DB7F5FE557D2980BA6F9E65F838D16E8A192
            3CFA8433527E3AAAA1ABFEB88CAD638D16D204B92AFBEC0C3E673A4AB0630E1B
            4267C735196BB84F5DE9F0C4EBD8D4F1B6254F6FAE8E1FF49FEF9403177CAE05
            5B2FF9CE69E3B43D4FA3265437D17A7DEEEFF2DD7BBDFA5BEA17E4AAE8EE7B9F
            FEEBF2574A7FFDBC8F157FEEFADB1DFF04D29BFF292F766D1960FFAED2B3FC21
            B06AF5EB4D0301B8BC042A9020D08B94BB10C5BC0B0E8430D1FB16B13AE84185
            204F843D29E1434EA8BF3E6168682A7488D1FAD4223251248640B9610C030200
            21F904050A00F9002C42004300580055000008FF00F3091C48B0A0C18308131E
            04C050A1C3871023466448B1A2C58A12336A9C68519F477D174352DC4892E447
            7DFB52F25BD9AF654B7E20455E2C4933E13E962DFDE9D4F9AF674F82FE60CA9C
            59B3A8407DFDFCF95CCAD42750A143311A2DBA2F69D3AB3F07FAEBB72FAAD4A9
            34AB2AC5DA142857AF5FC16E144BB6ACD6B3681BAA25C9B6ED52B35DE302986B
            D2AA5DA76FF3C6E5BB11E9D8BFFFF0EADD4B38A33E7E8711BFE5B7B8B163C888
            01E7DB4A59AF65898FFB65CEBAB91F54B49F25F2133D7A724CD4081FEF4B2D70
            7564BB044DBFF61A1BA7BED4B65B6B3DCDDB60E8A43A675BAE2BF9EDEEA8C657
            23EFE94F3961E67FCD3E1F5AF0384F9FFE7E5FFFF7DB5CE056C1B0F379BFFDAF
            9FF8B9D87107AEACBE2AF9A6EEF9C66FAB7870FDE96DE5A7D67E88F9930F7A69
            1184128076C1C4D148071996D94E3A399811815805F59E42214547E14E2EADC4
            4F4A297DB4D67D055A9810770491B8CF49E3B197E28606A547DB81328EA61B42
            F4A5B64F8EA3B5A7E2408B41D8D88F4192C5598D45263815924966C80F934D3A
            491590416E45659572C18765815B6DC8A5454746B9944E2D5997CF984612C68F
            5B02B585A6696AB2D965636FDE55D0553A0DF4229176DEC85A62096936625E80
            B279A33E6341F4D28B10EA85D2768CD186A4435BD1B99B4071D98760A5B40100
            99429C414AE69A512D58EAA93702F098810795FF4A29AA43BD6A9E6E5636C690
            6106714669A7A34E962B61148985D7AF5EA9DA2B5CA0A65691B1A5992A13AD1D
            D9865098CD3A4B516815228BD14528599B908637726AD14D5C792B5545E12605
            D194E586246D71B4A2DB0F44D4A9F9999D95BA7A93797A1E041E8DC406DA623E
            F7CA28B04F025AC6EF408FD9F6E540F8ED6BF051129BE913BC052B4A10645F22
            C6F15C0F7F1C7266238355B29F836A0C5ECA2A8F5910864906657191D1A11825
            B9DA7A96F3C952127C338B11AEA631CF7C9D54224144F70634783B6AF4918B22
            BAF4E1795B0E0B316613461D91AA1416C8158F5A17C4B55DBE920DEE666662CD
            A146792A9936B5A9BA4B71D7301B157753688EC59868B2C1C689379E7C3ECA74
            5CB6DE2DF6906AB53CA7DF87A3151A41A3CD9D346B8FEB4B77ADE20A8E98D797
            67BE905E9DE75339E3731D37A2D08B957EBAD0F0ADAE365AD07AFE17D29FC16E
            6EA776DB8EF6D8E572C83BACBECB097CF0B34755BBE95D6B8EFCDFCAF7CEBCD8
            CE3FBFB94CBC2A7EFBF1D6479EACF49573DFFDEE80133FFDF6795B2F69E0E7FF
            65DAF805AD6F7EFB01A6FF7CEBE06726FEF8F89BCFD48721FA13FCBCE715B164
            CA34F02A918906B822499D84280C7C90CF22389536513020000021F904050A00
            F9002C42004400570052000008FF00F3091C48B0A0C18308090248C8B0A1C387
            10230A044051A2C58B18F351DCC8B1E3C68C20436AF448B2E4429128219A5CE9
            31A5CB862C37EA9B59F2A5CD8133F7EDCBA7731FBF9F3FFB091DEAAF9F3E9237
            6DF2F3E7EF9F53A70FFDED439AD465BFA758A34E6D5935E555AC501D4AA5DA55
            E457B05AC93EE427749FBEB203CF6615BBB563447DFD9A3AEDE7B62C3FB0611B
            8EE5FA709FDCA7FDF8BDBDF91730C4BA76D7EA05FCAF28BF9D2E1BA35D5BD321
            5ECA802DF70DA97973437E9D1B7E064DB928DFC5174BCF3D9D9AE1BEC9AC5B1B
            C5B80F3467B50965FBCE171AB3C5DB947F134EB83A3741B0FEF8F1C6FD547964
            DBD41D17C4CA777A7287FD6A23FF143EDBA0D3A2B02522D7DE303C7083CDD923
            AC2CDDBBFC8446DF175C7F1F613F90FC9587DF51D705F7DD5A47D9971B68F97D
            14557F090D769244FA64B72062E93DA40F840372645185173298A143A5C5B69C
            67163EC5D48A2BB675D1591749E8614440FDD4D38D33E538E25DD5BD48608170
            1DD7A345A8E917A4864B0506913F3F0279E471F545E49E784F7E68983F85AD54
            654814E97365844D9EB8A5451CE9C31696051569D2985C96E9535E6842E6249B
            6492E4255B538AF9908374AE44939130F1D9674C335EA4E793840A1AD19A748E
            C452465A36EA28957BC624E9A485D649A8A480329468A663CEE950497F761A64
            45189564D86B945E3AAA49FFE5FF235A9813BA5A29A9065916A6ADB7961465AE
            ACD6CA2B422CA1C95051A30D9B9049C645D59DB207C17A117D3BF24AAAB11121
            06AD4224359BAD53BF62A4638E37F6F453B5D17A84D7B44F79EB199E42B1C862
            6BE1065A26B60F6185EF5A218256AFBD142D251158FF9ED62F65057BDA65ACF9
            02E62EB11B91D76FC20ADF06516BE84EE4D1C3E6217C24830073647143FE66F4
            19C9AC713C90AAFB760C18C3C7E995506E4C86BCD1C80C817C9199931DB420CC
            106FDCF2769401FDD861CF2D18DDAB423B24E2CE87FD23508852F57AF3D04483
            B55B6C4C1DCC5DC62BAB8B75D25A839DD09B2982B6B4D55D8E3D50D166337467
            5E213ECBF4BD0D979DD2DC69FF64B3F5DD32B93D75687153C816BD8B8A9DB7BE
            85EF7C25622A1B64A7D13E131EA49779FD0DF8C28BABD8384A9F4FDEF9799F87
            4A12E52EEB1BB9AB25A19EF5D7DB72EBD1522D0E25548D97E1187B41768EFBE8
            EE417F7A28F0C29B1A7BF1C0278EEA9301010021F904050A00F9002C47004900
            4D0049000008FF00F3091C48B0A0C183F9000040C8B0A1C38706154A9C48B1A2
            428818333EB4C891A3C68F20F3E9DB47B2A4C97DFC52AA4CD96F9FC4903021F6
            FBF70F64BF972051F22BA94F5F4C82FE68DAC4A9515F509A48FD29EDD72F25CF
            9E108F0EBDF8D12852A102AF6A55EA6F9FC399353FDEA45AF428D6825AAFF6FB
            7A36A33FA219F7696598F61F3FB66135BE251BF72AC4AB771B8205B977E147B9
            4835FE73C997E0E08F8541F2F3AB917163818FF5C2C538B92D46CB860B82CD8B
            31B2D8C455271E1C0D79B34CD46EF5A936C85AAFECD06E3D47A5B81A76E9DB84
            753F1C7B19B3EFA8C03F1E9739DB6067D2C85D37D427FC213FE9029F83BC8DFB
            2175E89CB1E7FFD39EBA3843B9302D33245F54FC41F4211937647FB0EEBFE419
            27C3C47FF0B9FDFFF785145848B239E4DF7F5C25B856480B1266DE40239DB44F
            4F145658614CFBACA59466DDFDE4A1411492C4523F5CD1D6E1872812C4514F25
            F1C3944B29C6C8504715C9682342349E78E38E0959C4E38F113507E490033D48
            E4914826A9E4924C36E9E493504619A591526AC45B953F7984E547396E99518E
            EE7929924A2451A8A5982A7A5510574CED542654680A04809AA5F9934F531F5A
            A8A785133AA4D080CAF9945382842658979D0DFD091378188D06E0A182E20840
            839071791180F5D1E44FA4414E1AD23F887EA910A51869CA69411285AA18A91B
            8D0A92A9922ACFA46A46FFB0EAA7A2CA817A6A910AEDFA975D96020068A9BAC6
            EAEB43340DDBAAB0AF16DBE99C9F2E16ACB2C8D2E4EB4474D24A53B6104944AD
            4348ED4AD1B70D21C5EDB2E4D265EDB39E2A16EEB4CD0688EA44B6960BAB95B8
            BA2BEFBCAEEA3B6BB7F96ABBEFBCC7AAAB2948129D5BEDC00799F52B4DF526AA
            90C2E06E3B5D5DF6428CF0C4F1522C1062181BA455BAB17A6CB0C9FA90F8E840
            236F0C6DAED27AD7A28B242A659FC92577EC61883A3155B0C438671A3396BD32
            6574532B9169523E412F096697623EDD519C357E18100021F904050A00F9002C
            4B004C00450043000008FF00F3090440B0A0C1830801085CC8B0A1C38710230A
            D4C7AFA2C58BFD326ADCC84FA1C48814F909BC48B224BF7D0CF9FDFB08922544
            952B1BFE9B49B3264D7D0B55BA7C88736743983E05CED4E75167D0853D8FE603
            AA94E8C8984D953E959ACFE952A847931E35DAB428D6A05A8372CDEA956A589F
            63C196957A76675A9F56F77D854BF5AD4B7F0405CA355B77EE5D8FF9F6B2052C
            D62F4BBC0B0577956AF73060C564195345ACD7304BAB5B273FB6FC11B358CD89
            394BF48C167465B3844B4BA51C5834C8D4547DB286AC566A3FD3AD5DDA1C1ABB
            37527FC0830B17BE51636F7F0B872B1F7EDBB7F38505F5499F4EBDFAF3EB1113
            E6C5CEBDBBF7EFE0C38BEC1F4FBEBCF9F3E8D3AB5FCFBEBDFBF7F0E3CB9F4FBF
            BE7DF5DA61DB07505D7A7EFDED2DA75C71023527D53EC525A860462225961E00
            FDECB6DB43FF20F75C5B2C412855852951F50F861F69A81487397908A244221E
            45E248264A9562502B2ED5A2522FFAB422000D8E78627606C268613E387A4855
            8D3BDD98A38A43F618D48F416E98E464D01D09E393AB4529A48B4ACA66E588AE
            4144E44E4C4A5964970F7D79D7962AFE789499870DD4649A438A09A69B72B214
            63506F1E652141757E74A74F792E49E7866AE2D9E7476AC224E14C10FDB953A0
            5A2265124604E6D3CFA12822B8E0A60CBAF7DFA78005040021F904050A00F900
            2C4D004D00430041000008C900F3091C485020BF830811165CC8B0A1C3871023
            4A9C48D11F008A183366B4A8B1A3C7861C3F8AFC1872A4498C254FAA84E86FA5
            4B962F63CA9C49B3A6C48B3673EA3CC96FA7CB9E3E55020D6A72285191468F7A
            4CAA5423D3A6189FDA944A71DF447F58B342DD7A138057AF5CC38A1D4BB6ACD9
            B368D3AA5DCBB6ADDBB770E3CA9D4BB7EE4DB9FDF2EADD6B372655B57FD30646
            3BF86C61B387CB268EA96F29D4C61D17BF84ECF4B1E3A694334A769939AAE5B8
            FF3AB70D2D973468D16C4DC3557D74AFEBBC6803020021F904050A00F9002CDB
            00DA000100010000080400F305040021F904050A00F9002CDB00DA0001000100
            00080400F30504003B}
        end
      end
    end
  end
  inherited SBPrincipal: TSpeedBar
    Width = 542
  end
  object cad_rep: TIBDataSet
    Database = FBird.DBERP
    Transaction = TEdicao
    DeleteSQL.Strings = (
      'delete from CAD_REP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_REP'
      
        '  (API_B2B_COD_ENV, API_B2B_COD_REC, API_B2B_DTC_ENV, API_B2B_DT' +
        'C_REC, '
      
        '   API_B2B_ENV_SYNC, API_B2B_ENV_SYNC_DATA, API_B2B_REC_SYNC, AP' +
        'I_B2B_REC_SYNC_DATA, '
      
        '   BAI_NO, BAI_NO_ABREV, CDCO, CDPD, CDPG, CDST, CEL_CONTATO, CE' +
        'L_CONTATO2, '
      
        '   CEL_DDD, CEL_DDD2, CEL_EMAIL, CEL_EMAIL2, CEL_TEL, CEL_TEL2, ' +
        'CEP, CMUN, '
      
        '   CNPJ, COB_BAI_NO, COB_BAI_NO_ABREV, COB_CEP, COB_CMUN, COB_LO' +
        'C_NO, COB_LOC_NO_ABREV, '
      
        '   COB_LOG_NO, COB_LOG_NU, COB_NRO, COB_TLO_TX, COB_UF, COB_XCPL' +
        ', CONTATO, '
      
        '   CONTATO2, CONTATO3, CPAIS, CPF, DDD, DDD2, DDD3, DEST, DTAB, ' +
        'DTCA, DTDV, '
      
        '   DTED, DTFU, DTNF, DTPP, DTPV, DTRO, DTST, DTUTPC, DTUTPP, DTU' +
        'TPV, EMAIL, '
      
        '   EMAIL2, EMAIL3, ENT_BAI_NO, ENT_BAI_NO_ABREV, ENT_CEP, ENT_CM' +
        'UN, ENT_CNPJ_CPF, '
      
        '   ENT_LOC_NO, ENT_LOC_NO_ABREV, ENT_LOG_NO, ENT_LOG_NO_ABREV, E' +
        'NT_LOG_NU, '
      
        '   ENT_NRO, ENT_PRAZO, ENT_TIPO, ENT_TLO_TX, ENT_UF, ENT_XCPL, E' +
        'NVEMAIL, '
      
        '   FANTASIA, FIS_CREDICMS, FIS_CREGTRIB, FIS_CRT, FIS_INDFINAL, ' +
        'FIS_INDIEDEST, '
      
        '   FLAG, FOR_DEGP, FOR_RESE, FOR_TIPO, GRUPO, HOST, ID, IDCA, ID' +
        'CR, IDCT, '
      
        '   IDCV, IDED, IDEP, IDESTRANGEIRO, IDST, IE, IM, INFADCAD, INFA' +
        'DCNAE, '
      
        '   INFADFIN, INFADFIS, IP, IS_PDSC, ISUF, LOC_NO, LOC_NO_ABREV, ' +
        'LOG_NO, '
      
        '   LOG_NO_ABREV, LOG_NU, MFRT, NAFA, NRO, PCOM, RAZAO, REP_BAI, ' +
        'REP_BAIC, '
      
        '   REP_BAIV, REP_CCEL, REP_CCM, REP_CCON, REP_CDD2, REP_CDD3, RE' +
        'P_CDD4, '
      
        '   REP_CDD5, REP_CDD6, REP_CDDD, REP_CEL, REP_CEP, REP_CEPC, REP' +
        '_CEPV, '
      
        '   REP_CFAX, REP_CICM, REP_CID, REP_CIDC, REP_CIDV, REP_CMAI, RE' +
        'P_CMUC, '
      
        '   REP_CMUN, REP_CMUV, REP_CNCE, REP_CNID, REP_CNPJ, REP_COMC, R' +
        'EP_COMI, '
      
        '   REP_COMP, REP_COMV, REP_CONT, REP_CPAG, REP_CPAIS, REP_CPF, R' +
        'EP_CRED, '
      
        '   REP_CTC1, REP_CTC2, REP_CTE1, REP_CTE2, REP_CTE3, REP_CTRA, R' +
        'EP_CVEN, '
      
        '   REP_DALT, REP_DCAD, REP_DD2, REP_DD3, REP_DD4, REP_DD5, REP_D' +
        'D6, REP_DDD, '
      
        '   REP_DEGP, REP_DFUN, REP_DPAG, REP_DTPED, REP_DTRA, REP_DULT, ' +
        'REP_EMAILCOB, '
      
        '   REP_EMAILCOM, REP_EMAILCON, REP_EMAILFIN, REP_ENVMAIL, REP_EN' +
        'VWEB, REP_ESTA, '
      
        '   REP_ESTC, REP_ESTV, REP_FANT, REP_FAX, REP_FCEL, REP_FCON, RE' +
        'P_FDD2, '
      
        '   REP_FDD3, REP_FDD4, REP_FDD5, REP_FDD6, REP_FDDD, REP_FFAX, R' +
        'EP_FMAI, '
      
        '   REP_FNCE, REP_FNID, REP_FTC1, REP_FTC2, REP_FTE1, REP_FTE2, R' +
        'EP_FTE3, '
      
        '   REP_IDEC, REP_IDEE, REP_IDEF, REP_IDER, REP_IDESTRANGEIRO, RE' +
        'P_IDST, '
      
        '   REP_IM, REP_IMUN, REP_INDFINAL, REP_INDIEDEST, REP_INSC, REP_' +
        'ISUF, REP_LOGC, '
      
        '   REP_LOGR, REP_LOGV, REP_MAI2, REP_MAI3, REP_MAI4, REP_MAIL, R' +
        'EP_MFRT, '
      
        '   REP_NCEL, REP_NEID, REP_NUMC, REP_NUME, REP_NUMV, REP_OBSE, R' +
        'EP_OBSO, '
      
        '   REP_OBSS, REP_PFRT, REP_PORTE, REP_RAMO, REP_RAZA, REP_REVE, ' +
        'REP_RG, '
      
        '   REP_RICM, REP_SITE, REP_STA, REP_STAV, REP_TCE1, REP_TCE2, RE' +
        'P_TEL1, '
      
        '   REP_TEL2, REP_TEL3, REP_TLOC, REP_TLOG, REP_TLOV, REP_TPVE, R' +
        'EP_VDSC, '
      
        '   REP_VULT, REST, RET_BAI_NO, RET_BAI_NO_ABREV, RET_CEP, RET_CN' +
        'PJ_CPF, '
      
        '   RET_LOC_NO, RET_LOC_NO_ABREV, RET_LOG_NO, RET_LOG_NO_ABREV, R' +
        'ET_LOG_NU, '
      
        '   RET_NRO, RET_TLO_TX, RET_UF, RET_XCPL, TEL, TEL2, TEL3, TLO_T' +
        'X, UF, '
      '   XCPL, ZAP_CONTATO, ZAP_DDD, ZAP_EMAIL, ZAP_TEL)'
      'values'
      
        '  (:API_B2B_COD_ENV, :API_B2B_COD_REC, :API_B2B_DTC_ENV, :API_B2' +
        'B_DTC_REC, '
      
        '   :API_B2B_ENV_SYNC, :API_B2B_ENV_SYNC_DATA, :API_B2B_REC_SYNC,' +
        ' :API_B2B_REC_SYNC_DATA, '
      
        '   :BAI_NO, :BAI_NO_ABREV, :CDCO, :CDPD, :CDPG, :CDST, :CEL_CONT' +
        'ATO, :CEL_CONTATO2, '
      
        '   :CEL_DDD, :CEL_DDD2, :CEL_EMAIL, :CEL_EMAIL2, :CEL_TEL, :CEL_' +
        'TEL2, :CEP, '
      
        '   :CMUN, :CNPJ, :COB_BAI_NO, :COB_BAI_NO_ABREV, :COB_CEP, :COB_' +
        'CMUN, :COB_LOC_NO, '
      
        '   :COB_LOC_NO_ABREV, :COB_LOG_NO, :COB_LOG_NU, :COB_NRO, :COB_T' +
        'LO_TX, '
      
        '   :COB_UF, :COB_XCPL, :CONTATO, :CONTATO2, :CONTATO3, :CPAIS, :' +
        'CPF, :DDD, '
      
        '   :DDD2, :DDD3, :DEST, :DTAB, :DTCA, :DTDV, :DTED, :DTFU, :DTNF' +
        ', :DTPP, '
      
        '   :DTPV, :DTRO, :DTST, :DTUTPC, :DTUTPP, :DTUTPV, :EMAIL, :EMAI' +
        'L2, :EMAIL3, '
      
        '   :ENT_BAI_NO, :ENT_BAI_NO_ABREV, :ENT_CEP, :ENT_CMUN, :ENT_CNP' +
        'J_CPF, '
      
        '   :ENT_LOC_NO, :ENT_LOC_NO_ABREV, :ENT_LOG_NO, :ENT_LOG_NO_ABRE' +
        'V, :ENT_LOG_NU, '
      
        '   :ENT_NRO, :ENT_PRAZO, :ENT_TIPO, :ENT_TLO_TX, :ENT_UF, :ENT_X' +
        'CPL, :ENVEMAIL, '
      
        '   :FANTASIA, :FIS_CREDICMS, :FIS_CREGTRIB, :FIS_CRT, :FIS_INDFI' +
        'NAL, :FIS_INDIEDEST, '
      
        '   :FLAG, :FOR_DEGP, :FOR_RESE, :FOR_TIPO, :GRUPO, :HOST, :ID, :' +
        'IDCA, :IDCR, '
      
        '   :IDCT, :IDCV, :IDED, :IDEP, :IDESTRANGEIRO, :IDST, :IE, :IM, ' +
        ':INFADCAD, '
      
        '   :INFADCNAE, :INFADFIN, :INFADFIS, :IP, :IS_PDSC, :ISUF, :LOC_' +
        'NO, :LOC_NO_ABREV, '
      
        '   :LOG_NO, :LOG_NO_ABREV, :LOG_NU, :MFRT, :NAFA, :NRO, :PCOM, :' +
        'RAZAO, '
      
        '   :REP_BAI, :REP_BAIC, :REP_BAIV, :REP_CCEL, :REP_CCM, :REP_CCO' +
        'N, :REP_CDD2, '
      
        '   :REP_CDD3, :REP_CDD4, :REP_CDD5, :REP_CDD6, :REP_CDDD, :REP_C' +
        'EL, :REP_CEP, '
      
        '   :REP_CEPC, :REP_CEPV, :REP_CFAX, :REP_CICM, :REP_CID, :REP_CI' +
        'DC, :REP_CIDV, '
      
        '   :REP_CMAI, :REP_CMUC, :REP_CMUN, :REP_CMUV, :REP_CNCE, :REP_C' +
        'NID, :REP_CNPJ, '
      
        '   :REP_COMC, :REP_COMI, :REP_COMP, :REP_COMV, :REP_CONT, :REP_C' +
        'PAG, :REP_CPAIS, '
      
        '   :REP_CPF, :REP_CRED, :REP_CTC1, :REP_CTC2, :REP_CTE1, :REP_CT' +
        'E2, :REP_CTE3, '
      
        '   :REP_CTRA, :REP_CVEN, :REP_DALT, :REP_DCAD, :REP_DD2, :REP_DD' +
        '3, :REP_DD4, '
      
        '   :REP_DD5, :REP_DD6, :REP_DDD, :REP_DEGP, :REP_DFUN, :REP_DPAG' +
        ', :REP_DTPED, '
      
        '   :REP_DTRA, :REP_DULT, :REP_EMAILCOB, :REP_EMAILCOM, :REP_EMAI' +
        'LCON, :REP_EMAILFIN, '
      
        '   :REP_ENVMAIL, :REP_ENVWEB, :REP_ESTA, :REP_ESTC, :REP_ESTV, :' +
        'REP_FANT, '
      
        '   :REP_FAX, :REP_FCEL, :REP_FCON, :REP_FDD2, :REP_FDD3, :REP_FD' +
        'D4, :REP_FDD5, '
      
        '   :REP_FDD6, :REP_FDDD, :REP_FFAX, :REP_FMAI, :REP_FNCE, :REP_F' +
        'NID, :REP_FTC1, '
      
        '   :REP_FTC2, :REP_FTE1, :REP_FTE2, :REP_FTE3, :REP_IDEC, :REP_I' +
        'DEE, :REP_IDEF, '
      
        '   :REP_IDER, :REP_IDESTRANGEIRO, :REP_IDST, :REP_IM, :REP_IMUN,' +
        ' :REP_INDFINAL, '
      
        '   :REP_INDIEDEST, :REP_INSC, :REP_ISUF, :REP_LOGC, :REP_LOGR, :' +
        'REP_LOGV, '
      
        '   :REP_MAI2, :REP_MAI3, :REP_MAI4, :REP_MAIL, :REP_MFRT, :REP_N' +
        'CEL, :REP_NEID, '
      
        '   :REP_NUMC, :REP_NUME, :REP_NUMV, :REP_OBSE, :REP_OBSO, :REP_O' +
        'BSS, :REP_PFRT, '
      
        '   :REP_PORTE, :REP_RAMO, :REP_RAZA, :REP_REVE, :REP_RG, :REP_RI' +
        'CM, :REP_SITE, '
      
        '   :REP_STA, :REP_STAV, :REP_TCE1, :REP_TCE2, :REP_TEL1, :REP_TE' +
        'L2, :REP_TEL3, '
      
        '   :REP_TLOC, :REP_TLOG, :REP_TLOV, :REP_TPVE, :REP_VDSC, :REP_V' +
        'ULT, :REST, '
      
        '   :RET_BAI_NO, :RET_BAI_NO_ABREV, :RET_CEP, :RET_CNPJ_CPF, :RET' +
        '_LOC_NO, '
      
        '   :RET_LOC_NO_ABREV, :RET_LOG_NO, :RET_LOG_NO_ABREV, :RET_LOG_N' +
        'U, :RET_NRO, '
      
        '   :RET_TLO_TX, :RET_UF, :RET_XCPL, :TEL, :TEL2, :TEL3, :TLO_TX,' +
        ' :UF, :XCPL, '
      '   :ZAP_CONTATO, :ZAP_DDD, :ZAP_EMAIL, :ZAP_TEL)')
    RefreshSQL.Strings = (
      'Select '
      '  DTED,'
      '  ID,'
      '  IDEP,'
      '  IDCA,'
      '  DTCA,'
      '  DTFU,'
      '  IDED,'
      '  IDST,'
      '  CDST,'
      '  REST,'
      '  FIS_CRT,'
      '  DTST,'
      '  DTUTPP,'
      '  DTUTPV,'
      '  FANTASIA,'
      '  RAZAO,'
      '  GRUPO,'
      '  FIS_CREDICMS,'
      '  CNPJ,'
      '  IE,'
      '  IDCV,'
      '  FIS_INDIEDEST,'
      '  FIS_INDFINAL,'
      '  IM,'
      '  ISUF,'
      '  CPF,'
      '  IDESTRANGEIRO,'
      '  IDCR,'
      '  CDPD,'
      '  CDCO,'
      '  EMAIL,'
      '  CDPG,'
      '  IDCT,'
      '  MFRT,'
      '  CONTATO,'
      '  DDD,'
      '  TEL,'
      '  ENVEMAIL,'
      '  CONTATO2,'
      '  DDD2,'
      '  CEL_CONTATO,'
      '  TEL2,'
      '  EMAIL2,'
      '  CONTATO3,'
      '  DDD3,'
      '  TEL3,'
      '  EMAIL3,'
      '  CEL_DDD,'
      '  CEL_TEL,'
      '  CEL_EMAIL,'
      '  ZAP_TEL,'
      '  CEL_CONTATO2,'
      '  CEL_DDD2,'
      '  CEL_TEL2,'
      '  CEL_EMAIL2,'
      '  ZAP_CONTATO,'
      '  ZAP_DDD,'
      '  ZAP_EMAIL,'
      '  LOG_NU,'
      '  CMUN,'
      '  TLO_TX,'
      '  BAI_NO_ABREV,'
      '  LOG_NO,'
      '  LOG_NO_ABREV,'
      '  NRO,'
      '  XCPL,'
      '  CEP,'
      '  BAI_NO,'
      '  LOC_NO,'
      '  LOC_NO_ABREV,'
      '  ENT_LOG_NO_ABREV,'
      '  UF,'
      '  CPAIS,'
      '  ENT_CNPJ_CPF,'
      '  ENT_LOG_NU,'
      '  ENT_TLO_TX,'
      '  ENT_LOG_NO,'
      '  ENT_NRO,'
      '  ENT_XCPL,'
      '  ENT_CEP,'
      '  RET_LOG_NU,'
      '  ENT_BAI_NO,'
      '  ENT_BAI_NO_ABREV,'
      '  ENT_LOC_NO,'
      '  ENT_LOC_NO_ABREV,'
      '  ENT_UF,'
      '  RET_CNPJ_CPF,'
      '  RET_TLO_TX,'
      '  RET_LOG_NO,'
      '  RET_LOG_NO_ABREV,'
      '  RET_LOC_NO_ABREV,'
      '  RET_NRO,'
      '  RET_XCPL,'
      '  RET_CEP,'
      '  RET_BAI_NO,'
      '  RET_BAI_NO_ABREV,'
      '  RET_LOC_NO,'
      '  RET_UF,'
      '  INFADCAD,'
      '  INFADFIN,'
      '  INFADFIS,'
      '  INFADCNAE,'
      '  API_B2B_COD_ENV,'
      '  API_B2B_DTC_ENV,'
      '  API_B2B_COD_REC,'
      '  API_B2B_DTC_REC,'
      '  IP,'
      '  HOST,'
      '  FLAG,'
      '  REP_RAZA,'
      '  REP_FANT,'
      '  REP_CONT,'
      '  REP_DCAD,'
      '  REP_STA,'
      '  REP_MAIL,'
      '  REP_DDD,'
      '  REP_TEL1,'
      '  REP_TEL2,'
      '  REP_FAX,'
      '  REP_CEL,'
      '  REP_RG,'
      '  REP_CPF,'
      '  REP_INSC,'
      '  REP_CNPJ,'
      '  REP_TLOG,'
      '  REP_LOGR,'
      '  REP_CEP,'
      '  REP_NUME,'
      '  REP_COMP,'
      '  REP_BAI,'
      '  REP_CID,'
      '  REP_ESTA,'
      '  REP_TLOC,'
      '  REP_LOGC,'
      '  REP_CEPC,'
      '  REP_NUMC,'
      '  REP_COMC,'
      '  REP_BAIC,'
      '  REP_CIDC,'
      '  REP_ESTC,'
      '  REP_STAV,'
      '  REP_VULT,'
      '  REP_TPVE,'
      '  REP_TLOV,'
      '  REP_LOGV,'
      '  REP_CEPV,'
      '  REP_NUMV,'
      '  REP_COMV,'
      '  REP_BAIV,'
      '  REP_CIDV,'
      '  REP_ESTV,'
      '  REP_RICM,'
      '  REP_CPAG,'
      '  REP_DPAG,'
      '  REP_CMUN,'
      '  REP_DALT,'
      '  REP_CTRA,'
      '  REP_DTRA,'
      '  REP_DFUN,'
      '  REP_CICM,'
      '  REP_RAMO,'
      '  REP_CMUV,'
      '  REP_CMUC,'
      '  REP_DD2,'
      '  REP_DD3,'
      '  REP_DD4,'
      '  REP_DD5,'
      '  REP_DD6,'
      '  REP_TEL3,'
      '  REP_TCE1,'
      '  REP_TCE2,'
      '  REP_NCEL,'
      '  REP_NEID,'
      '  REP_FCON,'
      '  REP_FMAI,'
      '  REP_FDDD,'
      '  REP_FTE1,'
      '  REP_FDD2,'
      '  REP_FTE2,'
      '  REP_FDD3,'
      '  REP_FTE3,'
      '  REP_FDD4,'
      '  REP_FFAX,'
      '  REP_FDD5,'
      '  REP_FCEL,'
      '  REP_FTC1,'
      '  REP_FDD6,'
      '  REP_FNCE,'
      '  REP_FTC2,'
      '  REP_FNID,'
      '  REP_CCON,'
      '  REP_CMAI,'
      '  REP_CDDD,'
      '  REP_CTE1,'
      '  REP_CDD2,'
      '  REP_CTE2,'
      '  REP_CDD3,'
      '  REP_CTE3,'
      '  REP_CDD4,'
      '  REP_CFAX,'
      '  REP_CDD5,'
      '  REP_CCEL,'
      '  REP_CTC1,'
      '  REP_CDD6,'
      '  REP_CNCE,'
      '  REP_CTC2,'
      '  REP_CNID,'
      '  REP_VDSC,'
      '  REP_CRED,'
      '  REP_SITE,'
      '  REP_REVE,'
      '  REP_IMUN,'
      '  REP_CCM,'
      '  REP_DULT,'
      '  REP_COMI,'
      '  REP_IDEC,'
      '  REP_IDEF,'
      '  REP_IDEE,'
      '  REP_IDER,'
      '  REP_IDESTRANGEIRO,'
      '  REP_ISUF,'
      '  REP_IM,'
      '  REP_INDFINAL,'
      '  REP_EMAILCOM,'
      '  REP_EMAILCOB,'
      '  REP_EMAILFIN,'
      '  REP_EMAILCON,'
      '  REP_PORTE,'
      '  REP_OBSE,'
      '  REP_OBSO,'
      '  REP_OBSS,'
      '  REP_CVEN,'
      '  REP_ENVWEB,'
      '  REP_PFRT,'
      '  REP_CPAIS,'
      '  REP_INDIEDEST,'
      '  REP_DTPED,'
      '  REP_MAI2,'
      '  REP_MAI3,'
      '  REP_MAI4,'
      '  REP_IDST,'
      '  REP_ENVMAIL,'
      '  PCOM,'
      '  REP_MFRT,'
      '  DTUTPC,'
      '  API_B2B_ENV_SYNC,'
      '  API_B2B_ENV_SYNC_DATA,'
      '  API_B2B_REC_SYNC,'
      '  API_B2B_REC_SYNC_DATA,'
      '  COB_LOG_NU,'
      '  COB_TLO_TX,'
      '  COB_LOG_NO,'
      '  COB_NRO,'
      '  COB_XCPL,'
      '  COB_CEP,'
      '  COB_BAI_NO,'
      '  COB_BAI_NO_ABREV,'
      '  COB_LOC_NO,'
      '  COB_LOC_NO_ABREV,'
      '  COB_UF,'
      '  ENT_TIPO,'
      '  ENT_PRAZO,'
      '  FIS_CREGTRIB,'
      '  COB_CMUN,'
      '  ENT_CMUN,'
      '  IS_PDSC,'
      '  FOR_TIPO,'
      '  FOR_RESE,'
      '  FOR_DEGP,'
      '  NAFA,'
      '  DEST,'
      '  DTPP,'
      '  DTPV,'
      '  DTAB,'
      '  DTDV,'
      '  DTRO,'
      '  DTNF,'
      '  REP_DEGP'
      'from CAD_REP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_REP')
    ModifySQL.Strings = (
      'update CAD_REP'
      'set'
      '  API_B2B_COD_ENV = :API_B2B_COD_ENV,'
      '  API_B2B_COD_REC = :API_B2B_COD_REC,'
      '  API_B2B_DTC_ENV = :API_B2B_DTC_ENV,'
      '  API_B2B_DTC_REC = :API_B2B_DTC_REC,'
      '  API_B2B_ENV_SYNC = :API_B2B_ENV_SYNC,'
      '  API_B2B_ENV_SYNC_DATA = :API_B2B_ENV_SYNC_DATA,'
      '  API_B2B_REC_SYNC = :API_B2B_REC_SYNC,'
      '  API_B2B_REC_SYNC_DATA = :API_B2B_REC_SYNC_DATA,'
      '  BAI_NO = :BAI_NO,'
      '  BAI_NO_ABREV = :BAI_NO_ABREV,'
      '  CDCO = :CDCO,'
      '  CDPD = :CDPD,'
      '  CDPG = :CDPG,'
      '  CDST = :CDST,'
      '  CEL_CONTATO = :CEL_CONTATO,'
      '  CEL_CONTATO2 = :CEL_CONTATO2,'
      '  CEL_DDD = :CEL_DDD,'
      '  CEL_DDD2 = :CEL_DDD2,'
      '  CEL_EMAIL = :CEL_EMAIL,'
      '  CEL_EMAIL2 = :CEL_EMAIL2,'
      '  CEL_TEL = :CEL_TEL,'
      '  CEL_TEL2 = :CEL_TEL2,'
      '  CEP = :CEP,'
      '  CMUN = :CMUN,'
      '  CNPJ = :CNPJ,'
      '  COB_BAI_NO = :COB_BAI_NO,'
      '  COB_BAI_NO_ABREV = :COB_BAI_NO_ABREV,'
      '  COB_CEP = :COB_CEP,'
      '  COB_CMUN = :COB_CMUN,'
      '  COB_LOC_NO = :COB_LOC_NO,'
      '  COB_LOC_NO_ABREV = :COB_LOC_NO_ABREV,'
      '  COB_LOG_NO = :COB_LOG_NO,'
      '  COB_LOG_NU = :COB_LOG_NU,'
      '  COB_NRO = :COB_NRO,'
      '  COB_TLO_TX = :COB_TLO_TX,'
      '  COB_UF = :COB_UF,'
      '  COB_XCPL = :COB_XCPL,'
      '  CONTATO = :CONTATO,'
      '  CONTATO2 = :CONTATO2,'
      '  CONTATO3 = :CONTATO3,'
      '  CPAIS = :CPAIS,'
      '  CPF = :CPF,'
      '  DDD = :DDD,'
      '  DDD2 = :DDD2,'
      '  DDD3 = :DDD3,'
      '  DEST = :DEST,'
      '  DTAB = :DTAB,'
      '  DTCA = :DTCA,'
      '  DTDV = :DTDV,'
      '  DTED = :DTED,'
      '  DTFU = :DTFU,'
      '  DTNF = :DTNF,'
      '  DTPP = :DTPP,'
      '  DTPV = :DTPV,'
      '  DTRO = :DTRO,'
      '  DTST = :DTST,'
      '  DTUTPC = :DTUTPC,'
      '  DTUTPP = :DTUTPP,'
      '  DTUTPV = :DTUTPV,'
      '  EMAIL = :EMAIL,'
      '  EMAIL2 = :EMAIL2,'
      '  EMAIL3 = :EMAIL3,'
      '  ENT_BAI_NO = :ENT_BAI_NO,'
      '  ENT_BAI_NO_ABREV = :ENT_BAI_NO_ABREV,'
      '  ENT_CEP = :ENT_CEP,'
      '  ENT_CMUN = :ENT_CMUN,'
      '  ENT_CNPJ_CPF = :ENT_CNPJ_CPF,'
      '  ENT_LOC_NO = :ENT_LOC_NO,'
      '  ENT_LOC_NO_ABREV = :ENT_LOC_NO_ABREV,'
      '  ENT_LOG_NO = :ENT_LOG_NO,'
      '  ENT_LOG_NO_ABREV = :ENT_LOG_NO_ABREV,'
      '  ENT_LOG_NU = :ENT_LOG_NU,'
      '  ENT_NRO = :ENT_NRO,'
      '  ENT_PRAZO = :ENT_PRAZO,'
      '  ENT_TIPO = :ENT_TIPO,'
      '  ENT_TLO_TX = :ENT_TLO_TX,'
      '  ENT_UF = :ENT_UF,'
      '  ENT_XCPL = :ENT_XCPL,'
      '  ENVEMAIL = :ENVEMAIL,'
      '  FANTASIA = :FANTASIA,'
      '  FIS_CREDICMS = :FIS_CREDICMS,'
      '  FIS_CREGTRIB = :FIS_CREGTRIB,'
      '  FIS_CRT = :FIS_CRT,'
      '  FIS_INDFINAL = :FIS_INDFINAL,'
      '  FIS_INDIEDEST = :FIS_INDIEDEST,'
      '  FLAG = :FLAG,'
      '  FOR_DEGP = :FOR_DEGP,'
      '  FOR_RESE = :FOR_RESE,'
      '  FOR_TIPO = :FOR_TIPO,'
      '  GRUPO = :GRUPO,'
      '  HOST = :HOST,'
      '  ID = :ID,'
      '  IDCA = :IDCA,'
      '  IDCR = :IDCR,'
      '  IDCT = :IDCT,'
      '  IDCV = :IDCV,'
      '  IDED = :IDED,'
      '  IDEP = :IDEP,'
      '  IDESTRANGEIRO = :IDESTRANGEIRO,'
      '  IDST = :IDST,'
      '  IE = :IE,'
      '  IM = :IM,'
      '  INFADCAD = :INFADCAD,'
      '  INFADCNAE = :INFADCNAE,'
      '  INFADFIN = :INFADFIN,'
      '  INFADFIS = :INFADFIS,'
      '  IP = :IP,'
      '  IS_PDSC = :IS_PDSC,'
      '  ISUF = :ISUF,'
      '  LOC_NO = :LOC_NO,'
      '  LOC_NO_ABREV = :LOC_NO_ABREV,'
      '  LOG_NO = :LOG_NO,'
      '  LOG_NO_ABREV = :LOG_NO_ABREV,'
      '  LOG_NU = :LOG_NU,'
      '  MFRT = :MFRT,'
      '  NAFA = :NAFA,'
      '  NRO = :NRO,'
      '  PCOM = :PCOM,'
      '  RAZAO = :RAZAO,'
      '  REP_BAI = :REP_BAI,'
      '  REP_BAIC = :REP_BAIC,'
      '  REP_BAIV = :REP_BAIV,'
      '  REP_CCEL = :REP_CCEL,'
      '  REP_CCM = :REP_CCM,'
      '  REP_CCON = :REP_CCON,'
      '  REP_CDD2 = :REP_CDD2,'
      '  REP_CDD3 = :REP_CDD3,'
      '  REP_CDD4 = :REP_CDD4,'
      '  REP_CDD5 = :REP_CDD5,'
      '  REP_CDD6 = :REP_CDD6,'
      '  REP_CDDD = :REP_CDDD,'
      '  REP_CEL = :REP_CEL,'
      '  REP_CEP = :REP_CEP,'
      '  REP_CEPC = :REP_CEPC,'
      '  REP_CEPV = :REP_CEPV,'
      '  REP_CFAX = :REP_CFAX,'
      '  REP_CICM = :REP_CICM,'
      '  REP_CID = :REP_CID,'
      '  REP_CIDC = :REP_CIDC,'
      '  REP_CIDV = :REP_CIDV,'
      '  REP_CMAI = :REP_CMAI,'
      '  REP_CMUC = :REP_CMUC,'
      '  REP_CMUN = :REP_CMUN,'
      '  REP_CMUV = :REP_CMUV,'
      '  REP_CNCE = :REP_CNCE,'
      '  REP_CNID = :REP_CNID,'
      '  REP_CNPJ = :REP_CNPJ,'
      '  REP_COMC = :REP_COMC,'
      '  REP_COMI = :REP_COMI,'
      '  REP_COMP = :REP_COMP,'
      '  REP_COMV = :REP_COMV,'
      '  REP_CONT = :REP_CONT,'
      '  REP_CPAG = :REP_CPAG,'
      '  REP_CPAIS = :REP_CPAIS,'
      '  REP_CPF = :REP_CPF,'
      '  REP_CRED = :REP_CRED,'
      '  REP_CTC1 = :REP_CTC1,'
      '  REP_CTC2 = :REP_CTC2,'
      '  REP_CTE1 = :REP_CTE1,'
      '  REP_CTE2 = :REP_CTE2,'
      '  REP_CTE3 = :REP_CTE3,'
      '  REP_CTRA = :REP_CTRA,'
      '  REP_CVEN = :REP_CVEN,'
      '  REP_DALT = :REP_DALT,'
      '  REP_DCAD = :REP_DCAD,'
      '  REP_DD2 = :REP_DD2,'
      '  REP_DD3 = :REP_DD3,'
      '  REP_DD4 = :REP_DD4,'
      '  REP_DD5 = :REP_DD5,'
      '  REP_DD6 = :REP_DD6,'
      '  REP_DDD = :REP_DDD,'
      '  REP_DEGP = :REP_DEGP,'
      '  REP_DFUN = :REP_DFUN,'
      '  REP_DPAG = :REP_DPAG,'
      '  REP_DTPED = :REP_DTPED,'
      '  REP_DTRA = :REP_DTRA,'
      '  REP_DULT = :REP_DULT,'
      '  REP_EMAILCOB = :REP_EMAILCOB,'
      '  REP_EMAILCOM = :REP_EMAILCOM,'
      '  REP_EMAILCON = :REP_EMAILCON,'
      '  REP_EMAILFIN = :REP_EMAILFIN,'
      '  REP_ENVMAIL = :REP_ENVMAIL,'
      '  REP_ENVWEB = :REP_ENVWEB,'
      '  REP_ESTA = :REP_ESTA,'
      '  REP_ESTC = :REP_ESTC,'
      '  REP_ESTV = :REP_ESTV,'
      '  REP_FANT = :REP_FANT,'
      '  REP_FAX = :REP_FAX,'
      '  REP_FCEL = :REP_FCEL,'
      '  REP_FCON = :REP_FCON,'
      '  REP_FDD2 = :REP_FDD2,'
      '  REP_FDD3 = :REP_FDD3,'
      '  REP_FDD4 = :REP_FDD4,'
      '  REP_FDD5 = :REP_FDD5,'
      '  REP_FDD6 = :REP_FDD6,'
      '  REP_FDDD = :REP_FDDD,'
      '  REP_FFAX = :REP_FFAX,'
      '  REP_FMAI = :REP_FMAI,'
      '  REP_FNCE = :REP_FNCE,'
      '  REP_FNID = :REP_FNID,'
      '  REP_FTC1 = :REP_FTC1,'
      '  REP_FTC2 = :REP_FTC2,'
      '  REP_FTE1 = :REP_FTE1,'
      '  REP_FTE2 = :REP_FTE2,'
      '  REP_FTE3 = :REP_FTE3,'
      '  REP_IDEC = :REP_IDEC,'
      '  REP_IDEE = :REP_IDEE,'
      '  REP_IDEF = :REP_IDEF,'
      '  REP_IDER = :REP_IDER,'
      '  REP_IDESTRANGEIRO = :REP_IDESTRANGEIRO,'
      '  REP_IDST = :REP_IDST,'
      '  REP_IM = :REP_IM,'
      '  REP_IMUN = :REP_IMUN,'
      '  REP_INDFINAL = :REP_INDFINAL,'
      '  REP_INDIEDEST = :REP_INDIEDEST,'
      '  REP_INSC = :REP_INSC,'
      '  REP_ISUF = :REP_ISUF,'
      '  REP_LOGC = :REP_LOGC,'
      '  REP_LOGR = :REP_LOGR,'
      '  REP_LOGV = :REP_LOGV,'
      '  REP_MAI2 = :REP_MAI2,'
      '  REP_MAI3 = :REP_MAI3,'
      '  REP_MAI4 = :REP_MAI4,'
      '  REP_MAIL = :REP_MAIL,'
      '  REP_MFRT = :REP_MFRT,'
      '  REP_NCEL = :REP_NCEL,'
      '  REP_NEID = :REP_NEID,'
      '  REP_NUMC = :REP_NUMC,'
      '  REP_NUME = :REP_NUME,'
      '  REP_NUMV = :REP_NUMV,'
      '  REP_OBSE = :REP_OBSE,'
      '  REP_OBSO = :REP_OBSO,'
      '  REP_OBSS = :REP_OBSS,'
      '  REP_PFRT = :REP_PFRT,'
      '  REP_PORTE = :REP_PORTE,'
      '  REP_RAMO = :REP_RAMO,'
      '  REP_RAZA = :REP_RAZA,'
      '  REP_REVE = :REP_REVE,'
      '  REP_RG = :REP_RG,'
      '  REP_RICM = :REP_RICM,'
      '  REP_SITE = :REP_SITE,'
      '  REP_STA = :REP_STA,'
      '  REP_STAV = :REP_STAV,'
      '  REP_TCE1 = :REP_TCE1,'
      '  REP_TCE2 = :REP_TCE2,'
      '  REP_TEL1 = :REP_TEL1,'
      '  REP_TEL2 = :REP_TEL2,'
      '  REP_TEL3 = :REP_TEL3,'
      '  REP_TLOC = :REP_TLOC,'
      '  REP_TLOG = :REP_TLOG,'
      '  REP_TLOV = :REP_TLOV,'
      '  REP_TPVE = :REP_TPVE,'
      '  REP_VDSC = :REP_VDSC,'
      '  REP_VULT = :REP_VULT,'
      '  REST = :REST,'
      '  RET_BAI_NO = :RET_BAI_NO,'
      '  RET_BAI_NO_ABREV = :RET_BAI_NO_ABREV,'
      '  RET_CEP = :RET_CEP,'
      '  RET_CNPJ_CPF = :RET_CNPJ_CPF,'
      '  RET_LOC_NO = :RET_LOC_NO,'
      '  RET_LOC_NO_ABREV = :RET_LOC_NO_ABREV,'
      '  RET_LOG_NO = :RET_LOG_NO,'
      '  RET_LOG_NO_ABREV = :RET_LOG_NO_ABREV,'
      '  RET_LOG_NU = :RET_LOG_NU,'
      '  RET_NRO = :RET_NRO,'
      '  RET_TLO_TX = :RET_TLO_TX,'
      '  RET_UF = :RET_UF,'
      '  RET_XCPL = :RET_XCPL,'
      '  TEL = :TEL,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  TLO_TX = :TLO_TX,'
      '  UF = :UF,'
      '  XCPL = :XCPL,'
      '  ZAP_CONTATO = :ZAP_CONTATO,'
      '  ZAP_DDD = :ZAP_DDD,'
      '  ZAP_EMAIL = :ZAP_EMAIL,'
      '  ZAP_TEL = :ZAP_TEL'
      'where'
      '  ID = :OLD_ID')
    Left = 400
    Top = 40
    object cad_repID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_REP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_repREP_RAZA: TIBStringField
      FieldName = 'REP_RAZA'
      Origin = '"CAD_REP"."REP_RAZA"'
      Size = 60
    end
    object cad_repREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object cad_repREP_CONT: TIBStringField
      FieldName = 'REP_CONT'
      Origin = '"CAD_REP"."REP_CONT"'
      Size = 30
    end
    object cad_repREP_DCAD: TDateField
      FieldName = 'REP_DCAD'
      Origin = '"CAD_REP"."REP_DCAD"'
    end
    object cad_repREP_STA: TIBStringField
      FieldName = 'REP_STA'
      Origin = '"CAD_REP"."REP_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_repREP_MAIL: TIBStringField
      FieldName = 'REP_MAIL'
      Origin = '"CAD_REP"."REP_MAIL"'
      Size = 60
    end
    object cad_repREP_DDD: TIBStringField
      FieldName = 'REP_DDD'
      Origin = '"CAD_REP"."REP_DDD"'
      Size = 2
    end
    object cad_repREP_TEL1: TIBStringField
      FieldName = 'REP_TEL1'
      Origin = '"CAD_REP"."REP_TEL1"'
      Size = 9
    end
    object cad_repREP_TEL2: TIBStringField
      FieldName = 'REP_TEL2'
      Origin = '"CAD_REP"."REP_TEL2"'
      Size = 9
    end
    object cad_repREP_FAX: TIBStringField
      FieldName = 'REP_FAX'
      Origin = '"CAD_REP"."REP_FAX"'
      Size = 9
    end
    object cad_repREP_CEL: TIBStringField
      FieldName = 'REP_CEL'
      Origin = '"CAD_REP"."REP_CEL"'
      Size = 9
    end
    object cad_repREP_RG: TIBStringField
      FieldName = 'REP_RG'
      Origin = '"CAD_REP"."REP_RG"'
      Size = 15
    end
    object cad_repREP_CPF: TIBStringField
      FieldName = 'REP_CPF'
      Origin = '"CAD_REP"."REP_CPF"'
      Size = 11
    end
    object cad_repREP_INSC: TIBStringField
      FieldName = 'REP_INSC'
      Origin = '"CAD_REP"."REP_INSC"'
    end
    object cad_repREP_CNPJ: TIBStringField
      FieldName = 'REP_CNPJ'
      Origin = '"CAD_REP"."REP_CNPJ"'
      Size = 14
    end
    object cad_repREP_TLOG: TIBStringField
      FieldName = 'REP_TLOG'
      Origin = '"CAD_REP"."REP_TLOG"'
      Size = 15
    end
    object cad_repREP_LOGR: TIBStringField
      FieldName = 'REP_LOGR'
      Origin = '"CAD_REP"."REP_LOGR"'
      Size = 60
    end
    object cad_repREP_CEP: TIBStringField
      FieldName = 'REP_CEP'
      Origin = '"CAD_REP"."REP_CEP"'
      Size = 9
    end
    object cad_repREP_NUME: TIBStringField
      FieldName = 'REP_NUME'
      Origin = '"CAD_REP"."REP_NUME"'
      Size = 10
    end
    object cad_repREP_COMP: TIBStringField
      FieldName = 'REP_COMP'
      Origin = '"CAD_REP"."REP_COMP"'
      Size = 40
    end
    object cad_repREP_BAI: TIBStringField
      FieldName = 'REP_BAI'
      Origin = '"CAD_REP"."REP_BAI"'
      Size = 40
    end
    object cad_repREP_CID: TIBStringField
      FieldName = 'REP_CID'
      Origin = '"CAD_REP"."REP_CID"'
      Size = 40
    end
    object cad_repREP_ESTA: TIBStringField
      FieldName = 'REP_ESTA'
      Origin = '"CAD_REP"."REP_ESTA"'
      Size = 2
    end
    object cad_repREP_TLOC: TIBStringField
      FieldName = 'REP_TLOC'
      Origin = '"CAD_REP"."REP_TLOC"'
      Size = 15
    end
    object cad_repREP_LOGC: TIBStringField
      FieldName = 'REP_LOGC'
      Origin = '"CAD_REP"."REP_LOGC"'
      Size = 60
    end
    object cad_repREP_CEPC: TIBStringField
      FieldName = 'REP_CEPC'
      Origin = '"CAD_REP"."REP_CEPC"'
      Size = 9
    end
    object cad_repREP_NUMC: TIBStringField
      FieldName = 'REP_NUMC'
      Origin = '"CAD_REP"."REP_NUMC"'
      Size = 10
    end
    object cad_repREP_COMC: TIBStringField
      FieldName = 'REP_COMC'
      Origin = '"CAD_REP"."REP_COMC"'
      Size = 40
    end
    object cad_repREP_BAIC: TIBStringField
      FieldName = 'REP_BAIC'
      Origin = '"CAD_REP"."REP_BAIC"'
      Size = 40
    end
    object cad_repREP_CIDC: TIBStringField
      FieldName = 'REP_CIDC'
      Origin = '"CAD_REP"."REP_CIDC"'
      Size = 40
    end
    object cad_repREP_ESTC: TIBStringField
      FieldName = 'REP_ESTC'
      Origin = '"CAD_REP"."REP_ESTC"'
      Size = 2
    end
    object cad_repREP_OBSO: TMemoField
      FieldName = 'REP_OBSO'
      Origin = '"CAD_REP"."REP_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repREP_STAV: TIBStringField
      FieldName = 'REP_STAV'
      Origin = '"CAD_REP"."REP_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_repREP_VULT: TIBBCDField
      FieldName = 'REP_VULT'
      Origin = '"CAD_REP"."REP_VULT"'
      Precision = 9
      Size = 2
    end
    object cad_repREP_TPVE: TIBStringField
      FieldName = 'REP_TPVE'
      Origin = '"CAD_REP"."REP_TPVE"'
      Size = 10
    end
    object cad_repREP_OBSE: TMemoField
      FieldName = 'REP_OBSE'
      Origin = '"CAD_REP"."REP_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repREP_TLOV: TIBStringField
      FieldName = 'REP_TLOV'
      Origin = '"CAD_REP"."REP_TLOV"'
      Size = 15
    end
    object cad_repREP_LOGV: TIBStringField
      FieldName = 'REP_LOGV'
      Origin = '"CAD_REP"."REP_LOGV"'
      Size = 60
    end
    object cad_repREP_CEPV: TIBStringField
      FieldName = 'REP_CEPV'
      Origin = '"CAD_REP"."REP_CEPV"'
      Size = 9
    end
    object cad_repREP_NUMV: TIBStringField
      FieldName = 'REP_NUMV'
      Origin = '"CAD_REP"."REP_NUMV"'
      Size = 10
    end
    object cad_repREP_COMV: TIBStringField
      FieldName = 'REP_COMV'
      Origin = '"CAD_REP"."REP_COMV"'
      Size = 40
    end
    object cad_repREP_BAIV: TIBStringField
      FieldName = 'REP_BAIV'
      Origin = '"CAD_REP"."REP_BAIV"'
      Size = 40
    end
    object cad_repREP_CIDV: TIBStringField
      FieldName = 'REP_CIDV'
      Origin = '"CAD_REP"."REP_CIDV"'
      Size = 40
    end
    object cad_repREP_ESTV: TIBStringField
      FieldName = 'REP_ESTV'
      Origin = '"CAD_REP"."REP_ESTV"'
      Size = 2
    end
    object cad_repREP_RICM: TIBStringField
      FieldName = 'REP_RICM'
      Origin = '"CAD_REP"."REP_RICM"'
      FixedChar = True
      Size = 1
    end
    object cad_repREP_CPAG: TIBStringField
      FieldName = 'REP_CPAG'
      Origin = '"CAD_REP"."REP_CPAG"'
      Size = 2
    end
    object cad_repREP_DPAG: TIBStringField
      FieldName = 'REP_DPAG'
      Origin = '"CAD_REP"."REP_DPAG"'
      Size = 50
    end
    object cad_repREP_CMUN: TIBStringField
      FieldName = 'REP_CMUN'
      Origin = '"CAD_REP"."REP_CMUN"'
      Size = 10
    end
    object cad_repREP_DALT: TDateField
      FieldName = 'REP_DALT'
      Origin = '"CAD_REP"."REP_DALT"'
    end
    object cad_repREP_CTRA: TIntegerField
      FieldName = 'REP_CTRA'
      Origin = '"CAD_REP"."REP_CTRA"'
    end
    object cad_repREP_DTRA: TIBStringField
      FieldName = 'REP_DTRA'
      Origin = '"CAD_REP"."REP_DTRA"'
      Size = 60
    end
    object cad_repREP_DFUN: TDateField
      FieldName = 'REP_DFUN'
      Origin = '"CAD_REP"."REP_DFUN"'
    end
    object cad_repREP_CICM: TIBStringField
      FieldName = 'REP_CICM'
      Origin = '"CAD_REP"."REP_CICM"'
      FixedChar = True
      Size = 1
    end
    object cad_repREP_RAMO: TIBStringField
      FieldName = 'REP_RAMO'
      Origin = '"CAD_REP"."REP_RAMO"'
      Size = 120
    end
    object cad_repREP_CMUV: TIBStringField
      FieldName = 'REP_CMUV'
      Origin = '"CAD_REP"."REP_CMUV"'
      Size = 10
    end
    object cad_repREP_CMUC: TIBStringField
      FieldName = 'REP_CMUC'
      Origin = '"CAD_REP"."REP_CMUC"'
      Size = 10
    end
    object cad_repREP_DD2: TIBStringField
      FieldName = 'REP_DD2'
      Origin = '"CAD_REP"."REP_DD2"'
      Size = 2
    end
    object cad_repREP_DD3: TIBStringField
      FieldName = 'REP_DD3'
      Origin = '"CAD_REP"."REP_DD3"'
      Size = 2
    end
    object cad_repREP_DD4: TIBStringField
      FieldName = 'REP_DD4'
      Origin = '"CAD_REP"."REP_DD4"'
      Size = 2
    end
    object cad_repREP_DD5: TIBStringField
      FieldName = 'REP_DD5'
      Origin = '"CAD_REP"."REP_DD5"'
      Size = 2
    end
    object cad_repREP_DD6: TIBStringField
      FieldName = 'REP_DD6'
      Origin = '"CAD_REP"."REP_DD6"'
      Size = 2
    end
    object cad_repREP_TEL3: TIBStringField
      FieldName = 'REP_TEL3'
      Origin = '"CAD_REP"."REP_TEL3"'
      Size = 9
    end
    object cad_repREP_TCE1: TIBStringField
      FieldName = 'REP_TCE1'
      Origin = '"CAD_REP"."REP_TCE1"'
      Size = 10
    end
    object cad_repREP_TCE2: TIBStringField
      FieldName = 'REP_TCE2'
      Origin = '"CAD_REP"."REP_TCE2"'
      Size = 10
    end
    object cad_repREP_NCEL: TIBStringField
      FieldName = 'REP_NCEL'
      Origin = '"CAD_REP"."REP_NCEL"'
      Size = 9
    end
    object cad_repREP_NEID: TIBStringField
      FieldName = 'REP_NEID'
      Origin = '"CAD_REP"."REP_NEID"'
      Size = 15
    end
    object cad_repREP_FCON: TIBStringField
      FieldName = 'REP_FCON'
      Origin = '"CAD_REP"."REP_FCON"'
      Size = 30
    end
    object cad_repREP_FMAI: TIBStringField
      FieldName = 'REP_FMAI'
      Origin = '"CAD_REP"."REP_FMAI"'
      Size = 60
    end
    object cad_repREP_FDDD: TIBStringField
      FieldName = 'REP_FDDD'
      Origin = '"CAD_REP"."REP_FDDD"'
      Size = 2
    end
    object cad_repREP_FTE1: TIBStringField
      FieldName = 'REP_FTE1'
      Origin = '"CAD_REP"."REP_FTE1"'
      Size = 9
    end
    object cad_repREP_FDD2: TIBStringField
      FieldName = 'REP_FDD2'
      Origin = '"CAD_REP"."REP_FDD2"'
      Size = 2
    end
    object cad_repREP_FTE2: TIBStringField
      FieldName = 'REP_FTE2'
      Origin = '"CAD_REP"."REP_FTE2"'
      Size = 9
    end
    object cad_repREP_FDD3: TIBStringField
      FieldName = 'REP_FDD3'
      Origin = '"CAD_REP"."REP_FDD3"'
      Size = 2
    end
    object cad_repREP_FTE3: TIBStringField
      FieldName = 'REP_FTE3'
      Origin = '"CAD_REP"."REP_FTE3"'
      Size = 9
    end
    object cad_repREP_FDD4: TIBStringField
      FieldName = 'REP_FDD4'
      Origin = '"CAD_REP"."REP_FDD4"'
      Size = 2
    end
    object cad_repREP_FFAX: TIBStringField
      FieldName = 'REP_FFAX'
      Origin = '"CAD_REP"."REP_FFAX"'
      Size = 9
    end
    object cad_repREP_FDD5: TIBStringField
      FieldName = 'REP_FDD5'
      Origin = '"CAD_REP"."REP_FDD5"'
      Size = 2
    end
    object cad_repREP_FCEL: TIBStringField
      FieldName = 'REP_FCEL'
      Origin = '"CAD_REP"."REP_FCEL"'
      Size = 9
    end
    object cad_repREP_FTC1: TIBStringField
      FieldName = 'REP_FTC1'
      Origin = '"CAD_REP"."REP_FTC1"'
      Size = 10
    end
    object cad_repREP_FDD6: TIBStringField
      FieldName = 'REP_FDD6'
      Origin = '"CAD_REP"."REP_FDD6"'
      Size = 2
    end
    object cad_repREP_FNCE: TIBStringField
      FieldName = 'REP_FNCE'
      Origin = '"CAD_REP"."REP_FNCE"'
      Size = 9
    end
    object cad_repREP_FTC2: TIBStringField
      FieldName = 'REP_FTC2'
      Origin = '"CAD_REP"."REP_FTC2"'
      Size = 10
    end
    object cad_repREP_FNID: TIBStringField
      FieldName = 'REP_FNID'
      Origin = '"CAD_REP"."REP_FNID"'
      Size = 15
    end
    object cad_repREP_CCON: TIBStringField
      FieldName = 'REP_CCON'
      Origin = '"CAD_REP"."REP_CCON"'
      Size = 30
    end
    object cad_repREP_CMAI: TIBStringField
      FieldName = 'REP_CMAI'
      Origin = '"CAD_REP"."REP_CMAI"'
      Size = 60
    end
    object cad_repREP_CDDD: TIBStringField
      FieldName = 'REP_CDDD'
      Origin = '"CAD_REP"."REP_CDDD"'
      Size = 2
    end
    object cad_repREP_CTE1: TIBStringField
      FieldName = 'REP_CTE1'
      Origin = '"CAD_REP"."REP_CTE1"'
      Size = 9
    end
    object cad_repREP_CDD2: TIBStringField
      FieldName = 'REP_CDD2'
      Origin = '"CAD_REP"."REP_CDD2"'
      Size = 2
    end
    object cad_repREP_CTE2: TIBStringField
      FieldName = 'REP_CTE2'
      Origin = '"CAD_REP"."REP_CTE2"'
      Size = 9
    end
    object cad_repREP_CDD3: TIBStringField
      FieldName = 'REP_CDD3'
      Origin = '"CAD_REP"."REP_CDD3"'
      Size = 2
    end
    object cad_repREP_CTE3: TIBStringField
      FieldName = 'REP_CTE3'
      Origin = '"CAD_REP"."REP_CTE3"'
      Size = 9
    end
    object cad_repREP_CDD4: TIBStringField
      FieldName = 'REP_CDD4'
      Origin = '"CAD_REP"."REP_CDD4"'
      Size = 2
    end
    object cad_repREP_CFAX: TIBStringField
      FieldName = 'REP_CFAX'
      Origin = '"CAD_REP"."REP_CFAX"'
      Size = 9
    end
    object cad_repREP_CDD5: TIBStringField
      FieldName = 'REP_CDD5'
      Origin = '"CAD_REP"."REP_CDD5"'
      Size = 2
    end
    object cad_repREP_CCEL: TIBStringField
      FieldName = 'REP_CCEL'
      Origin = '"CAD_REP"."REP_CCEL"'
      Size = 9
    end
    object cad_repREP_CTC1: TIBStringField
      FieldName = 'REP_CTC1'
      Origin = '"CAD_REP"."REP_CTC1"'
      Size = 10
    end
    object cad_repREP_CDD6: TIBStringField
      FieldName = 'REP_CDD6'
      Origin = '"CAD_REP"."REP_CDD6"'
      Size = 2
    end
    object cad_repREP_CNCE: TIBStringField
      FieldName = 'REP_CNCE'
      Origin = '"CAD_REP"."REP_CNCE"'
      Size = 9
    end
    object cad_repREP_CTC2: TIBStringField
      FieldName = 'REP_CTC2'
      Origin = '"CAD_REP"."REP_CTC2"'
      Size = 10
    end
    object cad_repREP_CNID: TIBStringField
      FieldName = 'REP_CNID'
      Origin = '"CAD_REP"."REP_CNID"'
      Size = 15
    end
    object cad_repREP_VDSC: TIBBCDField
      FieldName = 'REP_VDSC'
      Origin = '"CAD_REP"."REP_VDSC"'
      Precision = 9
      Size = 2
    end
    object cad_repREP_CRED: TIBBCDField
      FieldName = 'REP_CRED'
      Origin = '"CAD_REP"."REP_CRED"'
      Precision = 9
      Size = 2
    end
    object cad_repREP_SITE: TIBStringField
      FieldName = 'REP_SITE'
      Origin = '"CAD_REP"."REP_SITE"'
      Size = 120
    end
    object cad_repREP_REVE: TIBStringField
      FieldName = 'REP_REVE'
      Origin = '"CAD_REP"."REP_REVE"'
      Size = 3
    end
    object cad_repREP_IMUN: TIBStringField
      FieldName = 'REP_IMUN'
      Origin = '"CAD_REP"."REP_IMUN"'
    end
    object cad_repREP_CCM: TIBStringField
      FieldName = 'REP_CCM'
      Origin = '"CAD_REP"."REP_CCM"'
    end
    object cad_repREP_DULT: TDateField
      FieldName = 'REP_DULT'
      Origin = '"CAD_REP"."REP_DULT"'
    end
    object cad_repREP_COMI: TIBBCDField
      FieldName = 'REP_COMI'
      Origin = '"CAD_REP"."REP_COMI"'
      Precision = 9
      Size = 2
    end
    object cad_repDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"CAD_REP"."DTED"'
    end
    object cad_repIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_REP"."IDEP"'
    end
    object cad_repIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_REP"."IDCA"'
    end
    object cad_repDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_REP"."DTCA"'
    end
    object cad_repDTFU: TDateField
      FieldName = 'DTFU'
      Origin = '"CAD_REP"."DTFU"'
    end
    object cad_repIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"CAD_REP"."IDED"'
    end
    object cad_repIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"CAD_REP"."IDST"'
    end
    object cad_repCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"CAD_REP"."CDST"'
    end
    object cad_repREST: TIBStringField
      FieldName = 'REST'
      Origin = '"CAD_REP"."REST"'
      Size = 10
    end
    object cad_repFIS_CRT: TSmallintField
      FieldName = 'FIS_CRT'
      Origin = '"CAD_REP"."FIS_CRT"'
    end
    object cad_repDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"CAD_REP"."DTST"'
    end
    object cad_repDTUTPP: TDateTimeField
      FieldName = 'DTUTPP'
      Origin = '"CAD_REP"."DTUTPP"'
    end
    object cad_repDTUTPV: TDateTimeField
      FieldName = 'DTUTPV'
      Origin = '"CAD_REP"."DTUTPV"'
    end
    object cad_repFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CAD_REP"."FANTASIA"'
      Size = 60
    end
    object cad_repRAZAO: TIBStringField
      FieldName = 'RAZAO'
      Origin = '"CAD_REP"."RAZAO"'
      Size = 60
    end
    object cad_repGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"CAD_REP"."GRUPO"'
      Size = 60
    end
    object cad_repFIS_CREDICMS: TSmallintField
      FieldName = 'FIS_CREDICMS'
      Origin = '"CAD_REP"."FIS_CREDICMS"'
    end
    object cad_repCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CAD_REP"."CNPJ"'
      Size = 14
    end
    object cad_repIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CAD_REP"."IE"'
    end
    object cad_repIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"CAD_REP"."IDCV"'
    end
    object cad_repFIS_INDIEDEST: TSmallintField
      FieldName = 'FIS_INDIEDEST'
      Origin = '"CAD_REP"."FIS_INDIEDEST"'
    end
    object cad_repFIS_INDFINAL: TSmallintField
      FieldName = 'FIS_INDFINAL'
      Origin = '"CAD_REP"."FIS_INDFINAL"'
    end
    object cad_repIM: TIBStringField
      FieldName = 'IM'
      Origin = '"CAD_REP"."IM"'
    end
    object cad_repISUF: TIBStringField
      FieldName = 'ISUF'
      Origin = '"CAD_REP"."ISUF"'
    end
    object cad_repCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CAD_REP"."CPF"'
      Size = 14
    end
    object cad_repIDESTRANGEIRO: TIBStringField
      FieldName = 'IDESTRANGEIRO'
      Origin = '"CAD_REP"."IDESTRANGEIRO"'
    end
    object cad_repIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"CAD_REP"."IDCR"'
    end
    object cad_repCDPD: TSmallintField
      FieldName = 'CDPD'
      Origin = '"CAD_REP"."CDPD"'
    end
    object cad_repCDCO: TSmallintField
      FieldName = 'CDCO'
      Origin = '"CAD_REP"."CDCO"'
    end
    object cad_repEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CAD_REP"."EMAIL"'
      Size = 60
    end
    object cad_repCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"CAD_REP"."CDPG"'
    end
    object cad_repIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"CAD_REP"."IDCT"'
    end
    object cad_repMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"CAD_REP"."MFRT"'
    end
    object cad_repCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"CAD_REP"."CONTATO"'
      Size = 60
    end
    object cad_repDDD: TIBStringField
      FieldName = 'DDD'
      Origin = '"CAD_REP"."DDD"'
      FixedChar = True
      Size = 2
    end
    object cad_repTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"CAD_REP"."TEL"'
      Size = 9
    end
    object cad_repENVEMAIL: TSmallintField
      FieldName = 'ENVEMAIL'
      Origin = '"CAD_REP"."ENVEMAIL"'
    end
    object cad_repCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"CAD_REP"."CONTATO2"'
      Size = 60
    end
    object cad_repDDD2: TIBStringField
      FieldName = 'DDD2'
      Origin = '"CAD_REP"."DDD2"'
      FixedChar = True
      Size = 2
    end
    object cad_repCEL_CONTATO: TIBStringField
      FieldName = 'CEL_CONTATO'
      Origin = '"CAD_REP"."CEL_CONTATO"'
      Size = 60
    end
    object cad_repTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"CAD_REP"."TEL2"'
      Size = 9
    end
    object cad_repEMAIL2: TIBStringField
      FieldName = 'EMAIL2'
      Origin = '"CAD_REP"."EMAIL2"'
      Size = 60
    end
    object cad_repCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"CAD_REP"."CONTATO3"'
      Size = 60
    end
    object cad_repDDD3: TIBStringField
      FieldName = 'DDD3'
      Origin = '"CAD_REP"."DDD3"'
      FixedChar = True
      Size = 2
    end
    object cad_repTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"CAD_REP"."TEL3"'
      Size = 9
    end
    object cad_repEMAIL3: TIBStringField
      FieldName = 'EMAIL3'
      Origin = '"CAD_REP"."EMAIL3"'
      Size = 60
    end
    object cad_repCEL_DDD: TIBStringField
      FieldName = 'CEL_DDD'
      Origin = '"CAD_REP"."CEL_DDD"'
      FixedChar = True
      Size = 2
    end
    object cad_repCEL_TEL: TIBStringField
      FieldName = 'CEL_TEL'
      Origin = '"CAD_REP"."CEL_TEL"'
      Size = 9
    end
    object cad_repCEL_EMAIL: TIBStringField
      FieldName = 'CEL_EMAIL'
      Origin = '"CAD_REP"."CEL_EMAIL"'
      Size = 60
    end
    object cad_repZAP_TEL: TIBStringField
      FieldName = 'ZAP_TEL'
      Origin = '"CAD_REP"."ZAP_TEL"'
      Size = 9
    end
    object cad_repCEL_CONTATO2: TIBStringField
      FieldName = 'CEL_CONTATO2'
      Origin = '"CAD_REP"."CEL_CONTATO2"'
      Size = 60
    end
    object cad_repCEL_DDD2: TIBStringField
      FieldName = 'CEL_DDD2'
      Origin = '"CAD_REP"."CEL_DDD2"'
      FixedChar = True
      Size = 2
    end
    object cad_repCEL_TEL2: TIBStringField
      FieldName = 'CEL_TEL2'
      Origin = '"CAD_REP"."CEL_TEL2"'
      Size = 9
    end
    object cad_repCEL_EMAIL2: TIBStringField
      FieldName = 'CEL_EMAIL2'
      Origin = '"CAD_REP"."CEL_EMAIL2"'
      Size = 60
    end
    object cad_repZAP_CONTATO: TIBStringField
      FieldName = 'ZAP_CONTATO'
      Origin = '"CAD_REP"."ZAP_CONTATO"'
      Size = 60
    end
    object cad_repZAP_DDD: TIBStringField
      FieldName = 'ZAP_DDD'
      Origin = '"CAD_REP"."ZAP_DDD"'
      FixedChar = True
      Size = 2
    end
    object cad_repZAP_EMAIL: TIBStringField
      FieldName = 'ZAP_EMAIL'
      Origin = '"CAD_REP"."ZAP_EMAIL"'
      Size = 60
    end
    object cad_repLOG_NU: TLargeintField
      FieldName = 'LOG_NU'
      Origin = '"CAD_REP"."LOG_NU"'
    end
    object cad_repCMUN: TLargeintField
      FieldName = 'CMUN'
      Origin = '"CAD_REP"."CMUN"'
    end
    object cad_repTLO_TX: TIBStringField
      FieldName = 'TLO_TX'
      Origin = '"CAD_REP"."TLO_TX"'
      Size = 36
    end
    object cad_repBAI_NO_ABREV: TIBStringField
      FieldName = 'BAI_NO_ABREV'
      Origin = '"CAD_REP"."BAI_NO_ABREV"'
      Size = 36
    end
    object cad_repLOG_NO: TIBStringField
      FieldName = 'LOG_NO'
      Origin = '"CAD_REP"."LOG_NO"'
      Size = 76
    end
    object cad_repLOG_NO_ABREV: TIBStringField
      FieldName = 'LOG_NO_ABREV'
      Origin = '"CAD_REP"."LOG_NO_ABREV"'
      Size = 36
    end
    object cad_repNRO: TIBStringField
      FieldName = 'NRO'
      Origin = '"CAD_REP"."NRO"'
      Size = 15
    end
    object cad_repXCPL: TIBStringField
      FieldName = 'XCPL'
      Origin = '"CAD_REP"."XCPL"'
      Size = 40
    end
    object cad_repCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CAD_REP"."CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_repBAI_NO: TIBStringField
      FieldName = 'BAI_NO'
      Origin = '"CAD_REP"."BAI_NO"'
      Size = 72
    end
    object cad_repLOC_NO: TIBStringField
      FieldName = 'LOC_NO'
      Origin = '"CAD_REP"."LOC_NO"'
      Size = 72
    end
    object cad_repLOC_NO_ABREV: TIBStringField
      FieldName = 'LOC_NO_ABREV'
      Origin = '"CAD_REP"."LOC_NO_ABREV"'
      Size = 36
    end
    object cad_repENT_LOG_NO_ABREV: TIBStringField
      FieldName = 'ENT_LOG_NO_ABREV'
      Origin = '"CAD_REP"."ENT_LOG_NO_ABREV"'
      Size = 36
    end
    object cad_repUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CAD_REP"."UF"'
      FixedChar = True
      Size = 2
    end
    object cad_repCPAIS: TSmallintField
      FieldName = 'CPAIS'
      Origin = '"CAD_REP"."CPAIS"'
    end
    object cad_repENT_CNPJ_CPF: TIBStringField
      FieldName = 'ENT_CNPJ_CPF'
      Origin = '"CAD_REP"."ENT_CNPJ_CPF"'
      Size = 14
    end
    object cad_repENT_LOG_NU: TLargeintField
      FieldName = 'ENT_LOG_NU'
      Origin = '"CAD_REP"."ENT_LOG_NU"'
    end
    object cad_repENT_TLO_TX: TIBStringField
      FieldName = 'ENT_TLO_TX'
      Origin = '"CAD_REP"."ENT_TLO_TX"'
      Size = 36
    end
    object cad_repENT_LOG_NO: TIBStringField
      FieldName = 'ENT_LOG_NO'
      Origin = '"CAD_REP"."ENT_LOG_NO"'
      Size = 76
    end
    object cad_repENT_NRO: TIBStringField
      FieldName = 'ENT_NRO'
      Origin = '"CAD_REP"."ENT_NRO"'
      Size = 15
    end
    object cad_repENT_XCPL: TIBStringField
      FieldName = 'ENT_XCPL'
      Origin = '"CAD_REP"."ENT_XCPL"'
      Size = 40
    end
    object cad_repENT_CEP: TIBStringField
      FieldName = 'ENT_CEP'
      Origin = '"CAD_REP"."ENT_CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_repRET_LOG_NU: TLargeintField
      FieldName = 'RET_LOG_NU'
      Origin = '"CAD_REP"."RET_LOG_NU"'
    end
    object cad_repENT_BAI_NO: TIBStringField
      FieldName = 'ENT_BAI_NO'
      Origin = '"CAD_REP"."ENT_BAI_NO"'
      Size = 72
    end
    object cad_repENT_BAI_NO_ABREV: TIBStringField
      FieldName = 'ENT_BAI_NO_ABREV'
      Origin = '"CAD_REP"."ENT_BAI_NO_ABREV"'
      Size = 36
    end
    object cad_repENT_LOC_NO: TIBStringField
      FieldName = 'ENT_LOC_NO'
      Origin = '"CAD_REP"."ENT_LOC_NO"'
      Size = 72
    end
    object cad_repENT_LOC_NO_ABREV: TIBStringField
      FieldName = 'ENT_LOC_NO_ABREV'
      Origin = '"CAD_REP"."ENT_LOC_NO_ABREV"'
      Size = 36
    end
    object cad_repENT_UF: TIBStringField
      FieldName = 'ENT_UF'
      Origin = '"CAD_REP"."ENT_UF"'
      FixedChar = True
      Size = 2
    end
    object cad_repRET_CNPJ_CPF: TIBStringField
      FieldName = 'RET_CNPJ_CPF'
      Origin = '"CAD_REP"."RET_CNPJ_CPF"'
      Size = 14
    end
    object cad_repRET_TLO_TX: TIBStringField
      FieldName = 'RET_TLO_TX'
      Origin = '"CAD_REP"."RET_TLO_TX"'
      Size = 36
    end
    object cad_repRET_LOG_NO: TIBStringField
      FieldName = 'RET_LOG_NO'
      Origin = '"CAD_REP"."RET_LOG_NO"'
      Size = 76
    end
    object cad_repRET_LOG_NO_ABREV: TIBStringField
      FieldName = 'RET_LOG_NO_ABREV'
      Origin = '"CAD_REP"."RET_LOG_NO_ABREV"'
      Size = 36
    end
    object cad_repRET_LOC_NO_ABREV: TIBStringField
      FieldName = 'RET_LOC_NO_ABREV'
      Origin = '"CAD_REP"."RET_LOC_NO_ABREV"'
      Size = 36
    end
    object cad_repRET_NRO: TIBStringField
      FieldName = 'RET_NRO'
      Origin = '"CAD_REP"."RET_NRO"'
      Size = 15
    end
    object cad_repRET_XCPL: TIBStringField
      FieldName = 'RET_XCPL'
      Origin = '"CAD_REP"."RET_XCPL"'
      Size = 40
    end
    object cad_repRET_CEP: TIBStringField
      FieldName = 'RET_CEP'
      Origin = '"CAD_REP"."RET_CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_repRET_BAI_NO: TIBStringField
      FieldName = 'RET_BAI_NO'
      Origin = '"CAD_REP"."RET_BAI_NO"'
      Size = 72
    end
    object cad_repRET_BAI_NO_ABREV: TIBStringField
      FieldName = 'RET_BAI_NO_ABREV'
      Origin = '"CAD_REP"."RET_BAI_NO_ABREV"'
      Size = 36
    end
    object cad_repRET_LOC_NO: TIBStringField
      FieldName = 'RET_LOC_NO'
      Origin = '"CAD_REP"."RET_LOC_NO"'
      Size = 72
    end
    object cad_repRET_UF: TIBStringField
      FieldName = 'RET_UF'
      Origin = '"CAD_REP"."RET_UF"'
      FixedChar = True
      Size = 2
    end
    object cad_repINFADCAD: TMemoField
      FieldName = 'INFADCAD'
      Origin = '"CAD_REP"."INFADCAD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repINFADFIN: TMemoField
      FieldName = 'INFADFIN'
      Origin = '"CAD_REP"."INFADFIN"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repINFADFIS: TMemoField
      FieldName = 'INFADFIS'
      Origin = '"CAD_REP"."INFADFIS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repINFADCNAE: TMemoField
      FieldName = 'INFADCNAE'
      Origin = '"CAD_REP"."INFADCNAE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repAPI_B2B_COD_ENV: TSmallintField
      FieldName = 'API_B2B_COD_ENV'
      Origin = '"CAD_REP"."API_B2B_COD_ENV"'
    end
    object cad_repAPI_B2B_DTC_ENV: TDateTimeField
      FieldName = 'API_B2B_DTC_ENV'
      Origin = '"CAD_REP"."API_B2B_DTC_ENV"'
    end
    object cad_repAPI_B2B_COD_REC: TIBStringField
      FieldName = 'API_B2B_COD_REC'
      Origin = '"CAD_REP"."API_B2B_COD_REC"'
      Size = 30
    end
    object cad_repAPI_B2B_DTC_REC: TDateTimeField
      FieldName = 'API_B2B_DTC_REC'
      Origin = '"CAD_REP"."API_B2B_DTC_REC"'
    end
    object cad_repIP: TIBStringField
      FieldName = 'IP'
      Origin = '"CAD_REP"."IP"'
      Size = 30
    end
    object cad_repHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"CAD_REP"."HOST"'
      Size = 30
    end
    object cad_repFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"CAD_REP"."FLAG"'
    end
    object cad_repREP_IDEC: TLargeintField
      FieldName = 'REP_IDEC'
      Origin = '"CAD_REP"."REP_IDEC"'
    end
    object cad_repREP_IDEF: TLargeintField
      FieldName = 'REP_IDEF'
      Origin = '"CAD_REP"."REP_IDEF"'
    end
    object cad_repREP_IDEE: TLargeintField
      FieldName = 'REP_IDEE'
      Origin = '"CAD_REP"."REP_IDEE"'
    end
    object cad_repREP_IDER: TLargeintField
      FieldName = 'REP_IDER'
      Origin = '"CAD_REP"."REP_IDER"'
    end
    object cad_repREP_IDESTRANGEIRO: TIBStringField
      FieldName = 'REP_IDESTRANGEIRO'
      Origin = '"CAD_REP"."REP_IDESTRANGEIRO"'
    end
    object cad_repREP_ISUF: TIBStringField
      FieldName = 'REP_ISUF'
      Origin = '"CAD_REP"."REP_ISUF"'
      Size = 9
    end
    object cad_repREP_IM: TIBStringField
      FieldName = 'REP_IM'
      Origin = '"CAD_REP"."REP_IM"'
      Size = 15
    end
    object cad_repREP_INDFINAL: TIBStringField
      FieldName = 'REP_INDFINAL'
      Origin = '"CAD_REP"."REP_INDFINAL"'
      FixedChar = True
      Size = 1
    end
    object cad_repREP_EMAILCOM: TIBStringField
      FieldName = 'REP_EMAILCOM'
      Origin = '"CAD_REP"."REP_EMAILCOM"'
      Size = 120
    end
    object cad_repREP_EMAILCOB: TIBStringField
      FieldName = 'REP_EMAILCOB'
      Origin = '"CAD_REP"."REP_EMAILCOB"'
      Size = 120
    end
    object cad_repREP_EMAILFIN: TIBStringField
      FieldName = 'REP_EMAILFIN'
      Origin = '"CAD_REP"."REP_EMAILFIN"'
      Size = 120
    end
    object cad_repREP_EMAILCON: TIBStringField
      FieldName = 'REP_EMAILCON'
      Origin = '"CAD_REP"."REP_EMAILCON"'
      Size = 120
    end
    object cad_repREP_PORTE: TIBStringField
      FieldName = 'REP_PORTE'
      Origin = '"CAD_REP"."REP_PORTE"'
      Size = 30
    end
    object cad_repREP_OBSS: TMemoField
      FieldName = 'REP_OBSS'
      Origin = '"CAD_REP"."REP_OBSS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_repREP_CVEN: TIntegerField
      FieldName = 'REP_CVEN'
      Origin = '"CAD_REP"."REP_CVEN"'
    end
    object cad_repREP_ENVWEB: TSmallintField
      FieldName = 'REP_ENVWEB'
      Origin = '"CAD_REP"."REP_ENVWEB"'
    end
    object cad_repREP_PFRT: TIBBCDField
      FieldName = 'REP_PFRT'
      Origin = '"CAD_REP"."REP_PFRT"'
      Precision = 9
      Size = 2
    end
    object cad_repREP_CPAIS: TSmallintField
      FieldName = 'REP_CPAIS'
      Origin = '"CAD_REP"."REP_CPAIS"'
    end
    object cad_repREP_INDIEDEST: TSmallintField
      FieldName = 'REP_INDIEDEST'
      Origin = '"CAD_REP"."REP_INDIEDEST"'
    end
    object cad_repREP_DTPED: TDateTimeField
      FieldName = 'REP_DTPED'
      Origin = '"CAD_REP"."REP_DTPED"'
    end
    object cad_repREP_MAI2: TIBStringField
      FieldName = 'REP_MAI2'
      Origin = '"CAD_REP"."REP_MAI2"'
      Size = 60
    end
    object cad_repREP_MAI3: TIBStringField
      FieldName = 'REP_MAI3'
      Origin = '"CAD_REP"."REP_MAI3"'
      Size = 60
    end
    object cad_repREP_MAI4: TIBStringField
      FieldName = 'REP_MAI4'
      Origin = '"CAD_REP"."REP_MAI4"'
      Size = 60
    end
    object cad_repREP_IDST: TSmallintField
      FieldName = 'REP_IDST'
      Origin = '"CAD_REP"."REP_IDST"'
    end
    object cad_repREP_ENVMAIL: TSmallintField
      FieldName = 'REP_ENVMAIL'
      Origin = '"CAD_REP"."REP_ENVMAIL"'
    end
    object cad_repPCOM: TIBBCDField
      FieldName = 'PCOM'
      Origin = '"CAD_REP"."PCOM"'
      Precision = 9
      Size = 2
    end
    object cad_repREP_MFRT: TSmallintField
      FieldName = 'REP_MFRT'
      Origin = '"CAD_REP"."REP_MFRT"'
    end
    object cad_repDTUTPC: TDateTimeField
      FieldName = 'DTUTPC'
      Origin = '"CAD_REP"."DTUTPC"'
    end
    object cad_repAPI_B2B_ENV_SYNC: TSmallintField
      FieldName = 'API_B2B_ENV_SYNC'
      Origin = '"CAD_REP"."API_B2B_ENV_SYNC"'
    end
    object cad_repAPI_B2B_ENV_SYNC_DATA: TDateTimeField
      FieldName = 'API_B2B_ENV_SYNC_DATA'
      Origin = '"CAD_REP"."API_B2B_ENV_SYNC_DATA"'
    end
    object cad_repAPI_B2B_REC_SYNC: TSmallintField
      FieldName = 'API_B2B_REC_SYNC'
      Origin = '"CAD_REP"."API_B2B_REC_SYNC"'
    end
    object cad_repAPI_B2B_REC_SYNC_DATA: TDateTimeField
      FieldName = 'API_B2B_REC_SYNC_DATA'
      Origin = '"CAD_REP"."API_B2B_REC_SYNC_DATA"'
    end
    object cad_repCOB_LOG_NU: TLargeintField
      FieldName = 'COB_LOG_NU'
      Origin = '"CAD_REP"."COB_LOG_NU"'
    end
    object cad_repCOB_TLO_TX: TIBStringField
      FieldName = 'COB_TLO_TX'
      Origin = '"CAD_REP"."COB_TLO_TX"'
      Size = 36
    end
    object cad_repCOB_LOG_NO: TIBStringField
      FieldName = 'COB_LOG_NO'
      Origin = '"CAD_REP"."COB_LOG_NO"'
      Size = 76
    end
    object cad_repCOB_NRO: TIBStringField
      FieldName = 'COB_NRO'
      Origin = '"CAD_REP"."COB_NRO"'
      Size = 15
    end
    object cad_repCOB_XCPL: TIBStringField
      FieldName = 'COB_XCPL'
      Origin = '"CAD_REP"."COB_XCPL"'
      Size = 40
    end
    object cad_repCOB_CEP: TIBStringField
      FieldName = 'COB_CEP'
      Origin = '"CAD_REP"."COB_CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_repCOB_BAI_NO: TIBStringField
      FieldName = 'COB_BAI_NO'
      Origin = '"CAD_REP"."COB_BAI_NO"'
      Size = 72
    end
    object cad_repCOB_BAI_NO_ABREV: TIBStringField
      FieldName = 'COB_BAI_NO_ABREV'
      Origin = '"CAD_REP"."COB_BAI_NO_ABREV"'
      Size = 36
    end
    object cad_repCOB_LOC_NO: TIBStringField
      FieldName = 'COB_LOC_NO'
      Origin = '"CAD_REP"."COB_LOC_NO"'
      Size = 72
    end
    object cad_repCOB_LOC_NO_ABREV: TIBStringField
      FieldName = 'COB_LOC_NO_ABREV'
      Origin = '"CAD_REP"."COB_LOC_NO_ABREV"'
      Size = 36
    end
    object cad_repCOB_UF: TIBStringField
      FieldName = 'COB_UF'
      Origin = '"CAD_REP"."COB_UF"'
      FixedChar = True
      Size = 2
    end
    object cad_repENT_TIPO: TSmallintField
      FieldName = 'ENT_TIPO'
      Origin = '"CAD_REP"."ENT_TIPO"'
    end
    object cad_repENT_PRAZO: TSmallintField
      FieldName = 'ENT_PRAZO'
      Origin = '"CAD_REP"."ENT_PRAZO"'
    end
    object cad_repFIS_CREGTRIB: TSmallintField
      FieldName = 'FIS_CREGTRIB'
      Origin = '"CAD_REP"."FIS_CREGTRIB"'
    end
    object cad_repCOB_CMUN: TLargeintField
      FieldName = 'COB_CMUN'
      Origin = '"CAD_REP"."COB_CMUN"'
    end
    object cad_repENT_CMUN: TLargeintField
      FieldName = 'ENT_CMUN'
      Origin = '"CAD_REP"."ENT_CMUN"'
    end
    object cad_repIS_PDSC: TSmallintField
      FieldName = 'IS_PDSC'
      Origin = '"CAD_REP"."IS_PDSC"'
    end
    object cad_repFOR_TIPO: TSmallintField
      FieldName = 'FOR_TIPO'
      Origin = '"CAD_REP"."FOR_TIPO"'
    end
    object cad_repFOR_RESE: TSmallintField
      FieldName = 'FOR_RESE'
      Origin = '"CAD_REP"."FOR_RESE"'
    end
    object cad_repFOR_DEGP: TIBStringField
      FieldName = 'FOR_DEGP'
      Origin = '"CAD_REP"."FOR_DEGP"'
      Size = 60
    end
    object cad_repNAFA: TSmallintField
      FieldName = 'NAFA'
      Origin = '"CAD_REP"."NAFA"'
    end
    object cad_repDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"CAD_REP"."DEST"'
      Size = 30
    end
    object cad_repDTPP: TDateTimeField
      FieldName = 'DTPP'
      Origin = '"CAD_REP"."DTPP"'
    end
    object cad_repDTPV: TDateTimeField
      FieldName = 'DTPV'
      Origin = '"CAD_REP"."DTPV"'
    end
    object cad_repDTAB: TDateTimeField
      FieldName = 'DTAB'
      Origin = '"CAD_REP"."DTAB"'
    end
    object cad_repDTDV: TDateTimeField
      FieldName = 'DTDV'
      Origin = '"CAD_REP"."DTDV"'
    end
    object cad_repDTRO: TDateTimeField
      FieldName = 'DTRO'
      Origin = '"CAD_REP"."DTRO"'
    end
    object cad_repDTNF: TDateTimeField
      FieldName = 'DTNF'
      Origin = '"CAD_REP"."DTNF"'
    end
    object cad_repREP_DEGP: TIBStringField
      FieldName = 'REP_DEGP'
      Origin = '"CAD_REP"."REP_DEGP"'
      Size = 60
    end
  end
  object QConsulta: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 368
    Top = 40
  end
end
