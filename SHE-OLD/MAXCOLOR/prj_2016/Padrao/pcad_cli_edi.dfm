inherited frmcad_cli_edi: Tfrmcad_cli_edi
  Left = 941
  Top = 91
  ClientHeight = 585
  ClientWidth = 615
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 615
    Height = 566
    inherited PaintBox: TPaintBox
      Width = 615
      Height = 246
    end
    inherited SBMenuPrincipal: TSpeedBar
      Width = 615
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 0
      Top = 311
      Width = 615
      Height = 255
      Align = alBottom
      TabOrder = 0
      object pcmain: TdxPageControl
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
          object pccom: TdxPageControl
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
                Left = 178
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
                Left = 178
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
                Width = 613
                Height = 203
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
              object cbftc2: TdxImageEdit
                Left = 178
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
                Width = 613
                Height = 203
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
        object tsend: TdxTabSheet
          Caption = 'Endere'#231'os'
          object pcEND: TdxPageControl
            Left = 0
            Top = 0
            Width = 613
            Height = 229
            ActivePage = tsCEP_ENT
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
              Caption = 'Comercial'
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
              object Bevel1: TBevel
                Left = 0
                Top = 0
                Width = 613
                Height = 203
                Align = alClient
              end
              object Label57: TLabel
                Left = 32
                Top = 163
                Width = 36
                Height = 14
                Caption = 'Regi'#227'o'
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
              object edtlog: TdxEdit
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
              object edlogr: TdxEdit
                Left = 94
                Top = 18
                Width = 515
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 60
                StoredValues = 2
              end
              object edcep: TdxButtonEdit
                Left = 3
                Top = 58
                Width = 90
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 2
                OnClick = edcepClick
                OnEnter = edcepEnter
                CharCase = ecUpperCase
                EditMask = '99999-999;0; '
                MaxLength = 9
                OnValidate = edcepValidate
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
                OnButtonClick = edcepButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object ednume: TdxEdit
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
              object edcomp: TdxEdit
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
              object edcmun: TdxButtonEdit
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
                OnValidate = edcmunValidate
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
                OnButtonClick = edcmunButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object edbai: TdxEdit
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
              object eduf: TdxEdit
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
                OnValidate = edufValidate
                StoredValues = 3
              end
              object edcid: TdxEdit
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
              object cbregi: TdxPickEdit
                Left = 32
                Top = 179
                Width = 425
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                TabOrder = 9
                CharCase = ecUpperCase
                MaxLength = 30
                Items.Strings = (
                  'REGI'#195'O NORTE'
                  'REGI'#195'O CENTRO-OESTE'
                  'REGI'#195'O NORDESTE'
                  'REGI'#195'O SUDESTE'
                  'REGI'#195'O SUL'
                  'INTERIOR DE S'#195'O PAULO'
                  'CAPITAL DE S'#195'O PAULO')
                StoredValues = 2
              end
            end
            object tsCEP_COB: TdxTabSheet
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
              object edtloc: TdxEdit
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
              object edlogc: TdxEdit
                Left = 94
                Top = 18
                Width = 515
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 60
                StoredValues = 2
              end
              object edcepc: TdxButtonEdit
                Left = 3
                Top = 58
                Width = 90
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 2
                OnClick = edcepcClick
                OnEnter = edcepcEnter
                CharCase = ecUpperCase
                EditMask = '99999-999;0; '
                MaxLength = 9
                OnValidate = edcepcValidate
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
                OnButtonClick = edcepcButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object ednumc: TdxEdit
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
              object edcomc: TdxEdit
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
              object edcmuc: TdxButtonEdit
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
                OnValidate = edcmucValidate
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
                OnButtonClick = edcmucButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object edbaic: TdxEdit
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
              object edufc: TdxEdit
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
              object edcidc: TdxEdit
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
              object edcidv: TdxEdit
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
              object edtlov: TdxEdit
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
              object edlogv: TdxEdit
                Left = 94
                Top = 18
                Width = 515
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 60
                StoredValues = 2
              end
              object edcepv: TdxButtonEdit
                Left = 3
                Top = 58
                Width = 90
                Color = clWhite
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = False
                TabOrder = 2
                OnClick = edcepvClick
                OnEnter = edcepvEnter
                CharCase = ecUpperCase
                EditMask = '99999-999;0; '
                MaxLength = 9
                OnValidate = edcepvValidate
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
                OnButtonClick = edcepvButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object ednumv: TdxEdit
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
              object edcomv: TdxEdit
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
              object edcmuv: TdxButtonEdit
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
                OnValidate = edcmuvValidate
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
                OnButtonClick = edcmuvButtonClick
                StoredValues = 6
                ExistButtons = True
              end
              object edbaiv: TdxEdit
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
              object edufv: TdxEdit
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
        object tssoc: TdxTabSheet
          Caption = 'S'#243'cios'
          OnShow = tssocShow
          object dbgsoc: TdxDBGrid
            Left = 44
            Top = 0
            Width = 569
            Height = 229
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = clWhite
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = dbgsocKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtscad_cli_soc
            Filter.Active = True
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            object dbgsocSOC_DCAD: TdxDBGridDateColumn
              CharCase = ecUpperCase
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SOC_DCAD'
            end
            object dbgsocSOC_NOME: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 346
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SOC_NOME'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgsocSOC_CPF: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SOC_CPF'
            end
            object dbgsocSOC_RG: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SOC_RG'
            end
            object dbgsocSOC_PSOC: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              HeaderAlignment = taRightJustify
              Width = 41
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SOC_PSOC'
              DisableFilter = True
            end
            object dbgsocSOC_OBSE: TdxDBGridBlobColumn
              CharCase = ecUpperCase
              Width = 28
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SOC_OBSE'
            end
          end
          object SpeedBar4: TSpeedBar
            Left = 0
            Top = 0
            Width = 44
            Height = 229
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            BoundLines = [blTop, blBottom, blLeft, blRight]
            Align = alLeft
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 2
            BtnOffsetVert = 2
            BtnWidth = 40
            BtnHeight = 40
            Images = ImageOPC2
            BevelOuter = bvNone
            TabOrder = 1
            InternalVer = 1
            object SpeedbarSection9: TSpeedbarSection
              Caption = 'Movimento'
            end
            object SpeedbarSection10: TSpeedbarSection
              Caption = 'Edicao'
            end
            object SpeedbarSection11: TSpeedbarSection
              Caption = 'Confirmacao'
            end
            object SpeedbarSection12: TSpeedbarSection
              Caption = 'Utilitarios'
            end
            object socI: TSpeedItem
              Caption = 'Incluir'
              Hint = '[Ins] - Incluir'
              ImageIndex = 2
              Spacing = 1
              Left = 2
              Top = 2
              Visible = True
              OnClick = socIClick
              SectionName = 'Movimento'
            end
            object socE: TSpeedItem
              Caption = 'Excluir'
              Hint = '[Del] - Excluir'
              ImageIndex = 3
              Spacing = 1
              Left = 2
              Top = 82
              Visible = True
              OnClick = socEClick
              SectionName = 'Movimento'
            end
            object socS: TSpeedItem
              Caption = 'Salvar'
              Enabled = False
              Hint = 'Salvar|'
              ImageIndex = 1
              Spacing = 1
              Left = 2
              Top = 122
              Visible = True
              OnClick = socSClick
              SectionName = 'Movimento'
            end
            object socC: TSpeedItem
              Caption = 'Cancelar'
              Enabled = False
              Hint = 'Cancelar|'
              ImageIndex = 4
              Spacing = 1
              Left = 2
              Top = 162
              Visible = True
              OnClick = socCClick
              SectionName = 'Movimento'
            end
            object socA: TSpeedItem
              Caption = 'Alterar'
              Hint = 'Alterar|'
              ImageIndex = 0
              Spacing = 1
              Left = 2
              Top = 42
              Visible = True
              OnClick = socAClick
              SectionName = 'Movimento'
            end
          end
        end
        object tsBAN: TdxTabSheet
          Caption = 'Bancos'
          OnShow = tsBANShow
          object dbgban: TdxDBGrid
            Left = 44
            Top = 0
            Width = 569
            Height = 229
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = clWhite
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = dbgbanKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtscad_cli_ban
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            object dbgbanCLI_DCAD: TdxDBGridDateColumn
              CharCase = ecUpperCase
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_DCAD'
            end
            object dbgbanCLI_BANC: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 41
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_BANC'
            end
            object dbgbanCLI_DESC: TdxDBGridPickColumn
              CharCase = ecUpperCase
              Width = 246
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_DESC'
            end
            object dbgbanCLI_AGEN: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_AGEN'
            end
            object dbgbanCLI_CONT: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_CONT'
            end
            object dbgbanCLI_TIPO: TdxDBGridPickColumn
              CharCase = ecUpperCase
              Width = 125
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_TIPO'
              Items.Strings = (
                'CONTA CORRENTE'
                'CONTA POUPAN'#199'A'
                'CONTA SAL'#193'RIO')
            end
            object dbgbanCLI_DOCU: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Width = 141
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_DOCU'
            end
            object dbgbanCLI_OBSE: TdxDBGridBlobColumn
              CharCase = ecUpperCase
              Width = 28
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLI_OBSE'
            end
          end
          object SpeedBar6: TSpeedBar
            Left = 0
            Top = 0
            Width = 44
            Height = 229
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            BoundLines = [blTop, blBottom, blLeft, blRight]
            Align = alLeft
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 2
            BtnOffsetVert = 2
            BtnWidth = 40
            BtnHeight = 40
            Images = ImageOPC2
            BevelOuter = bvNone
            TabOrder = 1
            InternalVer = 1
            object SpeedbarSection21: TSpeedbarSection
              Caption = 'Movimento'
            end
            object SpeedbarSection22: TSpeedbarSection
              Caption = 'Edicao'
            end
            object SpeedbarSection23: TSpeedbarSection
              Caption = 'Confirmacao'
            end
            object SpeedbarSection24: TSpeedbarSection
              Caption = 'Utilitarios'
            end
            object banI: TSpeedItem
              Caption = 'Incluir'
              Hint = '[Ins] - Incluir'
              ImageIndex = 2
              Spacing = 1
              Left = 2
              Top = 2
              Visible = True
              OnClick = banIClick
              SectionName = 'Movimento'
            end
            object banE: TSpeedItem
              Caption = 'Excluir'
              Hint = '[Del] - Excluir'
              ImageIndex = 3
              Spacing = 1
              Left = 2
              Top = 82
              Visible = True
              OnClick = banEClick
              SectionName = 'Movimento'
            end
            object banS: TSpeedItem
              Caption = 'Salvar'
              Enabled = False
              Hint = 'Salvar|'
              ImageIndex = 1
              Spacing = 1
              Left = 2
              Top = 122
              Visible = True
              OnClick = banSClick
              SectionName = 'Movimento'
            end
            object banC: TSpeedItem
              Caption = 'Cancelar'
              Enabled = False
              Hint = 'Cancelar|'
              ImageIndex = 4
              Spacing = 1
              Left = 2
              Top = 162
              Visible = True
              OnClick = banCClick
              SectionName = 'Movimento'
            end
            object banA: TSpeedItem
              Caption = 'Alterar'
              Hint = 'Alterar|'
              ImageIndex = 0
              Spacing = 1
              Left = 2
              Top = 42
              Visible = True
              OnClick = banAClick
              SectionName = 'Movimento'
            end
          end
        end
        object tsdsc: TdxTabSheet
          Caption = 'Desconto(s) Especiais'
          OnShow = tsdscShow
          object pcdsc: TdxPageControl
            Left = 0
            Top = 0
            Width = 613
            Height = 229
            ActivePage = tsdpro
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
            object tsdpro: TdxTabSheet
              Caption = 'Produtos'
              object dbgdsc: TdxDBGrid
                Left = 44
                Top = 0
                Width = 569
                Height = 203
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'ID'
                ShowSummaryFooter = True
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                OnKeyDown = dbgdscKeyDown
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                DataSource = dtscad_cli_dsc
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                object dbgdscCLI_DCAD: TdxDBGridDateColumn
                  CharCase = ecUpperCase
                  Color = clSilver
                  DisableEditor = True
                  Width = 74
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DCAD'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object dbgdscCLI_CPRO: TdxDBGridButtonColumn
                  CharCase = ecUpperCase
                  Color = clBtnFace
                  Width = 104
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_CPRO'
                  Buttons = <
                    item
                      Default = True
                    end>
                  OnButtonClick = dbgdscCLI_CPROButtonClick
                end
                object dbgdscCLI_PTAB: TdxDBGridMaskColumn
                  CharCase = ecUpperCase
                  Color = clSilver
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_PTAB'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'CLI_PTAB'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbgdscCLI_PDSC: TdxDBGridMaskColumn
                  CharCase = ecUpperCase
                  Color = clBtnFace
                  HeaderAlignment = taRightJustify
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_PDSC'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'CLI_PDSC'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbgdscCLI_VDSC: TdxDBGridMaskColumn
                  CharCase = ecUpperCase
                  Color = clSilver
                  HeaderAlignment = taRightJustify
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_VDSC'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'CLI_VDSC'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbgdscCLI_DPRO: TdxDBGridMaskColumn
                  CharCase = ecUpperCase
                  Color = clBtnFace
                  Width = 282
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DPRO'
                end
                object dbgdscCLI_DUSU: TdxDBGridMaskColumn
                  CharCase = ecUpperCase
                  Color = clSilver
                  DisableEditor = True
                  Width = 140
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DUSU'
                end
              end
              object SpeedBar7: TSpeedBar
                Left = 0
                Top = 0
                Width = 44
                Height = 203
                Cursor = crHandPoint
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                BoundLines = [blTop, blBottom, blLeft, blRight]
                Align = alLeft
                Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
                BtnOffsetHorz = 2
                BtnOffsetVert = 2
                BtnWidth = 40
                BtnHeight = 40
                Images = ImageOPC2
                BevelOuter = bvNone
                TabOrder = 1
                InternalVer = 1
                object SpeedbarSection25: TSpeedbarSection
                  Caption = 'Movimento'
                end
                object SpeedbarSection26: TSpeedbarSection
                  Caption = 'Edicao'
                end
                object SpeedbarSection27: TSpeedbarSection
                  Caption = 'Confirmacao'
                end
                object SpeedbarSection28: TSpeedbarSection
                  Caption = 'Utilitarios'
                end
                object dscI: TSpeedItem
                  Caption = 'Incluir'
                  Hint = '[Ins] - Incluir'
                  ImageIndex = 2
                  Spacing = 1
                  Left = 2
                  Top = 2
                  Visible = True
                  OnClick = dscIClick
                  SectionName = 'Movimento'
                end
                object dscE: TSpeedItem
                  Caption = 'Excluir'
                  Hint = '[Del] - Excluir'
                  ImageIndex = 3
                  Spacing = 1
                  Left = 2
                  Top = 82
                  Visible = True
                  OnClick = dscEClick
                  SectionName = 'Movimento'
                end
                object dscS: TSpeedItem
                  Caption = 'Salvar'
                  Enabled = False
                  Hint = 'Salvar|'
                  ImageIndex = 1
                  Spacing = 1
                  Left = 2
                  Top = 122
                  Visible = True
                  OnClick = dscSClick
                  SectionName = 'Movimento'
                end
                object dscC: TSpeedItem
                  Caption = 'Cancelar'
                  Enabled = False
                  Hint = 'Cancelar|'
                  ImageIndex = 4
                  Spacing = 1
                  Left = 2
                  Top = 162
                  Visible = True
                  OnClick = dscCClick
                  SectionName = 'Movimento'
                end
                object dscA: TSpeedItem
                  Caption = 'Alterar'
                  Hint = 'Alterar|'
                  ImageIndex = 0
                  Spacing = 1
                  Left = 2
                  Top = 42
                  Visible = True
                  OnClick = dscAClick
                  SectionName = 'Movimento'
                end
              end
            end
            object tsdgrp: TdxTabSheet
              Caption = 'Grupos'
              object dbggrp: TdxDBGrid
                Left = 44
                Top = 0
                Width = 569
                Height = 203
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'ID'
                ShowSummaryFooter = True
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                OnKeyDown = dbggrpKeyDown
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                DataSource = dtscad_cli_grp
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                object dbggrpCLI_DCAD: TdxDBGridDateColumn
                  Width = 74
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DCAD'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object dbggrpCLI_RGRP: TdxDBGridMaskColumn
                  Width = 65
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_RGRP'
                end
                object dbggrpCLI_VDSC: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_VDSC'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'CLI_VDSC'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbggrpCLI_PDSC: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_PDSC'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'CLI_PDSC'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbggrpCLI_PREC: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_PREC'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'CLI_PREC'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbggrpCLI_DGRP: TdxDBGridPickColumn
                  Width = 160
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DGRP'
                end
                object dbggrpCLI_DCOL: TdxDBGridPickColumn
                  Width = 160
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DCOL'
                end
                object dbggrpCLI_DUSU: TdxDBGridMaskColumn
                  Width = 140
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CLI_DUSU'
                end
              end
              object SpeedBar8: TSpeedBar
                Left = 0
                Top = 0
                Width = 44
                Height = 203
                Cursor = crHandPoint
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                BoundLines = [blTop, blBottom, blLeft, blRight]
                Align = alLeft
                Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
                BtnOffsetHorz = 2
                BtnOffsetVert = 2
                BtnWidth = 40
                BtnHeight = 40
                Images = ImageOPC2
                BevelOuter = bvNone
                TabOrder = 1
                InternalVer = 1
                object SpeedbarSection29: TSpeedbarSection
                  Caption = 'Movimento'
                end
                object SpeedbarSection30: TSpeedbarSection
                  Caption = 'Edicao'
                end
                object SpeedbarSection31: TSpeedbarSection
                  Caption = 'Confirmacao'
                end
                object SpeedbarSection32: TSpeedbarSection
                  Caption = 'Utilitarios'
                end
                object grpI: TSpeedItem
                  Caption = 'Incluir'
                  Hint = '[Ins] - Incluir'
                  ImageIndex = 2
                  Spacing = 1
                  Left = 2
                  Top = 2
                  Visible = True
                  OnClick = grpIClick
                  SectionName = 'Movimento'
                end
                object grpE: TSpeedItem
                  Caption = 'Excluir'
                  Hint = '[Del] - Excluir'
                  ImageIndex = 3
                  Spacing = 1
                  Left = 2
                  Top = 82
                  Visible = True
                  OnClick = grpEClick
                  SectionName = 'Movimento'
                end
                object grpS: TSpeedItem
                  Caption = 'Salvar'
                  Enabled = False
                  Hint = 'Salvar|'
                  ImageIndex = 1
                  Spacing = 1
                  Left = 2
                  Top = 122
                  Visible = True
                  OnClick = grpSClick
                  SectionName = 'Movimento'
                end
                object grpC: TSpeedItem
                  Caption = 'Cancelar'
                  Enabled = False
                  Hint = 'Cancelar|'
                  ImageIndex = 4
                  Spacing = 1
                  Left = 2
                  Top = 162
                  Visible = True
                  OnClick = grpCClick
                  SectionName = 'Movimento'
                end
                object grpA: TSpeedItem
                  Caption = 'Alterar'
                  Hint = 'Alterar|'
                  ImageIndex = 0
                  Spacing = 1
                  Left = 2
                  Top = 42
                  Visible = True
                  OnClick = grpAClick
                  SectionName = 'Movimento'
                end
              end
            end
          end
        end
      end
    end
    object pcinfo: TdxPageControl
      Left = 0
      Top = 65
      Width = 615
      Height = 246
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
          Width = 615
          Height = 222
          Align = alClient
        end
        object Label1: TLabel
          Left = 4
          Top = 5
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
          Top = 29
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
          Top = 53
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
          Top = 77
          Width = 43
          Height = 14
          Caption = 'C.N.P.J.'
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
          Left = 339
          Top = 77
          Width = 96
          Height = 14
          Caption = 'Inscri'#231#227'o Estadual'
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
          Left = 4
          Top = 101
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
          Left = 339
          Top = 101
          Width = 99
          Height = 14
          Caption = 'Inscri'#231#227'o Municipal'
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
          Top = 125
          Width = 32
          Height = 14
          Caption = 'C.P.F.'
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
          Top = 125
          Width = 23
          Height = 14
          Caption = 'R.G.'
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
        object Label41: TLabel
          Left = 435
          Top = 5
          Width = 74
          Height = 14
          Caption = 'Dt Cadastro'
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
        object Label37: TLabel
          Left = 4
          Top = 173
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
        object Label40: TLabel
          Left = 4
          Top = 149
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
          Left = 339
          Top = 147
          Width = 81
          Height = 14
          Caption = 'Representante'
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
          Left = 3
          Top = 197
          Width = 30
          Height = 14
          Caption = 'Ramo'
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
        object Label58: TLabel
          Left = 339
          Top = 171
          Width = 65
          Height = 14
          Caption = 'Tipo Pedido'
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
        object eddalt: TdxDateEdit
          Left = 511
          Top = 0
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
          TabOrder = 14
          Visible = False
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 4
        end
        object edccli: TdxEdit
          Tag = 1
          Left = 96
          Top = 0
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
          OnValidate = edccliValidate
          Height = 24
        end
        object edfant: TdxEdit
          Tag = 1
          Left = 96
          Top = 24
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
          Left = 96
          Top = 48
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
          Left = 96
          Top = 72
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
          TabOrder = 4
          AutoSize = False
          EditMask = '99.999.999/9999-999;0; '
          IgnoreMaskBlank = False
          OnValidate = edcnpjValidate
          Height = 24
          StoredValues = 4
        end
        object edinsc: TdxEdit
          Left = 444
          Top = 72
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
          TabOrder = 5
          OnExit = edinscExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edCCM: TdxEdit
          Left = 96
          Top = 96
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
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edimun: TdxEdit
          Left = 444
          Top = 96
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
          TabOrder = 7
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edcpf: TdxMaskEdit
          Left = 96
          Top = 120
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
          TabOrder = 8
          AutoSize = False
          EditMask = '999.999.999-99;0; '
          IgnoreMaskBlank = False
          OnValidate = edcpfValidate
          Height = 24
          StoredValues = 4
        end
        object edrg: TdxEdit
          Left = 444
          Top = 120
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
          MaxLength = 15
          Height = 24
          StoredValues = 2
        end
        object eddcad: TdxDateEdit
          Left = 514
          Top = 0
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
        object cbstav: TdxImageEdit
          Tag = 1
          Left = 96
          Top = 168
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
          TabOrder = 12
          Text = 'ATIVO'
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
        object cbdven: TdxImageEdit
          Tag = 1
          Left = 96
          Top = 144
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
          TabOrder = 10
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
        end
        object cbdrep: TdxImageEdit
          Left = 444
          Top = 144
          Width = 165
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
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
        end
        object cbramo: TComboBox
          Left = 96
          Top = 193
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 14
          MaxLength = 120
          ParentFont = False
          TabOrder = 13
        end
        object cbstpd: TdxImageEdit
          Left = 444
          Top = 168
          Width = 165
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 15
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
      object dxTabSheet2: TdxTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        object Bevel6: TBevel
          Left = 0
          Top = 0
          Width = 615
          Height = 220
          Align = alClient
        end
        object Label55: TLabel
          Left = 3
          Top = 33
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
        object Label67: TLabel
          Left = 3
          Top = 55
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
        object Label54: TLabel
          Left = 3
          Top = 199
          Width = 83
          Height = 14
          Caption = 'Transportadora'
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
        object Label47: TLabel
          Left = 3
          Top = 173
          Width = 76
          Height = 14
          Caption = 'F. Pagamento'
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
          Left = 3
          Top = 79
          Width = 54
          Height = 14
          Caption = 'C.I.C.M.S.'
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
        object Label18: TLabel
          Left = 3
          Top = 103
          Width = 54
          Height = 14
          Caption = 'R.I.C.M.S.'
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
        object Label43: TLabel
          Left = 3
          Top = 149
          Width = 93
          Height = 14
          Caption = 'Desconto Pedido'
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
        object Label68: TLabel
          Left = 3
          Top = 127
          Width = 75
          Height = 14
          Caption = 'Limite Cr'#233'dito'
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
          Left = 3
          Top = 7
          Width = 63
          Height = 14
          Caption = 'Home Page'
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
        object eddfun: TdxDateEdit
          Left = 104
          Top = 26
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
        object cbreve: TdxImageEdit
          Left = 104
          Top = 50
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
          TabOrder = 2
          AutoSize = False
          Descriptions.Strings = (
            'SIM'
            'N'#195'O')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'SIM'
            'N'#195'O')
          Height = 24
        end
        object cbdtra: TdxImageEdit
          Left = 104
          Top = 194
          Width = 217
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
          TabOrder = 8
          Text = 'CLIENTE RETIRA'
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
        end
        object cbdpag: TdxImageEdit
          Left = 104
          Top = 170
          Width = 217
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
          Text = 'A VISTA'
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
        end
        object cbcicm: TdxImageEdit
          Left = 104
          Top = 74
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
          Text = 'SIM'
          AutoSize = False
          Descriptions.Strings = (
            'SIM'
            'N'#195'O')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'SIM'
            'N'#195'O')
          Height = 24
        end
        object edvdsc: TdxEdit
          Left = 104
          Top = 146
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
          TabOrder = 6
          Text = '0,00'
          OnKeyDown = edvdscKeyDown
          Alignment = taRightJustify
          CharCase = ecLowerCase
          MaxLength = 60
          OnValidate = edvdscValidate
          StoredValues = 3
        end
        object edcred: TdxEdit
          Left = 104
          Top = 122
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
          TabOrder = 5
          Text = '0,00'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecLowerCase
          MaxLength = 60
          OnValidate = edcredValidate
          Height = 24
          StoredValues = 3
        end
        object edsite: TdxEdit
          Left = 104
          Top = 2
          Width = 505
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
          TabOrder = 0
          AutoSize = False
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object cbricm: TdxImageEdit
          Left = 103
          Top = 99
          Width = 150
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
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
      end
      object tsicom: TdxTabSheet
        Caption = 'Informa'#231#245'es Comerciais'
        OnShow = tsicomShow
        object dbgref: TdxDBGrid
          Left = 44
          Top = 0
          Width = 571
          Height = 220
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = dbgrefKeyDown
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          DataSource = dtscad_cli_ref
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
          object dbgrefCLI_LOJA: TdxDBGridMaskColumn
            Width = 228
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_LOJA'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgrefCLI_DDD: TdxDBGridMaskColumn
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DDD'
          end
          object dbgrefCLI_TEL1: TdxDBGridMaskColumn
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_TEL1'
          end
          object dbgrefCLI_TEL2: TdxDBGridMaskColumn
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_TEL2'
          end
          object dbgrefCLI_CONT: TdxDBGridMaskColumn
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CONT'
          end
          object dbgrefCLI_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DCAD'
          end
          object dbgrefCLI_DULT: TdxDBGridDateColumn
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DULT'
          end
          object dbgrefCLI_DMAI: TdxDBGridDateColumn
            Width = 96
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DMAI'
          end
          object dbgrefCLI_VULT: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_VULT'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CLI_VULT'
            SummaryFooterFormat = '#,0.00'
          end
          object dbgrefCLI_VMAI: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_VMAI'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CLI_VMAI'
            SummaryFooterFormat = '#,0.00'
          end
          object dbgrefCLI_ACUM: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_ACUM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CLI_ACUM'
            SummaryFooterFormat = '#,0.00'
          end
          object dbgrefCLI_DPAG: TdxDBGridMaskColumn
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DPAG'
          end
          object dbgrefCLI_CONC: TdxDBGridPickColumn
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CONC'
            Items.Strings = (
              'RUIM'
              'RAZOAVEL'
              'BOM'
              'OTIMO'
              'EXCELENTE'
              'EXPERIENCIA'
              'SEM CONCEITO')
          end
          object dbgrefCLI_OBSE: TdxDBGridBlobColumn
            Width = 31
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_OBSE'
          end
        end
        object SpeedBar5: TSpeedBar
          Left = 0
          Top = 0
          Width = 44
          Height = 220
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BoundLines = [blTop, blBottom, blLeft, blRight]
          Align = alLeft
          Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
          BtnOffsetHorz = 2
          BtnOffsetVert = 2
          BtnWidth = 40
          BtnHeight = 40
          Images = ImageOPC2
          BevelOuter = bvNone
          TabOrder = 1
          InternalVer = 1
          object SpeedbarSection17: TSpeedbarSection
            Caption = 'Movimento'
          end
          object SpeedbarSection18: TSpeedbarSection
            Caption = 'Edicao'
          end
          object SpeedbarSection19: TSpeedbarSection
            Caption = 'Confirmacao'
          end
          object SpeedbarSection20: TSpeedbarSection
            Caption = 'Utilitarios'
          end
          object refI: TSpeedItem
            Caption = 'Incluir'
            Hint = '[Ins] - Incluir'
            ImageIndex = 2
            Spacing = 1
            Left = 2
            Top = 2
            Visible = True
            OnClick = refIClick
            SectionName = 'Movimento'
          end
          object refE: TSpeedItem
            Caption = 'Excluir'
            Hint = '[Del] - Excluir'
            ImageIndex = 3
            Spacing = 1
            Left = 2
            Top = 82
            Visible = True
            OnClick = refEClick
            SectionName = 'Movimento'
          end
          object refS: TSpeedItem
            Caption = 'Salvar'
            Enabled = False
            Hint = 'Salvar|'
            ImageIndex = 1
            Spacing = 1
            Left = 2
            Top = 122
            Visible = True
            OnClick = refSClick
            SectionName = 'Movimento'
          end
          object refC: TSpeedItem
            Caption = 'Cancelar'
            Enabled = False
            Hint = 'Cancelar|'
            ImageIndex = 4
            Spacing = 1
            Left = 2
            Top = 162
            Visible = True
            OnClick = refCClick
            SectionName = 'Movimento'
          end
          object refA: TSpeedItem
            Caption = 'Alterar'
            Hint = 'Alterar|'
            ImageIndex = 0
            Spacing = 1
            Left = 2
            Top = 42
            Visible = True
            OnClick = refAClick
            SectionName = 'Movimento'
          end
        end
      end
      object tsPRC: TdxTabSheet
        Caption = 'Pre'#231'os'
        OnShow = tsPRCShow
        object SpeedBar3: TSpeedBar
          Left = 0
          Top = 0
          Width = 44
          Height = 220
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BoundLines = [blTop, blBottom, blLeft, blRight]
          Align = alLeft
          Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
          BtnOffsetHorz = 2
          BtnOffsetVert = 2
          BtnWidth = 40
          BtnHeight = 40
          Images = ImageOPC2
          BevelOuter = bvNone
          TabOrder = 0
          InternalVer = 1
          object SpeedbarSection13: TSpeedbarSection
            Caption = 'Movimento'
          end
          object SpeedbarSection14: TSpeedbarSection
            Caption = 'Edicao'
          end
          object SpeedbarSection15: TSpeedbarSection
            Caption = 'Confirmacao'
          end
          object SpeedbarSection16: TSpeedbarSection
            Caption = 'Utilitarios'
          end
          object prcI: TSpeedItem
            Caption = 'Incluir'
            Hint = '[Ins] - Incluir'
            ImageIndex = 2
            Spacing = 1
            Left = 2
            Top = 2
            Visible = True
            OnClick = prcIClick
            SectionName = 'Movimento'
          end
          object prcE: TSpeedItem
            Caption = 'Excluir'
            Hint = '[Del] - Excluir'
            ImageIndex = 3
            Spacing = 1
            Left = 2
            Top = 82
            Visible = True
            OnClick = prcEClick
            SectionName = 'Movimento'
          end
          object prcS: TSpeedItem
            Caption = 'Salvar'
            Enabled = False
            Hint = 'Salvar|'
            ImageIndex = 1
            Spacing = 1
            Left = 2
            Top = 122
            Visible = True
            OnClick = prcSClick
            SectionName = 'Movimento'
          end
          object prcC: TSpeedItem
            Caption = 'Cancelar'
            Enabled = False
            Hint = 'Cancelar|'
            ImageIndex = 4
            Spacing = 1
            Left = 2
            Top = 162
            Visible = True
            OnClick = prcCClick
            SectionName = 'Movimento'
          end
          object prcA: TSpeedItem
            Caption = 'Alterar'
            Hint = 'Alterar|'
            ImageIndex = 0
            Spacing = 1
            Left = 2
            Top = 42
            Visible = True
            OnClick = prcAClick
            SectionName = 'Movimento'
          end
        end
        object dbgprc: TdxDBGrid
          Left = 44
          Top = 0
          Width = 571
          Height = 220
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = dbgprcKeyDown
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          DataSource = dtscad_cli_prc
          Filter.Active = True
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
          object dbgprcCLI_CPRO: TdxDBGridMaskColumn
            CharCase = ecUpperCase
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CPRO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgprcCLI_DPRO: TdxDBGridMaskColumn
            CharCase = ecUpperCase
            Width = 216
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DPRO'
          end
          object dbgprcCLI_PREC: TdxDBGridMaskColumn
            CharCase = ecUpperCase
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_PREC'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'CLI_PREC'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object dbgprcCLI_DPAG: TdxDBGridPickColumn
            CharCase = ecUpperCase
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DPAG'
          end
          object dbgprcCLI_MANO: TdxDBGridMaskColumn
            CharCase = ecUpperCase
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_MANO'
          end
          object dbgprcCLI_DCAD: TdxDBGridDateColumn
            CharCase = ecUpperCase
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DCAD'
          end
        end
      end
      object tsOBS: TdxTabSheet
        Caption = 'Observa'#231#245'es'
        object pcOBS: TdxPageControl
          Left = 0
          Top = 0
          Width = 615
          Height = 222
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
              Width = 615
              Height = 194
              Align = alClient
            end
            object edobse: TdxMemo
              Left = 0
              Top = 0
              Width = 615
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
              Height = 194
            end
          end
          object ts2: TdxTabSheet
            Caption = 'Ocorrencias'
            object Bevel11: TBevel
              Left = 0
              Top = 0
              Width = 615
              Height = 194
              Align = alClient
            end
            object edobso: TdxMemo
              Left = 0
              Top = 0
              Width = 615
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
              Height = 194
            end
          end
          object dxTabSheet3: TdxTabSheet
            Caption = 'Hist'#243'rico'
            OnShow = dxTabSheet3Show
            object dbgobs: TdxDBGrid
              Left = 44
              Top = 0
              Width = 571
              Height = 194
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderMinRowCount = 2
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              Color = clWhite
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtscad_cli_obs
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              object dbgobsOBS_DCAD: TdxDBGridDateColumn
                Width = 76
                BandIndex = 0
                RowIndex = 0
                FieldName = 'OBS_DCAD'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgobsOBS_OBSE: TdxDBGridBlobColumn
                Width = 32
                BandIndex = 0
                RowIndex = 0
                FieldName = 'OBS_OBSE'
                PopupHeight = 200
                PopupWidth = 300
              end
            end
            object SpeedBar1: TSpeedBar
              Left = 0
              Top = 0
              Width = 44
              Height = 194
              Cursor = crHandPoint
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              BoundLines = [blTop, blBottom, blLeft, blRight]
              Align = alLeft
              Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
              BtnOffsetHorz = 2
              BtnOffsetVert = 2
              BtnWidth = 40
              BtnHeight = 40
              Images = ImageOPC2
              BevelOuter = bvNone
              TabOrder = 1
              InternalVer = 1
              object SpeedbarSection1: TSpeedbarSection
                Caption = 'Movimento'
              end
              object SpeedbarSection2: TSpeedbarSection
                Caption = 'Edicao'
              end
              object SpeedbarSection3: TSpeedbarSection
                Caption = 'Confirmacao'
              end
              object SpeedbarSection4: TSpeedbarSection
                Caption = 'Utilitarios'
              end
              object obsI: TSpeedItem
                Caption = 'Incluir'
                Hint = '[Ins] - Incluir'
                ImageIndex = 2
                Spacing = 1
                Left = 2
                Top = 2
                Visible = True
                OnClick = obsIClick
                SectionName = 'Movimento'
              end
              object obsE: TSpeedItem
                Caption = 'Excluir'
                Hint = '[Del] - Excluir'
                ImageIndex = 3
                Spacing = 1
                Left = 2
                Top = 82
                Visible = True
                OnClick = obsEClick
                SectionName = 'Movimento'
              end
              object obsS: TSpeedItem
                Caption = 'Salvar'
                Enabled = False
                Hint = 'Salvar|'
                ImageIndex = 1
                Spacing = 1
                Left = 2
                Top = 122
                Visible = True
                OnClick = obsSClick
                SectionName = 'Movimento'
              end
              object obsC: TSpeedItem
                Caption = 'Cancelar'
                Enabled = False
                Hint = 'Cancelar|'
                ImageIndex = 4
                Spacing = 1
                Left = 2
                Top = 162
                Visible = True
                OnClick = obsCClick
                SectionName = 'Movimento'
              end
              object obsA: TSpeedItem
                Caption = 'Alterar'
                Hint = 'Alterar|'
                ImageIndex = 0
                Spacing = 1
                Left = 2
                Top = 42
                Visible = True
                OnClick = banAClick
                SectionName = 'Movimento'
              end
            end
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 566
    Width = 615
  end
  inherited Consulta: TIBQuery
    Left = 568
  end
  inherited IBTra: TIBTransaction
    Left = 424
    Top = 496
  end
  inherited ibSP: TIBStoredProc
    Left = 600
  end
  inherited ILMenuPrincipal: TImageList
    Left = 344
    Top = 496
  end
  object cep_log: TIBQuery [6]
    Database = dmDADOS.bCEP
    Transaction = dmDADOS.tCEP
    SQL.Strings = (
      
        'SELECT CEP_LOG.ID,LOG_TIT,LOG_NO,LOG_CEP,BAI_NO,LOC_NO,LOG_UF FR' +
        'OM CEP_LOG,CEP_BAI,CEP_LOC'
      'WHERE LOG_CEP = :LOG_CEP'
      'AND   LOG_BAI = BAI_NU'
      'AND   LOG_CID = CEP_LOC.LOC_NU')
    Left = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'LOG_CEP'
        ParamType = ptInput
      end>
    object cep_logID: TIntegerField
      FieldName = 'ID'
      Origin = '"CEP_LOG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cep_logLOG_TIT: TIBStringField
      FieldName = 'LOG_TIT'
      Origin = '"CEP_LOG"."LOG_TIT"'
    end
    object cep_logLOG_NO: TIBStringField
      FieldName = 'LOG_NO'
      Origin = '"CEP_LOG"."LOG_NO"'
      Size = 100
    end
    object cep_logLOG_CEP: TIBStringField
      FieldName = 'LOG_CEP'
      Origin = '"CEP_LOG"."LOG_CEP"'
      Size = 8
    end
    object cep_logBAI_NO: TIBStringField
      FieldName = 'BAI_NO'
      Origin = '"CEP_BAI"."BAI_NO"'
      Size = 72
    end
    object cep_logLOC_NO: TIBStringField
      FieldName = 'LOC_NO'
      Origin = '"CEP_LOC"."LOC_NO"'
      Size = 72
    end
    object cep_logLOG_UF: TIBStringField
      FieldName = 'LOG_UF'
      Origin = '"CEP_LOG"."LOG_UF"'
      Size = 2
    end
  end
  inherited ILMenuEdicao: TImageList
    Left = 376
    Top = 496
  end
  object cad_cli_ram: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_CLI_RAM'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_RAM'
      '  (CLI_RAMO, ID)'
      'values'
      '  (:CLI_RAMO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_RAMO'
      'from CAD_CLI_RAM '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_RAM'
      'WHERE ID = 0')
    ModifySQL.Strings = (
      'update CAD_CLI_RAM'
      'set'
      '  CLI_RAMO = :CLI_RAMO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 32
    object cad_cli_ramID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_RAM"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_ramCLI_RAMO: TIBStringField
      FieldName = 'CLI_RAMO'
      Origin = '"CAD_CLI_RAM"."CLI_RAMO"'
      Size = 120
    end
  end
  object cad_cli_ban: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_banAfterCancel
    AfterDelete = cad_cli_banAfterDelete
    AfterEdit = cad_cli_banAfterEdit
    AfterInsert = cad_cli_banAfterEdit
    AfterPost = cad_cli_banAfterPost
    BeforeCancel = cad_cli_banBeforeCancel
    BeforeDelete = cad_cli_banBeforeDelete
    OnNewRecord = cad_cli_banNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_BAN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_BAN'
      
        '  (CLI_AGEN, CLI_BANC, CLI_CCLI, CLI_CONT, CLI_DCAD, CLI_DESC, C' +
        'LI_DOCU, '
      '   CLI_OBSE, CLI_TIPO, ID)'
      'values'
      
        '  (:CLI_AGEN, :CLI_BANC, :CLI_CCLI, :CLI_CONT, :CLI_DCAD, :CLI_D' +
        'ESC, :CLI_DOCU, '
      '   :CLI_OBSE, :CLI_TIPO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CCLI,'
      '  CLI_DCAD,'
      '  CLI_BANC,'
      '  CLI_DESC,'
      '  CLI_AGEN,'
      '  CLI_CONT,'
      '  CLI_OBSE,'
      '  CLI_TIPO,'
      '  CLI_DOCU'
      'from CAD_CLI_BAN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_BAN')
    ModifySQL.Strings = (
      'update CAD_CLI_BAN'
      'set'
      '  CLI_AGEN = :CLI_AGEN,'
      '  CLI_BANC = :CLI_BANC,'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CONT = :CLI_CONT,'
      '  CLI_DCAD = :CLI_DCAD,'
      '  CLI_DESC = :CLI_DESC,'
      '  CLI_DOCU = :CLI_DOCU,'
      '  CLI_OBSE = :CLI_OBSE,'
      '  CLI_TIPO = :CLI_TIPO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 376
    Top = 488
    object cad_cli_banID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_BAN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_banCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_BAN"."CLI_CCLI"'
    end
    object cad_cli_banCLI_DCAD: TDateField
      DisplayLabel = 'Data'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_BAN"."CLI_DCAD"'
    end
    object cad_cli_banCLI_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'CLI_BANC'
      Origin = '"CAD_CLI_BAN"."CLI_BANC"'
      Size = 4
    end
    object cad_cli_banCLI_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CLI_DESC'
      Origin = '"CAD_CLI_BAN"."CLI_DESC"'
      OnValidate = cad_cli_banCLI_DESCValidate
      Size = 50
    end
    object cad_cli_banCLI_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'CLI_AGEN'
      Origin = '"CAD_CLI_BAN"."CLI_AGEN"'
      Size = 10
    end
    object cad_cli_banCLI_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CLI_CONT'
      Origin = '"CAD_CLI_BAN"."CLI_CONT"'
      Size = 15
    end
    object cad_cli_banCLI_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'CLI_OBSE'
      Origin = '"CAD_CLI_BAN"."CLI_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cli_banCLI_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CLI_TIPO'
      Origin = '"CAD_CLI_BAN"."CLI_TIPO"'
    end
    object cad_cli_banCLI_DOCU: TIBStringField
      DisplayLabel = 'C.N.P.J. ou C.P.F.'
      FieldName = 'CLI_DOCU'
      Origin = '"CAD_CLI_BAN"."CLI_DOCU"'
    end
  end
  object dtscad_cli_ban: TDataSource
    DataSet = cad_cli_ban
    Left = 376
    Top = 520
  end
  object cad_cli_ref: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_refAfterCancel
    AfterDelete = cad_cli_refAfterDelete
    AfterEdit = cad_cli_refAfterEdit
    AfterInsert = cad_cli_refAfterInsert
    AfterPost = cad_cli_refAfterPost
    BeforeCancel = cad_cli_refBeforeCancel
    BeforeDelete = cad_cli_refBeforeDelete
    OnNewRecord = cad_cli_refNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_REF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_REF'
      
        '  (CLI_ACUM, CLI_AVEN, CLI_CCLI, CLI_CONC, CLI_CONT, CLI_DCAD, C' +
        'LI_DDD, '
      
        '   CLI_DMAI, CLI_DPAG, CLI_DULT, CLI_LOJA, CLI_OBSE, CLI_TEL1, C' +
        'LI_TEL2, '
      '   CLI_VMAI, CLI_VULT, ID)'
      'values'
      
        '  (:CLI_ACUM, :CLI_AVEN, :CLI_CCLI, :CLI_CONC, :CLI_CONT, :CLI_D' +
        'CAD, :CLI_DDD, '
      
        '   :CLI_DMAI, :CLI_DPAG, :CLI_DULT, :CLI_LOJA, :CLI_OBSE, :CLI_T' +
        'EL1, :CLI_TEL2, '
      '   :CLI_VMAI, :CLI_VULT, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CCLI,'
      '  CLI_LOJA,'
      '  CLI_CONT,'
      '  CLI_DCAD,'
      '  CLI_DULT,'
      '  CLI_DMAI,'
      '  CLI_VULT,'
      '  CLI_VMAI,'
      '  CLI_AVEN,'
      '  CLI_ACUM,'
      '  CLI_DPAG,'
      '  CLI_CONC,'
      '  CLI_DDD,'
      '  CLI_TEL1,'
      '  CLI_TEL2,'
      '  CLI_OBSE'
      'from CAD_CLI_REF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_REF')
    ModifySQL.Strings = (
      'update CAD_CLI_REF'
      'set'
      '  CLI_ACUM = :CLI_ACUM,'
      '  CLI_AVEN = :CLI_AVEN,'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CONC = :CLI_CONC,'
      '  CLI_CONT = :CLI_CONT,'
      '  CLI_DCAD = :CLI_DCAD,'
      '  CLI_DDD = :CLI_DDD,'
      '  CLI_DMAI = :CLI_DMAI,'
      '  CLI_DPAG = :CLI_DPAG,'
      '  CLI_DULT = :CLI_DULT,'
      '  CLI_LOJA = :CLI_LOJA,'
      '  CLI_OBSE = :CLI_OBSE,'
      '  CLI_TEL1 = :CLI_TEL1,'
      '  CLI_TEL2 = :CLI_TEL2,'
      '  CLI_VMAI = :CLI_VMAI,'
      '  CLI_VULT = :CLI_VULT,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 408
    Top = 488
    object cad_cli_refID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_REF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_refCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_REF"."CLI_CCLI"'
    end
    object cad_cli_refCLI_LOJA: TIBStringField
      DisplayLabel = 'Loja'
      FieldName = 'CLI_LOJA'
      Origin = '"CAD_CLI_REF"."CLI_LOJA"'
      Size = 40
    end
    object cad_cli_refCLI_CONT: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'CLI_CONT'
      Origin = '"CAD_CLI_REF"."CLI_CONT"'
      Size = 15
    end
    object cad_cli_refCLI_DCAD: TDateField
      DisplayLabel = 'Dt Cadastro'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_REF"."CLI_DCAD"'
    end
    object cad_cli_refCLI_DULT: TDateField
      DisplayLabel = 'Dt '#218'lt Compra'
      FieldName = 'CLI_DULT'
      Origin = '"CAD_CLI_REF"."CLI_DULT"'
    end
    object cad_cli_refCLI_DMAI: TDateField
      DisplayLabel = 'Dt Maior Compra'
      FieldName = 'CLI_DMAI'
      Origin = '"CAD_CLI_REF"."CLI_DMAI"'
    end
    object cad_cli_refCLI_VULT: TIBBCDField
      DisplayLabel = 'Valor '#218'ltima Compra'
      FieldName = 'CLI_VULT'
      Origin = '"CAD_CLI_REF"."CLI_VULT"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_VMAI: TIBBCDField
      DisplayLabel = 'Valor Maior Compra'
      FieldName = 'CLI_VMAI'
      Origin = '"CAD_CLI_REF"."CLI_VMAI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_AVEN: TIBBCDField
      FieldName = 'CLI_AVEN'
      Origin = '"CAD_CLI_REF"."CLI_AVEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_ACUM: TIBBCDField
      DisplayLabel = 'Valor Acumulado'
      FieldName = 'CLI_ACUM'
      Origin = '"CAD_CLI_REF"."CLI_ACUM"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_DPAG: TIBStringField
      DisplayLabel = 'F. Pagamento'
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI_REF"."CLI_DPAG"'
    end
    object cad_cli_refCLI_CONC: TIBStringField
      DisplayLabel = 'Conceito'
      FieldName = 'CLI_CONC'
      Origin = '"CAD_CLI_REF"."CLI_CONC"'
    end
    object cad_cli_refCLI_DDD: TIBStringField
      DisplayLabel = 'DDD'
      FieldName = 'CLI_DDD'
      Origin = '"CAD_CLI_REF"."CLI_DDD"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cad_cli_refCLI_TEL1: TIBStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLI_TEL1'
      Origin = '"CAD_CLI_REF"."CLI_TEL1"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cad_cli_refCLI_TEL2: TIBStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLI_TEL2'
      Origin = '"CAD_CLI_REF"."CLI_TEL2"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cad_cli_refCLI_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'CLI_OBSE'
      Origin = '"CAD_CLI_REF"."CLI_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dtscad_cli_ref: TDataSource
    DataSet = cad_cli_ref
    Left = 408
    Top = 520
  end
  object cad_cli_obs: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_obsAfterCancel
    AfterDelete = cad_cli_obsAfterDelete
    AfterEdit = cad_cli_obsAfterEdit
    AfterInsert = cad_cli_obsAfterEdit
    AfterPost = cad_cli_obsAfterPost
    BeforeCancel = cad_cli_obsBeforeCancel
    BeforeDelete = cad_cli_obsBeforeDelete
    OnNewRecord = cad_cli_obsNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_OBS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_OBS'
      '  (ID, OBS_CCLI, OBS_DCAD, OBS_OBSE)'
      'values'
      '  (:ID, :OBS_CCLI, :OBS_DCAD, :OBS_OBSE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  OBS_CCLI,'
      '  OBS_DCAD,'
      '  OBS_OBSE'
      'from CAD_CLI_OBS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_OBS')
    ModifySQL.Strings = (
      'update CAD_CLI_OBS'
      'set'
      '  ID = :ID,'
      '  OBS_CCLI = :OBS_CCLI,'
      '  OBS_DCAD = :OBS_DCAD,'
      '  OBS_OBSE = :OBS_OBSE'
      'where'
      '  ID = :OLD_ID')
    Left = 472
    Top = 488
    object cad_cli_obsID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_OBS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_obsOBS_CCLI: TIntegerField
      FieldName = 'OBS_CCLI'
      Origin = '"CAD_CLI_OBS"."OBS_CCLI"'
    end
    object cad_cli_obsOBS_DCAD: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'OBS_DCAD'
      Origin = '"CAD_CLI_OBS"."OBS_DCAD"'
    end
    object cad_cli_obsOBS_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'OBS_OBSE'
      Origin = '"CAD_CLI_OBS"."OBS_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dtscad_cli_obs: TDataSource
    DataSet = cad_cli_obs
    Left = 472
    Top = 520
  end
  object cad_cli_soc: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_socAfterCancel
    AfterDelete = cad_cli_socAfterDelete
    AfterEdit = cad_cli_socAfterEdit
    AfterInsert = cad_cli_socAfterEdit
    AfterPost = cad_cli_socAfterPost
    BeforeCancel = cad_cli_socBeforeCancel
    BeforeDelete = cad_cli_socBeforeDelete
    OnNewRecord = cad_cli_socNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_SOC'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_SOC'
      
        '  (ID, SOC_CCLI, SOC_CPF, SOC_DCAD, SOC_NOME, SOC_OBSE, SOC_PSOC' +
        ', SOC_RG)'
      'values'
      
        '  (:ID, :SOC_CCLI, :SOC_CPF, :SOC_DCAD, :SOC_NOME, :SOC_OBSE, :S' +
        'OC_PSOC, '
      '   :SOC_RG)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SOC_CCLI,'
      '  SOC_DCAD,'
      '  SOC_NOME,'
      '  SOC_CPF,'
      '  SOC_RG,'
      '  SOC_PSOC,'
      '  SOC_OBSE'
      'from CAD_CLI_SOC '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_SOC')
    ModifySQL.Strings = (
      'update CAD_CLI_SOC'
      'set'
      '  ID = :ID,'
      '  SOC_CCLI = :SOC_CCLI,'
      '  SOC_CPF = :SOC_CPF,'
      '  SOC_DCAD = :SOC_DCAD,'
      '  SOC_NOME = :SOC_NOME,'
      '  SOC_OBSE = :SOC_OBSE,'
      '  SOC_PSOC = :SOC_PSOC,'
      '  SOC_RG = :SOC_RG'
      'where'
      '  ID = :OLD_ID')
    Left = 504
    Top = 488
    object cad_cli_socID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_SOC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_socSOC_CCLI: TIntegerField
      FieldName = 'SOC_CCLI'
      Origin = '"CAD_CLI_SOC"."SOC_CCLI"'
    end
    object cad_cli_socSOC_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'SOC_NOME'
      Origin = '"CAD_CLI_SOC"."SOC_NOME"'
      Size = 120
    end
    object cad_cli_socSOC_CPF: TIBStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'SOC_CPF'
      Origin = '"CAD_CLI_SOC"."SOC_CPF"'
      EditMask = '999.999.999-99;0'
      Size = 11
    end
    object cad_cli_socSOC_RG: TIBStringField
      DisplayLabel = 'R.G.'
      FieldName = 'SOC_RG'
      Origin = '"CAD_CLI_SOC"."SOC_RG"'
      Size = 11
    end
    object cad_cli_socSOC_PSOC: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'SOC_PSOC'
      Origin = '"CAD_CLI_SOC"."SOC_PSOC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_socSOC_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'SOC_OBSE'
      Origin = '"CAD_CLI_SOC"."SOC_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cli_socSOC_DCAD: TDateField
      DisplayLabel = 'Data'
      FieldName = 'SOC_DCAD'
      Origin = '"CAD_CLI_SOC"."SOC_DCAD"'
    end
  end
  object dtscad_cli_soc: TDataSource
    DataSet = cad_cli_soc
    Left = 504
    Top = 520
  end
  object cad_cli_dsc: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_dscAfterCancel
    AfterDelete = cad_cli_dscAfterDelete
    AfterEdit = cad_cli_dscAfterEdit
    AfterInsert = cad_cli_dscAfterEdit
    AfterPost = cad_cli_dscAfterPost
    BeforeCancel = cad_cli_dscBeforeCancel
    BeforeDelete = cad_cli_dscBeforeDelete
    BeforePost = cad_cli_dscBeforePost
    OnNewRecord = cad_cli_dscNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_DSC'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_DSC'
      
        '  (CLI_CCLI, CLI_CPRO, CLI_DCAD, CLI_DPRO, CLI_DUSU, CLI_PDSC, C' +
        'LI_PTAB, '
      '   CLI_VDSC, ID)'
      'values'
      
        '  (:CLI_CCLI, :CLI_CPRO, :CLI_DCAD, :CLI_DPRO, :CLI_DUSU, :CLI_P' +
        'DSC, :CLI_PTAB, '
      '   :CLI_VDSC, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CCLI,'
      '  CLI_CPRO,'
      '  CLI_DPRO,'
      '  CLI_VDSC,'
      '  CLI_PTAB,'
      '  CLI_PDSC,'
      '  CLI_DUSU,'
      '  CLI_DCAD'
      'from CAD_CLI_DSC '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_DSC')
    ModifySQL.Strings = (
      'update CAD_CLI_DSC'
      'set'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CPRO = :CLI_CPRO,'
      '  CLI_DCAD = :CLI_DCAD,'
      '  CLI_DPRO = :CLI_DPRO,'
      '  CLI_DUSU = :CLI_DUSU,'
      '  CLI_PDSC = :CLI_PDSC,'
      '  CLI_PTAB = :CLI_PTAB,'
      '  CLI_VDSC = :CLI_VDSC,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 536
    Top = 488
    object cad_cli_dscID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_DSC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_dscCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_DSC"."CLI_CCLI"'
    end
    object cad_cli_dscCLI_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'CLI_CPRO'
      Origin = '"CAD_CLI_DSC"."CLI_CPRO"'
    end
    object cad_cli_dscCLI_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CLI_DPRO'
      Origin = '"CAD_CLI_DSC"."CLI_DPRO"'
      Size = 120
    end
    object cad_cli_dscCLI_VDSC: TIBBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'CLI_VDSC'
      Origin = '"CAD_CLI_DSC"."CLI_VDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cad_cli_dscCLI_DUSU: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'CLI_DUSU'
      Origin = '"CAD_CLI_DSC"."CLI_DUSU"'
      Size = 15
    end
    object cad_cli_dscCLI_DCAD: TDateTimeField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_DSC"."CLI_DCAD"'
    end
    object cad_cli_dscCLI_PTAB: TFloatField
      DisplayLabel = 'Pre'#231'o Tabela [A]'
      FieldName = 'CLI_PTAB'
      Origin = '"CAD_CLI_DSC"."CLI_PTAB"'
    end
    object cad_cli_dscCLI_PDSC: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'CLI_PDSC'
      Origin = '"CAD_CLI_DSC"."CLI_PDSC"'
    end
  end
  object dtscad_cli_dsc: TDataSource
    DataSet = cad_cli_dsc
    Left = 536
    Top = 520
  end
  object ImageOPC2: TImageList
    Height = 36
    ShareImages = True
    Width = 36
    Left = 404
    Top = 6
    Bitmap = {
      494C010105000900040024002400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000900000006C000000010020000000000000F3
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
      000000000000000000000000000000000000000000000000000000000000FCFC
      FE00F7F7FC00EFEFFC00DFE0F800D0D2F400C6C8F000C4C6F000C4C6F000C8CA
      F200D4D6F500E2E3F900F1F1FC00F9FAFD00FEFEFF0000000000000000000000
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
      00000000000000000000000000000000000000000000FBFBFE00EBEBFA00C6C8
      F2009DA0EC00757BE9005159E600363FE300232DE0001E29DF001E29DF00252F
      E1003C45E3005861E7007D83EA00A9ADEF00D6D7F700EEEEFB00FEFEFF000000
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
      0000000000000000000000000000FEFEFF00EFEFFC00BDC0F1007A80EA003F48
      E7001B28E9000312E600000FEA00000FEC000010ED000010ED000010ED000010
      ED00000FEA00000FE9000816E6002430E9004B53E700868CEC00CDCFF400F4F4
      FC00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000E3E4F800898EEA003A45E9001120E9000211
      EB000010EC000010EC00000FEC00000FEC00000FEB00000FEB00000FEB00000F
      EB00000FEA00000FEB00000FEC00000FEC000210EA001725EB004952E9009DA0
      ED00E8E9FA00FEFEFF0000000000000000000000000000000000000000000000
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
      00000000000000000000F3F3FB00535AE0001525ED000314EE000010ED000010
      ED000010ED000010ED000010EE000010EE000010EE000010EE000010EE000010
      EE000010ED000010ED000010ED00000FED00000FED00000FED000617ED00202C
      EA007C82EA00E8E9FA0000000000000000000000000000000000000000000000
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
      000000000000DCDDF5001119CB000015F4000011F1000011EF000011EF000011
      EF000011EF000011F0000011F1000013F3000017F5000019F7000019F7000016
      F5000013F2000011EF000011EF000010EE000010EE000010EE000010ED000012
      F1000011EC007076E90000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FBFB
      FE00D8DAF8004049E2000017F5000013F3000011F1000012F1000013F2000014
      F3000217F3000B20F4001D32F4003142F100424FED004953EC004A54EC003F4C
      F1002C3DF3001025F4000116F2000013F2000011F1000011F1000011F0000011
      F0000013F3000011EF007076E700EEEEFD000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FDFDFE00DCDE
      F9006771EF000D22F2000014F3000013F2000013F3000014F3000016F4000D24
      F4003143F200707AF300A6A9F100CFD1F600F0F0FC00FEFEFF0000000000EAEA
      FC00BFC2F5005D68F2000D23F5000015F3000013F3000013F3000013F2000012
      F2000012F1000014F4000011ED008B90F200F0F0FD0000000000000000000000
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
      0000000000000000000000000000000000000000000000000000EEEEFD009097
      F3002034F3000117F3000014F3000014F3000016F500011BF6001B30F4006874
      F300BFC2F500EBECFC000000000000000000000000000000000000000000FEFE
      FF00E6E7FC007783F5001128F5000016F5000014F4000014F4000014F3000014
      F3000013F3000013F3000015F5002635F100AFB3F500F9FAFE00000000000000
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
      00000000000000000000000000000000000000000000FCFCFE00C6CAF8004353
      F200051DF5000016F5000016F5000016F600011DF800213AF500858EF600DCDE
      FB0000000000000000000000000000000000000000000000000000000000F3F3
      FD00A2AAF9002F46F600041EF7000017F7000016F6000016F6000016F5000016
      F5000015F3000015F3000014F300091DF5005B66F300DBDDFA00000000000000
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
      00000000000000000000000000000000000000000000F2F2FD008891F4000F27
      F4000018F8000016F7000017F800001AF8001635F900848FF800E7E8FD00FDFD
      FE0000000000000000000000000000000000000000000000000000000000B0B6
      F9002741F7000424FA000019F9000018F9000017F8000017F8000017F8000016
      F8000016F6000016F6000015F6000117F5002437F500A4AAF900F7F8FE000000
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
      00000000000000000000000000000000000000000000DCDEFB004C5EF700001E
      F9000018F8000017F8000018F900072AFA005B6CF700DFE0FB00000000000000
      0000000000000000000000000000000000000000000000000000CED0FB000C2A
      F5000037FE000019FB000019FA000019FA000018FA000018FA000018F9000018
      F9000017F8000017F8000016F7000016F6000B22F6006B77F600E6E7FD000000
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
      00000000000000000000000000000000000000000000B9BEF800102BF400001E
      FB000018F9000018FA000020FB00235EFB00B1B5F80000000000000000000000
      0000000000000000000000000000FEFEFF00F3F4FE00AFB7FA000C2EF6000045
      FF00001BFD00001AFC00001AFC00001AFB000019FB00001BFB000220FA000422
      FA00021FFA000019F9000017F8000017F800001AF800394CF700C5C9FB00FCFC
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000008E99F7000022F800001C
      FC000019FC000019FC000056FF005667F600F0F1FE0000000000000000000000
      00000000000000000000FEFEFF00EDEFFE00A2AEFB00295AFC00004EFF00001F
      FD00001EFD00001EFD00001DFD00001DFD000021FD000632FC002D55FC004662
      FA001F44FB000322FC000018FA000018FA00001AFA002038F900A2AAFA00F8F9
      FE00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000005768F400002FFD00001B
      FD00001BFD000021FE00005FFF009DA3F8000000000000000000000000000000
      000000000000FEFEFF00EDEFFE009FB2FD003371FD00044EFF000027FF000026
      FF000026FF000024FF000023FE000031FF000044FF00385DFA00A3ACFB00CACE
      FB00677AFA000B38FD00001AFC00001AFC00001BFC000A27F9008692FA00F4F5
      FE00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000344AF4000041FF00001E
      FD00001FFE000044FF000035F800E1E3FE000000000000000000000000000000
      000000000000F3F4FE00A3B7FD00337CFD00065CFF00003CFF000034FF000034
      FF000032FF00002FFF000044FF000053FF003559FA00B4BAFC00F4F4FE00FDFD
      FF0098A1FB00165BFE00001CFD00001CFD00001CFD000120FA006F7FFA00EDEF
      FE00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000D2CF6000044FF000023
      FF000026FF000066FF001731F500FDFDFF000000000000000000000000000000
      000000000000B0BDFD002775FE00046BFF000052FF000048FF000047FF000047
      FF000045FF000054FF000063FF00517BFD00D2D7FE00FAFBFF00000000000000
      0000BABFFD002673FF000021FE000020FE00001FFE000024FD005E73FC00E5E8
      FF00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000002CF800004BFF00002C
      FF000034FF00017FFF00404DF500000000000000000000000000000000000000
      0000CED2FD000C5AFD000286FF00005BFF000058FF000057FF000057FF000057
      FF000060FF000074FF004B81FE00DBDFFE000000000000000000000000000000
      0000C3C9FD002B80FF00002CFF000027FF000025FF00002DFE005A73FC00E4E7
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000535F8000059FF00003D
      FF000043FF000387FF002E44F600FEFEFF0000000000FEFEFF00F3F5FE00AFC1
      FD000C67FD000395FF000065FF000065FF000066FF000065FF000065FF00006C
      FF000980FF004C91FF00C7D0FD00FCFDFF000000000000000000000000000000
      0000BFC4FD002987FF000039FF000034FF000031FF000039FF005B78FE00E4E7
      FF00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000204CFA00006EFF00004E
      FF000053FF000185FF000048FD00F2F3FE00FEFEFF00EDF0FF00A2BEFE00298E
      FF00049AFF000071FF000070FF000070FF000071FF000071FF00017CFF00098B
      FF004390FF00B9C6FE00F8F9FE00000000000000000000000000000000000000
      0000ACB4FD001F89FF00004BFF000044FF000041FF000048FF006586FF00E9EC
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000004069FB00017EFF00005D
      FF000061FF00007CFF000288FF00BEC3FD00EDF0FF009FC1FF00349DFF000797
      FF00017EFF00017BFF00017EFF00017FFF000280FF00038FFF00049BFF00388D
      FF00ACBBFE00F3F4FF000000000000000000000000000000000000000000F9F9
      FF0089A0FE001283FF00005BFF000053FF000053FF000457FF007999FE00F1F4
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000006C91FD00017FFF00006E
      FF00006CFF000074FF0007B6FF005482FF0081A4FE0035A4FF00099AFF00028A
      FF000287FF000288FF000289FF00028AFF00049DFF0004A3FF002E81FF00B4C2
      FF00F4F5FE00000000000000000000000000000000000000000000000000E1E4
      FF005FA2FF000980FF000065FF000060FF000061FF00146CFF0094AEFE00F6F6
      FE00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000ABC3FE000578FF000385
      FF000178FF00017EFF000392FF000FB2FF0018BBFF0008A4FF000295FF000490
      FF000493FF000496FF000496FF0006A6FF0006B0FF00308BFF00CDD5FF00FAFB
      FF00000000000000000000000000000000000000000000000000FCFDFF00B5CC
      FF002F9BFF000484FF000070FF00006DFF00006EFF002C82FF00B4C7FF00FAFB
      FE00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000CEDAFE002E90FF000395
      FF000283FF000289FF00028DFF00028FFF000392FF000497FF00049AFF00049B
      FF00049FFF00049FFF0006ADFF0009C0FF002F9BFF00CDDCFF00000000000000
      0000000000000000000000000000000000000000000000000000E6E9FF006BAE
      FF000E9AFF000286FF00017EFF000179FF00027FFF004F93FF00DCE3FF000000
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
      00000000000000000000000000000000000000000000E9EEFE006AA9FF000795
      FF000393FF000292FF000497FF00049BFF00049FFF0004A2FF0006A7FF0006A8
      FF0006AAFF0008B5FF0012C9FF003CB5FF00B4D0FF00F9FBFF00000000000000
      00000000000000000000000000000000000000000000F2F7FF00A1CEFF0027AC
      FF0004A1FF00028FFF000287FF000186FF001690FF0084B6FF00EEF1FF000000
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
      00000000000000000000000000000000000000000000F8F9FF00A6C5FF0026A4
      FF0005A5FF0004A0FF0004A2FF0004A6FF0004AAFF0006AEFF0006B1FF0006B4
      FF0008B9FF0016D6FF0045D0FF00ACD8FF00F4F6FF0000000000000000000000
      000000000000000000000000000000000000F4F8FF00AADAFF0037BBFF0008B5
      FF0004A2FF000398FF000391FF00079AFF003EA5FF00C3D8FF00FDFEFF000000
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
      00000000000000000000000000000000000000000000FEFEFF00DDE6FF0068B6
      FF0014B9FF0006B1FF0007AEFF0007B1FF0007B6FF0008BAFF0008BDFF0008BF
      FF0013D9FF0035D5FF00AAD8FF00F2F7FF000000000000000000000000000000
      00000000000000000000FFFEFF00E0EEFF0097D4FF0036C9FF000BC6FF0007B7
      FF0006A8FF0006A2FF0006A5FF0017AEFF0083BCFF00EFF4FF00000000000000
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
      0000000000000000000000000000000000000000000000000000F9FAFF00B7D2
      FF003EBBFF000DCAFF0007B8FF0008BBFF0008C0FF0009C3FF0009C6FF000BC9
      FF001AE8FF0047D3FF00CCE0FF00FFFEFF000000000000000000000000000000
      0000FDFEFF00E5F2FF00ABD8FF0068D9FF0025D8FF000DD0FF0008C2FF0007B7
      FF0007B1FF0007B1FF0009C9FF004BB0FF00D6E7FF00FEFFFF00000000000000
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
      000000000000000000000000000000000000000000000000000000000000F3F5
      FF0099C5FF0023CBFF0010D9FF0009C6FF0009CAFF000BCEFF000BD1FF000BD4
      FF000EDAFF003FF3FF0062DDFF0080C6FF00AFD7FF00CCE8FF00D3EAFF009ECF
      FF007EC8FF0057D6FF0037E8FF001AE2FF000DD7FF0009CCFF0009C5FF0008C2
      FF0008C2FF000BD1FF0024A5FF00CDE5FF00FCFDFF0000000000000000000000
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
      0000000000008FB7FF001ADFFF0015E7FF000BD4FF000BD7FF000CD9FF000CDC
      FF000CDFFF0013E5FF0045FDFF00A9FFFF008CFFFF0053F0FF0047EBFF0081FF
      FF0053FFFF002BFBFF0011E5FF000BD9FF000BD7FF000BD4FF000BCFFF000BCF
      FF000CDEFF000FAAFF00CFE3FF00000000000000000000000000000000000000
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
      000000000000000000008FBDFF0038DDFF0025EDFF0016E5FF0010E4FF000DE6
      FF000CE8FF000EE8FF000EEAFF000EEBFF0017F2FF0024F9FF0024F9FF000EEA
      FF000DE9FF000CE7FF000CE5FF000CE1FF000CDEFF000CDDFF000FDEFF0016E2
      FF003FD3FF00B5E0FF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000A4D7FF0060E2FF0045F4FF002FF6FF0022F5
      FF0017F5FF0010F1FF0010F3FF0010F3FF0010F4FF0010F4FF0010F4FF0010F3
      FF0010F2FF000EEFFF0010EEFF0011EDFF0015EDFF0019EDFF002FEAFF0063E1
      FF00C1E9FF00F9FCFF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000F6FBFF00CAEDFF0096EBFF0079F6FF0062FC
      FF0083FFFF007FFDFF0043FEFF0028FEFF001AFEFF0012FDFF0012FDFF001BFD
      FF0024FDFF0029FCFF002BFBFF0029FAFF003BF7FF005AECFF0093E9FF00D6F1
      FF00FBFDFF000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FBFDFF00EAF8FF00CBF4FF00A9F1
      FF00C3FAFF00C2FCFF00B0FFFF00D0FFFF00F1FFFF00F8FFFF00E2FFFF00BBFF
      FF0069FFFF004FFCFF005CF6FF007AF5FF00A3F1FF00D0F4FF00F0F9FF00FDFE
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FBFDFF00F6FC
      FF00E9FAFF00D9F9FF00D9FBFF00D2FCFF00C4F8FF00B7F5FF00ABF5FF00AFF7
      FF00B4FAFF00C2FAFF00D5F9FF00E8FDFF00F7FDFF00FDFEFF00000000000000
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
      000000000000FEFEFE00000000000000000000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE0000000000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F4F4F400EAEAEA00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E4E4E400EEEEEE00F2F2F200F6F6
      F600FCFCFC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F4F4F400E8E8E800E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E4E4E400EBEBEB00F4F4F400F8F8F800FEFEFE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00EDEDED00CFCFCF00EBEBEB00F3F3F300EEEEEE00ECECEC00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00F1F1F100F4F4F400F8F8F800FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F4F200DFE6
      E100E2EEEA00F9FAF900FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00F4F6F600D3E2DB00D5DDD700E8ECE900FAFBFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00E4E4E400D0D0D000CCCCCC00CACACA00C8C8
      C800C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C8C8C800D4D4D400CDCDCD00D3D3
      D300E2E2E200F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00E2E2
      E200D4D4D400CFCFCF00CACACA00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CACACA00D1D1D100D2D2D200D6D6D600E6E6E600F9F9F900000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F1009E9E9E004E4E4E0081818100B7BFC500D1D2D600D7D7D700D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800DDDDDD00D4D4D400DFDFDF00E9E9E900F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F9F800CED7D0008DA39200587E
      630070B09B00DEE5E200F5F5F500F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F5F5F500F5F5F500F5F5
      F500F5F5F500D5E2DD0062A38700496B5100718B7800B1BEB400F1F4F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFDFDF00CCCCCC00DCDCDC00EBEBEB00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EBEBEB00D5D5D500C7C7
      C700C6C6C600D6D6D600F9F9F900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00DADADA00D1D1
      D100E0E0E000EEEEEE00F1F1F100F1F1F100F2F2F200F2F2F200F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400EEEEEE00D7D7D700C8C8C800CACACA00DEDEDE00FDFDFD000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E100606060000E0E0E001C1C1C003378B90057A8ED0093CAEE00D3E1ED00EAEB
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00D6D6D600C4C4C400CECECE00DFDF
      DF00F8F8F800FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F9F800B8C5BC004B6B530017442100053F
      160039937A00D1DCD700F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000EFEF
      EF00EFEFEF00C8D7D3003C886A0002330E000D3A17002D5436007A918000EFF3
      F000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F000B7B7B700E7E7E700EDEDED00EDEDED00EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E8E8E800D5D5
      D500CECECE00C4C4C400CFCFCF00FCFCFC000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00BCBCBC00EBEB
      EB00EEEEEE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00F1F1F100F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100E7E7E700D1D1D100CDCDCD00CACACA00D7D7D700FDFD
      FD0000000000000000000000000000000000000000000000000000000000F0F0
      F0008A8A8A00151516000F3955000D83ED000A76FC000F77F9001D8AF7004BAE
      F700A0D7F400F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200EFEFEF00D3D3D300C5C5C500C7C7
      C700DCDCDC00FCFCFC0000000000000000000000000000000000000000000000
      00000000000000000000FDFEFE00C6D2C90045674D000734120000310C00003D
      12003B957C00D2DFDB00EEEEEE00E4E4E400E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E0E0E000E0E0
      E000E7E7E700C9D9D50040886E0000310C0000310C0002330E000D3817008299
      8800FAFBFB000000000000000000000000000000000000000000000000000000
      000000000000CFCFCF00E6E6E600F1F1F100EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100E1E1
      E100DADADA00DADADA00C0C0C000D5D5D5000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00F1F1F100EFEF
      EF00EEEEEE00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F1F1F100E0E0E000DADADA00DADADA00BEBEBE00DCDC
      DC0000000000000000000000000000000000000000000000000000000000E8E8
      E800DEDEDE00A1CDE3003AB5FC00169DFC000E92FC000678FE000163FC00005F
      FC000161F9001F98B100C1E4D400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400E4E4E400CDCDCD00DADA
      DA00C3C3C300ECECEC0000000000000000000000000000000000000000000000
      00000000000000000000E8ECE900728C79000E3C180000310C0000310C00003D
      12003D957C00D4DFDB00E7E7E700CCCCCC00C4C4C400C4C4C400C4C4C400C5C5
      C500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C5C5C500C4C4C400C3C3
      C300DADADA00CCDAD60043886F0000310C0000310C0000310C0000310C002A50
      3300C2CDC5000000000000000000000000000000000000000000000000000000
      000000000000BEBEBE0000000000EDEDED00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100E3E3
      E300DBDBDB00EAEAEA00E0E0E000C8C8C800E6E6E60000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00FCFCFC00EEEE
      EE00EFEFEF00F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200E1E1E100DADADA00EAEAEA00DFDFDF00C7C7
      C700ECECEC000000000000000000000000000000000000000000FCFCFC00E5E5
      E500E0E0E000D1EBF5009BE0FF0039B3FC001DA3FC001196FC000984FC000470
      FC00036AF90026A6780051BD8600B1DFC900EBF1EE00F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400EDEDED00DCDCDC00E6E6
      E600D9D9D900C8C8C800F5F5F500000000000000000000000000000000000000
      000000000000FDFDFD00CCD5CF003D61460000310C0000310C0000310C00003D
      12003D967C00D5E1DC00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F1F1F100EFEF
      EF00F1F1F100CDDBD60043886F0000310C0000310C0000310C0000310C000D39
      17007D958300F5F7F50000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000EDEDED00EEEEEE00EEEEEE00EFEFEF00F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200E4E4
      E400DEDEDE00EDEDED00EDEDED00DCDCDC00D9D9D900F6F6F600000000000000
      00000000000000000000000000000000000000000000BDBDBD00FCFCFC00EEEE
      EE00F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F4F4F400E6E6E600E0E0E000EEEEEE00EDEDED00DEDE
      DE00DADADA00F8F8F80000000000000000000000000000000000FBFBFB00E2E2
      E200E3E3E300E7EFF200B6E8FF007CD4FF003BB6FE001EA4FC00139AFB001194
      F100199BC70049C3850031AF6D0048B27B00A6D6C000EAEFEE00F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EFEFEF00DFDFDF00E7E7
      E700EDEDED00D7D7D700D5D5D500FBFBFB000000000000000000000000000000
      000000000000FAFBFB00B0BEB3002952320000310C0000310C0000320C00003E
      12003D977D00D6E2DE00EEEEEE00E0E0E000DFDFDF00DFDFDF00E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000DFDFDF00DFDFDF00DEDEDE00DEDE
      DE00EEEEEE00CDDCD70043886F0000310C0000310C0000310C0000310C000737
      12005D7B6400E1E7E20000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000EEEEEE00EEEEEE00EFEFEF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EBEB
      EB00E1E1E100E3E3E300E7E7E700E3E3E300DFDFDF00EBEBEB00FCFCFC000000
      00000000000000000000000000000000000000000000BDBDBD00FCFCFC00F1F1
      F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F4F4F400F4F4F400F4F4
      F400F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500EDEDED00E0E0E000E3E3E300E8E8E800E4E4
      E400E4E4E400EFEFEF00FEFEFE00000000000000000000000000FBFBFB00E3E3
      E300E3E3E300F1F2F200C1EAFC00B6EAFF0069CDFF003CB6FE0028ADEB002BB2
      B50026AA6E0047C183003DBC790020A05A0034A46A009FD4BC00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F4F4F400E4E4E400E3E3
      E300EDEDED00EAEAEA00D8D8D800EBEBEB00FEFEFE0000000000000000000000
      000000000000F9FBF900ABBCAF0024512E0000370D0000370D0000380D000044
      130040998100D7E4E000F0F0F000E7E7E700E6E6E600E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E6E6E600E5E5E500E5E5
      E500F0F0F000D0DFD900448A710000340C0000320C0000320C0000320C000636
      120054765B00DAE2DB0000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000EFEFEF00EFEFEF00EDEDED00EAEAEA00EBEB
      EB00EBEBEB00EBEBEB00EEEEEE00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200EEEEEE00E7E7E700DEDEDE00D7D7D700DEDEDE00EAEAEA00FBFBFB000000
      00000000000000000000000000000000000000000000C1C1C100FEFEFE00F2F2
      F200F1F1F100EEEEEE00EBEBEB00EDEDED00EDEDED00EEEEEE00F1F1F100F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500EEEEEE00E8E8E800E1E1E100DADA
      DA00DEDEDE00EDEDED00FBFBFB00000000000000000000000000FBFBFB00E3E3
      E300E4E4E400F4F4F400D9EDF800C0EDFF0098E0FF005DCAF2003EBAB20025A7
      6A00189851001E9F5A0032B26F0028AB6600118D47001F925600A7D3BF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00E8E8
      E800E1E1E100DADADA00EAEAEA00E8E8E800FAFAFA0000000000000000000000
      000000000000F9FBF900ABBDAF0024572F00003E0E00003E0E00003E0E00004A
      1500409C8300D9E6E200F4F4F400F0F0F000F0F0F000F0F0F000F0F0F000F1F1
      F100F3F3F300F3F3F300F3F3F300F3F3F300F1F1F100F0F0F000F0F0F000EFEF
      EF00F4F4F400D1DFDA00468B7400003A0E0000380D0000350D0000350D000637
      120054785C00DAE2DB0000000000000000000000000000000000000000000000
      000000000000C3C3C30000000000F1F1F100EDEDED00DBDBDB00CFCFCF00CFCF
      CF00CFCFCF00D1D1D100DEDEDE00F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200EDEDED00E3E3E300D4D4D400E1E1E100F8F8F8000000
      00000000000000000000000000000000000000000000C4C4C40000000000F2F2
      F200EEEEEE00DDDDDD00D1D1D100D1D1D100D1D1D100D3D3D300E4E4E400F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EFEFEF00E3E3
      E300D1D1D100E0E0E000F8F8F800FEFEFE000000000000000000FBFBFB00E5E5
      E500E6E6E600F5F5F500EFF4F400A8E3FC00A8E7F50079DDD10042BF88001B9B
      560015934C001291480016944D0026A86300189A5200077730000F7336009FCF
      B900F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F5F5
      F500F1F1F100E3E3E300C4C4C400EAEAEA00F7F7F70000000000000000000000
      000000000000F9FBF900ABBFB000245C30000044100000471000004710000051
      1700419F8700DAE7E200EFEFEF00DFDFDF00DCDCDC00DCDCDC00DCDCDC00DEDE
      DE00DEDEDE00DEDEDE00DFDFDF00DEDEDE00DEDEDE00DCDCDC00DCDCDC00DBDB
      DB00F0F0F000D1DFDB00478E750000410F00003E0E00003E0E00003B0E00063F
      1400547C5D00DAE2DB0000000000000000000000000000000000000000000000
      000000000000C3C3C30000000000F1F1F100EFEFEF00EBEBEB00E6E6E600E4E4
      E400E4E4E400E4E4E400EBEBEB00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100E4E4E400CECECE00E5E5E500FCFC
      FC000000000000000000000000000000000000000000C4C4C40000000000F2F2
      F200F1F1F100EDEDED00E7E7E700E7E7E700E7E7E700E7E7E700EEEEEE00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2
      F200E3E3E300D1D1D100E8E8E800FEFEFE000000000000000000FBFBFB00E5E5
      E500E6E6E600F5F5F500F4F4F40085D6D30034B2720030B16D0060D4980026A8
      6200119147000D8C44000B863F000E8A420022A65F000C843D0000631F000C67
      2E00A4CDBC00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EEEEEE00C3C3C300F3F3F30000000000000000000000
      000000000000F9FBF900ABC2B00024623300004D1100004D1100004E11000056
      170037997B00D1DFD900FAFAFA00FAFAFA00FAFAFA00FAFAFA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900F9F9
      F900F6F6F600C6DCD6002C8C6800004A100000470F0000440F0000440F000648
      1400547F5D00DAE2DB0000000000000000000000000000000000000000000000
      000000000000C4C4C40000000000F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F4F4F400F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4
      F400F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100D5D5D500C7C7C700F4F4
      F4000000000000000000000000000000000000000000C4C4C40000000000F2F2
      F200F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F5F5F500F5F5F500F5F5F500F5F5
      F500F1F1F100D1D1D100D1D1D100FBFBFB000000000000000000FBFBFB00E5E5
      E500E7E7E700F5F5F500F7F7F700D4EBE70054BD9A001898550022A35F004DC9
      89001C9D58000D89410009813900077B3300087C330017964D0005722A000057
      1A00156D3C0097C4B100EDF2EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700DDDDDD00CDCDCD00F0F0F000000000000000
      000000000000F9FBF900ABC4B000246833000053130000531300005314000058
      1500118040009EBBB100E4EEEB00F4F8F500F6F9F800F6F9F800F6F9F900F8F9
      F900F8F9F900F8F9F900F8F9F900F6F9F800F6F9F800F5F8F800F4F6F600F1F5
      F400E5ECEA008BB5A500006B2600004F1200004E1100004B1100004A1100064F
      160054845E00DAE2DB0000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F4F4F400F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F2F2F200F2F2F200F2F2F200E3E3E300D3D3D300F5F5
      F5000000000000000000000000000000000000000000C8C8C80000000000F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F5F5F500F5F5F500F5F5
      F500F5F5F500DFDFDF00D9D9D900FBFBFB000000000000000000FBFBFB00E5E5
      E500E7E7E700F5F5F500F7F7F700F2F5F500BAE3DC0045B28A000F8A48001794
      4E003DBA7B001A9B5400097F36000472290000652000016721000D833C000268
      2500004F18001F704600ADCCBF00F4F4F400F8F8F800F8F8F800F8F8F800F7F7
      F700F7F7F700F7F7F700F7F7F700EDEDED00D1D1D100E9E9E900000000000000
      000000000000F9FBF900ABC6B00024703400005A1600005C1600005D1600005D
      160000661C001B8B580077AE9C00AACABD00B4D2C500B5D2C500B5D2C600B5D4
      C700B5D4C700B5D4C700B5D4C700B5D2C600B5D2C500B4D1C500B3D0C400A5C6
      BA0072A8930005803E0000581500005814000055130000531300005213000656
      180054885F00DAE2DB0000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F4F4F400F4F4F400F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F4F400F2F2F200E6E6E600D6D6D600F5F5
      F5000000000000000000000000000000000000000000C8C8C80000000000F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F5F5
      F500F5F5F500E1E1E100DDDDDD00FCFCFC000000000000000000FCFCFC00E7E7
      E700E7E7E700F5F5F500F7F7F700F7F7F700EFF5F400AEDDD40036A47D000877
      33000C7D36001E9D5900128E4700026C2600005D1B000055170000561A000469
      2700025D210012623300799B8C00DAD9D900F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F2F2F200DDDDDD00E9E9E900000000000000
      000000000000F9FBF900ABC9B200247C3900006B1C00006C1C00006E1C00006B
      1C0000691B00006C1E00017D3100178C56001F905D001F905D001F905F001F90
      60001F9060001F9060001F9060001F905F001F905D001F905D001F8F5C00138A
      5100007222000060180000601700005D1600005C1600005A160000581500065E
      1B00548D6100DAE2DB0000000000000000000000000000000000000000000000
      000000000000C8C8C80000000000F2F2F200F1F1F100EAEAEA00E4E4E400E4E4
      E400E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E8E8E800F2F2
      F200F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500E7E7E700D8D8D800F6F6
      F6000000000000000000000000000000000000000000C8C8C80000000000F5F5
      F500F4F4F400EBEBEB00E6E6E600E6E6E600E7E7E700E7E7E700E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E7E7E700E7E7
      E700E7E7E700E7E7E700EBEBEB00F5F5F500F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E3E3E300DEDEDE00FCFCFC000000000000000000FCFCFC00E7E7
      E700E9E9E900F5F5F500F7F7F700F7F7F700F7F7F700EFF5F500AEDDD4002396
      6E000057190004662400118945000A7C3400005A1A00004F150000481200004A
      1500066026003E8A63007D8C8500A8A7A600E7E7E600F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F4F4F400DDDDDD00E9E9E900000000000000
      000000000000F9FCF900ABCFB400248E4100008027000080270000802700007D
      2600007C2300007B2300007821000077200000751F0000721E00006F1C00006F
      1D00006F1D00006E1D00006E1D00006E1C00006E1C00006E1C00006C1C000069
      1B0000681B0000681A0000661900006519000063190000621700005F17000664
      1E0054906300DAE2DB0000000000000000000000000000000000000000000000
      000000000000CACACA0000000000F2F2F200EFEFEF00DEDEDE00D2D2D200D1D1
      D100D2D2D200D2D2D200D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D2D2D200D2D2D200D1D1D100D1D1D100DADADA00EDED
      ED00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500E8E8E800D9D9D900F6F6
      F6000000000000000000000000000000000000000000CBCBCB0000000000F5F5
      F500F1F1F100E0E0E000D4D4D400D3D3D300D4D4D400D4D4D400D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D4D4
      D400D3D3D300D4D4D400E0E0E000F2F2F200F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E4E4E400DEDEDE00FCFCFC000000000000000000FCFCFC00E7E7
      E700E9E9E900F5F5F500F7F7F700DADADA00B9B9B900BCBCBC00B8BABA0088A7
      A3000A664E000047120001571D000C7D3A0004692600004B130000420F00003F
      1100196C3E00A0C4B300B8B9B900A8A8A800A8A6A600E7E7E700F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F4F4F400DDDDDD00E9E9E900000000000000
      000000000000F9FCF900ABD2B5002494460000872D0000862D0000862D000085
      2D0000852A0000852A00008329000081280000812600007F2600007C23000078
      2100007520000074200000741F0000741F0000721F0000721F0000711E000071
      1E0000711E00006E1D00006E1C00006C1C00006B1C0000681B0000661A00066C
      210054966500DAE2DB0000000000000000000000000000000000000000000000
      000000000000CACACA0000000000F2F2F200F2F2F200EEEEEE00EBEBEB00EBEB
      EB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00EBEBEB00EDEDED00F2F2
      F200F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500E8E8E800D9D9D900F6F6
      F6000000000000000000000000000000000000000000CBCBCB0000000000F5F5
      F500F5F5F500F1F1F100EDEDED00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EDEDED00EDEDED00F1F1F100F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E4E4E400E0E0E000FCFCFC000000000000000000FCFCFC00E9E9
      E900ECECEC00F5F5F500F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F80010735B00003B0D00004D18000B7C3A0000541B00003C0E000951
      21009AC0AF00D4D4D100A1A1A000A4A4A400AFAFAF00ABADAF00D6D9DF00F8F8
      F800F8F8F800F8F8F800F8F8F800F4F4F400DDDDDD00E9E9E900000000000000
      000000000000F9FCF900ABD4B50024954A00008931000089310000882E000088
      2E0000882E0000872E0000862D0000862D0000862A0000852A0000842A000083
      2A0000812800007C2300007A2200007A2200007A2200007A2200007821000075
      21000075210000751F0000741F0000741F0000711E00006E1C00006E1C00066F
      210054966500DAE2DB0000000000000000000000000000000000000000000000
      000000000000CCCCCC0000000000F2F2F200F4F4F400F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EAEAEA00DBDBDB00F6F6
      F6000000000000000000000000000000000000000000CFCFCF0000000000F5F5
      F500F5F5F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E4E4E400E0E0E000FCFCFC000000000000000000FCFCFC00E9E9
      E900ECECEC00F5F5F500F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800BADCD900176D510000381200004517000A7035000E57280083AB
      9B00BCBAB900A09F9D00A7A6A600BFBFBF009696960059638500243D930098A6
      D600EFEFF500F8F8F800F8F8F800F4F4F400DDDDDD00E9E9E900000000000000
      000000000000F9FCF900ABD4B50024984A00008C3200008B3200008B3200008B
      3200008B3100008A2F0000892F0000882E0000882E0000882E0000872D000087
      2C0000852A0000842A000082280000812700007F2500007D2500007C2500007C
      2300007B2300007B2300007B230000782200007521000075200000741F000677
      2400549A6700DAE2DB0000000000000000000000000000000000000000000000
      000000000000CFCFCF0000000000F2F2F200EAEDEB00B2C6BB0091A699008FA3
      95008FA3950090A69800ACC3B700E8EBEA00F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EAEAEA00DBDBDB00F6F6
      F6000000000000000000000000000000000000000000D0D0D00000000000F5F5
      F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F5F5F700F5F5
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E4E4E400E0E0E000FCFCFC000000000000000000FCFCFC00E9E9
      E900ECECEC00F5F5F500F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F2F5F5009CC9C4001F6A51000A4221002D745400B5C7C000CDCD
      CD009F9F9F00B8B8B800B3B2B2008E8D8D00B8B9BA003D549A0000086E002635
      9700C3C9E400F7F7F800F8F8F800F4F4F400DEDEDE00ECECEC00000000000000
      000000000000F9FCF900ABD5B700249B4E00008E3700008E3500008E3500008E
      3500008D3500008D3400008C3400008B3200008B3100008B3100008A2F000089
      2F0000882E0000882D0000872D0000872C0000842C0000832900008228000081
      27000081270000802700007F2600007D2500007C2400007B2300007B2300067D
      2800549E6800DAE2DB0000000000000000000000000000000000000000000000
      000000000000CFCFCF0000000000F5F5F500CCD8D1004A735E00053111000225
      0A0002250A00042C0E003A6B5300C2CEC800F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EAEAEA00DCDCDC00F9F9
      F9000000000000000000000000000000000000000000D1D1D100E7EAF700C7CC
      E600E1E3EF00F7F7F700F7F7F700F7F7F700F7F7F700EFF1F500C7CDE800C0C6
      E600E7E8F200F5F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E6E6E600E1E1E100FCFCFC000000000000000000FCFCFC00E9E9
      E900ECECEC00F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800EDF2F400ABCCC900658886007F899200CCCCCC00D1D1
      D100ABABAB00AEAEAE008D8D8D00969493007C8FBA000615790000026000111B
      7D00A4AED700F5F5F700F8F8F800F4F4F400E0E0E000ECECEC00000000000000
      000000000000F9FCF900ABD7B800249D510000903B0000903A0000903A000090
      3A00008F3A00008F3A00008E3800008C350000882E00038F4600038E4400038D
      4100028C4000028C3E00028B4000028C4000028B4000028A3D0000842E000083
      290000842C0000842C0000832900008329000081280000802600007F26000680
      2C0054A06900DAE2DB0000000000000000000000000000000000000000000000
      000000000000D2D2D20000000000F5F5F500C9D8CF0045725B0005381100022C
      0C00022C0C00043410002B644900A5B2AA00DEDEDE00DDDDDD00EFEFEF00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EAEAEA00DCDCDC00F9F9
      F9000000000000000000000000000000000000000000B7B7C6006C78BB003E4F
      A1007A85C600D0D3E100E0E0E000E0E0E000E0E0E000A1A9D3004E62AF003E54
      A7008991CC00D3D6DC00F1F1F100F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E6E6E600E1E1E100FCFCFC000000000000000000FCFCFC00EAEA
      EA00EDEDED00F7F7F700F8F8F800F1F1F100EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00E7E7E800C9C9D300A1A1B10086869700BFBF
      C600BABABA009F9F9F009494940067789F000D1E880000056C0000036000212E
      8D00BFC6E100F7F7F800F8F8F800F4F4F400E0E0E000ECECEC00000000000000
      000000000000F9FCF900ABD7B900249E540000923E0000923E0000923D000092
      3D0000913D0000913D00008C34001998660072A8920081AE9D007DAB9B007AA8
      970078A795007AA896007CAB99007FAE9B007FAF9C007DAE9A0069A48E001492
      5F0000852C0000872E0000862D0000862D0000842A0000842900008229000687
      2E0054A26B00DAE2DB0000000000000000000000000000000000000000000000
      000000000000D2D2D20000000000F5F5F500C9DAD10046775E0006421400033B
      0E00033B0E00054012002A654B009FAAA300D5D5D500D4D4D400EDEDED00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EAEAEA00DCDCDC00F9F9
      F90000000000000000000000000000000000E9E9F2005C67AB0008168E00000C
      8D00182B9800737EB800C3C6D100D9D9D900A7ADCA002B439A0003118F00010D
      8D001D319800858CBE00EEEEEE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E7E7E700E3E3E300FCFCFC000000000000000000FCFCFC00EAEA
      EA00EDEDED00F7F7F700F8F8F800E3E3E300C9C9C900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00C9C9C900DDDDDD00E4E4E6007C7C97009F9F
      A800B9B9BC00C0C4CA005770A8000C218C00000F860000077200071172007383
      C000EDEEF400F8F8F800F8F8F800F4F4F400E0E0E000ECECEC00000000000000
      000000000000F9FCF900ABD9B90024A157000095410000944100009441000094
      40000093400000923B001F9C6F00A6C5BA00E5EAE700DCE0DF00D1D5D400C5C9
      C600C0C4C200C5CCC600CFD7D100D5E1D700D9E5DB00D6E2D900C6D5CC00A5B6
      AE000C8C550000893100008A3200008A320000882F0000882E0000862E00068B
      320054A76E00DAE2DB0000000000000000000000000000000000000000000000
      000000000000D2D2D20000000000F5F5F500CBDBD100477B6200064B18000445
      110004451100064A1600326E5400B4C5BB00F1F1F100F1F1F100F4F4F400F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EAEAEA00DCDCDC00F9F9
      F900000000000000000000000000ECECF5008488C300151F9600000A9300000B
      9400000E9600162E9F00828DCF00B4BDE3001F3DA200000F9600000A93000009
      9000000C9000162EA100ACB9E600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E7E7E700E3E3E300FCFCFC000000000000000000FCFCFC00EAEA
      EA00EDEDED00F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F8009696
      AA00767F9D002645980000198E00001E9B0000159100000A6E004A5DAF00EFF1
      F500F8F8F800F8F8F800F8F8F800F4F4F400E0E0E000ECECEC00000000000000
      000000000000F9FCFB00ABD9BC0024A159000196440001964400009644000095
      44000095410004964D0082B8A100EBF1EE00F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED90058978600004313003A8B6900B5C4BC00C2C7
      C200A5ACA80000852C00008C3500008C3400008B3200008A3200008A3100068E
      390054AA7200DAE2DB0000000000000000000000000000000000000000000000
      0000FEFEFE00CED1D10000000000F2F5F200C8DDCF00497F650007521B00054E
      1500054E150007521A0035725800B5C9BD00F2F5F200F2F5F200F2F5F200F2F5
      F200F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EBEBEB00DEDEDE00F9F9
      F900000000000000000000000000BBBEE0002B34A200010D9600000D9900000E
      9A00000E9C0000109D000B259D0008209A0000109D00000E9C00000D9A00000C
      9800000B9500000C96002550B200F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E8E8E800E3E3E300FCFCFC000000000000000000FCFCFC00ECEC
      EC00EDEDED00F7F7F700F8F8F800F8F8F800F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700BDCA
      E4001D399F000520960003269F0000199100030D6F004155A800EDEFF400F8F8
      F800F8F8F800F8F8F800F8F8F800F4F4F400E4E4E400EDEDED00000000000000
      000000000000F9FCFB00ABD9BD0024A35C000198460001984600019846000197
      460001974400139E69009DC5B600F0F4F300F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED90000481100004B1100046F2F0085AB9E00BCC2
      BE00B0B1B000048C4400008D3500008E3700008E3700008D3700008D35000690
      3D0054AC7500DAE2DB000000000000000000000000000000000000000000C4D4
      C7003973460007501800055218000553190005541A00065A1C0005561A000555
      1A0005551A0005561A0006581B00055419000552180005511800054F1700115C
      2800849B8D00E6E6E600E4E4E400E4E4E400E4E4E400E4E4E400E3E3E300E6E6
      E600EEEEEE00F5F5F500F5F5F500F5F5F500F5F5F500EBEBEB00DEDEDE00F9F9
      F900000000000000000000000000D7D8EB005C64B6000B1B9B0000129F000013
      A1000015A1000016A2000017A3000016A2000015A2000013A10000119F000010
      9E0001139E001636A600A0A9DA00E8E8E800E8E8E800E7E7E700E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E7E7E700EFEFEF00F7F7F700F7F7F700F7F7
      F700F7F7F700E8E8E800E3E3E300FCFCFC000000000000000000FCFCFC00ECEC
      EC00EDEDED00F7F7F700F8F8F800F2F2F200E8E8E800E8E8E800EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00E4E4
      E80093A1CC0029449C00112186001A2686006574B100DDE0E400EEEEEE00F7F7
      F700F8F8F800F8F8F800F8F8F800F4F4F400E4E4E400EDEDED00000000000000
      000000000000F9FCFB00ABDABF0025A66100019B4A00019A4800019A4800019A
      48000199480013A06C009EC7B600F0F5F300F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED900005C1600005C1600067C3A0087AEA100BCC2
      BE00B0B1B00008925300008F37000090380000913B0000913A00009038000694
      420055AF7B00DAE2DC000000000000000000000000000000000000000000B7CC
      BC00296939000554190005561A0006581C00065A1D00065C1E00065D1F00065D
      1F00065E1F00065E1F00065E1F00065D1E00065B1D0006591D0006581C000A5A
      200065887500D7D7D700D5D5D500D5D5D500D5D5D500D5D5D500D4D4D400D7D7
      D700E6E6E600F4F4F400F5F5F500F5F5F500F5F5F500EBEBEB00DFDFDF00F9F9
      F900000000000000000000000000FDFDFE00CBCCE6004151A900021CA100011C
      A700011DA900011FAA00011FAA00011EA900011DA900011CA7000019A500041F
      A7002550BB008D99D100D9D9D900D9D9D900D9D9D900D7D7D700D6D6D600D6D6
      D600D6D6D600D6D6D600D4D4D400D7D7D700E7E7E700F5F5F500F7F7F700F7F7
      F700F7F7F700E8E8E800E3E3E300FCFCFC000000000000000000FCFCFC00EDED
      ED00EFEFEF00F7F7F700F8F8F800EBEBEB00DDDDDD00DDDDDD00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000D9DADD00AFB6CD008993BC00AAB1C900DDDDDD00DDDDDD00E6E6E600F5F5
      F500F8F8F800F8F8F800F8F8F800F4F4F400E4E4E400EDEDED00000000000000
      000000000000F9FCFB00ABD9BD0026A66400029C4E00029C4D00029C4D00019C
      4D00019B4D0015A171009FC9B800F0F5F300F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED900006C1C00006E1D00098644008AB0A300BDC3
      BE00B0B1B0000993580000913B0000913B0000933E0000933E0000923E000796
      4A0059B38400DBE6DD000000000000000000000000000000000000000000B8CE
      BD002A713E00065D1F0007612100076222000764240007652500076526000765
      2700076527000765270007652600076525000764240007622200066121000B62
      27006F937F00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EDEDED00E1E1E100F9F9
      F90000000000000000000000000000000000FDFDFF00A4AAC2003B5AB2000427
      A9000229B400022BB400022BB600022BB2000229B2000226B100042AB1002A5D
      C4008D9EE300E8EDF500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E8E8E800E5E5E500FCFCFC000000000000000000FCFCFC00EDED
      ED00F0F0F000F8F8F800F8F8F800F5F5F500F1F1F100F1F1F100F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100F4F4F400F7F7
      F700F8F8F800F8F8F800F8F8F800F4F4F400E4E4E400EEEEEE00000000000000
      000000000000FAFCFB00B3DAC0002DA86900029E5200029D4F00029D4F00029D
      4F00029C4F0016A37400A0CAB900F0F5F300F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED900007B2300007C24000B8D4E008BB2A400BDC3
      BE00B0B1B00009955A0000933E0000923D0000933E0000944100009341000B98
      530068BA9000E7F0E9000000000000000000000000000000000000000000B8D0
      BF002B7943000767270008692A00086B2A00086B2B00086C2E00086C2F00086C
      2F00086C2F00086C2F00086C2E00086B2C00086B2B00086A2A00076828000C68
      2E0071958100F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EDEDED00E3E3E300F9F9
      F9000000000000000000000000000000000000000000D7D7D900969FDF000834
      A7000438BE000439BE000439C0000338BE000336BD000334BB00093FBD005D7D
      D600D0D7F100F5F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E8E8E800E6E6E600FCFCFC000000000000000000FCFCFC00EDED
      ED00F0F0F000F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F4F4F400E7E7E700F0F0F000000000000000
      000000000000FEFEFE00D3EADB0049B17C00069E5700029E5300029E5200029E
      5200029E510016A37500A1CCB900F0F5F300F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED90000862C0000872D000D9356008DB5A600BDC3
      BE00B0B1B0000A985D0000944100009341000093400001964400019746001CA3
      74008AC19D00FAFCFA000000000000000000000000000000000000000000B9D3
      C2002F80570011734400117646001376490014774A00117645000B723C000A71
      38000A7138000B713B000E74420011764500107444000D7241000C723D001270
      41006E8D7C00C5C5C500C5C5C500C3C3C300C2C2C200C2C2C200BEBEBE00BDBD
      BD00BABABA00B7B7B70092929200F5F5F500F5F5F500EDEDED00E3E3E300F9F9
      F9000000000000000000000000000000000000000000B2B5CB002867C0000641
      C0000543C7000545C9000546CA000545CA000543C7000440C4000640C4001E61
      C6007B8DC600BEC0C700C7C7C700C7C7C700C7C7C700C7C7C700C6C6C600C6C6
      C600C3C3C300C3C3C300C0C0C000C0C0C000BDBDBD00B9B9B900A0A0A000F7F7
      F700F7F7F700E8E8E800E6E6E600FCFCFC000000000000000000FCFCFC00EDED
      ED00F0F0F000F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F4F4F400E7E7E700F0F0F000000000000000
      00000000000000000000EFF7F10089C9A8001BA46C0004A05900029F5500029F
      5200029F520017A47700A1CCBA00F0F5F400F4F4F400E7E7E700DBDBDB00CFCF
      CF00C7C9C700CFD2CF00D9DED9000E9C6900008E37001F9D6E00A2BFB100BFC5
      C000B0B1B0000B9A6000019644000095430000934000019544001CA8870033A0
      6300D2E6D800000000000000000000000000000000000000000000000000F1F6
      F200D0DED3009DADA40099C0A70091B79F0088AC9400518A6D0016784C001076
      47001076470013784A00418062007EA08B0092B8A00092B89F0092B79F009FC2
      AC00DDE6E300F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500E8E8E800E7E7E700FCFC
      FC0000000000000000000000000000000000E8E8F4004369BC00054ACC00064E
      CD000652D0000756D3000757D4000656D1000652D100064ED0000547CA000545
      C9001C62CC00A1C0EB00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E7E7E700E7E7E700FBFBFB000000000000000000FCFCFC00EDED
      ED00EFEFEF00F8F8F800F8F8F800E4E4E400CDCDCD00CFCFCF00D0D0D000D1D1
      D100D1D1D100D1D1D100D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D3D3D300D1D1D100D1D1D100D1D1D100CFCFCF00C7C7
      C700C9C9C900EEEEEE00F8F8F800F4F4F400E6E6E600F1F1F100000000000000
      0000000000000000000000000000D7EBDD0060BD90001CA87F000CA46F0007A3
      630005A15D001CA67D00A3CFBB00EEF3F100F1F1F100E6E6E600DADADA00CDCD
      CD00C7C9C700CDD1CD00D7DCD700C7DBCF00AAC1B400BDD4C400D2DBD400C2C7
      C200B0B1B000109C6900039A4E00049B52000A9F630025A8880021A57300A3D1
      B100000000000000000000000000000000000000000000000000000000000000
      000000000000EEEEEE00E1E1E100F7F7F700D5E7DE006DA18400227D59001B7B
      53001B7B5300207D55005C917400BAD5C600F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500EFEFEF00E1E1E100E8E8E800FCFC
      FC00000000000000000000000000E2E5F3006784CA001052CB000656D300075E
      D6000762D9000963DC000B63D9000A62D7000862DA00075ED7000757D100064E
      CD00064ACC002266CF00D6DFF200F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F1F1F100E5E5E500EEEEEE00FEFEFE00000000000000000000000000F0F0
      F000ECECEC00F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F0F0F000E4E4E400F7F7F700000000000000
      0000000000000000000000000000FDFEFE00CBE7D4006BC1990038B0900023AC
      8A001FAA870046AF9600AAC7BC00DDE1E000E2E2E200DBDBDB00D2D2D200CCCC
      CC00CACACA00CCCDCC00D2D5D200D7DBD700DADEDA00D9DDD900D2D7D200C5C9
      C500BABCBA0045AB930021A9860021AA870035AF92004FB78E009DD1AD00FAFD
      FB00000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00E1E1E100ECECEC00D7E8E00074A68A00378462002C81
      5E002C815E003283600062957900BAD7C600F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F2F2F200E6E6E600DFDFDF00F6F6F600FEFE
      FE00000000000000000000000000C8CFE800446EC8000C5CD2000862DA000966
      DF000A69DF00126BDF003475DA00306ED3000D66DA000A68DF000862DA00075C
      D7000957D1001F62D000AFC0EB00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F2F2
      F200E5E5E500E2E2E200F7F7F70000000000000000000000000000000000F8F8
      F800EAEAEA00F0F0F000FBFBFB00F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F4F4F400E1E1E100E9E9E900FCFCFC00000000000000
      000000000000000000000000000000000000FDFEFE00E1F2E700AADBC00085CF
      B70076C9B2008ACDBA00C7D9D200E3E4E300E5E5E500E5E5E500E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E5E5E500E5E5E500E4E5E400E4E4E400E4E4
      E400E2E2E2008FCBBB007DCAB5007DCCB50097D5BB00CAE8D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E7E7E700CDDFD50079A88C00468A6A004188
      66004188660044896800679B7D00BAD8C600F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F2F2F200EDEDED00E6E6E600DFDFDF00F1F1F100FEFEFE000000
      0000000000000000000000000000ECEFF8009AAFDC003174D0000C6BE1000B6B
      E1001670DF004A7DDD0093A7E700A1ADE6004775D600116BD9000C6AE0000C68
      DD002A70DA008398E400EDEFF400F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F4F4F400EDEDED00E3E3
      E300E1E1E100F1F1F100FEFEFE0000000000000000000000000000000000FEFE
      FE00F4F4F400E8E8E800F1F1F100FBFBFB00F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F8F8F800F1F1F100D7D7D700E6E6E600F8F8F80000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFEFC00ECF7
      F000E4F4EB00E6F5EE00F1F9F600FBFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00E4F5EE00E4F4EB00E7F5ED00F3FAF600FDFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800D8E4DC0086AD9700508E6F004B8C
      6C004B8B6B004C8D6D00709E8400B6CDC000E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E7E7E700E7E7E700EAEAEA00F5F5F500FCFCFC00000000000000
      0000000000000000000000000000FEFEFF00EEF1F800A4BAE2002871D1002977
      E2005D90DF00ABB7E300D9DDE900E5E7E800B4BBE1005C8BD1002573D9003D80
      DD008DA2DD00D4D9E700EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00E9E9E900E8E8E800EAEA
      EA00F7F7F700FCFCFC0000000000000000000000000000000000000000000000
      000000000000F7F7F700EBEBEB00E0E0E000E8E8E800EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00DEDEDE00D9D9D900EBEBEB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F8F700CEDFD800A2C8B9009AC4
      B3009AC3B3009EC6B600C2D7CD00EDF0EE00F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600FBFBFB00FCFCFC000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6FB00BDCAEB007E99
      DA00C9D6EE00F2F3F800F6F6F600F7F7F700F5F7F700DDE2F200ADC3EA00BFD2
      F000E8EBF500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F6F6F600FBFBFB00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F4F4F400F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F7F7F7000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000900000006C0000000100010000000000700800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      FFE0007FF0000000000000000000000000000000FF80001FF000000000000000
      0000000000000000FE00000FF0000000000000000000000000000000FE000003
      F0000000000000000000000000000000FC000003F00000000000000000000000
      00000000F8000003F0000000000000000000000000000000E0000000F0000000
      000000000000000000000000C000200070000000000000000000000000000000
      C003E00030000000000000000000000000000000800FE0003000000000000000
      0000000000000000800FE00010000000000000000000000000000000803FC000
      10000000000000000000000000000000807E0000000000000000000000000000
      00000000807C00000000000000000000000000000000000080F8000000000000
      00000000000000000000000080F8000000000000000000000000000000000000
      80F800300000000000000000000000000000000081F000F00000000000000000
      0000000000000000808000F000000000000000000000000000000000800001F0
      00000000000000000000000000000000800003E0000000000000000000000000
      00000000800007E00000000000000000000000000000000080000FC000000000
      00000000000000000000000080003FC010000000000000000000000000000000
      80003F801000000000000000000000000000000080007F001000000000000000
      00000000000000008000FC0030000000000000000000000000000000C000F000
      30000000000000000000000000000000E0000000700000000000000000000000
      00000000F8000001F0000000000000000000000000000000FC000003F0000000
      000000000000000000000000FE000003F0000000000000000000000000000000
      FE000007F0000000000000000000000000000000FF00000FF000000000000000
      0000000000000000FFC0003FF0000000000000000000000000000000FFFFFFFF
      F0000000000000000000000000000000FB80017FFFFFFFFCFFFE000007FFE000
      007F0000E000001FFFC000003FFC000003FFC000003F0000E000000FFF000000
      1FFC000001FF8000001F0000E0000003FE0000000FF8000000FF8000000F0000
      E0000003FC00000007F8000000FF8000000F0000E0000003FC00000007FA0000
      007F800000070000C0000001F800000003FA0000003F800000030000C0000000
      F800000003FA0000001F800000010000C00000007800000003FA0000001F8000
      00010000C00000007800000003FA0000001FA00000000000C000000078000000
      03FA0000000FA00000000000C00000007800000003FA0000000FA00000000000
      C00000003800000003FA0000000FA00000000000C00000003800000003FA0000
      000FA00000000000C00000003800000003FA0000000FA00000000000C0000000
      3800000003FA0000000FA00000000000C00000003800000003FA0000000FA000
      00000000C00000003800000003FA0000000FA00000000000C000000038000000
      03FA0000000FA00000000000C00000003800000003FA0000000F800000000000
      C00000003800000003FA0000000F800000000000C00000003800000003FA0000
      000F000000000000C00000003800000003FA0000000E000000000000C0000000
      3800000003F20000000E000000000000C00000003800000003E00000000E0000
      00000000C00000003800000003E00000000E000000000000C000000038000000
      03E00000000F000000000000C00000003800000003E00000000F800000000000
      C00000003800000003E00000000F800000000000C00000003C00000007E00000
      000F000000000000C00000003E0000000FF80000000E000000000000E0000000
      3E0000000FF80000000E000000010000E00000003F0000003FFC0000001E0000
      00010000E00000007FC000003FFE0000003E000000030000F8000000FFFFFFFF
      FFFF000000FF800000070000FE000007FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000000000000000000000000000000000}
  end
  object cad_cli_grp: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_grpAfterCancel
    AfterDelete = cad_cli_grpAfterDelete
    AfterEdit = cad_cli_grpAfterEdit
    AfterInsert = cad_cli_grpAfterEdit
    AfterPost = cad_cli_grpAfterPost
    BeforeCancel = cad_cli_grpBeforeCancel
    BeforeDelete = cad_cli_grpBeforeDelete
    BeforePost = cad_cli_grpBeforePost
    OnNewRecord = cad_cli_grpNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_GRP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_GRP'
      
        '  (CLI_CCLI, CLI_CCOL, CLI_CGRP, CLI_DCAD, CLI_DCOL, CLI_DGRP, C' +
        'LI_DUSU, '
      '   CLI_PDSC, CLI_RGRP, CLI_VDSC, ID)'
      'values'
      
        '  (:CLI_CCLI, :CLI_CCOL, :CLI_CGRP, :CLI_DCAD, :CLI_DCOL, :CLI_D' +
        'GRP, :CLI_DUSU, '
      '   :CLI_PDSC, :CLI_RGRP, :CLI_VDSC, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CCLI,'
      '  CLI_CGRP,'
      '  CLI_RGRP,'
      '  CLI_DGRP,'
      '  CLI_CCOL,'
      '  CLI_DCOL,'
      '  CLI_VDSC,'
      '  CLI_PDSC,'
      '  CLI_DUSU,'
      '  CLI_DCAD'
      'from CAD_CLI_GRP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_GRP')
    ModifySQL.Strings = (
      'update CAD_CLI_GRP'
      'set'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CCOL = :CLI_CCOL,'
      '  CLI_CGRP = :CLI_CGRP,'
      '  CLI_DCAD = :CLI_DCAD,'
      '  CLI_DCOL = :CLI_DCOL,'
      '  CLI_DGRP = :CLI_DGRP,'
      '  CLI_DUSU = :CLI_DUSU,'
      '  CLI_PDSC = :CLI_PDSC,'
      '  CLI_RGRP = :CLI_RGRP,'
      '  CLI_VDSC = :CLI_VDSC,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 488
    object cad_cli_grpID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_GRP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_grpCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_GRP"."CLI_CCLI"'
    end
    object cad_cli_grpCLI_CGRP: TIntegerField
      FieldName = 'CLI_CGRP'
      Origin = '"CAD_CLI_GRP"."CLI_CGRP"'
    end
    object cad_cli_grpCLI_RGRP: TIBStringField
      DisplayLabel = 'Referencia Grupo'
      FieldName = 'CLI_RGRP'
      Origin = '"CAD_CLI_GRP"."CLI_RGRP"'
      Size = 5
    end
    object cad_cli_grpCLI_DGRP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o Grupo'
      FieldName = 'CLI_DGRP'
      Origin = '"CAD_CLI_GRP"."CLI_DGRP"'
      Size = 30
    end
    object cad_cli_grpCLI_CCOL: TIntegerField
      FieldName = 'CLI_CCOL'
      Origin = '"CAD_CLI_GRP"."CLI_CCOL"'
    end
    object cad_cli_grpCLI_DCOL: TIBStringField
      DisplayLabel = 'Descri'#231#227'o Cole'#231#227'o'
      FieldName = 'CLI_DCOL'
      Origin = '"CAD_CLI_GRP"."CLI_DCOL"'
      Size = 30
    end
    object cad_cli_grpCLI_VDSC: TIBBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'CLI_VDSC'
      Origin = '"CAD_CLI_GRP"."CLI_VDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cad_cli_grpCLI_PDSC: TIBBCDField
      DisplayLabel = '% Desconto'
      FieldName = 'CLI_PDSC'
      Origin = '"CAD_CLI_GRP"."CLI_PDSC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cad_cli_grpCLI_DUSU: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'CLI_DUSU'
      Origin = '"CAD_CLI_GRP"."CLI_DUSU"'
      Size = 15
    end
    object cad_cli_grpCLI_DCAD: TDateTimeField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_GRP"."CLI_DCAD"'
    end
    object cad_cli_grpCLI_PREC: TIBBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'CLI_PREC'
      Origin = '"CAD_CLI_GRP"."CLI_PREC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
  end
  object dtscad_cli_grp: TDataSource
    DataSet = cad_cli_grp
    Left = 568
    Top = 520
  end
  object cad_cli: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_CLI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI'
      
        '  (CLI_BAI, CLI_BAIC, CLI_BAIV, CLI_CCEL, CLI_CCM, CLI_CCON, CLI' +
        '_CDD2, '
      
        '   CLI_CDD3, CLI_CDD4, CLI_CDD5, CLI_CDD6, CLI_CDDD, CLI_CEL, CL' +
        'I_CEP, '
      
        '   CLI_CEPC, CLI_CEPV, CLI_CFAX, CLI_CICM, CLI_CID, CLI_CIDC, CL' +
        'I_CIDV, '
      
        '   CLI_CMAI, CLI_CMUC, CLI_CMUN, CLI_CMUV, CLI_CNCE, CLI_CNID, C' +
        'LI_CNPJ, '
      
        '   CLI_COMC, CLI_COMP, CLI_COMV, CLI_CONT, CLI_CPAG, CLI_CPF, CL' +
        'I_CRED, '
      
        '   CLI_CREP, CLI_CTC1, CLI_CTC2, CLI_CTE1, CLI_CTE2, CLI_CTE3, C' +
        'LI_CTRA, '
      
        '   CLI_CVEN, CLI_DALT, CLI_DCAD, CLI_DD2, CLI_DD3, CLI_DD4, CLI_' +
        'DD5, CLI_DD6, '
      
        '   CLI_DDD, CLI_DFUN, CLI_DPAG, CLI_DTRA, CLI_DULT, CLI_DUSU, CL' +
        'I_ESTA, '
      
        '   CLI_ESTC, CLI_ESTV, CLI_FANT, CLI_FAX, CLI_FCEL, CLI_FCON, CL' +
        'I_FDD2, '
      
        '   CLI_FDD3, CLI_FDD4, CLI_FDD5, CLI_FDD6, CLI_FDDD, CLI_FFAX, C' +
        'LI_FMAI, '
      
        '   CLI_FNCE, CLI_FNID, CLI_FTC1, CLI_FTC2, CLI_FTE1, CLI_FTE2, C' +
        'LI_FTE3, '
      
        '   CLI_IMUN, CLI_INSC, CLI_LOGC, CLI_LOGR, CLI_LOGV, CLI_MAIL, C' +
        'LI_NCEL, '
      
        '   CLI_NEID, CLI_NUMC, CLI_NUME, CLI_NUMV, CLI_OBSE, CLI_OBSO, C' +
        'LI_RAMO, '
      
        '   CLI_RAZA, CLI_REGI, CLI_REVE, CLI_RG, CLI_RICM, CLI_SITE, CLI' +
        '_STA, CLI_STAV, '
      
        '   CLI_STPD, CLI_TCE1, CLI_TCE2, CLI_TEL1, CLI_TEL2, CLI_TEL3, C' +
        'LI_TLOC, '
      '   CLI_TLOG, CLI_TLOV, CLI_TPVE, CLI_VDSC, CLI_VULT, ID)'
      'values'
      
        '  (:CLI_BAI, :CLI_BAIC, :CLI_BAIV, :CLI_CCEL, :CLI_CCM, :CLI_CCO' +
        'N, :CLI_CDD2, '
      
        '   :CLI_CDD3, :CLI_CDD4, :CLI_CDD5, :CLI_CDD6, :CLI_CDDD, :CLI_C' +
        'EL, :CLI_CEP, '
      
        '   :CLI_CEPC, :CLI_CEPV, :CLI_CFAX, :CLI_CICM, :CLI_CID, :CLI_CI' +
        'DC, :CLI_CIDV, '
      
        '   :CLI_CMAI, :CLI_CMUC, :CLI_CMUN, :CLI_CMUV, :CLI_CNCE, :CLI_C' +
        'NID, :CLI_CNPJ, '
      
        '   :CLI_COMC, :CLI_COMP, :CLI_COMV, :CLI_CONT, :CLI_CPAG, :CLI_C' +
        'PF, :CLI_CRED, '
      
        '   :CLI_CREP, :CLI_CTC1, :CLI_CTC2, :CLI_CTE1, :CLI_CTE2, :CLI_C' +
        'TE3, :CLI_CTRA, '
      
        '   :CLI_CVEN, :CLI_DALT, :CLI_DCAD, :CLI_DD2, :CLI_DD3, :CLI_DD4' +
        ', :CLI_DD5, '
      
        '   :CLI_DD6, :CLI_DDD, :CLI_DFUN, :CLI_DPAG, :CLI_DTRA, :CLI_DUL' +
        'T, :CLI_DUSU, '
      
        '   :CLI_ESTA, :CLI_ESTC, :CLI_ESTV, :CLI_FANT, :CLI_FAX, :CLI_FC' +
        'EL, :CLI_FCON, '
      
        '   :CLI_FDD2, :CLI_FDD3, :CLI_FDD4, :CLI_FDD5, :CLI_FDD6, :CLI_F' +
        'DDD, :CLI_FFAX, '
      
        '   :CLI_FMAI, :CLI_FNCE, :CLI_FNID, :CLI_FTC1, :CLI_FTC2, :CLI_F' +
        'TE1, :CLI_FTE2, '
      
        '   :CLI_FTE3, :CLI_IMUN, :CLI_INSC, :CLI_LOGC, :CLI_LOGR, :CLI_L' +
        'OGV, :CLI_MAIL, '
      
        '   :CLI_NCEL, :CLI_NEID, :CLI_NUMC, :CLI_NUME, :CLI_NUMV, :CLI_O' +
        'BSE, :CLI_OBSO, '
      
        '   :CLI_RAMO, :CLI_RAZA, :CLI_REGI, :CLI_REVE, :CLI_RG, :CLI_RIC' +
        'M, :CLI_SITE, '
      
        '   :CLI_STA, :CLI_STAV, :CLI_STPD, :CLI_TCE1, :CLI_TCE2, :CLI_TE' +
        'L1, :CLI_TEL2, '
      
        '   :CLI_TEL3, :CLI_TLOC, :CLI_TLOG, :CLI_TLOV, :CLI_TPVE, :CLI_V' +
        'DSC, :CLI_VULT, '
      '   :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_RAZA,'
      '  CLI_FANT,'
      '  CLI_CONT,'
      '  CLI_DCAD,'
      '  CLI_STA,'
      '  CLI_MAIL,'
      '  CLI_DDD,'
      '  CLI_TEL1,'
      '  CLI_TEL2,'
      '  CLI_FAX,'
      '  CLI_CEL,'
      '  CLI_RG,'
      '  CLI_CPF,'
      '  CLI_INSC,'
      '  CLI_CNPJ,'
      '  CLI_TLOG,'
      '  CLI_LOGR,'
      '  CLI_CEP,'
      '  CLI_NUME,'
      '  CLI_COMP,'
      '  CLI_BAI,'
      '  CLI_CID,'
      '  CLI_ESTA,'
      '  CLI_TLOC,'
      '  CLI_LOGC,'
      '  CLI_CEPC,'
      '  CLI_NUMC,'
      '  CLI_COMC,'
      '  CLI_BAIC,'
      '  CLI_CIDC,'
      '  CLI_ESTC,'
      '  CLI_OBSO,'
      '  CLI_STAV,'
      '  CLI_VULT,'
      '  CLI_TPVE,'
      '  CLI_OBSE,'
      '  CLI_TLOV,'
      '  CLI_LOGV,'
      '  CLI_CEPV,'
      '  CLI_NUMV,'
      '  CLI_COMV,'
      '  CLI_BAIV,'
      '  CLI_CIDV,'
      '  CLI_ESTV,'
      '  CLI_RICM,'
      '  CLI_CPAG,'
      '  CLI_DPAG,'
      '  CLI_CMUN,'
      '  CLI_DALT,'
      '  CLI_CTRA,'
      '  CLI_DTRA,'
      '  CLI_DFUN,'
      '  CLI_CICM,'
      '  CLI_RAMO,'
      '  CLI_CMUV,'
      '  CLI_CMUC,'
      '  CLI_DD2,'
      '  CLI_DD3,'
      '  CLI_DD4,'
      '  CLI_DD5,'
      '  CLI_DD6,'
      '  CLI_TEL3,'
      '  CLI_TCE1,'
      '  CLI_TCE2,'
      '  CLI_NCEL,'
      '  CLI_NEID,'
      '  CLI_FCON,'
      '  CLI_FMAI,'
      '  CLI_FDDD,'
      '  CLI_FTE1,'
      '  CLI_FDD2,'
      '  CLI_FTE2,'
      '  CLI_FDD3,'
      '  CLI_FTE3,'
      '  CLI_FDD4,'
      '  CLI_FFAX,'
      '  CLI_FDD5,'
      '  CLI_FCEL,'
      '  CLI_FTC1,'
      '  CLI_FDD6,'
      '  CLI_FNCE,'
      '  CLI_FTC2,'
      '  CLI_FNID,'
      '  CLI_CCON,'
      '  CLI_CMAI,'
      '  CLI_CDDD,'
      '  CLI_CTE1,'
      '  CLI_CDD2,'
      '  CLI_CTE2,'
      '  CLI_CDD3,'
      '  CLI_CTE3,'
      '  CLI_CDD4,'
      '  CLI_CFAX,'
      '  CLI_CDD5,'
      '  CLI_CCEL,'
      '  CLI_CTC1,'
      '  CLI_CDD6,'
      '  CLI_CNCE,'
      '  CLI_CTC2,'
      '  CLI_CNID,'
      '  CLI_VDSC,'
      '  CLI_CRED,'
      '  CLI_SITE,'
      '  CLI_REVE,'
      '  CLI_IMUN,'
      '  CLI_CCM,'
      '  CLI_DULT,'
      '  CLI_REGI,'
      '  CLI_CVEN,'
      '  CLI_CREP,'
      '  CLI_DUSU,'
      '  CLI_STPD'
      'from CAD_CLI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI')
    ModifySQL.Strings = (
      'update CAD_CLI'
      'set'
      '  CLI_BAI = :CLI_BAI,'
      '  CLI_BAIC = :CLI_BAIC,'
      '  CLI_BAIV = :CLI_BAIV,'
      '  CLI_CCEL = :CLI_CCEL,'
      '  CLI_CCM = :CLI_CCM,'
      '  CLI_CCON = :CLI_CCON,'
      '  CLI_CDD2 = :CLI_CDD2,'
      '  CLI_CDD3 = :CLI_CDD3,'
      '  CLI_CDD4 = :CLI_CDD4,'
      '  CLI_CDD5 = :CLI_CDD5,'
      '  CLI_CDD6 = :CLI_CDD6,'
      '  CLI_CDDD = :CLI_CDDD,'
      '  CLI_CEL = :CLI_CEL,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CEPC = :CLI_CEPC,'
      '  CLI_CEPV = :CLI_CEPV,'
      '  CLI_CFAX = :CLI_CFAX,'
      '  CLI_CICM = :CLI_CICM,'
      '  CLI_CID = :CLI_CID,'
      '  CLI_CIDC = :CLI_CIDC,'
      '  CLI_CIDV = :CLI_CIDV,'
      '  CLI_CMAI = :CLI_CMAI,'
      '  CLI_CMUC = :CLI_CMUC,'
      '  CLI_CMUN = :CLI_CMUN,'
      '  CLI_CMUV = :CLI_CMUV,'
      '  CLI_CNCE = :CLI_CNCE,'
      '  CLI_CNID = :CLI_CNID,'
      '  CLI_CNPJ = :CLI_CNPJ,'
      '  CLI_COMC = :CLI_COMC,'
      '  CLI_COMP = :CLI_COMP,'
      '  CLI_COMV = :CLI_COMV,'
      '  CLI_CONT = :CLI_CONT,'
      '  CLI_CPAG = :CLI_CPAG,'
      '  CLI_CPF = :CLI_CPF,'
      '  CLI_CRED = :CLI_CRED,'
      '  CLI_CREP = :CLI_CREP,'
      '  CLI_CTC1 = :CLI_CTC1,'
      '  CLI_CTC2 = :CLI_CTC2,'
      '  CLI_CTE1 = :CLI_CTE1,'
      '  CLI_CTE2 = :CLI_CTE2,'
      '  CLI_CTE3 = :CLI_CTE3,'
      '  CLI_CTRA = :CLI_CTRA,'
      '  CLI_CVEN = :CLI_CVEN,'
      '  CLI_DALT = :CLI_DALT,'
      '  CLI_DCAD = :CLI_DCAD,'
      '  CLI_DD2 = :CLI_DD2,'
      '  CLI_DD3 = :CLI_DD3,'
      '  CLI_DD4 = :CLI_DD4,'
      '  CLI_DD5 = :CLI_DD5,'
      '  CLI_DD6 = :CLI_DD6,'
      '  CLI_DDD = :CLI_DDD,'
      '  CLI_DFUN = :CLI_DFUN,'
      '  CLI_DPAG = :CLI_DPAG,'
      '  CLI_DTRA = :CLI_DTRA,'
      '  CLI_DULT = :CLI_DULT,'
      '  CLI_DUSU = :CLI_DUSU,'
      '  CLI_ESTA = :CLI_ESTA,'
      '  CLI_ESTC = :CLI_ESTC,'
      '  CLI_ESTV = :CLI_ESTV,'
      '  CLI_FANT = :CLI_FANT,'
      '  CLI_FAX = :CLI_FAX,'
      '  CLI_FCEL = :CLI_FCEL,'
      '  CLI_FCON = :CLI_FCON,'
      '  CLI_FDD2 = :CLI_FDD2,'
      '  CLI_FDD3 = :CLI_FDD3,'
      '  CLI_FDD4 = :CLI_FDD4,'
      '  CLI_FDD5 = :CLI_FDD5,'
      '  CLI_FDD6 = :CLI_FDD6,'
      '  CLI_FDDD = :CLI_FDDD,'
      '  CLI_FFAX = :CLI_FFAX,'
      '  CLI_FMAI = :CLI_FMAI,'
      '  CLI_FNCE = :CLI_FNCE,'
      '  CLI_FNID = :CLI_FNID,'
      '  CLI_FTC1 = :CLI_FTC1,'
      '  CLI_FTC2 = :CLI_FTC2,'
      '  CLI_FTE1 = :CLI_FTE1,'
      '  CLI_FTE2 = :CLI_FTE2,'
      '  CLI_FTE3 = :CLI_FTE3,'
      '  CLI_IMUN = :CLI_IMUN,'
      '  CLI_INSC = :CLI_INSC,'
      '  CLI_LOGC = :CLI_LOGC,'
      '  CLI_LOGR = :CLI_LOGR,'
      '  CLI_LOGV = :CLI_LOGV,'
      '  CLI_MAIL = :CLI_MAIL,'
      '  CLI_NCEL = :CLI_NCEL,'
      '  CLI_NEID = :CLI_NEID,'
      '  CLI_NUMC = :CLI_NUMC,'
      '  CLI_NUME = :CLI_NUME,'
      '  CLI_NUMV = :CLI_NUMV,'
      '  CLI_OBSE = :CLI_OBSE,'
      '  CLI_OBSO = :CLI_OBSO,'
      '  CLI_RAMO = :CLI_RAMO,'
      '  CLI_RAZA = :CLI_RAZA,'
      '  CLI_REGI = :CLI_REGI,'
      '  CLI_REVE = :CLI_REVE,'
      '  CLI_RG = :CLI_RG,'
      '  CLI_RICM = :CLI_RICM,'
      '  CLI_SITE = :CLI_SITE,'
      '  CLI_STA = :CLI_STA,'
      '  CLI_STAV = :CLI_STAV,'
      '  CLI_STPD = :CLI_STPD,'
      '  CLI_TCE1 = :CLI_TCE1,'
      '  CLI_TCE2 = :CLI_TCE2,'
      '  CLI_TEL1 = :CLI_TEL1,'
      '  CLI_TEL2 = :CLI_TEL2,'
      '  CLI_TEL3 = :CLI_TEL3,'
      '  CLI_TLOC = :CLI_TLOC,'
      '  CLI_TLOG = :CLI_TLOG,'
      '  CLI_TLOV = :CLI_TLOV,'
      '  CLI_TPVE = :CLI_TPVE,'
      '  CLI_VDSC = :CLI_VDSC,'
      '  CLI_VULT = :CLI_VULT,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 64
    object cad_cliID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cliCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object cad_cliCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
    object cad_cliCLI_CONT: TIBStringField
      FieldName = 'CLI_CONT'
      Origin = '"CAD_CLI"."CLI_CONT"'
      Size = 30
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
    object cad_cliCLI_INSC: TIBStringField
      FieldName = 'CLI_INSC'
      Origin = '"CAD_CLI"."CLI_INSC"'
    end
    object cad_cliCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object cad_cliCLI_TLOG: TIBStringField
      FieldName = 'CLI_TLOG'
      Origin = '"CAD_CLI"."CLI_TLOG"'
      Size = 15
    end
    object cad_cliCLI_LOGR: TIBStringField
      FieldName = 'CLI_LOGR'
      Origin = '"CAD_CLI"."CLI_LOGR"'
      Size = 60
    end
    object cad_cliCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CAD_CLI"."CLI_CEP"'
      Size = 9
    end
    object cad_cliCLI_NUME: TIBStringField
      FieldName = 'CLI_NUME'
      Origin = '"CAD_CLI"."CLI_NUME"'
      Size = 10
    end
    object cad_cliCLI_COMP: TIBStringField
      FieldName = 'CLI_COMP'
      Origin = '"CAD_CLI"."CLI_COMP"'
      Size = 40
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
    object cad_cliCLI_CEPC: TIBStringField
      FieldName = 'CLI_CEPC'
      Origin = '"CAD_CLI"."CLI_CEPC"'
      Size = 9
    end
    object cad_cliCLI_NUMC: TIBStringField
      FieldName = 'CLI_NUMC'
      Origin = '"CAD_CLI"."CLI_NUMC"'
      Size = 10
    end
    object cad_cliCLI_COMC: TIBStringField
      FieldName = 'CLI_COMC'
      Origin = '"CAD_CLI"."CLI_COMC"'
      Size = 40
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
    object cad_cliCLI_OBSO: TMemoField
      FieldName = 'CLI_OBSO'
      Origin = '"CAD_CLI"."CLI_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_cliCLI_STAV: TIBStringField
      FieldName = 'CLI_STAV'
      Origin = '"CAD_CLI"."CLI_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_cliCLI_TPVE: TIBStringField
      FieldName = 'CLI_TPVE'
      Origin = '"CAD_CLI"."CLI_TPVE"'
      Size = 10
    end
    object cad_cliCLI_OBSE: TMemoField
      FieldName = 'CLI_OBSE'
      Origin = '"CAD_CLI"."CLI_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
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
      Size = 40
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
    object cad_cliCLI_VULT: TIBBCDField
      FieldName = 'CLI_VULT'
      Origin = '"CAD_CLI"."CLI_VULT"'
      Precision = 9
      Size = 2
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
  end
  object cad_cli_prc: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = cad_cli_prcAfterCancel
    AfterDelete = cad_cli_prcAfterDelete
    AfterEdit = cad_cli_prcAfterEdit
    AfterInsert = cad_cli_prcAfterInsert
    AfterPost = cad_cli_prcAfterPost
    BeforeCancel = cad_cli_prcBeforeCancel
    BeforeDelete = cad_cli_prcBeforeDelete
    OnNewRecord = cad_cli_prcNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_PRC'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_PRC'
      
        '  (CLI_CCLI, CLI_CPRO, CLI_DCAD, CLI_DPAG, CLI_DPRO, CLI_MANO, C' +
        'LI_PREC, '
      '   ID)'
      'values'
      
        '  (:CLI_CCLI, :CLI_CPRO, :CLI_DCAD, :CLI_DPAG, :CLI_DPRO, :CLI_M' +
        'ANO, :CLI_PREC, '
      '   :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CCLI,'
      '  CLI_DCAD,'
      '  CLI_MANO,'
      '  CLI_CPRO,'
      '  CLI_DPRO,'
      '  CLI_PREC,'
      '  CLI_DPAG'
      'from CAD_CLI_PRC '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_PRC')
    ModifySQL.Strings = (
      'update CAD_CLI_PRC'
      'set'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CPRO = :CLI_CPRO,'
      '  CLI_DCAD = :CLI_DCAD,'
      '  CLI_DPAG = :CLI_DPAG,'
      '  CLI_DPRO = :CLI_DPRO,'
      '  CLI_MANO = :CLI_MANO,'
      '  CLI_PREC = :CLI_PREC,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 440
    Top = 488
    object cad_cli_prcID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_PRC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_prcCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_PRC"."CLI_CCLI"'
    end
    object cad_cli_prcCLI_DCAD: TDateField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_PRC"."CLI_DCAD"'
    end
    object cad_cli_prcCLI_MANO: TIBStringField
      DisplayLabel = 'Mes/Ano'
      FieldName = 'CLI_MANO'
      Origin = '"CAD_CLI_PRC"."CLI_MANO"'
      Size = 7
    end
    object cad_cli_prcCLI_CPRO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CPRO'
      Origin = '"CAD_CLI_PRC"."CLI_CPRO"'
    end
    object cad_cli_prcCLI_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CLI_DPRO'
      Origin = '"CAD_CLI_PRC"."CLI_DPRO"'
      Size = 120
    end
    object cad_cli_prcCLI_DPAG: TIBStringField
      DisplayLabel = 'F. Pagamento'
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI_PRC"."CLI_DPAG"'
    end
    object cad_cli_prcCLI_PREC: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'CLI_PREC'
      Origin = '"CAD_CLI_PRC"."CLI_PREC"'
    end
  end
  object dtscad_cli_prc: TDataSource
    DataSet = cad_cli_prc
    Left = 440
    Top = 520
  end
  object cad_cli_crd: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_CLI_CRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_CRD'
      '  (CLI_CCLI, CLI_CDEP, CLI_CRED, ID)'
      'values'
      '  (:CLI_CCLI, :CLI_CDEP, :CLI_CRED, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CDEP,'
      '  CLI_CCLI,'
      '  CLI_CRED'
      'from CAD_CLI_CRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_CRD')
    ModifySQL.Strings = (
      'update CAD_CLI_CRD'
      'set'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CDEP = :CLI_CDEP,'
      '  CLI_CRED = :CLI_CRED,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 96
    object cad_cli_crdID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_CRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_crdCLI_CDEP: TIntegerField
      FieldName = 'CLI_CDEP'
      Origin = '"CAD_CLI_CRD"."CLI_CDEP"'
    end
    object cad_cli_crdCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_CRD"."CLI_CCLI"'
    end
    object cad_cli_crdCLI_CRED: TIBBCDField
      FieldName = 'CLI_CRED'
      Origin = '"CAD_CLI_CRD"."CLI_CRED"'
      Precision = 9
      Size = 2
    end
  end
end
