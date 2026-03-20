inherited frmcad_cli_edi: Tfrmcad_cli_edi
  Left = 1149
  Top = 120
  AlphaBlendValue = 0
  ClientHeight = 641
  ClientWidth = 615
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 615
    Height = 525
    inherited PaintBox: TPaintBox
      Width = 615
      Height = 270
    end
    object Panel1: TPanel
      Left = 0
      Top = 270
      Width = 615
      Height = 255
      Align = alBottom
      TabOrder = 0
      object PCINFADCPL: TdxPageControl
        Left = 1
        Top = 1
        Width = 613
        Height = 253
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
          object PCContatos: TdxPageControl
            Left = 0
            Top = 0
            Width = 613
            Height = 229
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
              object Bevel7: TBevel
                Left = 0
                Top = 0
                Width = 613
                Height = 203
                Align = alClient
              end
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
                Top = 133
                Width = 57
                Height = 14
                Caption = 'WhatsApp'
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
                OnChange = edmailChange
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
              object edcel: TdxMaskEdit
                Left = 105
                Top = 104
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '99999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edneid: TdxMaskEdit
                Left = 72
                Top = 128
                Width = 108
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 11
                OnDblClick = edtel2DblClick
                AutoSize = False
                IgnoreMaskBlank = False
                MaxLength = 15
                Height = 24
                StoredValues = 6
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
              object edDD5: TdxMaskEdit
                Left = 72
                Top = 104
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
              object cbtce1: TdxImageEdit
                Left = 178
                Top = 104
                Width = 170
                Color = clWhite
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 10
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
              object edfax: TdxMaskEdit
                Left = 271
                Top = 80
                Width = 75
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 12
                OnDblClick = edfaxDblClick
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
                TabOrder = 13
                AutoSize = False
                EditMask = '(99);0; '
                IgnoreMaskBlank = False
                Text = '11'
                Height = 24
                StoredValues = 4
              end
            end
            object tscfin: TdxTabSheet
              Caption = 'Financeiro'
              object Bevel8: TBevel
                Left = 0
                Top = 0
                Width = 613
                Height = 203
                Align = alClient
              end
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
              object cbftc1: TdxImageEdit
                Left = 178
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
            end
            object tsccco: TdxTabSheet
              Caption = 'Compras'
              object Bevel9: TBevel
                Left = 0
                Top = 0
                Width = 613
                Height = 203
                Align = alClient
              end
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
            end
          end
        end
        object tsend: TdxTabSheet
          Caption = 'Endere'#231'os'
          object PCEnderecos: TdxPageControl
            Left = 0
            Top = 0
            Width = 613
            Height = 229
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
                Width = 613
                Height = 203
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
                Left = 499
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
                OnButtonClick = BEENT_CMUNButtonClick
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
                Width = 613
                Height = 203
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
                OnButtonClick = BEENT_CMUNButtonClick
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
                Width = 613
                Height = 203
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
                OnButtonClick = BEENT_CMUNButtonClick
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
    object PCPrincipal: TdxPageControl
      Left = 0
      Top = 0
      Width = 615
      Height = 270
      ActivePage = TSCadastro
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
      object TSCadastro: TdxTabSheet
        Caption = 'Cadastro'
        object BCadastro: TBevel
          Left = 0
          Top = 0
          Width = 615
          Height = 246
          Align = alClient
        end
        object Label1: TLabel
          Left = 48
          Top = 8
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
          Left = 3
          Top = 32
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
          Left = 15
          Top = 56
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
          Left = 61
          Top = 80
          Width = 30
          Height = 14
          Caption = 'CNPJ'
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
        object Label14: TLabel
          Left = 395
          Top = 80
          Width = 12
          Height = 14
          Hint = 'Inscri'#231#227'o Estadual'
          Caption = 'IE'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label21: TLabel
          Left = 47
          Top = 104
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
          Left = 394
          Top = 104
          Width = 13
          Height = 14
          Hint = 'Inscri'#231#227'o Municipal'
          Caption = 'IM'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label15: TLabel
          Left = 387
          Top = 128
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
        object Label37: TLabel
          Left = 366
          Top = 200
          Width = 41
          Height = 14
          Hint = 'Situa'#231#227'o do Cadastro'
          Caption = 'Status'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label40: TLabel
          Left = 32
          Top = 152
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
        object Label42: TLabel
          Left = 316
          Top = 152
          Width = 91
          Height = 14
          Caption = 'Representante'
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
        object Label58: TLabel
          Left = 58
          Top = 126
          Width = 33
          Height = 14
          Caption = 'Grupo'
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
        object Label55: TLabel
          Left = 443
          Top = 8
          Width = 69
          Height = 14
          Caption = 'Dt Funda'#231#227'o'
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
        object Label2: TLabel
          Left = 49
          Top = 176
          Width = 42
          Height = 14
          Hint = 'Tipos de Reservas'
          Caption = 'Reserva'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label16: TLabel
          Left = 63
          Top = 200
          Width = 28
          Height = 14
          Hint = 'Aviso de Reserva'
          Caption = 'Aviso'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label41: TLabel
          Left = 381
          Top = 176
          Width = 26
          Height = 14
          Hint = 'Tipos de Cadastro'
          Caption = 'Tipo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object eddalt: TdxDateEdit
          Left = 511
          Top = 3
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
          TabOrder = 17
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object edccli: TdxEdit
          Tag = 1
          Left = 95
          Top = 3
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
          Text = '00000'
          AutoSize = False
          CharCase = ecUpperCase
          OnValidate = edccliValidate
          Height = 24
        end
        object edfant: TdxEdit
          Tag = 1
          Left = 95
          Top = 27
          Width = 513
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
          TabOrder = 2
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object edraza: TdxEdit
          Tag = 1
          Left = 95
          Top = 51
          Width = 513
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
          TabOrder = 3
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 60
          Height = 24
          StoredValues = 2
        end
        object edcnpj: TdxMaskEdit
          Left = 95
          Top = 75
          Width = 200
          Hint = 'CNPJ'
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
          OnExit = edcnpjExit
          AutoSize = False
          EditMask = '99.999.999/9999-999;0; '
          IgnoreMaskBlank = False
          Height = 24
          StoredValues = 4
        end
        object edinsc: TdxEdit
          Left = 408
          Top = 75
          Width = 200
          Hint = 'Inscri'#231#227'o Estadual'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          OnExit = edinscExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edCCM: TdxEdit
          Left = 95
          Top = 99
          Width = 200
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
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edimun: TdxEdit
          Left = 409
          Top = 99
          Width = 200
          Hint = 'Inscri'#231#227'o Municipal'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
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
        object edcpf: TdxMaskEdit
          Left = 409
          Top = 123
          Width = 200
          Hint = 'CPF'
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
          OnExit = edcpfExit
          AutoSize = False
          EditMask = '999.999.999-99;0; '
          IgnoreMaskBlank = False
          Height = 24
          StoredValues = 4
        end
        object eddcad: TdxDateEdit
          Left = 514
          Top = 3
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
          TabOrder = 16
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object IEREST: TdxImageEdit
          Tag = 1
          Left = 409
          Top = 195
          Width = 200
          Hint = 'Situa'#231#227'o do Cadastro'
          Color = 14065456
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 15
          Text = 'A'
          AutoSize = False
          Descriptions.Strings = (
            'ATIVO'
            'INATIVO'
            'PR'#201'-CADASTRO'
            'SUSPENSO')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3')
          Values.Strings = (
            'A'
            'I'
            'P'
            'S')
          Height = 24
        end
        object IEIDCV: TdxImageEdit
          Tag = 1
          Left = 95
          Top = 147
          Width = 200
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
          TabOrder = 10
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
          Height = 24
        end
        object IEIDCR: TdxImageEdit
          Left = 409
          Top = 147
          Width = 200
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
          TabOrder = 11
          Alignment = taLeftJustify
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
          StoredValues = 1
        end
        object eddfun: TdxDateEdit
          Left = 514
          Top = 3
          Width = 95
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
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object PEDEGP: TdxPickEdit
          Tag = 1
          Left = 95
          Top = 123
          Width = 200
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 8
          CharCase = ecUpperCase
          MaxLength = 30
          StoredValues = 2
        end
        object IETPRE: TdxImageEdit
          Tag = 1
          Left = 95
          Top = 171
          Width = 200
          Hint = 'Tipos de Reservas'
          Color = 15788249
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 12
          Text = '0'
          AutoSize = False
          Descriptions.Strings = (
            ''
            'Pronta Entrega SP'
            'Pronta Entrega Brasil'
            'Programa'#231#227'o 25'
            'Programa'#231#227'o 50'
            'Programa'#231#227'o 75'
            'Programa'#231#227'o 100')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          Height = 24
        end
        object IEAVRE: TdxImageEdit
          Tag = 1
          Left = 95
          Top = 195
          Width = 200
          Hint = 'Aviso de Reserva'
          Color = 15788249
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 13
          Text = '0'
          AutoSize = False
          Descriptions.Strings = (
            ''
            '7 DIAS'
            '15 DIAS'
            '30 DIAS'
            '60 DIAS'
            '90 DIAS')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          Values.Strings = (
            '0'
            '7'
            '15'
            '30'
            '60'
            '90')
          Height = 24
        end
        object IENAFA: TdxImageEdit
          Tag = 1
          Left = 409
          Top = 171
          Width = 200
          Hint = 'Tipos de Cadastro'
          Color = 14065456
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 14
          Text = '0'
          AutoSize = False
          Descriptions.Strings = (
            'NORMAL'
            'CONSIGNADO'
            'IMPORTADOR')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            '0'
            '1'
            '2')
          Height = 24
        end
      end
      object TSINFADCPL: TdxTabSheet
        Caption = '  Complementos  '
        object BINFADCPL: TBevel
          Left = 0
          Top = 0
          Width = 615
          Height = 108
          Align = alClient
        end
        object Label67: TLabel
          Left = 51
          Top = 37
          Width = 66
          Height = 14
          Caption = 'Revendedor'
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
        object Label46: TLabel
          Left = 34
          Top = 85
          Width = 83
          Height = 14
          Caption = 'Creditar ICMS ?'
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
        object Label59: TLabel
          Left = 4
          Top = 61
          Width = 113
          Height = 14
          Caption = 'Regime de Apura'#231#227'o'
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
        object Label56: TLabel
          Left = 15
          Top = 12
          Width = 102
          Height = 14
          Caption = 'Ramo de Atividade'
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
        object cbreve: TdxImageEdit
          Left = 120
          Top = 32
          Width = 57
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
          TabOrder = 1
          Text = '1'
          AutoSize = False
          Descriptions.Strings = (
            'SIM'
            'N'#195'O')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            '1'
            '0')
          Height = 24
        end
        object cbcicm: TdxImageEdit
          Left = 120
          Top = 80
          Width = 57
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
          TabOrder = 3
          Text = '0'
          AutoSize = False
          Descriptions.Strings = (
            'SIM'
            'N'#195'O')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            '1'
            '0')
          Height = 24
        end
        object CBRICM: TdxImageEdit
          Left = 120
          Top = 56
          Width = 250
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
          TabOrder = 2
          Text = '1'
          AutoSize = False
          Descriptions.Strings = (
            'LUCRO PRESUMIDO'
            'LUCRO REAL'
            'SIMPLES NACIONAL')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            '3'
            '2'
            '1')
          Height = 24
        end
        object cbramo: TComboBox
          Left = 120
          Top = 8
          Width = 490
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          MaxLength = 120
          ParentFont = False
          TabOrder = 0
        end
        object GBINFADCAD: TGroupBox
          Left = 0
          Top = 108
          Width = 615
          Height = 138
          Align = alBottom
          Caption = '  Informa'#231#245'es Adicionais  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 4
          object PCINFADCAD: TdxPageControl
            Left = 2
            Top = 19
            Width = 611
            Height = 117
            ActivePage = TSINFADCAD
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
            object TSINFADCAD: TdxTabSheet
              Caption = '  Comercial  '
              object Bevel10: TBevel
                Left = 0
                Top = 0
                Width = 611
                Height = 91
                Align = alClient
              end
              object EMINFADCAD: TdxMemo
                Left = 0
                Top = 0
                Width = 611
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
                ScrollBars = ssBoth
                Height = 91
              end
            end
            object TSINFADFIN: TdxTabSheet
              Caption = '  Financeiro  '
              object Bevel11: TBevel
                Left = 0
                Top = 0
                Width = 611
                Height = 91
                Align = alClient
              end
              object EMINFADFIN: TdxMemo
                Left = 0
                Top = 0
                Width = 611
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
                ScrollBars = ssBoth
                Height = 91
              end
            end
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 622
    Width = 615
  end
  inherited PNLMenu: TPanel
    Width = 615
    inherited SpeedBar2: TSpeedBar
      Width = 615
    end
  end
  inherited TEvent: TIBTransaction
    Left = 688
  end
  inherited SPEvent: TIBStoredProc
    Left = 720
  end
  inherited EEvent: TIBEvents
    Left = 752
  end
  inherited SQLEvent: TIBSQL
    Left = 424
  end
  object cad_cli: TIBQuery
    Database = FBird.DBERP
    Transaction = FBird.TFBEdicao
    SQL.Strings = (
      'SELECT * FROM CAD_CLI'
      'WHERE ID = :ID')
    Left = 624
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object cad_cliID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cliIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_CLI"."IDEP"'
    end
    object cad_cliIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_CLI"."IDCA"'
    end
    object cad_cliDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_CLI"."DTCA"'
    end
    object cad_cliDTFU: TDateField
      FieldName = 'DTFU'
      Origin = '"CAD_CLI"."DTFU"'
    end
    object cad_cliIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"CAD_CLI"."IDED"'
    end
    object cad_cliDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"CAD_CLI"."DTED"'
    end
    object cad_cliIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"CAD_CLI"."IDST"'
    end
    object cad_cliCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"CAD_CLI"."CDST"'
    end
    object cad_cliREST: TIBStringField
      FieldName = 'REST'
      Origin = '"CAD_CLI"."REST"'
      Size = 10
    end
    object cad_cliDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"CAD_CLI"."DTST"'
    end
    object cad_cliDTUTPP: TDateTimeField
      FieldName = 'DTUTPP'
      Origin = '"CAD_CLI"."DTUTPP"'
    end
    object cad_cliDTUTPV: TDateTimeField
      FieldName = 'DTUTPV'
      Origin = '"CAD_CLI"."DTUTPV"'
    end
    object cad_cliFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CAD_CLI"."FANTASIA"'
      Size = 60
    end
    object cad_cliRAZAO: TIBStringField
      FieldName = 'RAZAO'
      Origin = '"CAD_CLI"."RAZAO"'
      Size = 60
    end
    object cad_cliGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"CAD_CLI"."GRUPO"'
      Size = 60
    end
    object cad_cliFIS_CRT: TSmallintField
      FieldName = 'FIS_CRT'
      Origin = '"CAD_CLI"."FIS_CRT"'
    end
    object cad_cliFIS_CREDICMS: TSmallintField
      FieldName = 'FIS_CREDICMS'
      Origin = '"CAD_CLI"."FIS_CREDICMS"'
    end
    object cad_cliCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CAD_CLI"."CNPJ"'
      Size = 14
    end
    object cad_cliIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CAD_CLI"."IE"'
    end
    object cad_cliFIS_INDIEDEST: TSmallintField
      FieldName = 'FIS_INDIEDEST'
      Origin = '"CAD_CLI"."FIS_INDIEDEST"'
    end
    object cad_cliFIS_INDFINAL: TSmallintField
      FieldName = 'FIS_INDFINAL'
      Origin = '"CAD_CLI"."FIS_INDFINAL"'
    end
    object cad_cliIM: TIBStringField
      FieldName = 'IM'
      Origin = '"CAD_CLI"."IM"'
    end
    object cad_cliISUF: TIBStringField
      FieldName = 'ISUF'
      Origin = '"CAD_CLI"."ISUF"'
    end
    object cad_cliCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CAD_CLI"."CPF"'
      Size = 14
    end
    object cad_cliIDESTRANGEIRO: TIBStringField
      FieldName = 'IDESTRANGEIRO'
      Origin = '"CAD_CLI"."IDESTRANGEIRO"'
    end
    object cad_cliIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"CAD_CLI"."IDCV"'
    end
    object cad_cliIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"CAD_CLI"."IDCR"'
    end
    object cad_cliCDPD: TSmallintField
      FieldName = 'CDPD'
      Origin = '"CAD_CLI"."CDPD"'
    end
    object cad_cliCDCO: TSmallintField
      FieldName = 'CDCO'
      Origin = '"CAD_CLI"."CDCO"'
    end
    object cad_cliCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"CAD_CLI"."CDPG"'
    end
    object cad_cliIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"CAD_CLI"."IDCT"'
    end
    object cad_cliMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"CAD_CLI"."MFRT"'
    end
    object cad_cliCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"CAD_CLI"."CONTATO"'
      Size = 60
    end
    object cad_cliDDD: TIBStringField
      FieldName = 'DDD'
      Origin = '"CAD_CLI"."DDD"'
      FixedChar = True
      Size = 2
    end
    object cad_cliTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"CAD_CLI"."TEL"'
      Size = 9
    end
    object cad_cliEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CAD_CLI"."EMAIL"'
      Size = 60
    end
    object cad_cliENVEMAIL: TSmallintField
      FieldName = 'ENVEMAIL'
      Origin = '"CAD_CLI"."ENVEMAIL"'
    end
    object cad_cliCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"CAD_CLI"."CONTATO2"'
      Size = 60
    end
    object cad_cliDDD2: TIBStringField
      FieldName = 'DDD2'
      Origin = '"CAD_CLI"."DDD2"'
      FixedChar = True
      Size = 2
    end
    object cad_cliCEL_CONTATO: TIBStringField
      FieldName = 'CEL_CONTATO'
      Origin = '"CAD_CLI"."CEL_CONTATO"'
      Size = 60
    end
    object cad_cliTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"CAD_CLI"."TEL2"'
      Size = 9
    end
    object cad_cliEMAIL2: TIBStringField
      FieldName = 'EMAIL2'
      Origin = '"CAD_CLI"."EMAIL2"'
      Size = 60
    end
    object cad_cliCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"CAD_CLI"."CONTATO3"'
      Size = 60
    end
    object cad_cliDDD3: TIBStringField
      FieldName = 'DDD3'
      Origin = '"CAD_CLI"."DDD3"'
      FixedChar = True
      Size = 2
    end
    object cad_cliTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"CAD_CLI"."TEL3"'
      Size = 9
    end
    object cad_cliEMAIL3: TIBStringField
      FieldName = 'EMAIL3'
      Origin = '"CAD_CLI"."EMAIL3"'
      Size = 60
    end
    object cad_cliCEL_DDD: TIBStringField
      FieldName = 'CEL_DDD'
      Origin = '"CAD_CLI"."CEL_DDD"'
      FixedChar = True
      Size = 2
    end
    object cad_cliCEL_TEL: TIBStringField
      FieldName = 'CEL_TEL'
      Origin = '"CAD_CLI"."CEL_TEL"'
      Size = 9
    end
    object cad_cliCEL_EMAIL: TIBStringField
      FieldName = 'CEL_EMAIL'
      Origin = '"CAD_CLI"."CEL_EMAIL"'
      Size = 60
    end
    object cad_cliZAP_TEL: TIBStringField
      FieldName = 'ZAP_TEL'
      Origin = '"CAD_CLI"."ZAP_TEL"'
      Size = 9
    end
    object cad_cliCEL_CONTATO2: TIBStringField
      FieldName = 'CEL_CONTATO2'
      Origin = '"CAD_CLI"."CEL_CONTATO2"'
      Size = 60
    end
    object cad_cliCEL_DDD2: TIBStringField
      FieldName = 'CEL_DDD2'
      Origin = '"CAD_CLI"."CEL_DDD2"'
      FixedChar = True
      Size = 2
    end
    object cad_cliCEL_TEL2: TIBStringField
      FieldName = 'CEL_TEL2'
      Origin = '"CAD_CLI"."CEL_TEL2"'
      Size = 9
    end
    object cad_cliCEL_EMAIL2: TIBStringField
      FieldName = 'CEL_EMAIL2'
      Origin = '"CAD_CLI"."CEL_EMAIL2"'
      Size = 60
    end
    object cad_cliZAP_CONTATO: TIBStringField
      FieldName = 'ZAP_CONTATO'
      Origin = '"CAD_CLI"."ZAP_CONTATO"'
      Size = 60
    end
    object cad_cliZAP_DDD: TIBStringField
      FieldName = 'ZAP_DDD'
      Origin = '"CAD_CLI"."ZAP_DDD"'
      FixedChar = True
      Size = 2
    end
    object cad_cliZAP_EMAIL: TIBStringField
      FieldName = 'ZAP_EMAIL'
      Origin = '"CAD_CLI"."ZAP_EMAIL"'
      Size = 60
    end
    object cad_cliLOG_NU: TLargeintField
      FieldName = 'LOG_NU'
      Origin = '"CAD_CLI"."LOG_NU"'
    end
    object cad_cliCMUN: TLargeintField
      FieldName = 'CMUN'
      Origin = '"CAD_CLI"."CMUN"'
    end
    object cad_cliTLO_TX: TIBStringField
      FieldName = 'TLO_TX'
      Origin = '"CAD_CLI"."TLO_TX"'
      Size = 36
    end
    object cad_cliBAI_NO_ABREV: TIBStringField
      FieldName = 'BAI_NO_ABREV'
      Origin = '"CAD_CLI"."BAI_NO_ABREV"'
      Size = 36
    end
    object cad_cliLOG_NO: TIBStringField
      FieldName = 'LOG_NO'
      Origin = '"CAD_CLI"."LOG_NO"'
      Size = 76
    end
    object cad_cliLOG_NO_ABREV: TIBStringField
      FieldName = 'LOG_NO_ABREV'
      Origin = '"CAD_CLI"."LOG_NO_ABREV"'
      Size = 36
    end
    object cad_cliNRO: TIBStringField
      FieldName = 'NRO'
      Origin = '"CAD_CLI"."NRO"'
      Size = 15
    end
    object cad_cliXCPL: TIBStringField
      FieldName = 'XCPL'
      Origin = '"CAD_CLI"."XCPL"'
      Size = 40
    end
    object cad_cliCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CAD_CLI"."CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_cliBAI_NO: TIBStringField
      FieldName = 'BAI_NO'
      Origin = '"CAD_CLI"."BAI_NO"'
      Size = 72
    end
    object cad_cliLOC_NO: TIBStringField
      FieldName = 'LOC_NO'
      Origin = '"CAD_CLI"."LOC_NO"'
      Size = 72
    end
    object cad_cliLOC_NO_ABREV: TIBStringField
      FieldName = 'LOC_NO_ABREV'
      Origin = '"CAD_CLI"."LOC_NO_ABREV"'
      Size = 36
    end
    object cad_cliENT_LOG_NO_ABREV: TIBStringField
      FieldName = 'ENT_LOG_NO_ABREV'
      Origin = '"CAD_CLI"."ENT_LOG_NO_ABREV"'
      Size = 36
    end
    object cad_cliUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CAD_CLI"."UF"'
      FixedChar = True
      Size = 2
    end
    object cad_cliCPAIS: TSmallintField
      FieldName = 'CPAIS'
      Origin = '"CAD_CLI"."CPAIS"'
    end
    object cad_cliENT_CNPJ_CPF: TIBStringField
      FieldName = 'ENT_CNPJ_CPF'
      Origin = '"CAD_CLI"."ENT_CNPJ_CPF"'
      Size = 14
    end
    object cad_cliENT_LOG_NU: TLargeintField
      FieldName = 'ENT_LOG_NU'
      Origin = '"CAD_CLI"."ENT_LOG_NU"'
    end
    object cad_cliENT_TLO_TX: TIBStringField
      FieldName = 'ENT_TLO_TX'
      Origin = '"CAD_CLI"."ENT_TLO_TX"'
      Size = 36
    end
    object cad_cliENT_LOG_NO: TIBStringField
      FieldName = 'ENT_LOG_NO'
      Origin = '"CAD_CLI"."ENT_LOG_NO"'
      Size = 76
    end
    object cad_cliENT_NRO: TIBStringField
      FieldName = 'ENT_NRO'
      Origin = '"CAD_CLI"."ENT_NRO"'
      Size = 15
    end
    object cad_cliENT_XCPL: TIBStringField
      FieldName = 'ENT_XCPL'
      Origin = '"CAD_CLI"."ENT_XCPL"'
      Size = 40
    end
    object cad_cliENT_CEP: TIBStringField
      FieldName = 'ENT_CEP'
      Origin = '"CAD_CLI"."ENT_CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_cliRET_LOG_NU: TLargeintField
      FieldName = 'RET_LOG_NU'
      Origin = '"CAD_CLI"."RET_LOG_NU"'
    end
    object cad_cliENT_BAI_NO: TIBStringField
      FieldName = 'ENT_BAI_NO'
      Origin = '"CAD_CLI"."ENT_BAI_NO"'
      Size = 72
    end
    object cad_cliENT_BAI_NO_ABREV: TIBStringField
      FieldName = 'ENT_BAI_NO_ABREV'
      Origin = '"CAD_CLI"."ENT_BAI_NO_ABREV"'
      Size = 36
    end
    object cad_cliENT_LOC_NO: TIBStringField
      FieldName = 'ENT_LOC_NO'
      Origin = '"CAD_CLI"."ENT_LOC_NO"'
      Size = 72
    end
    object cad_cliENT_LOC_NO_ABREV: TIBStringField
      FieldName = 'ENT_LOC_NO_ABREV'
      Origin = '"CAD_CLI"."ENT_LOC_NO_ABREV"'
      Size = 36
    end
    object cad_cliENT_UF: TIBStringField
      FieldName = 'ENT_UF'
      Origin = '"CAD_CLI"."ENT_UF"'
      FixedChar = True
      Size = 2
    end
    object cad_cliRET_CNPJ_CPF: TIBStringField
      FieldName = 'RET_CNPJ_CPF'
      Origin = '"CAD_CLI"."RET_CNPJ_CPF"'
      Size = 14
    end
    object cad_cliRET_TLO_TX: TIBStringField
      FieldName = 'RET_TLO_TX'
      Origin = '"CAD_CLI"."RET_TLO_TX"'
      Size = 36
    end
    object cad_cliRET_LOG_NO: TIBStringField
      FieldName = 'RET_LOG_NO'
      Origin = '"CAD_CLI"."RET_LOG_NO"'
      Size = 76
    end
    object cad_cliRET_LOG_NO_ABREV: TIBStringField
      FieldName = 'RET_LOG_NO_ABREV'
      Origin = '"CAD_CLI"."RET_LOG_NO_ABREV"'
      Size = 36
    end
    object cad_cliRET_LOC_NO_ABREV: TIBStringField
      FieldName = 'RET_LOC_NO_ABREV'
      Origin = '"CAD_CLI"."RET_LOC_NO_ABREV"'
      Size = 36
    end
    object cad_cliRET_NRO: TIBStringField
      FieldName = 'RET_NRO'
      Origin = '"CAD_CLI"."RET_NRO"'
      Size = 15
    end
    object cad_cliRET_XCPL: TIBStringField
      FieldName = 'RET_XCPL'
      Origin = '"CAD_CLI"."RET_XCPL"'
      Size = 40
    end
    object cad_cliRET_CEP: TIBStringField
      FieldName = 'RET_CEP'
      Origin = '"CAD_CLI"."RET_CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_cliRET_BAI_NO: TIBStringField
      FieldName = 'RET_BAI_NO'
      Origin = '"CAD_CLI"."RET_BAI_NO"'
      Size = 72
    end
    object cad_cliRET_BAI_NO_ABREV: TIBStringField
      FieldName = 'RET_BAI_NO_ABREV'
      Origin = '"CAD_CLI"."RET_BAI_NO_ABREV"'
      Size = 36
    end
    object cad_cliRET_LOC_NO: TIBStringField
      FieldName = 'RET_LOC_NO'
      Origin = '"CAD_CLI"."RET_LOC_NO"'
      Size = 72
    end
    object cad_cliRET_UF: TIBStringField
      FieldName = 'RET_UF'
      Origin = '"CAD_CLI"."RET_UF"'
      FixedChar = True
      Size = 2
    end
    object cad_cliINFADCAD: TMemoField
      FieldName = 'INFADCAD'
      Origin = '"CAD_CLI"."INFADCAD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliINFADFIN: TMemoField
      FieldName = 'INFADFIN'
      Origin = '"CAD_CLI"."INFADFIN"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliINFADFIS: TMemoField
      FieldName = 'INFADFIS'
      Origin = '"CAD_CLI"."INFADFIS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliINFADCNAE: TMemoField
      FieldName = 'INFADCNAE'
      Origin = '"CAD_CLI"."INFADCNAE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliAPI_B2B_COD_ENV: TSmallintField
      FieldName = 'API_B2B_COD_ENV'
      Origin = '"CAD_CLI"."API_B2B_COD_ENV"'
    end
    object cad_cliAPI_B2B_DTC_ENV: TDateTimeField
      FieldName = 'API_B2B_DTC_ENV'
      Origin = '"CAD_CLI"."API_B2B_DTC_ENV"'
    end
    object cad_cliAPI_B2B_COD_REC: TIBStringField
      FieldName = 'API_B2B_COD_REC'
      Origin = '"CAD_CLI"."API_B2B_COD_REC"'
      Size = 30
    end
    object cad_cliAPI_B2B_DTC_REC: TDateTimeField
      FieldName = 'API_B2B_DTC_REC'
      Origin = '"CAD_CLI"."API_B2B_DTC_REC"'
    end
    object cad_cliIP: TIBStringField
      FieldName = 'IP'
      Origin = '"CAD_CLI"."IP"'
      Size = 30
    end
    object cad_cliHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"CAD_CLI"."HOST"'
      Size = 30
    end
    object cad_cliFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"CAD_CLI"."FLAG"'
    end
    object cad_cliCLI_BAI: TIBStringField
      FieldName = 'CLI_BAI'
      Origin = '"CAD_CLI"."CLI_BAI"'
      Size = 40
    end
    object cad_cliCLI_CID: TIBStringField
      FieldName = 'CLI_CID'
      Origin = '"CAD_CLI"."CLI_CID"'
      Size = 40
    end
    object cad_cliCLI_ESTA: TIBStringField
      FieldName = 'CLI_ESTA'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object cad_cliCLI_CONT: TIBStringField
      FieldName = 'CLI_CONT'
      Origin = '"CAD_CLI"."CLI_CONT"'
      Size = 30
    end
    object cad_cliCLI_MAIL: TIBStringField
      FieldName = 'CLI_MAIL'
      Origin = '"CAD_CLI"."CLI_MAIL"'
      Size = 60
    end
    object cad_cliCLI_DDD: TIBStringField
      FieldName = 'CLI_DDD'
      Origin = '"CAD_CLI"."CLI_DDD"'
      Size = 2
    end
    object cad_cliCLI_TEL1: TIBStringField
      FieldName = 'CLI_TEL1'
      Origin = '"CAD_CLI"."CLI_TEL1"'
      Size = 9
    end
    object cad_cliCLI_TEL2: TIBStringField
      FieldName = 'CLI_TEL2'
      Origin = '"CAD_CLI"."CLI_TEL2"'
      Size = 9
    end
    object cad_cliCLI_DCAD: TDateField
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI"."CLI_DCAD"'
    end
    object cad_cliCLI_STA: TIBStringField
      FieldName = 'CLI_STA'
      Origin = '"CAD_CLI"."CLI_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_cliCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Origin = '"CAD_CLI"."CLI_FAX"'
      Size = 9
    end
    object cad_cliCLI_CEL: TIBStringField
      FieldName = 'CLI_CEL'
      Origin = '"CAD_CLI"."CLI_CEL"'
      Size = 9
    end
    object cad_cliCLI_COMP: TIBStringField
      FieldName = 'CLI_COMP'
      Origin = '"CAD_CLI"."CLI_COMP"'
      Size = 40
    end
    object cad_cliCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CAD_CLI"."CLI_RG"'
      Size = 15
    end
    object cad_cliCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CAD_CLI"."CLI_CPF"'
      Size = 11
    end
    object cad_cliCLI_TLOC: TIBStringField
      FieldName = 'CLI_TLOC'
      Origin = '"CAD_CLI"."CLI_TLOC"'
      Size = 15
    end
    object cad_cliCLI_LOGC: TIBStringField
      FieldName = 'CLI_LOGC'
      Origin = '"CAD_CLI"."CLI_LOGC"'
      Size = 60
    end
    object cad_cliCLI_INSC: TIBStringField
      FieldName = 'CLI_INSC'
      Origin = '"CAD_CLI"."CLI_INSC"'
    end
    object cad_cliCLI_CEPC: TIBStringField
      FieldName = 'CLI_CEPC'
      Origin = '"CAD_CLI"."CLI_CEPC"'
      Size = 9
    end
    object cad_cliCLI_CDEP: TSmallintField
      FieldName = 'CLI_CDEP'
      Origin = '"CAD_CLI"."CLI_CDEP"'
    end
    object cad_cliCLI_NUME: TIBStringField
      FieldName = 'CLI_NUME'
      Origin = '"CAD_CLI"."CLI_NUME"'
      Size = 10
    end
    object cad_cliCLI_NUMC: TIBStringField
      FieldName = 'CLI_NUMC'
      Origin = '"CAD_CLI"."CLI_NUMC"'
      Size = 10
    end
    object cad_cliCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CAD_CLI"."CLI_CEP"'
      Size = 9
    end
    object cad_cliCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object cad_cliCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object cad_cliCLI_TLOG: TIBStringField
      FieldName = 'CLI_TLOG'
      Origin = '"CAD_CLI"."CLI_TLOG"'
      Size = 15
    end
    object cad_cliCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object cad_cliCLI_COMC: TIBStringField
      FieldName = 'CLI_COMC'
      Origin = '"CAD_CLI"."CLI_COMC"'
      Size = 40
    end
    object cad_cliCLI_LOGR: TIBStringField
      FieldName = 'CLI_LOGR'
      Origin = '"CAD_CLI"."CLI_LOGR"'
      Size = 60
    end
    object cad_cliCLI_BAIC: TIBStringField
      FieldName = 'CLI_BAIC'
      Origin = '"CAD_CLI"."CLI_BAIC"'
      Size = 40
    end
    object cad_cliCLI_CIDC: TIBStringField
      FieldName = 'CLI_CIDC'
      Origin = '"CAD_CLI"."CLI_CIDC"'
      Size = 40
    end
    object cad_cliCLI_ESTC: TIBStringField
      FieldName = 'CLI_ESTC'
      Origin = '"CAD_CLI"."CLI_ESTC"'
      Size = 2
    end
    object cad_cliCLI_STAV: TIBStringField
      FieldName = 'CLI_STAV'
      Origin = '"CAD_CLI"."CLI_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_cliCLI_VULT: TIBBCDField
      FieldName = 'CLI_VULT'
      Origin = '"CAD_CLI"."CLI_VULT"'
      Precision = 9
      Size = 2
    end
    object cad_cliCLI_TPVE: TIBStringField
      FieldName = 'CLI_TPVE'
      Origin = '"CAD_CLI"."CLI_TPVE"'
      Size = 10
    end
    object cad_cliCLI_TLOV: TIBStringField
      FieldName = 'CLI_TLOV'
      Origin = '"CAD_CLI"."CLI_TLOV"'
      Size = 15
    end
    object cad_cliCLI_LOGV: TIBStringField
      FieldName = 'CLI_LOGV'
      Origin = '"CAD_CLI"."CLI_LOGV"'
      Size = 60
    end
    object cad_cliCLI_RAZC: TIBStringField
      FieldName = 'CLI_RAZC'
      Origin = '"CAD_CLI"."CLI_RAZC"'
      Size = 30
    end
    object cad_cliCLI_CEPV: TIBStringField
      FieldName = 'CLI_CEPV'
      Origin = '"CAD_CLI"."CLI_CEPV"'
      Size = 9
    end
    object cad_cliCLI_NUMV: TIBStringField
      FieldName = 'CLI_NUMV'
      Origin = '"CAD_CLI"."CLI_NUMV"'
      Size = 10
    end
    object cad_cliCLI_COMV: TIBStringField
      FieldName = 'CLI_COMV'
      Origin = '"CAD_CLI"."CLI_COMV"'
      Size = 40
    end
    object cad_cliCLI_BAIV: TIBStringField
      FieldName = 'CLI_BAIV'
      Origin = '"CAD_CLI"."CLI_BAIV"'
      Size = 40
    end
    object cad_cliCLI_CIDV: TIBStringField
      FieldName = 'CLI_CIDV'
      Origin = '"CAD_CLI"."CLI_CIDV"'
      Size = 40
    end
    object cad_cliCLI_ESTV: TIBStringField
      FieldName = 'CLI_ESTV'
      Origin = '"CAD_CLI"."CLI_ESTV"'
      Size = 2
    end
    object cad_cliCLI_RICM: TIBStringField
      FieldName = 'CLI_RICM'
      Origin = '"CAD_CLI"."CLI_RICM"'
      FixedChar = True
      Size = 1
    end
    object cad_cliCLI_CPAG: TIBStringField
      FieldName = 'CLI_CPAG'
      Origin = '"CAD_CLI"."CLI_CPAG"'
      Size = 2
    end
    object cad_cliCLI_DPAG: TIBStringField
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI"."CLI_DPAG"'
      Size = 50
    end
    object cad_cliCLI_CMUN: TIBStringField
      FieldName = 'CLI_CMUN'
      Origin = '"CAD_CLI"."CLI_CMUN"'
      Size = 10
    end
    object cad_cliCLI_DALT: TDateField
      FieldName = 'CLI_DALT'
      Origin = '"CAD_CLI"."CLI_DALT"'
    end
    object cad_cliCLI_CTRA: TIntegerField
      FieldName = 'CLI_CTRA'
      Origin = '"CAD_CLI"."CLI_CTRA"'
    end
    object cad_cliCLI_DTRA: TIBStringField
      FieldName = 'CLI_DTRA'
      Origin = '"CAD_CLI"."CLI_DTRA"'
      Size = 60
    end
    object cad_cliCLI_DFUN: TDateField
      FieldName = 'CLI_DFUN'
      Origin = '"CAD_CLI"."CLI_DFUN"'
    end
    object cad_cliCLI_CICM: TIBStringField
      FieldName = 'CLI_CICM'
      Origin = '"CAD_CLI"."CLI_CICM"'
      FixedChar = True
      Size = 1
    end
    object cad_cliCLI_RAMO: TIBStringField
      FieldName = 'CLI_RAMO'
      Origin = '"CAD_CLI"."CLI_RAMO"'
      Size = 120
    end
    object cad_cliCLI_CMUV: TIBStringField
      FieldName = 'CLI_CMUV'
      Origin = '"CAD_CLI"."CLI_CMUV"'
      Size = 10
    end
    object cad_cliCLI_CMUC: TIBStringField
      FieldName = 'CLI_CMUC'
      Origin = '"CAD_CLI"."CLI_CMUC"'
      Size = 10
    end
    object cad_cliCLI_DD2: TIBStringField
      FieldName = 'CLI_DD2'
      Origin = '"CAD_CLI"."CLI_DD2"'
      Size = 2
    end
    object cad_cliCLI_DD3: TIBStringField
      FieldName = 'CLI_DD3'
      Origin = '"CAD_CLI"."CLI_DD3"'
      Size = 2
    end
    object cad_cliCLI_DD4: TIBStringField
      FieldName = 'CLI_DD4'
      Origin = '"CAD_CLI"."CLI_DD4"'
      Size = 2
    end
    object cad_cliCLI_DD5: TIBStringField
      FieldName = 'CLI_DD5'
      Origin = '"CAD_CLI"."CLI_DD5"'
      Size = 2
    end
    object cad_cliCLI_DD6: TIBStringField
      FieldName = 'CLI_DD6'
      Origin = '"CAD_CLI"."CLI_DD6"'
      Size = 2
    end
    object cad_cliCLI_TEL3: TIBStringField
      FieldName = 'CLI_TEL3'
      Origin = '"CAD_CLI"."CLI_TEL3"'
      Size = 9
    end
    object cad_cliCLI_TCE1: TIBStringField
      FieldName = 'CLI_TCE1'
      Origin = '"CAD_CLI"."CLI_TCE1"'
      Size = 10
    end
    object cad_cliCLI_TCE2: TIBStringField
      FieldName = 'CLI_TCE2'
      Origin = '"CAD_CLI"."CLI_TCE2"'
      Size = 10
    end
    object cad_cliCLI_NCEL: TIBStringField
      FieldName = 'CLI_NCEL'
      Origin = '"CAD_CLI"."CLI_NCEL"'
      Size = 9
    end
    object cad_cliCLI_NEID: TIBStringField
      FieldName = 'CLI_NEID'
      Origin = '"CAD_CLI"."CLI_NEID"'
      Size = 15
    end
    object cad_cliCLI_FCON: TIBStringField
      FieldName = 'CLI_FCON'
      Origin = '"CAD_CLI"."CLI_FCON"'
      Size = 30
    end
    object cad_cliCLI_FMAI: TIBStringField
      FieldName = 'CLI_FMAI'
      Origin = '"CAD_CLI"."CLI_FMAI"'
      Size = 60
    end
    object cad_cliCLI_FDDD: TIBStringField
      FieldName = 'CLI_FDDD'
      Origin = '"CAD_CLI"."CLI_FDDD"'
      Size = 2
    end
    object cad_cliCLI_FTE1: TIBStringField
      FieldName = 'CLI_FTE1'
      Origin = '"CAD_CLI"."CLI_FTE1"'
      Size = 9
    end
    object cad_cliCLI_FDD2: TIBStringField
      FieldName = 'CLI_FDD2'
      Origin = '"CAD_CLI"."CLI_FDD2"'
      Size = 2
    end
    object cad_cliCLI_FTE2: TIBStringField
      FieldName = 'CLI_FTE2'
      Origin = '"CAD_CLI"."CLI_FTE2"'
      Size = 9
    end
    object cad_cliCLI_FDD3: TIBStringField
      FieldName = 'CLI_FDD3'
      Origin = '"CAD_CLI"."CLI_FDD3"'
      Size = 2
    end
    object cad_cliCLI_FTE3: TIBStringField
      FieldName = 'CLI_FTE3'
      Origin = '"CAD_CLI"."CLI_FTE3"'
      Size = 9
    end
    object cad_cliCLI_FDD4: TIBStringField
      FieldName = 'CLI_FDD4'
      Origin = '"CAD_CLI"."CLI_FDD4"'
      Size = 2
    end
    object cad_cliCLI_FFAX: TIBStringField
      FieldName = 'CLI_FFAX'
      Origin = '"CAD_CLI"."CLI_FFAX"'
      Size = 9
    end
    object cad_cliCLI_FDD5: TIBStringField
      FieldName = 'CLI_FDD5'
      Origin = '"CAD_CLI"."CLI_FDD5"'
      Size = 2
    end
    object cad_cliCLI_FCEL: TIBStringField
      FieldName = 'CLI_FCEL'
      Origin = '"CAD_CLI"."CLI_FCEL"'
      Size = 9
    end
    object cad_cliCLI_FTC1: TIBStringField
      FieldName = 'CLI_FTC1'
      Origin = '"CAD_CLI"."CLI_FTC1"'
      Size = 10
    end
    object cad_cliCLI_FDD6: TIBStringField
      FieldName = 'CLI_FDD6'
      Origin = '"CAD_CLI"."CLI_FDD6"'
      Size = 2
    end
    object cad_cliCLI_FNCE: TIBStringField
      FieldName = 'CLI_FNCE'
      Origin = '"CAD_CLI"."CLI_FNCE"'
      Size = 9
    end
    object cad_cliCLI_FTC2: TIBStringField
      FieldName = 'CLI_FTC2'
      Origin = '"CAD_CLI"."CLI_FTC2"'
      Size = 10
    end
    object cad_cliCLI_FNID: TIBStringField
      FieldName = 'CLI_FNID'
      Origin = '"CAD_CLI"."CLI_FNID"'
      Size = 15
    end
    object cad_cliCLI_CCON: TIBStringField
      FieldName = 'CLI_CCON'
      Origin = '"CAD_CLI"."CLI_CCON"'
      Size = 30
    end
    object cad_cliCLI_CMAI: TIBStringField
      FieldName = 'CLI_CMAI'
      Origin = '"CAD_CLI"."CLI_CMAI"'
      Size = 60
    end
    object cad_cliCLI_CDDD: TIBStringField
      FieldName = 'CLI_CDDD'
      Origin = '"CAD_CLI"."CLI_CDDD"'
      Size = 2
    end
    object cad_cliCLI_CTE1: TIBStringField
      FieldName = 'CLI_CTE1'
      Origin = '"CAD_CLI"."CLI_CTE1"'
      Size = 9
    end
    object cad_cliCLI_CDD2: TIBStringField
      FieldName = 'CLI_CDD2'
      Origin = '"CAD_CLI"."CLI_CDD2"'
      Size = 2
    end
    object cad_cliCLI_CTE2: TIBStringField
      FieldName = 'CLI_CTE2'
      Origin = '"CAD_CLI"."CLI_CTE2"'
      Size = 9
    end
    object cad_cliCLI_CDD3: TIBStringField
      FieldName = 'CLI_CDD3'
      Origin = '"CAD_CLI"."CLI_CDD3"'
      Size = 2
    end
    object cad_cliCLI_CTE3: TIBStringField
      FieldName = 'CLI_CTE3'
      Origin = '"CAD_CLI"."CLI_CTE3"'
      Size = 9
    end
    object cad_cliCLI_CDD4: TIBStringField
      FieldName = 'CLI_CDD4'
      Origin = '"CAD_CLI"."CLI_CDD4"'
      Size = 2
    end
    object cad_cliCLI_CFAX: TIBStringField
      FieldName = 'CLI_CFAX'
      Origin = '"CAD_CLI"."CLI_CFAX"'
      Size = 9
    end
    object cad_cliCLI_CDD5: TIBStringField
      FieldName = 'CLI_CDD5'
      Origin = '"CAD_CLI"."CLI_CDD5"'
      Size = 2
    end
    object cad_cliCLI_CCEL: TIBStringField
      FieldName = 'CLI_CCEL'
      Origin = '"CAD_CLI"."CLI_CCEL"'
      Size = 9
    end
    object cad_cliCLI_CTC1: TIBStringField
      FieldName = 'CLI_CTC1'
      Origin = '"CAD_CLI"."CLI_CTC1"'
      Size = 10
    end
    object cad_cliCLI_CDD6: TIBStringField
      FieldName = 'CLI_CDD6'
      Origin = '"CAD_CLI"."CLI_CDD6"'
      Size = 2
    end
    object cad_cliCLI_CNCE: TIBStringField
      FieldName = 'CLI_CNCE'
      Origin = '"CAD_CLI"."CLI_CNCE"'
      Size = 9
    end
    object cad_cliCLI_CTC2: TIBStringField
      FieldName = 'CLI_CTC2'
      Origin = '"CAD_CLI"."CLI_CTC2"'
      Size = 10
    end
    object cad_cliCLI_CNID: TIBStringField
      FieldName = 'CLI_CNID'
      Origin = '"CAD_CLI"."CLI_CNID"'
      Size = 15
    end
    object cad_cliCLI_VDSC: TIBBCDField
      FieldName = 'CLI_VDSC'
      Origin = '"CAD_CLI"."CLI_VDSC"'
      Precision = 9
      Size = 2
    end
    object cad_cliCLI_CRED: TIBBCDField
      FieldName = 'CLI_CRED'
      Origin = '"CAD_CLI"."CLI_CRED"'
      Precision = 9
      Size = 2
    end
    object cad_cliCLI_SITE: TIBStringField
      FieldName = 'CLI_SITE'
      Origin = '"CAD_CLI"."CLI_SITE"'
      Size = 120
    end
    object cad_cliCLI_REVE: TIBStringField
      FieldName = 'CLI_REVE'
      Origin = '"CAD_CLI"."CLI_REVE"'
      Size = 3
    end
    object cad_cliCLI_IMUN: TIBStringField
      FieldName = 'CLI_IMUN'
      Origin = '"CAD_CLI"."CLI_IMUN"'
    end
    object cad_cliCLI_CCM: TIBStringField
      FieldName = 'CLI_CCM'
      Origin = '"CAD_CLI"."CLI_CCM"'
    end
    object cad_cliCLI_DULT: TDateField
      FieldName = 'CLI_DULT'
      Origin = '"CAD_CLI"."CLI_DULT"'
    end
    object cad_cliCLI_REGI: TIBStringField
      FieldName = 'CLI_REGI'
      Origin = '"CAD_CLI"."CLI_REGI"'
      Size = 30
    end
    object cad_cliCLI_CVEN: TIntegerField
      FieldName = 'CLI_CVEN'
      Origin = '"CAD_CLI"."CLI_CVEN"'
    end
    object cad_cliCLI_CREP: TIntegerField
      FieldName = 'CLI_CREP'
      Origin = '"CAD_CLI"."CLI_CREP"'
    end
    object cad_cliCLI_DUSU: TIBStringField
      FieldName = 'CLI_DUSU'
      Origin = '"CAD_CLI"."CLI_DUSU"'
      Size = 40
    end
    object cad_cliCLI_STPD: TSmallintField
      FieldName = 'CLI_STPD'
      Origin = '"CAD_CLI"."CLI_STPD"'
    end
    object cad_cliCLI_STCO: TSmallintField
      FieldName = 'CLI_STCO'
      Origin = '"CAD_CLI"."CLI_STCO"'
    end
    object cad_cliCLI_ISUF: TIBStringField
      FieldName = 'CLI_ISUF'
      Origin = '"CAD_CLI"."CLI_ISUF"'
      Size = 9
    end
    object cad_cliCLI_IM: TIBStringField
      FieldName = 'CLI_IM'
      Origin = '"CAD_CLI"."CLI_IM"'
      Size = 15
    end
    object cad_cliCLI_TLOR: TIBStringField
      FieldName = 'CLI_TLOR'
      Origin = '"CAD_CLI"."CLI_TLOR"'
      Size = 15
    end
    object cad_cliCLI_LORE: TIBStringField
      FieldName = 'CLI_LORE'
      Origin = '"CAD_CLI"."CLI_LORE"'
      Size = 60
    end
    object cad_cliCLI_CEPR: TIBStringField
      FieldName = 'CLI_CEPR'
      Origin = '"CAD_CLI"."CLI_CEPR"'
      Size = 9
    end
    object cad_cliCLI_NUMR: TIBStringField
      FieldName = 'CLI_NUMR'
      Origin = '"CAD_CLI"."CLI_NUMR"'
      Size = 10
    end
    object cad_cliCLI_COMR: TIBStringField
      FieldName = 'CLI_COMR'
      Origin = '"CAD_CLI"."CLI_COMR"'
      Size = 40
    end
    object cad_cliCLI_BAIR: TIBStringField
      FieldName = 'CLI_BAIR'
      Origin = '"CAD_CLI"."CLI_BAIR"'
      Size = 40
    end
    object cad_cliCLI_CMUR: TIBStringField
      FieldName = 'CLI_CMUR'
      Origin = '"CAD_CLI"."CLI_CMUR"'
      Size = 10
    end
    object cad_cliCLI_CIDR: TIBStringField
      FieldName = 'CLI_CIDR'
      Origin = '"CAD_CLI"."CLI_CIDR"'
      Size = 40
    end
    object cad_cliCLI_ESTR: TIBStringField
      FieldName = 'CLI_ESTR'
      Origin = '"CAD_CLI"."CLI_ESTR"'
      Size = 2
    end
    object cad_cliCLI_IDESTRANGEIRO: TIBStringField
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = '"CAD_CLI"."CLI_IDESTRANGEIRO"'
    end
    object cad_cliCLI_IDEC: TLargeintField
      FieldName = 'CLI_IDEC'
      Origin = '"CAD_CLI"."CLI_IDEC"'
    end
    object cad_cliCLI_IDEF: TLargeintField
      FieldName = 'CLI_IDEF'
      Origin = '"CAD_CLI"."CLI_IDEF"'
    end
    object cad_cliCLI_IDEE: TLargeintField
      FieldName = 'CLI_IDEE'
      Origin = '"CAD_CLI"."CLI_IDEE"'
    end
    object cad_cliCLI_IDER: TLargeintField
      FieldName = 'CLI_IDER'
      Origin = '"CAD_CLI"."CLI_IDER"'
    end
    object cad_cliCLI_OBSO: TMemoField
      FieldName = 'CLI_OBSO'
      Origin = '"CAD_CLI"."CLI_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliCLI_OBSE: TMemoField
      FieldName = 'CLI_OBSE'
      Origin = '"CAD_CLI"."CLI_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliCLI_OBSS: TMemoField
      FieldName = 'CLI_OBSS'
      Origin = '"CAD_CLI"."CLI_OBSS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliCLI_ENVWEB: TSmallintField
      FieldName = 'CLI_ENVWEB'
      Origin = '"CAD_CLI"."CLI_ENVWEB"'
    end
    object cad_cliCLI_CPAIS: TSmallintField
      FieldName = 'CLI_CPAIS'
      Origin = '"CAD_CLI"."CLI_CPAIS"'
    end
    object cad_cliCLI_INDIEDEST: TSmallintField
      FieldName = 'CLI_INDIEDEST'
      Origin = '"CAD_CLI"."CLI_INDIEDEST"'
    end
    object cad_cliCLI_DTPED: TDateTimeField
      FieldName = 'CLI_DTPED'
      Origin = '"CAD_CLI"."CLI_DTPED"'
    end
    object cad_cliCLI_MAI2: TIBStringField
      FieldName = 'CLI_MAI2'
      Origin = '"CAD_CLI"."CLI_MAI2"'
      Size = 60
    end
    object cad_cliCLI_MAI3: TIBStringField
      FieldName = 'CLI_MAI3'
      Origin = '"CAD_CLI"."CLI_MAI3"'
      Size = 60
    end
    object cad_cliCLI_MAI4: TIBStringField
      FieldName = 'CLI_MAI4'
      Origin = '"CAD_CLI"."CLI_MAI4"'
      Size = 60
    end
    object cad_cliCLI_IDST: TSmallintField
      FieldName = 'CLI_IDST'
      Origin = '"CAD_CLI"."CLI_IDST"'
    end
    object cad_cliCLI_IDGP: TSmallintField
      FieldName = 'CLI_IDGP'
      Origin = '"CAD_CLI"."CLI_IDGP"'
    end
    object cad_cliCLI_DEGP: TIBStringField
      FieldName = 'CLI_DEGP'
      Origin = '"CAD_CLI"."CLI_DEGP"'
      Size = 30
    end
    object cad_cliCLI_ENVMAIL: TSmallintField
      FieldName = 'CLI_ENVMAIL'
      Origin = '"CAD_CLI"."CLI_ENVMAIL"'
    end
    object cad_cliCLI_TIPO: TSmallintField
      FieldName = 'CLI_TIPO'
      Origin = '"CAD_CLI"."CLI_TIPO"'
    end
    object cad_cliCLI_RESE: TSmallintField
      FieldName = 'CLI_RESE'
      Origin = '"CAD_CLI"."CLI_RESE"'
    end
    object cad_cliUPLOAD: TSmallintField
      FieldName = 'UPLOAD'
      Origin = '"CAD_CLI"."UPLOAD"'
    end
    object cad_cliCLI_IDCNAE: TSmallintField
      FieldName = 'CLI_IDCNAE'
      Origin = '"CAD_CLI"."CLI_IDCNAE"'
    end
    object cad_cliCLI_IDTPE: TSmallintField
      FieldName = 'CLI_IDTPE'
      Origin = '"CAD_CLI"."CLI_IDTPE"'
    end
    object cad_cliCLI_IDFIN: TSmallintField
      FieldName = 'CLI_IDFIN'
      Origin = '"CAD_CLI"."CLI_IDFIN"'
    end
    object cad_cliCLI_IDAVR: TSmallintField
      FieldName = 'CLI_IDAVR'
      Origin = '"CAD_CLI"."CLI_IDAVR"'
    end
    object cad_cliCDSTA: TSmallintField
      FieldName = 'CDSTA'
      Origin = '"CAD_CLI"."CDSTA"'
    end
    object cad_cliRESTA: TIBStringField
      FieldName = 'RESTA'
      Origin = '"CAD_CLI"."RESTA"'
      Size = 10
    end
    object cad_cliEVENTO: TIBStringField
      FieldName = 'EVENTO'
      Origin = '"CAD_CLI"."EVENTO"'
      Size = 30
    end
    object cad_cliCLI_MFRT: TSmallintField
      FieldName = 'CLI_MFRT'
      Origin = '"CAD_CLI"."CLI_MFRT"'
    end
    object cad_cliDTPD: TDateTimeField
      FieldName = 'DTPD'
      Origin = '"CAD_CLI"."DTPD"'
    end
    object cad_cliCLI_INDFINAL: TSmallintField
      FieldName = 'CLI_INDFINAL'
      Origin = '"CAD_CLI"."CLI_INDFINAL"'
    end
    object cad_cliAPI_B2B_ENV_SYNC: TSmallintField
      FieldName = 'API_B2B_ENV_SYNC'
      Origin = '"CAD_CLI"."API_B2B_ENV_SYNC"'
    end
    object cad_cliAPI_B2B_ENV_SYNC_DATA: TDateTimeField
      FieldName = 'API_B2B_ENV_SYNC_DATA'
      Origin = '"CAD_CLI"."API_B2B_ENV_SYNC_DATA"'
    end
    object cad_cliAPI_B2B_REC_SYNC: TSmallintField
      FieldName = 'API_B2B_REC_SYNC'
      Origin = '"CAD_CLI"."API_B2B_REC_SYNC"'
    end
    object cad_cliAPI_B2B_REC_SYNC_DATA: TDateTimeField
      FieldName = 'API_B2B_REC_SYNC_DATA'
      Origin = '"CAD_CLI"."API_B2B_REC_SYNC_DATA"'
    end
    object cad_cliCOB_LOG_NU: TLargeintField
      FieldName = 'COB_LOG_NU'
      Origin = '"CAD_CLI"."COB_LOG_NU"'
    end
    object cad_cliCOB_TLO_TX: TIBStringField
      FieldName = 'COB_TLO_TX'
      Origin = '"CAD_CLI"."COB_TLO_TX"'
      Size = 36
    end
    object cad_cliCOB_LOG_NO: TIBStringField
      FieldName = 'COB_LOG_NO'
      Origin = '"CAD_CLI"."COB_LOG_NO"'
      Size = 76
    end
    object cad_cliCOB_NRO: TIBStringField
      FieldName = 'COB_NRO'
      Origin = '"CAD_CLI"."COB_NRO"'
      Size = 15
    end
    object cad_cliCOB_XCPL: TIBStringField
      FieldName = 'COB_XCPL'
      Origin = '"CAD_CLI"."COB_XCPL"'
      Size = 40
    end
    object cad_cliCOB_CEP: TIBStringField
      FieldName = 'COB_CEP'
      Origin = '"CAD_CLI"."COB_CEP"'
      FixedChar = True
      Size = 8
    end
    object cad_cliCOB_BAI_NO: TIBStringField
      FieldName = 'COB_BAI_NO'
      Origin = '"CAD_CLI"."COB_BAI_NO"'
      Size = 72
    end
    object cad_cliCOB_BAI_NO_ABREV: TIBStringField
      FieldName = 'COB_BAI_NO_ABREV'
      Origin = '"CAD_CLI"."COB_BAI_NO_ABREV"'
      Size = 36
    end
    object cad_cliCOB_LOC_NO: TIBStringField
      FieldName = 'COB_LOC_NO'
      Origin = '"CAD_CLI"."COB_LOC_NO"'
      Size = 72
    end
    object cad_cliCOB_LOC_NO_ABREV: TIBStringField
      FieldName = 'COB_LOC_NO_ABREV'
      Origin = '"CAD_CLI"."COB_LOC_NO_ABREV"'
      Size = 36
    end
    object cad_cliCOB_UF: TIBStringField
      FieldName = 'COB_UF'
      Origin = '"CAD_CLI"."COB_UF"'
      FixedChar = True
      Size = 2
    end
    object cad_cliENT_TIPO: TSmallintField
      FieldName = 'ENT_TIPO'
      Origin = '"CAD_CLI"."ENT_TIPO"'
    end
    object cad_cliENT_PRAZO: TSmallintField
      FieldName = 'ENT_PRAZO'
      Origin = '"CAD_CLI"."ENT_PRAZO"'
    end
    object cad_cliFIS_CREGTRIB: TSmallintField
      FieldName = 'FIS_CREGTRIB'
      Origin = '"CAD_CLI"."FIS_CREGTRIB"'
    end
    object cad_cliCOB_CMUN: TLargeintField
      FieldName = 'COB_CMUN'
      Origin = '"CAD_CLI"."COB_CMUN"'
    end
    object cad_cliENT_CMUN: TLargeintField
      FieldName = 'ENT_CMUN'
      Origin = '"CAD_CLI"."ENT_CMUN"'
    end
    object cad_cliIS_PDSC: TSmallintField
      FieldName = 'IS_PDSC'
      Origin = '"CAD_CLI"."IS_PDSC"'
    end
    object cad_cliDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"CAD_CLI"."DEST"'
      Size = 30
    end
    object cad_cliDTPP: TDateTimeField
      FieldName = 'DTPP'
      Origin = '"CAD_CLI"."DTPP"'
    end
    object cad_cliDTPV: TDateTimeField
      FieldName = 'DTPV'
      Origin = '"CAD_CLI"."DTPV"'
    end
    object cad_cliDTAB: TDateTimeField
      FieldName = 'DTAB'
      Origin = '"CAD_CLI"."DTAB"'
    end
    object cad_cliDTDV: TDateTimeField
      FieldName = 'DTDV'
      Origin = '"CAD_CLI"."DTDV"'
    end
    object cad_cliDTRO: TDateTimeField
      FieldName = 'DTRO'
      Origin = '"CAD_CLI"."DTRO"'
    end
    object cad_cliDTNF: TDateTimeField
      FieldName = 'DTNF'
      Origin = '"CAD_CLI"."DTNF"'
    end
    object cad_cliNAFA: TSmallintField
      FieldName = 'NAFA'
      Origin = '"CAD_CLI"."NAFA"'
    end
  end
  object QConsulta: TIBQuery
    Database = FBird.DBERP
    Transaction = FBird.TFBEdicao
    Left = 624
    Top = 72
  end
end
