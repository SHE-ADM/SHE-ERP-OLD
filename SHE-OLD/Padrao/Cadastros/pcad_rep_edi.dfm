inherited frmcad_rep_edi: Tfrmcad_rep_edi
  Left = 374
  Top = 50
  ActiveControl = edfant
  AlphaBlendValue = 0
  ClientHeight = 573
  ClientWidth = 542
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 542
    Height = 489
    inherited PaintBox: TPaintBox
      Width = 542
      Height = 227
    end
    object pcinfo: TdxPageControl
      Left = 0
      Top = 0
      Width = 542
      Height = 227
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
          Height = 203
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
          Height = 203
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
      Top = 227
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
  inherited sbMSG: TStatusBar
    Top = 554
    Width = 542
  end
  inherited PNLMenu: TPanel
    Width = 542
    inherited SpeedBar2: TSpeedBar
      Width = 542
    end
  end
  inherited ILMenuEdicao: TImageList
    Left = 296
  end
  object cad_rep: TIBDataSet
    Database = FBird.DBERP
    Transaction = IBTra
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
    Left = 416
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
    Transaction = IBTra
    Left = 624
    Top = 72
  end
end
