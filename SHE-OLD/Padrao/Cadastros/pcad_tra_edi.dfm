inherited frmcad_tra_edi: Tfrmcad_tra_edi
  Left = 1046
  Top = 170
  ActiveControl = edfant
  AlphaBlendValue = 0
  ClientHeight = 547
  ClientWidth = 542
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 542
    Height = 463
    inherited PaintBox: TPaintBox
      Width = 542
      Height = 204
    end
    object pcinfo: TdxPageControl
      Left = 0
      Top = 0
      Width = 542
      Height = 204
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
          Height = 180
          Align = alClient
        end
        object Label1: TLabel
          Left = 4
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
          Left = 4
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
          Left = 4
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
          Left = 4
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
          Left = 340
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
          Left = 340
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
          Left = 4
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
          Left = 340
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
          Left = 4
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
          TabOrder = 11
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object edctra: TdxEdit
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
          OnValidate = edctraValidate
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
          Width = 150
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
          Tag = 1
          Left = 96
          Top = 104
          Width = 150
          Hint = 'Inscri'#231#227'o Estadual'
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
          Left = 387
          Top = 80
          Width = 150
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
          TabOrder = 7
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edimun: TdxEdit
          Left = 387
          Top = 104
          Width = 150
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
        object edcpf: TdxMaskEdit
          Left = 96
          Top = 128
          Width = 150
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
          Left = 387
          Top = 128
          Width = 150
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
          TabOrder = 10
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object cbstav: TdxImageEdit
          Tag = 1
          Left = 96
          Top = 152
          Width = 150
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
          TabOrder = 6
          Text = 'ATIVO'
          OnKeyDown = cbstavKeyDown
          AutoSize = False
          Descriptions.Strings = (
            'ATIVO'
            'INATIVO')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'A'
            'I')
          Height = 24
        end
      end
      object tsobs: TdxTabSheet
        Caption = 'Observa'#231#245'es'
        object pcOBS: TdxPageControl
          Left = 0
          Top = 0
          Width = 542
          Height = 180
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
              Height = 154
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
              Height = 154
            end
          end
          object ts2: TdxTabSheet
            Caption = 'Ocorrencias'
            object Bevel11: TBevel
              Left = 0
              Top = 0
              Width = 542
              Height = 166
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
              Height = 166
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 204
      Width = 542
      Height = 259
      Align = alBottom
      TabOrder = 0
      object pcmain: TdxPageControl
        Left = 1
        Top = 1
        Width = 540
        Height = 257
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
            Height = 233
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
                Height = 207
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
                Height = 206
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
                Left = 273
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
                Left = 105
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
                Left = 273
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
                Height = 206
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
                Left = 273
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
                Left = 105
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
                Left = 273
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
            Height = 233
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
                Height = 207
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
                Height = 207
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
                Height = 207
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
    Top = 528
    Width = 542
  end
  inherited PNLMenu: TPanel
    Width = 542
    inherited SpeedBar2: TSpeedBar
      Width = 542
    end
  end
  object cad_tra: TIBDataSet
    Database = FBird.DBERP
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_TRA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_TRA'
      
        '  (ID, TRA_BAI, TRA_BAIC, TRA_BAIV, TRA_CCEL, TRA_CCM, TRA_CCON,' +
        ' TRA_CDD2, '
      
        '   TRA_CDD3, TRA_CDD4, TRA_CDD5, TRA_CDD6, TRA_CDDD, TRA_CEL, TR' +
        'A_CEP, '
      
        '   TRA_CEPC, TRA_CEPV, TRA_CFAX, TRA_CICM, TRA_CID, TRA_CIDC, TR' +
        'A_CIDV, '
      
        '   TRA_CMAI, TRA_CMUC, TRA_CMUN, TRA_CMUV, TRA_CNCE, TRA_CNID, T' +
        'RA_CNPJ, '
      
        '   TRA_COMC, TRA_COMP, TRA_COMV, TRA_CONT, TRA_CPAG, TRA_CPF, TR' +
        'A_CRED, '
      
        '   TRA_CTC1, TRA_CTC2, TRA_CTE1, TRA_CTE2, TRA_CTE3, TRA_CTRA, T' +
        'RA_DALT, '
      
        '   TRA_DCAD, TRA_DD2, TRA_DD3, TRA_DD4, TRA_DD5, TRA_DD6, TRA_DD' +
        'D, TRA_DFUN, '
      
        '   TRA_DPAG, TRA_DTRA, TRA_ESTA, TRA_ESTC, TRA_ESTV, TRA_FANT, T' +
        'RA_FAX, '
      
        '   TRA_FCEL, TRA_FCON, TRA_FDD2, TRA_FDD3, TRA_FDD4, TRA_FDD5, T' +
        'RA_FDD6, '
      
        '   TRA_FDDD, TRA_FFAX, TRA_FMAI, TRA_FNCE, TRA_FNID, TRA_FTC1, T' +
        'RA_FTC2, '
      
        '   TRA_FTE1, TRA_FTE2, TRA_FTE3, TRA_IMUN, TRA_INSC, TRA_LOGC, T' +
        'RA_LOGR, '
      
        '   TRA_LOGV, TRA_MAIL, TRA_NCEL, TRA_NEID, TRA_NUMC, TRA_NUME, T' +
        'RA_NUMV, '
      
        '   TRA_OBSE, TRA_OBSO, TRA_RAMO, TRA_RAZA, TRA_REVE, TRA_RG, TRA' +
        '_RICM, '
      
        '   TRA_SITE, TRA_STA, TRA_STAV, TRA_TCE1, TRA_TCE2, TRA_TEL1, TR' +
        'A_TEL2, '
      
        '   TRA_TEL3, TRA_TLOC, TRA_TLOG, TRA_TLOV, TRA_TPVE, TRA_VDSC, T' +
        'RA_VULT)'
      'values'
      
        '  (:ID, :TRA_BAI, :TRA_BAIC, :TRA_BAIV, :TRA_CCEL, :TRA_CCM, :TR' +
        'A_CCON, '
      
        '   :TRA_CDD2, :TRA_CDD3, :TRA_CDD4, :TRA_CDD5, :TRA_CDD6, :TRA_C' +
        'DDD, :TRA_CEL, '
      
        '   :TRA_CEP, :TRA_CEPC, :TRA_CEPV, :TRA_CFAX, :TRA_CICM, :TRA_CI' +
        'D, :TRA_CIDC, '
      
        '   :TRA_CIDV, :TRA_CMAI, :TRA_CMUC, :TRA_CMUN, :TRA_CMUV, :TRA_C' +
        'NCE, :TRA_CNID, '
      
        '   :TRA_CNPJ, :TRA_COMC, :TRA_COMP, :TRA_COMV, :TRA_CONT, :TRA_C' +
        'PAG, :TRA_CPF, '
      
        '   :TRA_CRED, :TRA_CTC1, :TRA_CTC2, :TRA_CTE1, :TRA_CTE2, :TRA_C' +
        'TE3, :TRA_CTRA, '
      
        '   :TRA_DALT, :TRA_DCAD, :TRA_DD2, :TRA_DD3, :TRA_DD4, :TRA_DD5,' +
        ' :TRA_DD6, '
      
        '   :TRA_DDD, :TRA_DFUN, :TRA_DPAG, :TRA_DTRA, :TRA_ESTA, :TRA_ES' +
        'TC, :TRA_ESTV, '
      
        '   :TRA_FANT, :TRA_FAX, :TRA_FCEL, :TRA_FCON, :TRA_FDD2, :TRA_FD' +
        'D3, :TRA_FDD4, '
      
        '   :TRA_FDD5, :TRA_FDD6, :TRA_FDDD, :TRA_FFAX, :TRA_FMAI, :TRA_F' +
        'NCE, :TRA_FNID, '
      
        '   :TRA_FTC1, :TRA_FTC2, :TRA_FTE1, :TRA_FTE2, :TRA_FTE3, :TRA_I' +
        'MUN, :TRA_INSC, '
      
        '   :TRA_LOGC, :TRA_LOGR, :TRA_LOGV, :TRA_MAIL, :TRA_NCEL, :TRA_N' +
        'EID, :TRA_NUMC, '
      
        '   :TRA_NUME, :TRA_NUMV, :TRA_OBSE, :TRA_OBSO, :TRA_RAMO, :TRA_R' +
        'AZA, :TRA_REVE, '
      
        '   :TRA_RG, :TRA_RICM, :TRA_SITE, :TRA_STA, :TRA_STAV, :TRA_TCE1' +
        ', :TRA_TCE2, '
      
        '   :TRA_TEL1, :TRA_TEL2, :TRA_TEL3, :TRA_TLOC, :TRA_TLOG, :TRA_T' +
        'LOV, :TRA_TPVE, '
      '   :TRA_VDSC, :TRA_VULT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  TRA_RAZA,'
      '  TRA_FANT,'
      '  TRA_CONT,'
      '  TRA_DCAD,'
      '  TRA_STA,'
      '  TRA_MAIL,'
      '  TRA_DDD,'
      '  TRA_TEL1,'
      '  TRA_TEL2,'
      '  TRA_FAX,'
      '  TRA_CEL,'
      '  TRA_RG,'
      '  TRA_CPF,'
      '  TRA_INSC,'
      '  TRA_CNPJ,'
      '  TRA_TLOG,'
      '  TRA_LOGR,'
      '  TRA_CEP,'
      '  TRA_NUME,'
      '  TRA_COMP,'
      '  TRA_BAI,'
      '  TRA_CID,'
      '  TRA_ESTA,'
      '  TRA_TLOC,'
      '  TRA_LOGC,'
      '  TRA_CEPC,'
      '  TRA_NUMC,'
      '  TRA_COMC,'
      '  TRA_BAIC,'
      '  TRA_CIDC,'
      '  TRA_ESTC,'
      '  TRA_OBSO,'
      '  TRA_STAV,'
      '  TRA_VULT,'
      '  TRA_TPVE,'
      '  TRA_OBSE,'
      '  TRA_TLOV,'
      '  TRA_LOGV,'
      '  TRA_CEPV,'
      '  TRA_NUMV,'
      '  TRA_COMV,'
      '  TRA_BAIV,'
      '  TRA_CIDV,'
      '  TRA_ESTV,'
      '  TRA_RICM,'
      '  TRA_CPAG,'
      '  TRA_DPAG,'
      '  TRA_CMUN,'
      '  TRA_DALT,'
      '  TRA_CTRA,'
      '  TRA_DTRA,'
      '  TRA_DFUN,'
      '  TRA_CICM,'
      '  TRA_RAMO,'
      '  TRA_CMUV,'
      '  TRA_CMUC,'
      '  TRA_DD2,'
      '  TRA_DD3,'
      '  TRA_DD4,'
      '  TRA_DD5,'
      '  TRA_DD6,'
      '  TRA_TEL3,'
      '  TRA_TCE1,'
      '  TRA_TCE2,'
      '  TRA_NCEL,'
      '  TRA_NEID,'
      '  TRA_FCON,'
      '  TRA_FMAI,'
      '  TRA_FDDD,'
      '  TRA_FTE1,'
      '  TRA_FDD2,'
      '  TRA_FTE2,'
      '  TRA_FDD3,'
      '  TRA_FTE3,'
      '  TRA_FDD4,'
      '  TRA_FFAX,'
      '  TRA_FDD5,'
      '  TRA_FCEL,'
      '  TRA_FTC1,'
      '  TRA_FDD6,'
      '  TRA_FNCE,'
      '  TRA_FTC2,'
      '  TRA_FNID,'
      '  TRA_CCON,'
      '  TRA_CMAI,'
      '  TRA_CDDD,'
      '  TRA_CTE1,'
      '  TRA_CDD2,'
      '  TRA_CTE2,'
      '  TRA_CDD3,'
      '  TRA_CTE3,'
      '  TRA_CDD4,'
      '  TRA_CFAX,'
      '  TRA_CDD5,'
      '  TRA_CCEL,'
      '  TRA_CTC1,'
      '  TRA_CDD6,'
      '  TRA_CNCE,'
      '  TRA_CTC2,'
      '  TRA_CNID,'
      '  TRA_VDSC,'
      '  TRA_CRED,'
      '  TRA_SITE,'
      '  TRA_REVE,'
      '  TRA_IMUN,'
      '  TRA_CCM'
      'from CAD_TRA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_TRA')
    ModifySQL.Strings = (
      'update CAD_TRA'
      'set'
      '  ID = :ID,'
      '  TRA_BAI = :TRA_BAI,'
      '  TRA_BAIC = :TRA_BAIC,'
      '  TRA_BAIV = :TRA_BAIV,'
      '  TRA_CCEL = :TRA_CCEL,'
      '  TRA_CCM = :TRA_CCM,'
      '  TRA_CCON = :TRA_CCON,'
      '  TRA_CDD2 = :TRA_CDD2,'
      '  TRA_CDD3 = :TRA_CDD3,'
      '  TRA_CDD4 = :TRA_CDD4,'
      '  TRA_CDD5 = :TRA_CDD5,'
      '  TRA_CDD6 = :TRA_CDD6,'
      '  TRA_CDDD = :TRA_CDDD,'
      '  TRA_CEL = :TRA_CEL,'
      '  TRA_CEP = :TRA_CEP,'
      '  TRA_CEPC = :TRA_CEPC,'
      '  TRA_CEPV = :TRA_CEPV,'
      '  TRA_CFAX = :TRA_CFAX,'
      '  TRA_CICM = :TRA_CICM,'
      '  TRA_CID = :TRA_CID,'
      '  TRA_CIDC = :TRA_CIDC,'
      '  TRA_CIDV = :TRA_CIDV,'
      '  TRA_CMAI = :TRA_CMAI,'
      '  TRA_CMUC = :TRA_CMUC,'
      '  TRA_CMUN = :TRA_CMUN,'
      '  TRA_CMUV = :TRA_CMUV,'
      '  TRA_CNCE = :TRA_CNCE,'
      '  TRA_CNID = :TRA_CNID,'
      '  TRA_CNPJ = :TRA_CNPJ,'
      '  TRA_COMC = :TRA_COMC,'
      '  TRA_COMP = :TRA_COMP,'
      '  TRA_COMV = :TRA_COMV,'
      '  TRA_CONT = :TRA_CONT,'
      '  TRA_CPAG = :TRA_CPAG,'
      '  TRA_CPF = :TRA_CPF,'
      '  TRA_CRED = :TRA_CRED,'
      '  TRA_CTC1 = :TRA_CTC1,'
      '  TRA_CTC2 = :TRA_CTC2,'
      '  TRA_CTE1 = :TRA_CTE1,'
      '  TRA_CTE2 = :TRA_CTE2,'
      '  TRA_CTE3 = :TRA_CTE3,'
      '  TRA_CTRA = :TRA_CTRA,'
      '  TRA_DALT = :TRA_DALT,'
      '  TRA_DCAD = :TRA_DCAD,'
      '  TRA_DD2 = :TRA_DD2,'
      '  TRA_DD3 = :TRA_DD3,'
      '  TRA_DD4 = :TRA_DD4,'
      '  TRA_DD5 = :TRA_DD5,'
      '  TRA_DD6 = :TRA_DD6,'
      '  TRA_DDD = :TRA_DDD,'
      '  TRA_DFUN = :TRA_DFUN,'
      '  TRA_DPAG = :TRA_DPAG,'
      '  TRA_DTRA = :TRA_DTRA,'
      '  TRA_ESTA = :TRA_ESTA,'
      '  TRA_ESTC = :TRA_ESTC,'
      '  TRA_ESTV = :TRA_ESTV,'
      '  TRA_FANT = :TRA_FANT,'
      '  TRA_FAX = :TRA_FAX,'
      '  TRA_FCEL = :TRA_FCEL,'
      '  TRA_FCON = :TRA_FCON,'
      '  TRA_FDD2 = :TRA_FDD2,'
      '  TRA_FDD3 = :TRA_FDD3,'
      '  TRA_FDD4 = :TRA_FDD4,'
      '  TRA_FDD5 = :TRA_FDD5,'
      '  TRA_FDD6 = :TRA_FDD6,'
      '  TRA_FDDD = :TRA_FDDD,'
      '  TRA_FFAX = :TRA_FFAX,'
      '  TRA_FMAI = :TRA_FMAI,'
      '  TRA_FNCE = :TRA_FNCE,'
      '  TRA_FNID = :TRA_FNID,'
      '  TRA_FTC1 = :TRA_FTC1,'
      '  TRA_FTC2 = :TRA_FTC2,'
      '  TRA_FTE1 = :TRA_FTE1,'
      '  TRA_FTE2 = :TRA_FTE2,'
      '  TRA_FTE3 = :TRA_FTE3,'
      '  TRA_IMUN = :TRA_IMUN,'
      '  TRA_INSC = :TRA_INSC,'
      '  TRA_LOGC = :TRA_LOGC,'
      '  TRA_LOGR = :TRA_LOGR,'
      '  TRA_LOGV = :TRA_LOGV,'
      '  TRA_MAIL = :TRA_MAIL,'
      '  TRA_NCEL = :TRA_NCEL,'
      '  TRA_NEID = :TRA_NEID,'
      '  TRA_NUMC = :TRA_NUMC,'
      '  TRA_NUME = :TRA_NUME,'
      '  TRA_NUMV = :TRA_NUMV,'
      '  TRA_OBSE = :TRA_OBSE,'
      '  TRA_OBSO = :TRA_OBSO,'
      '  TRA_RAMO = :TRA_RAMO,'
      '  TRA_RAZA = :TRA_RAZA,'
      '  TRA_REVE = :TRA_REVE,'
      '  TRA_RG = :TRA_RG,'
      '  TRA_RICM = :TRA_RICM,'
      '  TRA_SITE = :TRA_SITE,'
      '  TRA_STA = :TRA_STA,'
      '  TRA_STAV = :TRA_STAV,'
      '  TRA_TCE1 = :TRA_TCE1,'
      '  TRA_TCE2 = :TRA_TCE2,'
      '  TRA_TEL1 = :TRA_TEL1,'
      '  TRA_TEL2 = :TRA_TEL2,'
      '  TRA_TEL3 = :TRA_TEL3,'
      '  TRA_TLOC = :TRA_TLOC,'
      '  TRA_TLOG = :TRA_TLOG,'
      '  TRA_TLOV = :TRA_TLOV,'
      '  TRA_TPVE = :TRA_TPVE,'
      '  TRA_VDSC = :TRA_VDSC,'
      '  TRA_VULT = :TRA_VULT'
      'where'
      '  ID = :OLD_ID')
    Left = 352
    Top = 72
    object cad_traID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_traTRA_RAZA: TIBStringField
      FieldName = 'TRA_RAZA'
      Origin = '"CAD_TRA"."TRA_RAZA"'
      Size = 60
    end
    object cad_traTRA_FANT: TIBStringField
      FieldName = 'TRA_FANT'
      Origin = '"CAD_TRA"."TRA_FANT"'
      Size = 60
    end
    object cad_traTRA_CONT: TIBStringField
      FieldName = 'TRA_CONT'
      Origin = '"CAD_TRA"."TRA_CONT"'
      Size = 30
    end
    object cad_traTRA_DCAD: TDateField
      FieldName = 'TRA_DCAD'
      Origin = '"CAD_TRA"."TRA_DCAD"'
    end
    object cad_traTRA_STA: TIBStringField
      FieldName = 'TRA_STA'
      Origin = '"CAD_TRA"."TRA_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_MAIL: TIBStringField
      FieldName = 'TRA_MAIL'
      Origin = '"CAD_TRA"."TRA_MAIL"'
      Size = 60
    end
    object cad_traTRA_DDD: TIBStringField
      FieldName = 'TRA_DDD'
      Origin = '"CAD_TRA"."TRA_DDD"'
      Size = 2
    end
    object cad_traTRA_TEL1: TIBStringField
      FieldName = 'TRA_TEL1'
      Origin = '"CAD_TRA"."TRA_TEL1"'
      Size = 9
    end
    object cad_traTRA_TEL2: TIBStringField
      FieldName = 'TRA_TEL2'
      Origin = '"CAD_TRA"."TRA_TEL2"'
      Size = 9
    end
    object cad_traTRA_FAX: TIBStringField
      FieldName = 'TRA_FAX'
      Origin = '"CAD_TRA"."TRA_FAX"'
      Size = 9
    end
    object cad_traTRA_CEL: TIBStringField
      FieldName = 'TRA_CEL'
      Origin = '"CAD_TRA"."TRA_CEL"'
      Size = 9
    end
    object cad_traTRA_RG: TIBStringField
      FieldName = 'TRA_RG'
      Origin = '"CAD_TRA"."TRA_RG"'
      Size = 15
    end
    object cad_traTRA_CPF: TIBStringField
      FieldName = 'TRA_CPF'
      Origin = '"CAD_TRA"."TRA_CPF"'
      Size = 11
    end
    object cad_traTRA_INSC: TIBStringField
      FieldName = 'TRA_INSC'
      Origin = '"CAD_TRA"."TRA_INSC"'
    end
    object cad_traTRA_CNPJ: TIBStringField
      FieldName = 'TRA_CNPJ'
      Origin = '"CAD_TRA"."TRA_CNPJ"'
      Size = 14
    end
    object cad_traTRA_TLOG: TIBStringField
      FieldName = 'TRA_TLOG'
      Origin = '"CAD_TRA"."TRA_TLOG"'
      Size = 15
    end
    object cad_traTRA_LOGR: TIBStringField
      FieldName = 'TRA_LOGR'
      Origin = '"CAD_TRA"."TRA_LOGR"'
      Size = 60
    end
    object cad_traTRA_CEP: TIBStringField
      FieldName = 'TRA_CEP'
      Origin = '"CAD_TRA"."TRA_CEP"'
      Size = 9
    end
    object cad_traTRA_NUME: TIBStringField
      FieldName = 'TRA_NUME'
      Origin = '"CAD_TRA"."TRA_NUME"'
      Size = 10
    end
    object cad_traTRA_COMP: TIBStringField
      FieldName = 'TRA_COMP'
      Origin = '"CAD_TRA"."TRA_COMP"'
      Size = 40
    end
    object cad_traTRA_BAI: TIBStringField
      FieldName = 'TRA_BAI'
      Origin = '"CAD_TRA"."TRA_BAI"'
      Size = 40
    end
    object cad_traTRA_CID: TIBStringField
      FieldName = 'TRA_CID'
      Origin = '"CAD_TRA"."TRA_CID"'
      Size = 40
    end
    object cad_traTRA_ESTA: TIBStringField
      FieldName = 'TRA_ESTA'
      Origin = '"CAD_TRA"."TRA_ESTA"'
      Size = 2
    end
    object cad_traTRA_TLOC: TIBStringField
      FieldName = 'TRA_TLOC'
      Origin = '"CAD_TRA"."TRA_TLOC"'
      Size = 15
    end
    object cad_traTRA_LOGC: TIBStringField
      FieldName = 'TRA_LOGC'
      Origin = '"CAD_TRA"."TRA_LOGC"'
      Size = 60
    end
    object cad_traTRA_CEPC: TIBStringField
      FieldName = 'TRA_CEPC'
      Origin = '"CAD_TRA"."TRA_CEPC"'
      Size = 9
    end
    object cad_traTRA_NUMC: TIBStringField
      FieldName = 'TRA_NUMC'
      Origin = '"CAD_TRA"."TRA_NUMC"'
      Size = 10
    end
    object cad_traTRA_COMC: TIBStringField
      FieldName = 'TRA_COMC'
      Origin = '"CAD_TRA"."TRA_COMC"'
      Size = 40
    end
    object cad_traTRA_BAIC: TIBStringField
      FieldName = 'TRA_BAIC'
      Origin = '"CAD_TRA"."TRA_BAIC"'
      Size = 40
    end
    object cad_traTRA_CIDC: TIBStringField
      FieldName = 'TRA_CIDC'
      Origin = '"CAD_TRA"."TRA_CIDC"'
      Size = 40
    end
    object cad_traTRA_ESTC: TIBStringField
      FieldName = 'TRA_ESTC'
      Origin = '"CAD_TRA"."TRA_ESTC"'
      Size = 2
    end
    object cad_traTRA_OBSO: TMemoField
      FieldName = 'TRA_OBSO'
      Origin = '"CAD_TRA"."TRA_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_traTRA_STAV: TIBStringField
      FieldName = 'TRA_STAV'
      Origin = '"CAD_TRA"."TRA_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_VULT: TIBBCDField
      FieldName = 'TRA_VULT'
      Origin = '"CAD_TRA"."TRA_VULT"'
      Precision = 9
      Size = 2
    end
    object cad_traTRA_TPVE: TIBStringField
      FieldName = 'TRA_TPVE'
      Origin = '"CAD_TRA"."TRA_TPVE"'
      Size = 10
    end
    object cad_traTRA_OBSE: TMemoField
      FieldName = 'TRA_OBSE'
      Origin = '"CAD_TRA"."TRA_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_traTRA_TLOV: TIBStringField
      FieldName = 'TRA_TLOV'
      Origin = '"CAD_TRA"."TRA_TLOV"'
      Size = 15
    end
    object cad_traTRA_LOGV: TIBStringField
      FieldName = 'TRA_LOGV'
      Origin = '"CAD_TRA"."TRA_LOGV"'
      Size = 60
    end
    object cad_traTRA_CEPV: TIBStringField
      FieldName = 'TRA_CEPV'
      Origin = '"CAD_TRA"."TRA_CEPV"'
      Size = 9
    end
    object cad_traTRA_NUMV: TIBStringField
      FieldName = 'TRA_NUMV'
      Origin = '"CAD_TRA"."TRA_NUMV"'
      Size = 10
    end
    object cad_traTRA_COMV: TIBStringField
      FieldName = 'TRA_COMV'
      Origin = '"CAD_TRA"."TRA_COMV"'
      Size = 40
    end
    object cad_traTRA_BAIV: TIBStringField
      FieldName = 'TRA_BAIV'
      Origin = '"CAD_TRA"."TRA_BAIV"'
      Size = 40
    end
    object cad_traTRA_CIDV: TIBStringField
      FieldName = 'TRA_CIDV'
      Origin = '"CAD_TRA"."TRA_CIDV"'
      Size = 40
    end
    object cad_traTRA_ESTV: TIBStringField
      FieldName = 'TRA_ESTV'
      Origin = '"CAD_TRA"."TRA_ESTV"'
      Size = 2
    end
    object cad_traTRA_RICM: TIBStringField
      FieldName = 'TRA_RICM'
      Origin = '"CAD_TRA"."TRA_RICM"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_CPAG: TIBStringField
      FieldName = 'TRA_CPAG'
      Origin = '"CAD_TRA"."TRA_CPAG"'
      Size = 2
    end
    object cad_traTRA_DPAG: TIBStringField
      FieldName = 'TRA_DPAG'
      Origin = '"CAD_TRA"."TRA_DPAG"'
      Size = 50
    end
    object cad_traTRA_CMUN: TIBStringField
      FieldName = 'TRA_CMUN'
      Origin = '"CAD_TRA"."TRA_CMUN"'
      Size = 10
    end
    object cad_traTRA_DALT: TDateField
      FieldName = 'TRA_DALT'
      Origin = '"CAD_TRA"."TRA_DALT"'
    end
    object cad_traTRA_CTRA: TIntegerField
      FieldName = 'TRA_CTRA'
      Origin = '"CAD_TRA"."TRA_CTRA"'
    end
    object cad_traTRA_DTRA: TIBStringField
      FieldName = 'TRA_DTRA'
      Origin = '"CAD_TRA"."TRA_DTRA"'
    end
    object cad_traTRA_DFUN: TDateField
      FieldName = 'TRA_DFUN'
      Origin = '"CAD_TRA"."TRA_DFUN"'
    end
    object cad_traTRA_CICM: TIBStringField
      FieldName = 'TRA_CICM'
      Origin = '"CAD_TRA"."TRA_CICM"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_RAMO: TIBStringField
      FieldName = 'TRA_RAMO'
      Origin = '"CAD_TRA"."TRA_RAMO"'
      Size = 120
    end
    object cad_traTRA_CMUV: TIBStringField
      FieldName = 'TRA_CMUV'
      Origin = '"CAD_TRA"."TRA_CMUV"'
      Size = 10
    end
    object cad_traTRA_CMUC: TIBStringField
      FieldName = 'TRA_CMUC'
      Origin = '"CAD_TRA"."TRA_CMUC"'
      Size = 10
    end
    object cad_traTRA_DD2: TIBStringField
      FieldName = 'TRA_DD2'
      Origin = '"CAD_TRA"."TRA_DD2"'
      Size = 2
    end
    object cad_traTRA_DD3: TIBStringField
      FieldName = 'TRA_DD3'
      Origin = '"CAD_TRA"."TRA_DD3"'
      Size = 2
    end
    object cad_traTRA_DD4: TIBStringField
      FieldName = 'TRA_DD4'
      Origin = '"CAD_TRA"."TRA_DD4"'
      Size = 2
    end
    object cad_traTRA_DD5: TIBStringField
      FieldName = 'TRA_DD5'
      Origin = '"CAD_TRA"."TRA_DD5"'
      Size = 2
    end
    object cad_traTRA_DD6: TIBStringField
      FieldName = 'TRA_DD6'
      Origin = '"CAD_TRA"."TRA_DD6"'
      Size = 2
    end
    object cad_traTRA_TEL3: TIBStringField
      FieldName = 'TRA_TEL3'
      Origin = '"CAD_TRA"."TRA_TEL3"'
      Size = 9
    end
    object cad_traTRA_TCE1: TIBStringField
      FieldName = 'TRA_TCE1'
      Origin = '"CAD_TRA"."TRA_TCE1"'
      Size = 10
    end
    object cad_traTRA_TCE2: TIBStringField
      FieldName = 'TRA_TCE2'
      Origin = '"CAD_TRA"."TRA_TCE2"'
      Size = 10
    end
    object cad_traTRA_NCEL: TIBStringField
      FieldName = 'TRA_NCEL'
      Origin = '"CAD_TRA"."TRA_NCEL"'
      Size = 9
    end
    object cad_traTRA_NEID: TIBStringField
      FieldName = 'TRA_NEID'
      Origin = '"CAD_TRA"."TRA_NEID"'
      Size = 15
    end
    object cad_traTRA_FCON: TIBStringField
      FieldName = 'TRA_FCON'
      Origin = '"CAD_TRA"."TRA_FCON"'
      Size = 30
    end
    object cad_traTRA_FMAI: TIBStringField
      FieldName = 'TRA_FMAI'
      Origin = '"CAD_TRA"."TRA_FMAI"'
      Size = 60
    end
    object cad_traTRA_FDDD: TIBStringField
      FieldName = 'TRA_FDDD'
      Origin = '"CAD_TRA"."TRA_FDDD"'
      Size = 2
    end
    object cad_traTRA_FTE1: TIBStringField
      FieldName = 'TRA_FTE1'
      Origin = '"CAD_TRA"."TRA_FTE1"'
      Size = 9
    end
    object cad_traTRA_FDD2: TIBStringField
      FieldName = 'TRA_FDD2'
      Origin = '"CAD_TRA"."TRA_FDD2"'
      Size = 2
    end
    object cad_traTRA_FTE2: TIBStringField
      FieldName = 'TRA_FTE2'
      Origin = '"CAD_TRA"."TRA_FTE2"'
      Size = 9
    end
    object cad_traTRA_FDD3: TIBStringField
      FieldName = 'TRA_FDD3'
      Origin = '"CAD_TRA"."TRA_FDD3"'
      Size = 2
    end
    object cad_traTRA_FTE3: TIBStringField
      FieldName = 'TRA_FTE3'
      Origin = '"CAD_TRA"."TRA_FTE3"'
      Size = 9
    end
    object cad_traTRA_FDD4: TIBStringField
      FieldName = 'TRA_FDD4'
      Origin = '"CAD_TRA"."TRA_FDD4"'
      Size = 2
    end
    object cad_traTRA_FFAX: TIBStringField
      FieldName = 'TRA_FFAX'
      Origin = '"CAD_TRA"."TRA_FFAX"'
      Size = 9
    end
    object cad_traTRA_FDD5: TIBStringField
      FieldName = 'TRA_FDD5'
      Origin = '"CAD_TRA"."TRA_FDD5"'
      Size = 2
    end
    object cad_traTRA_FCEL: TIBStringField
      FieldName = 'TRA_FCEL'
      Origin = '"CAD_TRA"."TRA_FCEL"'
      Size = 9
    end
    object cad_traTRA_FTC1: TIBStringField
      FieldName = 'TRA_FTC1'
      Origin = '"CAD_TRA"."TRA_FTC1"'
      Size = 10
    end
    object cad_traTRA_FDD6: TIBStringField
      FieldName = 'TRA_FDD6'
      Origin = '"CAD_TRA"."TRA_FDD6"'
      Size = 2
    end
    object cad_traTRA_FNCE: TIBStringField
      FieldName = 'TRA_FNCE'
      Origin = '"CAD_TRA"."TRA_FNCE"'
      Size = 9
    end
    object cad_traTRA_FTC2: TIBStringField
      FieldName = 'TRA_FTC2'
      Origin = '"CAD_TRA"."TRA_FTC2"'
      Size = 10
    end
    object cad_traTRA_FNID: TIBStringField
      FieldName = 'TRA_FNID'
      Origin = '"CAD_TRA"."TRA_FNID"'
      Size = 15
    end
    object cad_traTRA_CCON: TIBStringField
      FieldName = 'TRA_CCON'
      Origin = '"CAD_TRA"."TRA_CCON"'
      Size = 30
    end
    object cad_traTRA_CMAI: TIBStringField
      FieldName = 'TRA_CMAI'
      Origin = '"CAD_TRA"."TRA_CMAI"'
      Size = 60
    end
    object cad_traTRA_CDDD: TIBStringField
      FieldName = 'TRA_CDDD'
      Origin = '"CAD_TRA"."TRA_CDDD"'
      Size = 2
    end
    object cad_traTRA_CTE1: TIBStringField
      FieldName = 'TRA_CTE1'
      Origin = '"CAD_TRA"."TRA_CTE1"'
      Size = 9
    end
    object cad_traTRA_CDD2: TIBStringField
      FieldName = 'TRA_CDD2'
      Origin = '"CAD_TRA"."TRA_CDD2"'
      Size = 2
    end
    object cad_traTRA_CTE2: TIBStringField
      FieldName = 'TRA_CTE2'
      Origin = '"CAD_TRA"."TRA_CTE2"'
      Size = 9
    end
    object cad_traTRA_CDD3: TIBStringField
      FieldName = 'TRA_CDD3'
      Origin = '"CAD_TRA"."TRA_CDD3"'
      Size = 2
    end
    object cad_traTRA_CTE3: TIBStringField
      FieldName = 'TRA_CTE3'
      Origin = '"CAD_TRA"."TRA_CTE3"'
      Size = 9
    end
    object cad_traTRA_CDD4: TIBStringField
      FieldName = 'TRA_CDD4'
      Origin = '"CAD_TRA"."TRA_CDD4"'
      Size = 2
    end
    object cad_traTRA_CFAX: TIBStringField
      FieldName = 'TRA_CFAX'
      Origin = '"CAD_TRA"."TRA_CFAX"'
      Size = 9
    end
    object cad_traTRA_CDD5: TIBStringField
      FieldName = 'TRA_CDD5'
      Origin = '"CAD_TRA"."TRA_CDD5"'
      Size = 2
    end
    object cad_traTRA_CCEL: TIBStringField
      FieldName = 'TRA_CCEL'
      Origin = '"CAD_TRA"."TRA_CCEL"'
      Size = 9
    end
    object cad_traTRA_CTC1: TIBStringField
      FieldName = 'TRA_CTC1'
      Origin = '"CAD_TRA"."TRA_CTC1"'
      Size = 10
    end
    object cad_traTRA_CDD6: TIBStringField
      FieldName = 'TRA_CDD6'
      Origin = '"CAD_TRA"."TRA_CDD6"'
      Size = 2
    end
    object cad_traTRA_CNCE: TIBStringField
      FieldName = 'TRA_CNCE'
      Origin = '"CAD_TRA"."TRA_CNCE"'
      Size = 9
    end
    object cad_traTRA_CTC2: TIBStringField
      FieldName = 'TRA_CTC2'
      Origin = '"CAD_TRA"."TRA_CTC2"'
      Size = 10
    end
    object cad_traTRA_CNID: TIBStringField
      FieldName = 'TRA_CNID'
      Origin = '"CAD_TRA"."TRA_CNID"'
      Size = 15
    end
    object cad_traTRA_VDSC: TIBBCDField
      FieldName = 'TRA_VDSC'
      Origin = '"CAD_TRA"."TRA_VDSC"'
      Precision = 9
      Size = 2
    end
    object cad_traTRA_CRED: TIBBCDField
      FieldName = 'TRA_CRED'
      Origin = '"CAD_TRA"."TRA_CRED"'
      Precision = 9
      Size = 2
    end
    object cad_traTRA_SITE: TIBStringField
      FieldName = 'TRA_SITE'
      Origin = '"CAD_TRA"."TRA_SITE"'
      Size = 120
    end
    object cad_traTRA_REVE: TIBStringField
      FieldName = 'TRA_REVE'
      Origin = '"CAD_TRA"."TRA_REVE"'
      Size = 3
    end
    object cad_traTRA_IMUN: TIBStringField
      FieldName = 'TRA_IMUN'
      Origin = '"CAD_TRA"."TRA_IMUN"'
    end
    object cad_traTRA_CCM: TIBStringField
      FieldName = 'TRA_CCM'
      Origin = '"CAD_TRA"."TRA_CCM"'
    end
  end
  object QConsulta: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 624
    Top = 72
  end
end
