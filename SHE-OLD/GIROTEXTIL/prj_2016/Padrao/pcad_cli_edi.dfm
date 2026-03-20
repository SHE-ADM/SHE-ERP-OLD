inherited frmcad_cli_edi: Tfrmcad_cli_edi
  Left = 941
  Top = 91
  ClientHeight = 632
  ClientWidth = 615
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 615
    Height = 499
    inherited PaintBox: TPaintBox
      Width = 615
      Height = 244
    end
    object Panel1: TPanel
      Left = 0
      Top = 244
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
      Top = 0
      Width = 615
      Height = 244
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
          Height = 220
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
          Height = 220
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
    Top = 613
    Width = 615
  end
  inherited SpeedBar2: TSpeedBar
    Width = 615
    inherited siVAL: TSpeedItem [4]
    end
    inherited siSAIR: TSpeedItem [5]
      ImageIndex = 2
      Left = 332
    end
    inherited siCAN: TSpeedItem
      ImageIndex = 1
    end
    inherited siSAV: TSpeedItem [7]
      ImageIndex = 0
    end
    object siCON: TSpeedItem
      BtnCaption = 'Consulta Sintegra'
      Hint = 'Consulta situa'#231#227'o cadastral do cliente'
      ImageIndex = 3
      Spacing = 1
      Left = 222
      Top = 2
      Visible = True
      OnClick = siCONClick
      SectionName = 'Movimento'
    end
  end
  inherited Consulta: TIBQuery
    Left = 568
  end
  inherited ibSP: TIBStoredProc
    Left = 600
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
  inherited imageOPC: TImageList
    Left = 516
    Top = 30
    Bitmap = {
      494C010104000900040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000020010000D8000000010020000000000000CC
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF6E6000665430006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006051300064513000665432006F593600785F3C0081633C00A170
      4A00B4785400BD7C5E00C7806400CC8367000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFF8F000E2EBE300DADBDB00C4C7
      C600A7B5B700B2BAB600B5BAB600BCC5BD00BFD3C800B6D8CC00C3D0C200D6D9
      D700DBDCDC00DCDCDB00DCDCDC00DEDDDD00E2E1E100E9E9EA00F3F5F600F9FA
      FC00FCFDFE00FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7B61000E510000005800000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000005800000059000000590000005600000056
      000000590000005600000058000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFC00FFF5E900ECF5E900CED5CE0097A19800676F680052525200494B
      4900373D3E003A3D3D003B3E3D0043464300505751005A66600069727000979C
      9800C3C5C300DFE6DF00EBF5F000F2F8FC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEEF900D9DBF300B4B9E800A3AAE300A3AAE300A3AAE300A3AAE300A3AA
      E300A3AAE300A3AAE300A3AAE300C4C7ED00DADCF400EDEEFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786B00144F0100005900000059
      0000005900000055000000560000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005A00000058
      000000580000005900000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFC
      FA00E7EFE600C5C8C100808C84005A686C0036464D00192930000E1D2C000F26
      41000815210007141E0007141E0009131A000E13140014131500181B1F003336
      3300525353006F736E00979D9800C9D0CE00EEF7F000EEF7FE00FCFDFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFC00DCE5E100E6EC
      E900FAFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFDFD00E8EDEA00D6E0DA00D3DED800E9EFEB00FAFCFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F8FD00DDE0F500B4B9E8009297DD007171
      D2006565D0005759D2003F42D3003438D4003438D4003438D4003438D4003438
      D4003438D4003438D4003438D400494BD300585AD0006566D000797CD600949D
      E000C2C6ED00EEEFFA00FDFDFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      0000005900000056000000560000005600000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      000000580000005800000058000000580000005800000058000000590000005A
      000000590000005900000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FCF900DBEC
      E600B2C5C1005F798F001E4055000A3B5400063D5700063D570008406000094B
      7800063D5900063D5700063D570005394F000432430004293B0004142B00040D
      170006080C001110120035343300696C6800909C9400B3C0C700DDE3E100EEF0
      ED00F8F9F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F9F800D9E4DE00AAC3B4008AA690006B89710091B8
      AD00E2ECE900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8
      F800F8F8F800F2F4F300BBC9C4006C8A73006282680077937B008DAC9500B0C7
      B800E0E7E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E3F600B7BDEA009195DE006C6ED6004348D3002127D1000004
      CB000004CE000003D2000001DA000000DD000000DD000000DD000000DD000000
      DD000000DC000000DC000000DC000001D6000003D0000003CD00080DCD00242C
      D1005155D5007C7DDA00949BE100C6CAEF00EBEDF900FCFCFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      000000590000005A000000600000005F00000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000006000000060000000630000005C
      000000580000005900000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00D7EDE800A0CB
      C800668F9D000A4075000A5787000A6C94000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A6B92000A4173000631
      4D000321300002132100020811000404050011121300555955008C958B00B8BC
      B700DCDDDC00F2F4F500F9FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFCFB00DBE7E100ACC1B400709179002A603B0000390A00003003004A8B
      7A00CCDCD800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00E5E7E6009DAEA900123E16000030030000300300074213003366
      40007B998200B7CDBF00E8EDEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00FAFAFD00D6D8
      F300B2B3E7007E80DB003E47D1001119CA000003CC000002D9000001E5000005
      EB000005EB000004E9000001E7000001E6000001E6000001E6000001E6000001
      E6000001E5000001E5000000E5000002E7000004E9000005EA000003E8000000
      E1000001D4000003CA000D18CA00545AD6008C8EE000BBBDEC00E3E5F700FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000058
      0000007000000C832900268A1E002C8A1C002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100238B1E001183
      270000791500006300000059000000580000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E9E800ADC6CD005E9F
      B200157998000A6A98000A7298000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A5280000A2A4A000810160001040C0000010200111312005858
      580096979600BEC5C800DEECF600FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F7
      F600CCDDD300769E850023563100003003000030030000300300003003005F8E
      8000D0DBD800EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00EBEB
      EB00EAEAEA00E2E4E300A1B0AB00123F16000030030000300300003003000030
      030001390A00205C320094AB9A00E7EDE900FCFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFE00E7E9F800BBC0EB00676D
      D6001417C3000002C8000002DA000005EA000008EE000004EA000000E6000000
      E2000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000
      E0000000E0000000E0000000DF000000DF000000DF000000E0000000E3000001
      E6000003E9000006EC000001E5000001D4000002C7003338CE00868AE000C8CA
      F000EAECFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000055
      000060BA7700DBF4EB00C2EDD000C5EECB00BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800C2E9D000D3F4
      E700C5EAC400007A0E000058000000580000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2D2D900639AB7001874
      A400066B98000A6A98000A7298000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7196000A6A92000A568300082C5A00000E1500010405000606
      06001E1D1C00525450009CA59E00DFE2DF00FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCFB00BDCD
      C400447D58000743140000300300003003000030030000300300003003005F8E
      8000D0DBD800EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00EDED
      ED00ECECEC00E2E4E300A1B0AB00123F16000030030000300300003003000030
      030000300300003003000E3C1200849E8C00E7ECE800FCFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF00F5F6FC00D6D9F4008990DF000213BD000003
      CC000006E7000008EF000004EC000001E6000000E2000000E1000000E1000000
      E1000000E1000000E1000000E1000000E1000000E1000000E1000000E1000000
      E1000000E1000000E1000000E1000000E1000000E1000000E1000000E1000000
      E1000000E0000000E0000000E6000004EB000006EC000003DE000001CA00282B
      C9009096E300E7E9F900F9FAFE00FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005C00000058
      00008AC99B00006A0300006D0000006A00000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000006F00000C81
      3C00EAFBFF0000762400005A000000580000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CBE0EC007EB0C3003583A5000C6C
      9A00096B98000A7198000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7298000A6E95000B638C000E577B0009315A000914
      230009090A0013141300333734006C746C00C1C3C100E0E2E100F5F6F600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9E3DD002F63
      3B0000350700003003000030030000300300003003000030030000300300608E
      8000D1DBD900EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00EDEDED00E5E6E600A1B1AB00123F16000030030000300300003003000030
      030000300300003003000030030000300300849E8B00E8EDE900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F1FB00A3ABE5002231C3000001C4000005EA000009
      F0000002E9000000E4000000E2000000E2000000E2000000E2000000E3000000
      E3000000E3000000E3000000E3000000E3000000E3000000E3000000E3000000
      E3000000E3000000E3000000E3000000E2000000E2000000E2000000E2000000
      E2000000E2000000E2000000E2000000E1000000E4000004EA000006ED000003
      DF000509C6002B3BC800CDD0F300FAFAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D00000071
      000075C07A00005500000058000000590000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A00000071
      0E00D5F7ED00037E1C00005A000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFEFE00A2C7D7004B91AF0019729B000A6A
      9B000A6CA0000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000D7098000B5B8A000A43
      680007253B00030C150008090B001D211D0059595700A5A9A500D7DAD800F3F4
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000417E5700093F
      120000310300003003000030030000300300003003000030030000300300608E
      8000D1DBD900EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00E5E6E600A1B1AB00123F16000030030000300300003003000030
      0300003003000030030000300300003003000F3C120094AB9A00E8EDEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DAF3007174D6001214C7000408DF00000BEE000004EB000001
      E5000000E4000000E4000000E4000000E4000000E4000000E4000000E4000000
      E4000000E4000000E4000000E4000000E5000000E5000000E5000000E5000000
      E4000000E4000000E4000000E4000000E4000000E4000000E4000000E4000000
      E4000000E3000000E3000000E3000000E3000000E2000000E3000001E6000003
      EA000107EA000506DB00171AC500959CE400EBECFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000067C
      000069BC6A000058000000590000005C00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000073
      0900BDF4D80006831500005A000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFEFE00E1F0F00074ADC200277CA3000B6C98000A6E
      9B000A6F9F000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A6F98000A67
      9200085377000635510004152C0001070900131312004B4E4B0090959100CDD1
      CD00EBF2F300E6F7FF00FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F4F6F5009AAFA30015481D000132
      050000300300003003000030030000300300003003000030030000300300608E
      8100D3DDDB00F0F0F000F0F0F000EAEAEA00D6D6D600BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000BFBFBF00BEBEBE00C2C2C200D4D4
      D400EEEEEE00E6E7E700A2B1AB00123F16000030030000300300003003000030
      03000030030000300300003003000030030000300300205D3100B7CDBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C5EF005E61D4001518D0000006E4000006EC000003E9000001E6000000
      E5000000E5000000E5000000E5000000E5000000E5000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E6000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E5000000E5000000E5000000
      E5000000E5000000E5000000E5000000E4000000E4000000E4000000E4000001
      E5000003E8000005EB000006E2001E20D000666EDB00D2D6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9FBFC00B9DAE0004997B10013749C00086E98000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A719C000A729A000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A648D0009436D00032C3B00020C140006080B00393D3A008287
      8300B9C5C500CFEBF400EAF9FE00FBFEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FCFDFC00DBE5DF002B5E3800053509000030
      030000300300003003000030030000300300003003000030030000300300608E
      8100D3DDDB00F0F0F000F1F1F100EFEFEF00E6E6E600DCDCDC00DCDCDC00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DBDBDB00DDDDDD00E4E4
      E400EEEEEE00E6E7E700A2B2AB00123F16000030030000300300003003000030
      0300003003000030030000300300003003000030030001380A007B988200E0E6
      E200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6AC
      E7004D51D400141BD8000009E7000006EC000002E8000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E6000000E7000000E7000000
      E7000000E7000000E7000000E7000003E9000005EA000005EA000005EA000005
      EA000005EA000005EA000001E9000000E7000000E6000000E6000000E6000000
      E6000000E6000000E6000000E6000000E5000000E5000000E5000000E5000000
      E4000001E5000002E8000005EB000008E400161BD300676EDC00CCD0F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FAFC009EC8D900348AA6000F7198000A6F98000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7298000A729A000B7299000C7398000D7599000D759B000F769B001178
      9C001474A5001476A10014799B0013789B0010769B000D759B000D7599000C73
      98000B7298000B7198000A7098000A71950006314900020E1600020405002125
      24006C737100C6CECD00C7EAF700EFFAFE00FCFEFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000F0F4F200A7BAAD0001370900003103000030
      030000300300003003000030030000300300003003000030030000300300608E
      8100D4DEDC00F1F1F100F2F2F200F2F2F200F3F3F300F3F3F300F3F3F300F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F0F0
      F000EFEFEF00E7E8E800A2B2AB00123F16000030030000300300003003000030
      030000300300003003000030030000300300003003000030030033664100B0C7
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAB0E9004046
      D2000C14D900000AE9000008EE000002E9000000E6000000E7000000E7000000
      E7000000E7000000E8000000E8000000E8000001E8000001E8000001E9000005
      EB000009EE00000DF0000010F100000EF000000CEF00000CEF00000CEF00000C
      EF00000CEF00000BEF00000EF100000DF000000BEF000007EC000003E9000000
      E8000000E8000000E7000000E7000000E7000000E7000000E6000000E6000000
      E6000000E6000000E6000002E8000005ED000007E500191EDB00696FE100C9CD
      F300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F5F9FA008EB9C400267AA1000A7098000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A72
      98000A6B98000A6BA500106B9E00177598001D7F9E002082A8002888A9003790
      AE004496AD004898AC004898AC004394AB003289AA002082A8001C7F9C001772
      9900136C98000F6898000A6498000A7398000A73980006334A00020C17000000
      0300191B1B0068706E00D6D9D600D4F0F700F0FCFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000DFE9E300618D710001300400003003000030
      030000300300003003000030030000300300003003000030030000300300618E
      8100D4DEDC00F2F2F200F2F2F200F3F3F300F3F3F300F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F3F3F300F3F3F300F2F2F200F2F2F200F1F1F100F0F0
      F000F0F0F000E7E9E800A2B2AB00123F16000030030000300300003003000030
      03000030030000300300003003000030030000300300003003000742130088A7
      9000F5F7F6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F8FD00BBC0EE003E45D2000B11
      D900000AEA000007ED000002EA000000E7000000E8000000E8000000E8000000
      E8000000E9000000E9000000E9000002E9000006EC00000BEE00000FF000000D
      EE00000CED00000DE8000010E3000B1CE3001425E4001425E4001425E4001425
      E4001425E4001424E4000414E200000DE400000BE900000CED00000CEF000006
      EC000000E9000000E8000000E8000000E8000000E8000000E7000000E7000000
      E7000000E7000000E6000000E6000001E8000006EE000006E9001A20DE00696F
      E200CCD0F4000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F7FA006FAAC3001E70A0000A6D98000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A72
      98000A6B98001679A4003286A7005397B00077ADC4009EC4D600C3D3D500C8E1
      D800DDE4D800E6E4D800E6E4D800DEE3D800C4E2D800ABDED7009AC7D60077AD
      C4004D96B3002986A9001879A200116C98000B729800096A8D0009456F000519
      3600030406001618170058615900B0BEB500EBF0ED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000D0E0D60023693D0000300300003003000030
      030000300300003003000030030000300300003003000030030000300300628F
      8100D5DFDC00F2F2F200F3F3F300F0F0F000EAEAEA00E6E6E600E6E6E600E6E6
      E600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E500E5E5E500E7E7E700ECEC
      EC00F1F1F100E8E9E900A3B2AC00123F16000030030000300300003003000030
      0300003003000030030000300300003003000030030000300300003003006F8C
      7400E1E8E4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8FD00CCCFF300454CD200080FD800000D
      ED000007ED000002E9000000E8000000E9000001E9000001E9000002EA000002
      EA000002EA000002EB000006EC00000DEF000011F0000012EF000116EB00081A
      E5002931E5004043E0005051DA00666DDE007380E2007380E2007380E2007380
      E2007380E2007380E2005C5FDA004B4CDB003538DF001621E5000012ED000011
      F3000006ED000002EA000002EA000002EA000001E9000000E9000000E9000000
      E9000000E8000000E8000000E8000000E7000001E9000007EF000007E900191E
      DD006B71E100DBDEF80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F7FA006AA8C3001E74A9000A6F9C000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000B729800116F
      99001F82A400599EB4008AC1C700AFD7D300CDDFE100E9E9F500F5F6F500F6FA
      F600FCFBF600FFFBF600FFFBF600FDFBF600F5FBF600EDFAF600E8F2F600DCE3
      F000C3D8DF009ECAD00076AFCA004791B2002283A5001372A3000C6695000947
      7000051C3A0003060A00141717005A645B00B0B9AF00EAEEE900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C8D7CD000247150000300300003103000031
      030000310300003103000031030000310300003103000031030000310300628F
      8200D5DFDD00F3F3F300F4F4F400E9E9E900D5D5D500CACACA00CACACA00CACA
      CA00CACACA00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CACACA00CACACA00D2D2D200E3E3
      E300F2F2F200E8E9E900A3B2AC00123F16000030030000300300003003000030
      0300003003000030030000300300003003000030030000300300003003005C7D
      6200CDD9D2000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFCFE00D9DBF6006B71DD000105CF000012F100000A
      EF000004EB000002E9000002E9000002EA000002EA000002EA000004EB000004
      EB000006EC00000CEE000013F1000019F100061DEC001A21E3003537D9004B5A
      DA0098A0EA00CDD1F600F3F3FD00000000000000000000000000000000000000
      0000000000000000000000000000E6E8FA00B4BAF000666DE3001C26E0000013
      F0000013F3000004EB000004EB000004EB000002EA000002EA000002EA000002
      EA000001E9000001E9000001E9000000E8000000E8000003EA000007EF000007
      E7001E23DB007C84E400F2F3FC00000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F7FA006AA8C3001D7AA6000A729B000A7398000A73
      98000A7398000A7398000A7398000A7398000A7098000A6E980013739A003684
      A5006CAEC5009CCCCF00CEE5DA00E2EFDF00E4F0EA00F0F3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF5
      F300EFF0E600D7EBDF00BEDBDC0094C3D00074B0C8005396BA002982A5000F6A
      8F0009477100061C390006070B001A1E1D00646C6700BAC0BC00F3F4F300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D2C8000030030000310300003303000033
      0300003303000034030000350300003503000035030000350300003503006390
      8200D7E0DE00F4F4F400F4F4F400EBEBEB00DADADA00CFCFCF00D0D0D000D0D0
      D000D0D0D000D0D0D000D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D0D0D000D0D0D000D0D0D000D7D7D700E7E7
      E700F2F2F200E9EBEA00A3B3AC00123F16000030030000300300003003000030
      030000300300003003000030030000300300003003000030030000320300456C
      4D00B6C6BD000000000000000000000000000000000000000000000000000000
      00000000000000000000E8EAFA009297E7000007CE000015F200000CF0000003
      EC000003EB000004EB000004EB000004EB000004EB000004EB000004EB000006
      EC000010F1000023F400031FEE000E17DF003337D700838CE500E6E8FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E7FA008386EB000007
      E000001EF7000005EC000004EB000004EB000004EB000004EB000004EB000004
      EB000003EB000001EA000001EA000001EA000001E9000001E9000003EB000009
      F0000009E7002527D600B2B7EF00FDFDFF000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000067F1F000C832A000C85
      2900005800000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F7FA006CAAC3001C7BA000097298000A7398000A73
      98000A7398000A7398000A7398000A7398000C6E9C000C659300226D8D0071A5
      B700C6D7DC00D7EADF00F1EFDF00F0F0DF00DFF0EA00E5F3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF5
      EA00F6F0DF00ECF0DF00E6EEE100CCE5EC00C1DCEC00A8C7D40073ACBF003C90
      AC00177197000A4A76000B3647000B161C00282D2D00757B7700C9CEC900F5FA
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D2C8000031030000350300003704000037
      0400003704000038040000390400003904000039040000390500003905006392
      8300D7E1DE00F4F4F400F5F5F500F5F5F500F5F5F500F6F6F600F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400E9EBEA00A3B4AD00124316000033030000330300003303000032
      030000300300003003000030030000300300003003000030030000350400456D
      4E00B6C6BD000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B9EE001225D2000010EC000015F5000006EC000004
      EB000004EB000005EC000005EC000005EC000005EC000005EC000005ED00001A
      F5000029F800000FE3001925D9007C88E700EAECFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F9FE00A0A2ED00000B
      D900002EF9000005ED000005ED000005EC000005EC000005EC000005EC000005
      EC000004EB000004EB000004EB000004EB000004EB000002EA000001EA000005
      ED000009F0000007E7001A1ED100EEF0FC00FDFEFF0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000560000005D0000006D0000006D
      0000006D0000006C0000006C0000006C0000006C0000006C0000006C0000006C
      0000006A0000006C000000640000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000AFDFBA00BDEAD400BFF0
      D100005600000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F3F8FB0078AECA001C78A200087098000A7398000A73
      98000A7398000A7398000A7398000A7398000D67980015578200416B7A00B2C8
      CA00FAEDDE00FFF0DF00FFF0E400F4F0E700E7F0EF00ECF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF5
      EF00FFF2E700FFF4E700FBF4EC00E7F4FF00E0F1FF00E4E7EC00CEDBE20093C0
      CF00499AB4001E7EA1000D729C00174553001320220035393600828B8200D6E3
      D600F8FCF800FEFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D2C8000034030000390500003A0500003A
      0500003A0500003C0500003D0500003D0500003D0500003D0500003D05006592
      8300D7E1DE00F5F5F500F5F5F500F5F5F500F6F6F600F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400EBEDEC00A3B4AD00124717000037040000370400003703000036
      030000340300003403000033030000330300003003000030030000370400456F
      4E00B6C6BD000000000000000000000000000000000000000000000000000000
      000000000000CACDF3005A61E100020BE000001EF6000009EE000005EC000005
      EC000005ED000005ED000005ED000006ED000007EE00000BF0000026F700001F
      F300000BDC005059E100B7BCF200F1F2FC00FDFDFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C7F5004E58E800000F
      E9000022F7000007EE000007EE000007EE000007EE000007ED000006ED000005
      ED000005ED000005EC000005EC000005EC000004EB000004EB000004EB000004
      EB000008EE00000BF0000B0DE2006571E300EEEFFB0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005600000C7E1F00EFEECF00C7F3
      EF00C7F3EE00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1
      ED00C2F0EE00B4E7D6004CAF3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CCECE400D3FBFD00C7FC
      FA00005C000000600000005C0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F5F8FC0091B0DB002278A800087099000A7398000A73
      98000A7398000A7398000A7398000A729800094D79002D476400818C8500E2F0
      DF00FAF0DF00FCF0DF00FEF1F300FFF1FF00FFF0FF00FFF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF5
      FF00FCF7FF00FCFEFE00FCFEFC00FBFDFC00E3F2FC00F5F0FE00FCF0EC00E5EA
      DF00AFD2D70067A7BE002175AD001A7B9D002B5564001F272A00393E3A009BA4
      9B00DCEBDC00FBFDFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D3C80000360300003C0500003E0500003E
      0500003E0500003E0600003F0600004006000040060000400600004006006793
      8400D8E2DF00F5F5F500F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F8F8
      F800F8F8F800F8F8F800F7F7F700F7F7F700F6F6F600F5F5F500F5F5F500F4F4
      F400F4F4F400EBEDEC00A4B5AE00134A1800003A050000390500003905000039
      0500003805000038040000360400003604000034030000340300003B05004571
      4F00B6C6BD000000000000000000000000000000000000000000000000000000
      0000F2F3FC008C8EE600111CDA000019F2000010F2000005ED000007ED000007
      EE000007EE000007EE000007EE000007EF000010F000002DF7000020F300000C
      DC007E82EA00CED1F600F3F5FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D8F9006D72EB000F22E900002D
      F6000014F4000008EF000008EF000008EF000007EF000007EF000007EF000007
      EF000007EE000007EE000007EE000005ED000005ED000005EC000005EC000005
      EC000006EC00000AEF000210F0001215D600B7BBF200F4F5FD00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005800000C802D00DDFBF000D5FF
      FE00D5FFFE00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D3FFFF00BFF4E20057B53F00005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CFEBE600D3FFFF00C7FF
      FF00005D0000005F0000005A00000059000000580000005A0000005A0000005A
      0000005A00000059000000580000005800000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F9FA009EB8C5002E7BAD000D709E000A7398000A73
      98000A7398000A7398000A7398000A6D980004375100434E5000B4BCB400DFF0
      DF00E1F0DF00E1F0DF00F4F9F300FFF8FF00FFF0FF00FFF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBF5
      FF00E1F0FF00E1F1F500E1F1E100E1F1E100DFF0E100E0F0F700E1F0EC00EDF0
      DF00F2EEDF00CFE6DC0092BDD4003082B000297EA50043707F003D4342003335
      3400B0B6B100F3F6F600FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D4C8000039040000400600004206000042
      0600004206000042070000430700004407000044070000440700004407006794
      8500D8E2E000F6F6F600F8F8F800EFEFEF00DEDEDE00D3D3D300D3D3D300D3D3
      D300D4D4D400D4D4D400D4D4D400D4D4D400D5D5D500D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D4D4D400D4D4D400D4D4D400D3D3D300D3D3D300DADADA00E9E9
      E900F4F4F400EBEDEC00A4B6AE00134D1900003E0600003D0500003D0500003D
      0500003C0500003B050000390500003905000038040000380400004006004573
      4F00B6C6BD000000000000000000000000000000000000000000000000000000
      0000BABFF1004952E2000011E700001BF5000009EF000006EE000007EE000007
      EF000008EF000008EF000008EF000010F1000023F4000026F200000DDE007B80
      E900D8DAF800FAFAFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D7F9007076EE001D36EC00002EF5000021
      F600000BF2000009F0000008F0000008F0000008F0000008F0000008EF000008
      EF000008EF000008EF000007EF000006EE000006EE000006ED000006ED000005
      ED000005ED000008EE00000FF2000006E5005262E500DBDFFA00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A00000C832F00D1F9F600D1FF
      FD00D1FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D5FFFD00BFF3E20064B34500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000C5EBE700D3FFFF00CFFF
      FF00005A0000005C0000005A0000005800000056000000560000005800000058
      000000580000005800000056000000560000005C0000005A0000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8FBFC00ACCBDB003885B3000F729E000A7398000A73
      98000A7398000A7398000A7398000F678E000C32450051585400C5D1C400DFF0
      E100DFF0F700DFF0F800F3F2FD00FFF2FF00FFF4FF00FFFDFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF5
      FF00ECF0FF00DFF0FD00E4F0F800F8F0F800F8F0F800E6F0EB00DFF0E200E2F0
      EA00E4F0F100E0EFDF00E9E6DD0087B2C2004996B2004A92AC004B7080003237
      3A0053595B00C3CDCE00F4F6F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D4C800003B050000440700004507000045
      0800004508000046080000470800004808000048080000480800004809006894
      8600DAE3E100F8F8F800F8F8F800F2F2F200E7E7E700E0E0E000E0E0E000E0E0
      E000E1E1E100E1E1E100E1E1E100E1E1E100E2E2E200E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E1E1E100E0E0E000E0E0E000E0E0E000E0E0E000E4E4E400EDED
      ED00F5F5F500EBEDEC00A4B6AF0013511A000042070000410600004106000040
      0600003F0600003F0600003D0500003D0500003B0500003B0500004407004575
      5000B6C6BD00000000000000000000000000000000000000000000000000F3F4
      FC007E82E6001528E100001FF2000012F3000008EF000008EF000008EF000008
      F0000008F0000009F000000FF2000021F5000030F4000D1FE5007378E800DDDF
      F900FAFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D8F9007077EF001E3BEE000030F5000028F7000010
      F3000009F2000009F2000009F2000009F1000009F1000009F1000009F0000009
      F0000008F0000008F0000008EF000008EF000008EF000007EF000007EE000006
      EE000006EE000007EE00000BF0000013F400111CDF00AEB3F300F3F4FD000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000590000005C0000005A00000067000000802C00148A4A001A8E4D00178E
      4D00178E4D001D8E4D00238F4E001A8C4100005F0000005A0000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00F9F7F500C2C3
      C200A4AAA700C8CFC800E6F3E900BBDAE0003E90B30011769E000A7398000A73
      98000A7398000A7398000A7398000A4663000F222D0060626100D6DDD500E1F0
      E200F2F0FD00F4F0FF00EEF0FF00F5F0F500FFF2F200FFF5FF00FFF5FE00FFF5
      ED00FFF5F900FFF5FF00FFF5FF00FFF5FF00FFF7FF00FFFEFF00FFF7FF00F2F2
      F200E5F0F500DFF0FF00E5F0FF00FEF0FE00EDF0ED00E2F0F200EBF0F400EBF0
      F000DFF0E700E3F0DF00FEF0DF00DCDED60094BDCC005CA2BE005291A7005E78
      8000383E420088908E00E1E4E200FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D4C800003D050000480800004908000049
      080000490800004A0900004B0900004C0900004C0900004C0900004C09004690
      7A00D2E3DF00F8F8F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9
      F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5
      F500F5F5F500EAEDEC0098AEA70011531A000046070000450700004407000043
      070000430600004306000041060000410500003F0500003F0500004808004577
      5000B6C6BD00000000000000000000000000000000000000000000000000C1C6
      F2004850E3000019E8000022F600000AF1000008F0000008F0000008F0000008
      F1000008F100000CF2000020F6000030F500112EEB005E65E700E4E6FB00FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DCFA00727AF0001D3CEF000034F500002CF8000013F500000B
      F300000AF300000AF200000AF200000AF200000AF200000AF100000AF1000009
      F1000008F1000008F1000008F0000008F0000008F0000007F0000007EF000007
      EF000007EE000007EE000009EF000017F6000008E700616DEB00D3D8F9000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000580000005C0000005A0000007D1F009BDDBD00D3FCFF00D7FFFF00D3FF
      FF00D3FFFF00D9FFFF00DEFFFF00D7FBED0000600000005A0000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00D7DFE20097A2
      A400666E6F0071777000BCC8BE00C0E3DD00519DB40019789E000A7198000A73
      98000A7398000A739800086F9800042E4300131A1F006C6F6B00DEE8DE00E2F0
      E200FDF0FD00F3F0FF00E5F0FF00E7F0F700EFF0F400F2F0FC00FFF0EF00FFF0
      E100FFF0EB00F6F0F800F6F0FF00FBF0FF00EFF1FF00EFF7FF00EFF2F200EFF0
      EF00EFF4F700EFF7FF00F2F7FF00FEF7FE00F1F7F100EFF7FB00F8F7FF00F8F7
      F800EFF7EF00EFF6EF00EFF0EF00EFF0EF00CCE0E2008FBECE0066A6BD006798
      A700636E7000565D5C00ADB2AE00E9EBE900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C7D5C80000410500004C0900004D0900004D
      0900004D0A00004D0A00004E0A0000500A0000500A0000500A0000500A00127A
      4D00BDD9CF00F5F6F600F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900FAFA
      FA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFA
      FA00F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F7F7F700F6F6
      F600F5F5F500E4EBE7005B977B000A5316000049080000490800004808000047
      0800004708000046070000440700004407000043060000430600004C09004579
      5100B6C6BD000000000000000000000000000000000000000000FBFCFE007980
      E6001930E6000020F3000016F5000008F1000008F1000009F1000009F100000A
      F200000AF2000019F5000030F7000B36F000474BE600CFD3F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFC
      FF00DDE1FB00747EF0001736EE00003DF8000030FA000015F600000CF400000C
      F400000CF400000CF300000CF300000CF300000CF300000CF300000BF300000A
      F200000AF200000AF200000AF1000009F1000008F1000008F1000008F0000008
      F0000008F0000007F0000008F000000EF3000015F3001727E400ACB2F300FAFB
      FE0000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FE00004C0000005D0000005800000C7D1500B2DD9E00C2FFF000D3FDFE00D1FF
      FD00CFFCFA00CFFCFD00CFFDFF00CAF7E6000063000000510000005400000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00ABC7D3007FA2
      B100586B73003335350071767200A9C4BB0073A7B4002B7DA1000A6E98000A73
      98000A7398000A739800076E980002293900171B1D0072787000E2F0E200ECF0
      EC00FEF5FE00EEF1FF00E3F0FF00DFF0FF00DFF0FF00E3F0FB00F4F0EA00F4F0
      EA00F4F0E200E8F0EB00E8F0F900F2F0FF00E9F0FE00DFF0F500E8F0EC00F8F0
      F800FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFF00E0F0FF00DFF0F600DFF0E600C1DFDC008BBDCB00649E
      B10081A2AB005A63640078807B00CDD0CD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFC000000000000000000000000000000
      0000000000000000000000000000C7D5C90000440600004F0A0000500A000051
      0A0000510B0000510B0000510B0000520B0000520B0000520C0000520C000058
      0F008BBAA300E1EDEA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F9F9F900F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F7F7
      F700F0F2F100C3D7CD000173300000510E00004D0900004D0900004C0900004B
      0900004B0900004A08000048080000480800004707000047070000500B00457A
      5100B6C6BD000000000000000000000000000000000000000000E4E7FB004B4F
      E1000026EA00002AF700000CF200000AF100000AF100000AF200000AF200000B
      F3000010F4000031F8000033F3002C3EEB009FA8F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFF00DCE0
      FC007984F2000E2AED000049F9000034FA000018F700000DF500000DF400000D
      F400000DF400000DF400000DF400000DF400000CF400000CF400000CF400000C
      F300000CF300000CF300000CF200000AF200000AF100000AF1000009F1000009
      F1000008F1000008F1000008EF000009F100001EF8000009E500888BF000E8EA
      FC0000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D7FF
      FF00005400000058000000580000087B15009BD59E00D3F7F400CFFCF700DBFF
      FA00DBFFFA00DBFFFA00D7FDFA00CFF5E4000061000000540000005600000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF0097C2D5005FA3
      BC004B7D8F002F3D42001C1D1C0069696900879DA6003D84A3000C7098000A73
      98000A7398000A7398000A739800032B3900151A1C0070756E00E5EEE700F9F1
      FE00F9FBF900F9F2F900ECF0FD00E5F1FF00E3F2FD00E0F0FA00E5F0FF00E5F2
      FF00E5F1EC00E2F0E500DFF0ED00E6F0F900F7F0F700E0F0E000F4F0F400FDF0
      FD00FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFE00E0F0F900DFF0E900DFF0E100D2EDDF00B3DAD60085B5
      C4005A9DB90091A4A2006F787500B2B5B400F3F3F300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F3F4F5000000000000000000000000000000
      0000000000000000000000000000C7D7C9000047070000520B0000520C000053
      0C0000540C0000540C0000550C0000560C0000560C0000560E0000560E000056
      0E001B845D009FCEC200EAF2F000F6F7F700F9F9F900F9F9F900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F7F7F700F1F4
      F300CEDDD70064947D0000540D0000500B0000500B0000500A00004F0A00004F
      0A00004E0A00004C0A00004C0900004B0900004B0900004A080000540D00457C
      5300B6C6BD000000000000000000000000000000000000000000A9B0F100313B
      E8000025F1000024F600000AF200000CF200000CF300000CF300000CF400000C
      F4000021F700003AF8000833EC005C62E800F4F6FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFF00DCE0FC007A87
      F2000118EB00005AFD000038FA000019F700000FF600000FF600000FF600000F
      F600000FF500000FF500000DF500000DF500000DF400000DF400000DF400000F
      F4000012F5000013F5000013F5000011F400000DF300000CF200000AF2000009
      F2000009F2000009F1000009F1000008F1000018F600000FEF00525FEE00C4CB
      F70000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE900D5FFFF00D5FF
      FF005BB37B00006A000000590000067B150098D4A100D9F8F70098D7B00060B7
      670066B8680066B8680064B867005BB35B000058000000560000005800000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00B9D4E300569D
      B6002C84A000366F8200050708000B0C0C004A616800337A8E00137797000A73
      98000A7398000A7398000A739800032B39000D14150066696600DCE3E400DFF0
      FC00E0F0E200E0F0E000F3F0F300FFF7FF00F3FAF300E5F0E500FEF0FE00FEFC
      FE00FDF3FD00ECEFFE00DEEFF000DDEDDD00DDEDDD00DFEFDF00DFF0DF00F4F0
      F400FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFB00E0F0E100DFF0F900DFF0EB00DCE7DE00D0DEDD00A1CC
      D300398AA9008BAEBC008B93960087878600BBBBBA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E4E4E4000000000000000000000000000000
      0000000000000000000000000000C7D7C9000049090000560E0000560E000057
      0E0000570E0000570E0000570E0000580F00005A0F00005A0F00005A0F00005A
      0F00005E11000D84550077BEAB00DCEAE400F9FAFA00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00F9F9F900F9F9F900F9F9F900F8F8F800EAF2EF00B5D2
      C90054947900005F130000560C0000540C0000540C0000540C0000520B000051
      0B0000510B0000500B0000500B00004F0A00004F0A00004D0A0000590F00457F
      5400B6C6BD0000000000000000000000000000000000000000006C78E7001632
      EC000022F5000018F500000CF300000CF400000DF400000DF400000DF400000D
      F400003FFB00002EF2004451EC00BCC4F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE2FC007985F3000018
      EC00006FFF00003CFB000018F8000010F7000010F7000010F7000010F7000010
      F700000FF700000FF700000FF600000FF600000FF600000FF6000010F600001C
      F7000037FA000047FC00004AFC000036F9000018F500000DF400000CF300000C
      F300000CF300000BF2000009F2000009F1000012F400001EF6000F2CEA0098A4
      F30000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000095D4A400C5F7E600D3FF
      FD00DBF9F20043AB670026913F00007B15009ED6A100D3F9F6005BB47500006D
      0000006F00000070000000700000006F00000055000000580000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00E3F1E80091C0
      CA003E8BAD0015608C00092A5600020508000A0D0D000C3647000B607E000A73
      98000A7398000A7398000A65980003263900070D1000565C5700CCD8D300E2F1
      FF00F9FCFB00FBFDFB00FEFDFE00F2F8F200E2F1E200E0F0E000E3EFE300E0E3
      E000D0D5CF00D4D8D600C4CAC6009DA59D00999B9900D9DBD900DEEDDE00F4F0
      F400FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFF00E0F0FB00DFF0FE00DFF0FC00C6DFED009EC4D5007EA8
      B80078858A003B6E7F0098AEAA00848C8700A5AAA900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DADADA000000000000000000000000000000
      0000000000000000000000000000C7D7C900004C0A00005A0F00005A0F00005B
      0F00005B1000005B1100005B1100005C1100005E1100005E1100005E1100005E
      1100005F110001641A000D7B3500389A6C007CB4A500ADC7B800B2D0BE00B2D0
      BF00B3D0BF00B3D1BF00B3D1C000B3D1C100B3D1C100B3D1C100B3D1C100B3D1
      C100B3D1C100B3D1C100B3D1C100B3D1C100B3D1C100B3D1C000B3D1BF00B2D0
      BF00B2D0BF00B2D0BF00B2CFBE00B1CFBE00B1CFBE0094BCAE0051A382001485
      480009641C00005B0F00005A0F0000570E0000570E0000570E0000560E000055
      0D0000550C0000540C0000540C0000510C0000510B0000500B00005C12004581
      5500B6C6BD0000000000000000000000000000000000000000003F40DF000237
      EF00002DF8000010F400000DF400000DF400000DF500000DF500000FF500001B
      F7000049FB000139EE006C7CEE00F8F9FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8DCFB007581F3000D30EF000067
      FD000042FC00001CF8000014F8000012F8000011F8000011F8000011F7000011
      F7000010F7000010F7000010F7000010F7000010F7000015F8000035FA00004E
      FB000031F6000014EE000010EC000021F300003FFA000022F800000EF400000D
      F400000DF400000CF400000CF300000CF300000DF2000029F8000214EA007F82
      F000F0F2FD00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000037920F007BD09600BAF1
      E400D9FFFF00D5FFFF00D7F9DD00208C4200A1D9A500C2F5F4003AA976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00F9FCF900D7E9
      E5007FB7C30019779E0005558200031828000104090002121A0009435C000D6D
      9800066D98000A7398000A6F980005304700030C1300484C4900C2C5C400F5F0
      FD00E9F4E900E8F4FA00F6F4FF00F0F2F000D7E4D700C2CAC400AABBB7009FA2
      A100777F7800646B69006E73720090969000C7C7C700DBDDDB00DEEDDE00F4F0
      F400FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFDFF00F6F0FF00E3F0FF00DFF0FF00CCEAEF0091C9CF005594
      AA00808081001E2D3300758285009DA4A400A5A7A500C2C2C100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D8D8D8000000000000000000000000000000
      0000000000000000000000000000C7D9C90000500B00005E1100005E1100005F
      1200005F1300005F1300005F1300005F13000060130000611300006113000061
      1400006114000062150000671900086E25001877340024843E00258D4300258F
      4500258F4500258F4700258F4700258F4700258F470025904700259047002590
      470025904700259047002590470025904700258F4700258F4700258F4600258F
      4500258F4500258E4500258E4500258E4500258740001E7937000E6D2A000065
      1B00005F1100005E1100005C1100005B1000005B0F00005A0F0000590F000059
      0F0000580E0000560E0000560E0000550E0000550C0000530C00005F13004582
      5600B6C6BD0000000000000000000000000000000000D2D6F8002D34E7000038
      F400002CF800000DF400000EF500000FF500000FF600000FF600000FF700003A
      FB000037F6002D4BEF009EA7F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D9FB00727EF4001744F2000062FB00004A
      FD000021F9000017F8000016F8000016F8000016F8000015F8000014F8000014
      F8000014F8000012F8000012F8000011F8000018F900003BFB000043F9000C35
      F3003B59F000969FF500A2A8F7002240ED00042DF4000032F9000020F700000E
      F500000DF500000DF400000DF400000DF400000CF4000025F8000015EF005E67
      F000D0D5FA00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005500000055000040A8
      7500C2FFFA00E2FFFA00D1FFEE00E6F5F300B4E2C600C7F9F70040AB77000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00EEF3
      EF00B1D0D500529ABB00106C9D00084B6E00031C2D00010B130006314A000C64
      9100086F9A000E6EA1000B729900083E650003122300383A3800A8A9A800FCF0
      FC00E1F0E100D1E0DC00C7C9CC00B4B6B30091999300676E7100435762003D4A
      550036555D00536B6F007C8C9100A6B9BD00E0E9E000EFF1EF00E2F0F100F4F0
      FA00FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFF00EDF0FF00E2F0FF00DFF0F300D9EFE600A2D0CC004C91
      A400406A7F000B0F1400384043008798A0009FAAB000A9A9A900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DBDCDC000000000000000000000000000000
      0000000000000000000000000000C7DACA0000550D00006C1A00006C1A00006C
      1A00006C1B00006C1B00006A1900006818000068180000671700006516000065
      16000065160000651600006516000066160000681700006C1900006F1B00006F
      1C00006F1C00006F1C00006F1C00006F1C00006F1C0000701C0000701C000070
      1C0000701C0000701C0000701C00006F1C00006E1C00006E1C00006E1C00006E
      1C00006E1C00006E1C00006D1A00006D1A00006A180000661600006315000061
      14000061140000611300005F1300005F1300005F1200005E1100005D1000005D
      1000005B1000005A1000005A0F0000590F0000590E0000570D00006315004584
      5700B6C6BD00000000000000000000000000000000009BA4F1001F32EC000035
      F6000027F800000EF500000FF600000FF6000010F7000010F7000010F7000055
      FD00002EF1006671F100D7DBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D8FC00707DF5001D51F500005FFA000052FD000028
      FA00001CF900001BF900001BF900001BF900001AF8000019F8000019F8000019
      F8000018F8000017F8000017F800001CF9000040FC00003DF700193CF2006376
      F300C4CCFA00EAECFD00EFF1FD00B0BBF7002533EF00003EF8000030FA00000F
      F600000EF600000EF500000DF500000DF400000DF400001FF700001BF3004354
      F100B4BBF700000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000000580000005C0000006C
      0000D3FBE800CCFFF700DBFFF200D7FCFE00DDF9EA00D1FFFD0040A976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00F5F6
      F600D8E5E70095C0CF002A7EA7000C6C99000749680004213100062947000A54
      84000B729A000E6EA1000B7299000D537F00061F3400202120006E6F6E00C9C6
      C900A9B6AC008C9790006F777300545E5F00394854001F364F0013384C003552
      7100537D95008EADB200B9CFCC00CBE2E200EFF7EF00FEFEFE00F0F8FF00F9F6
      FF00FFFBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFD00E0F0F200EAF5FC00E4F2EA00DFF0DF00B1D3CF004E94
      AA000E5F8700020E17000C131400596F780093A5AE00ABADAB00D4D7D400FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1E2E3000000000000000000000000000000
      0000000000000000000000000000C7DBCB00005B1000007B2500007B2400007B
      2400007B2400007A240000782300007722000077220000762100007420000073
      200000721E0000711D00006F1B00006D1A00006C1900006A1900006A1900006A
      1900006A1900006A1900006A1900006A1900006A1900006A1900006A1900006A
      1900006A1900006A1900006A1800006918000069180000691800006918000069
      1800006918000067180000671700006717000067160000661600006516000064
      1600006416000064160000631500006315000063150000611400006113000060
      1300005E1300005E1300005E1200005D1000005B1000005A1000006717004586
      5800B6C6BD00000000000000000000000000000000006C7AEB001439F0000033
      F8000021F8000010F7000010F7000010F7000011F7000012F800001BF800005C
      FD000133EF008691F300F7F8FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3DAFC00707FF6001E57F5000061FB000059FD000031FA000020
      F9000020F9000020F900001FF900001FF900001FF900001EF900001EF900001D
      F900001CF900001CF9000026F9000048FC000041F8001A3EF2006978F300CDD3
      FB00000000000000000000000000F9FAFE004A59EF000847F7000036FA000017
      F8000010F700000FF700000EF600000EF500000EF5000019F7000023F7002744
      F00098A3F400000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000007A
      1500067F1B000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005600000056
      0000005800000055000000560000005800000058000000580000005900000058
      000037AB6200A1F0D100D1FFEF00D3FFFF00D9FFFC00C7FBFC0046AB75000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6FBF600C7E0DC00579BB40014739A000B6E980007486700083A5F000A53
      81000A7398000A7398000A719C0010679300082D420008090900272B2A00616E
      6C00455154002E3D4B001C3343000F2F42001038570027587F00487D910092B4
      D300B0CEE400D3E4E800E4EEE400E6EFE600FFFCFF00FFFFFF00FFFCFF00FFFE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFB00E0F0E000F9FCF900EAF5F000DFF0E300AFD3D2004894
      B50008669200031F340002080D002E3B40007A898C00A8AEAB009BA19A00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEBED000000000000000000000000000000
      0000000000000000000000000000C7DBCB000060130000822B00008229000082
      2900008229000081290000812900008129000081290000812900008027000080
      2700007E2600007C2500007A230000782200007620000074200000731F000071
      1D00006F1C00006E1B00006E1B00006E1B00006E1B00006E1B00006E1B00006E
      1B00006E1B00006D1B00006D1A00006D1A00006D1A00006D1900006D1900006D
      1900006D1900006A1900006A1900006A1900006A180000691800006817000068
      1700006817000066170000661600006616000065160000641600006415000063
      150000621400006214000060140000601200005E1200005E1200006B19004588
      5800B6C6BD00000000000000000000000000000000004F61E9000D46F3000032
      F900001CF8000011F7000012F7000012F7000013F7000015F8000033FA000056
      FC00194AF0009EAAF60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7DDFC007281F6001D57F6000065FB000060FE000039FB000027F9000027
      F9000027F9000026F9000025F9000025F9000025F9000024F9000022F9000022
      F9000023F900002CFA000050FC00004CFA00193FF3006A79F400CAD0FB000000
      0000000000000000000000000000000000007587F3001A4CF6000037F9000023
      F9000010F700000FF700000FF600000FF600000FF6000014F700002EF9000D34
      F0007E8BF300000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600005EB4
      7A004FA4530000690000006A0000006A0000006A0000006A0000006A0000006A
      0000006A0000006A0000006A0000006A0000006A000000690000006A00000061
      0000005A00000066000000690000006A0000006A0000006A0000006A00000069
      0000006C000092E8B700CAFDEE00D3FFFD00CCFFFC00BDF9F90043A66B000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E9F3F60098C6D6002D87A100106899000A6C98000A7398000A73
      98000A7398000A7398000A6DA4000E6CA60008365600020A1300040F19000521
      370005243900093564000B4D7F0016628C003A7F9A0074AEB700A4CDDB00D7EC
      DE00DFF0F600F1F1FF00F3EBF300E8E6E800FFF3FF00FFFEFF00FFF4FF00FFFB
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFB00E4F2E400F7FBF700EBF4FB00DFF0ED00A5D0D000378D
      B00004679500093E7300031123000D0F11004A5151008F9C9B00A6A9A400F9F9
      F900FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBF8FA000000000000000000000000000000
      0000000000000000000000000000C7DCCB000063150000832D0000832B000083
      2B0000822B0000822B0000822B0000822B0000822B0000822B00008229000082
      29000081290000812900008129000081290000802700007F2700007D2600007B
      2300007721000075200000741F0000731E0000721D0000711D0000711D000071
      1D0000711D0000701D0000701D0000701D0000701D0000701C0000701B000070
      1B00006F1B00006D1B00006D1B00006D1B00006D1B00006C1A00006C1900006C
      1900006B19000069190000691900006918000068170000681700006717000067
      1700006616000065160000631600006315000062140000621400006F1C004589
      5A00B6C6BD00000000000000000000000000000000003746E7000750F6000033
      F9000018F8000013F7000015F8000016F8000017F8000019F800004AFC00004D
      FA003F65F300B8C0F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCFF00DDE2
      FD007485F7001751F600006FFC000066FE000040FC00002EFA00002EFA00002E
      FA00002EFA00002DFA00002DFA00002DFA00002CF900002AF9000028F900002A
      F9000034FA000055FD00005BFB00163BF4006879F500CDD3FB00000000000000
      000000000000000000000000000000000000A3AFF7002E4EF500003AF9000030
      FA000012F7000012F7000011F7000010F700000FF7000011F7000038FB000028
      F1007177F200000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F000000751800BFE5
      D90084BF79003D9917003D9A17003D9A17003D9A17003D9A17003D9A17003D9A
      17003D9A17003D9A17003D9A17003D9A17003D9A17003D991700499D18000E7B
      0000006700001A951800329917003D9A17003D9A1700409918003D9A17003596
      1700067E2F00B4EDCB00D1FFF200D3FFFA00D1FFF300BFFFF90026913E000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FBF800D3E8DC0079ADC1002177A1000A7098000A7398000A73
      98000A7398000A7398000A7399000A7399000A4F7C000A3166000A396D000A55
      84000A6E93000A6A960014749700549AB500A0C7D700C2E0DD00DCEEDF00DFF0
      DF00DFF0F600F1F8FF00FEFEFE00FEFEFE00FFFEFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00E6F3E600F4F0E000DFEEE0008AC8CB001F82
      A500046A980009689600062D4600020B1500191B1F00585E5F00B0B5AF00DCDF
      DC00F9FAF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F6F8000000000000000000000000000000
      0000000000000000000000000000C7DCCC000064170000842F0000842D000084
      2D0000832D0000832D0000832D0000832D0000832C0000822B0000822B000082
      2B0000822B0000822B0000822B0000822A000082290000822900008029000080
      29000080290000802700007E2500007B2300007822000075200000741F000073
      1F0000731E0000731E0000731E0000731E0000731E0000731E0000731E000072
      1E0000711D0000711C0000711C0000711C0000711C0000701C0000701C00006F
      1B00006E1A00006D1A00006D1A00006D1A00006C1900006C1900006A18000069
      180000691800006918000067170000661700006616000065150000731D00458A
      5B00B6C6BD00000000000000000000000000000000001D1DE4000057F8000036
      FA000018F8000017F8000019F800001AF800001CF800001EF8000058FD000043
      F8005976F400C9D0FA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFBFF00DCE2FC00798A
      F7000E41F500007FFD00006CFF000045FD000035FB000035FB000035FB000035
      FB000035FB000035FB000035FB000034FB000033FA000031FA000033FA00003D
      FB000057FC00006EFC001032F3006376F600D3D8FC0000000000000000000000
      000000000000000000000000000000000000C2CBFA003B51F500003EF900003B
      FB000016F8000016F8000014F8000012F7000011F7000010F700003EFC000026
      F1007171F200000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005C0000005C000000710E00EAFDFF00CCFF
      FD00CFFDFD00D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FF
      F900D9FFF900D9FFF900D9FFF900D9FFF900D9FFFA00D9FCFD00E6FFFF0066B0
      880000743000D3FDFF00D7FFFC00D9FFFA00D7FDF900DDFBFF00CFFFFC00DBFF
      F900F5FFFF00E0FFFC00D7FFFD00DDFFFC00EFFDF900CFFFFF00005600000059
      0000005C00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00F3F9F600B6D7DB004298B200137B9E000A7398000A73
      98000A7398000A7398000A6D98000A7198000A6C93000A678F000A6891000A6D
      97000B6CA4001C648400669CB200AED1D700DDE9E700EFEDF400E0F0E000F6F0
      F600F9F0FD00FCF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFDFF00E6F3FF00F5F1E500FDF0DF00D5E1DF0077AFC6001371
      9A00097198000A71980009537E0004213500080C0F00363A380090989000A4A6
      A200F0F0EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6F3F6000000000000000000000000000000
      0000000000000000000000000000C7DDCC000066180000852F0000852F000085
      2F0000852F0000852F0000852F0000842F0000842E0000842C0000842C000083
      2C0000832C0000832C0000832C0000832C0000822B0000822B0000822B000082
      2B0000822B0000822900008128000080280000802800007E2600007D24000079
      22000077200000771F0000761F0000761F0000761F0000761F0000751F000074
      1F0000741F0000741E0000741E0000741E0000731E0000721E0000721E000071
      1D0000701C0000701C0000701C00006F1C00006F1C00006F1B00006D1A00006C
      1A00006C1A00006B1A00006B180000681800006818000067170000751F00458C
      5C00B6C6BD00000000000000000000000000000000001D1DE4000061F800003B
      FA00001AF800001CF800001EF800001FF9000020F9000022F9000070FE000030
      F3007E8CF600E2E5FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFF00DCE2FC007A8FF700012E
      F3000090FE000071FF00004AFD00003DFC00003DFC00003DFC00003DFC00003D
      FC00003DFC00003DFC00003BFC00003AFB00003AFB00003BFB000044FC00005F
      FD000178FD000A24F3005C73F600DDE2FD000000000000000000000000000000
      000000000000000000000000000000000000CED4FB004153F5000042F9000043
      FC00001AF8000019F8000017F8000015F8000013F8000011F700003FFC000028
      F2006E6FF300FAFBFF000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005A000000590000006700006CBA6100C5FB
      F400CAFFF100CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFF
      F700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFFA00DBFFFF005EB1
      880000763000C7FDFF00CAFFFC00CFFFF700D3FFFA00D5FFFA00CFFFF900D1FD
      F900CAFCEF00D5FDFE00D3FFFF00D1FDFF00BFF3F0006CC46B0000590000005A
      000000590000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFDFD00DEEDEA0080B6C3002F83AB000D709E000A73
      98000A7398000A7398000A7098000A7298000A7398000A7398000A7298000A6D
      99000A709D005A899800AAC5C400CCE9DF00D6EFE300E8F0EC00E0F0F400FBF9
      FE00FFF3FF00FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFC00E0F0EB00F9F0E100F1F0DF00B0D0D4005297B7000C6C
      98000A7398000A7398000A679400083D670006152C00151617004E514E00AFB1
      AE00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F5F8000000000000000000000000000000
      0000000000000000000000000000C7DDCC000069180000873000008730000085
      3000008530000085300000853000008530000085300000852F0000852F000085
      2F0000852F0000842F0000842F0000842E0000842C0000832C0000832C000083
      2C0000832B0000822B0000822B0000822B0000822B0000822A00008228000080
      2800007F2700007C2300007A2100007921000079210000792100007821000078
      210000782100007821000078210000761F0000761F0000761F0000761F000075
      1F0000741F0000741E0000741E0000721E0000721E0000711E0000701D000070
      1C0000701C00006F1C00006F1A00006C1A00006C1A00006B180000772100458D
      5C00B6C6BD00000000000000000000000000000000001D1DE6000065F900003F
      FB00001EF9000020F9000022F9000023F9000026F900002AF9000076FE000033
      F4007E8EF600E2E6FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE3FD00798CF700002EF50000AA
      FF000074FF00004DFD000044FC000044FC000044FC000044FC000044FC000044
      FC000042FC000042FC000042FC000042FC000042FC00004BFD00006DFE00007F
      FD000926F400556DF500ECEEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000DADFFC004656F5000049F900004D
      FC00001EF900001DF900001BF8000019F8000017F8000015F800003AFB00002B
      F5005461F300D4DAFB000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFF00F5F9F700C1D4D700669FB700237BA1000A70
      98000A7398000A7398000A7398000A7398000A7398000A729B000A6A97000E5C
      7E0032768E009DB4B800D0DBD400D7EBDE00D5EFDF00DFF0E200E0F0F000EDF7
      FD00EFF2FF00F8F8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFDFB00E0F0E000ECF0DF00CEE3DE007CB5C3002A83A4000A70
      98000A7398000A7398000A7098000A5C8B0007325300050D15001E1F1E008A8F
      8D00DDDFDE00FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBF7F9000000000000000000000000000000
      0000000000000000000000000000C7DECC00006A1A0000883300008833000088
      3300008833000087330000873300008732000087300000873000008730000085
      3000008530000085300000852F0000852F0000852F0000852F0000852F000084
      2F0000842C0000842C0000832C0000832C0000832C0000832C0000822B000082
      2B0000822B0000812A00007F2800007E2500007D2400007C2300007C2300007C
      2300007C2300007C230000792300007923000079220000792100007921000078
      2100007821000078210000761F0000761F0000761F0000751F0000741E000073
      1E0000721E0000721E0000721E0000701C0000701C00006F1C00007A2300458D
      5D00B6C6BD00000000000000000000000000000000001D1DE7000069F9000044
      FB000023F9000026F9000029F9000029FA00002BFA00002EFA00007BFE000037
      F5007E8FF700E2E6FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000D8DEFC007588F8000D49F600009CFE00007B
      FF000053FD00004AFD000049FD000049FD000049FD000049FD000049FD000049
      FD000049FD000049FD000049FD000049FC000053FD000076FE000075FC001039
      F6005D73F800EBEEFE00FDFDFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFF00545AF400004BF8000058
      FC000023F9000022F9000020F900001EF900001CF900001AF800003EFC00002F
      F7005462F500D4DAFC000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEFED00A3C6CC004792AB000E72
      98000A7398000A7398000A7398000A7398000A7398000A709C000D618F00224A
      5B007A909500CAD4D800DDE5E800DEEAE400DFF0DF00DFF0E100DFF0EB00DFF0
      FC00E7F0FF00F0F5FF00F8FCFF00FFFEFF00FFFAFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFDFB00D6EFE000DCEADE009AC6D1004596B100117798000A73
      98000A7398000A7398000A7398000A70980008507100041D2D0008090A003B41
      3F00ADB0AD00ECEAEC00FFFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAF5F8000000000000000000000000000000
      0000000000000000000000000000C7DECC00006C1B0000893500008835000088
      3500008835000088350000883500008834000088320000883200008832000087
      3200008732000087310000873000008730000086300000853000008530000085
      300000852E0000852E0000852E0000842E0000842E0000842C0000842C000083
      2C0000832C0000822B0000822B0000812A0000802800007F2700007E2500007E
      2500007E2500007E2500007C2500007C2500007C2400007C2300007C2300007B
      2300007B2300007B230000782200007821000078210000772100007720000076
      200000751F0000751F0000741F0000731E0000721E0000711E00007C2600458F
      5F00B6C6BD00000000000000000000000000000000001D1DE900006EF900004A
      FC000029FA00002CFA00002FFA000032FB000034FB000037FB000081FF00003A
      F6007E90F800E2E6FD0000000000000000000000000000000000000000000000
      00000000000000000000D4DAFD007286F800175DF8000092FD000080FF000057
      FE000051FE00004FFE00004FFE00004FFE00004FFE00004FFE00004FFE00004F
      FE00004FFE00004FFE00004EFE000059FE00007FFF000072FC001649F8006279
      F800DEE3FD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E6FD004A58F6000050FA00005A
      FD000029FA000028FA000024F9000022F9000020F900001EF9000044FC000033
      F7005464F600D4DAFC000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005A0000005A0000005900000E8B
      0E00007901000055000000550000005500000055000000550000005500000055
      0000005500000055000000550000005500000055000000550000005500000058
      000000590000005100000054000000550000006F0000BDF5E400D1FFF600D1FF
      F400CFFDF700D1FFF700D1FFFE00B4EBDB0069B87B0000610000007A0E001A86
      2100006A0000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9DFEB006DABC2001F80
      9D000A7398000A7398000A7398000A7398000A7398000A6B940016597E004853
      5600BDC2BD00DEE8F200E1F0FF00E2F1F300E5F2E500E5F0EA00E5F0FF00E5F0
      FF00F8F0FF00EDF0FF00ECF6FF00FFFCFF00FFF5FF00FFFEFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFE
      FF00F9FCFF00F2FAFB00C3EBE000C3D5D80061A1BA001B7DA2000A7398000A73
      98000A7398000A7398000A7398000A7398000A648400083F550003141D000305
      04006C6D6B00D2CAD100FCF6FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F4F7000000000000000000000000000000
      0000000000000000000000000000C7DFCC00006D1B00008A3600008936000089
      3600008936000089360000893600008935000089340000893400008834000088
      3400008834000088330000883200008832000087320000873200008632000086
      30000086300000853000008530000085300000852F0000852E0000852E000084
      2E0000842E0000832C0000832C0000832C0000822B0000822B00008129000081
      2800007F2600007F2600007E2600007E2600007E2600007E2600007E2500007D
      2400007D2400007D2400007C2400007C2400007B2200007B2200007922000078
      22000078210000782000007720000077200000751F0000751F00007E2700458F
      5F00B6C6BD00000000000000000000000000000000001D1DEA000072FA00004F
      FC00002FFB000032FB000035FB000038FC00003AFC00003EFC000088FF00003D
      F6007E91F800E2E6FD0000000000000000000000000000000000000000000000
      000000000000D3DAFC007086F9001D6AF900008CFD000088FF000060FE000053
      FE000054FE000056FE000056FE000056FE000056FE000056FE000056FE000056
      FE000054FE000054FE00005EFF000085FF000070FC001954F800677EF900D3D9
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1D8FC00425AF8000052FB00005B
      FD000032FB00002FFB00002CFA000029FA000024F9000022F900004FFD000034
      F600676FF600F1F3FE000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005500000060
      0000005D00000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00D5FFFF007ECEA400005C00000059000060B76900A6DB
      9D002F972900005F000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9DFEB008ABCD1004A98
      B3000B7499000A7398000A7398000A7398000A7298000A58830020466F006E8A
      9000D9EADB00F8F1F800ECF1FF00F0F7FF00FFFAFF00FFF1FF00FFF1FF00FFF1
      FF00FFF1FF00EEF1FF00EDF6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F9
      FE00DFF0FE00DAEDF900BCDDDE006DAAC2002A7CAE000D6FA0000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A739800096383000002
      0200211F1E00A09F9E00ECECEC00FEFFFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F4F6000000000000000000000000000000
      0000000000000000000000000000C7DFCD00006F1C00008B3800008B3800008B
      3800008A3800008A3800008A3700008A3600008A3600008A3600008936000089
      3600008935000089350000893400008934000088340000883400008834000088
      3200008832000087320000863200008631000086300000863000008530000085
      30000085300000852E0000842E0000842E0000842D0000842C0000832C000083
      2B0000822A0000812900008128000081280000802800007F2800007F2700007F
      2700007F2600007E2600007E2600007E2600007D2500007D2500007C2400007B
      2400007B2300007B2200007A2200007922000078210000782000008029004590
      6000B6C6BD00000000000000000000000000000000001D27EB000074FA000058
      FD000039FC00003AFC00003DFC00003EFC000040FC000044FC000080FF000053
      FA006385F900D0D7FC0000000000000000000000000000000000000000000000
      0000D3DBFC007087F9001E71F900008BFD00008DFF000067FE00005AFE00005A
      FF00005AFF00005BFF00005BFF00005BFF00005BFF00005BFF00005BFF00005B
      FF00005AFF000065FF00008DFF000077FC001A5AF9006981F900CDD5FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5CFFC003D5EF9000057FC00005D
      FE000038FC000035FB000033FB000030FB00002BFA000029FA000057FD000036
      F6007175F600000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600000056
      0000005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00DBFFF40095C59A00005500000056000081D28C00C2FD
      FD00ACF3DC00006B000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9DFEB00A6CADD007AB4
      CB002087A5000A7398000A7398000A6E98000A608F00084066002B405000A9B2
      AD00F6F8F700FEFDFE00FDFDFF00FDFEFF00FFFEFF00FFFDFF00FFFDFF00FFFD
      FF00FFFDFF00FDFDFF00FDFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F9
      F300DEEBE200CBD6DA00599BB10025789F0010719B000A7399000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A739800096485000007
      0C000404080063636400BBC3BB00EDF7ED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F4F7000000000000000000000000000000
      0000000000000000000000000000C7DFCD0000701D00008C3900008C3900008B
      3900008B3900008B3900008B3800008A3800008A3800008A3800008A3800008A
      3800008936000089360000893600008936000089360000883600008835000088
      3400008834000088340000873400008732000087310000873100008631000086
      31000086300000862F0000852F0000842F0000842E0000842D0000842D000084
      2D0000832D0000832B0000822A00008229000081290000812900008129000081
      2900008028000080270000802700007F2700007F2700007E2600007E2600007E
      2600007E2500007D2500007D2400007B2400007B2400007A220000812C004590
      6200B6C6BD00000000000000000000000000000000002E44EF000472FB000060
      FD000045FC000040FC000043FC000045FC000047FC000049FC000075FF00006D
      FE004477F900BBC5FB000000000000000000000000000000000000000000D7DE
      FD007289F9001D70FA000090FD000093FF00006DFF00005EFE00005FFE00005F
      FF000060FF000060FF000060FF000060FF000060FF000060FF000060FF000061
      FF000069FF000091FF000082FD00195CF9006A83FA00CAD3FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACBAFB003265FA00005EFD00005D
      FE00003FFC00003CFB00003AFB000036FB000032FA000035FB00005DFD00003C
      F700717AF700000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000560000005C
      0000005F0000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E600CCFFFA00CFFF
      FC00D1FFFE00D3FFFE00CAFCFF000066000000520000004F0000C2F1EE00D1FB
      FF00CAE9E900005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F7FA00CBE0EC009BC1
      D30069A0B7000F6DA4000B7299000A6D98000A5082000E2E500042474A00D3D5
      D300FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000EAF5FF00E6EBEC00E7EFE700CDDF
      DA0093B1B8004E8091001C7A9C000F7399000B7298000A7398000A7198000A6E
      98000A7398000A7398000A7398000A7398000A7398000A7398000A688F000728
      520001070F001D1E1F007E867E00DDE6DD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F4F7000000000000000000000000000000
      0000000000000000000000000000C7E0CD0000721F00008D3B00008D3B00008C
      3B00008C3A00008C3900008C3900008C3900008C3900008C3900008B3900008B
      3900008A3800008A3800008A3800008A3800008A380000893700008835000087
      320000842F0000842F0000842F0000842E0000842E0000832E0000832E000082
      2E0000822B0000822B0000812B0000812B0000802A0000802A0000802A000080
      2A00007F2A00007F2700007E2700007F280000812A0000822B0000832B000082
      2B0000822B000082290000822900008129000081290000802800008028000080
      2700007F2700007F2700007F2600007E2600007E2600007D240000832F004590
      6400B6C6BD00000000000000000000000000000000004A64F2000C6CFC000066
      FE000051FD000046FC000048FC00004AFC00004CFD00004FFD00006EFF000086
      FF002669F800A7B4FB00000000000000000000000000FBFCFF00DDE3FD00748C
      F9001768F9000098FD000098FF000074FF000063FF000064FF000064FF000064
      FF000066FF000066FF000066FF000066FF000066FF000066FF000068FF000071
      FF000093FF000092FE001656FA006882FA00CDD5FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C93FA001D69FB000068FE00005B
      FE000045FC000043FC000041FC00003CFC000039FB000042FC00005FFE000849
      F800798AF800000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000005A
      0000005C00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005600000056000000710000C7F8ED00CFFFFF00D1FF
      FF00CCFCFF00D5FFFD00CCFCFF0060C69B0064C5A10064C69B00C7FDFF008CDD
      CD001A9147000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2E1E700A5C3
      CF009DC2CB003E89A90011769A000A71980008466B001223370051534F00E1EA
      E100FDFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FAFF00D5D9D800ABBAB800718F
      9E0038698D00146B8B000A6D98000E6E98001B799E002F86A2003089A200187A
      A0000A6898000A7298000A7398000A7398000A7398000A7398000A6F96000A59
      8500041C2C0003080C003C413F009CA2A000EFF0EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F4F7000000000000000000000000000000
      0000000000000000000000000000C7E0CD0000732000008E3D00008E3D00008E
      3D00008D3B00008D3B00008D3B00008D3B00008D3B00008D3B00008C3B00008B
      3900008B3900008B3900008B3900008B3900008A380000873500028434001488
      4100218840002488410024884100238741002386400023844000228440002284
      400023833E0023843E0023843F0023843F0023843F0024843E0024843E002484
      3E0024833E0024823D0023823D0015823A000681310000812C0000832B000083
      2D0000832D0000832D0000822B0000822B0000822B0000822B00008229000081
      290000802900008029000080280000802700007F2700007E2600008533004591
      6500B6C6BD00000000000000000000000000000000006176F4001163FA00006C
      FE00005CFE00004CFD00004EFD000050FD000052FE000055FE000064FF0000A1
      FF000157F7008699FA00F7F8FF0000000000FAFBFF00DCE2FD00798FF9000E58
      F90000A7FD00009BFF000077FF000068FF000069FF00006AFF00006AFF00006A
      FF00006AFF00006AFF00006BFF00006CFF00006CFF00006EFF000079FF000094
      FF0000A8FE00104DFB00637FFA00D3DAFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFF004664F900066DFC000074FF000059
      FE00004BFD000048FC000045FC000043FC000041FC00004FFD00005AFE001F5B
      F90090A3F900000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000058000000560000006E0000B7E9CE008FD9A80095D9
      9D00BFFBFF00CFFFFD00D5FFFF00C7FFFC00C7FFFF00CAFFFC00B7F0DD0057BD
      7B00005F00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2E1E800A7C6
      D300ADD1DA007EB2C0001D799D000B6F9800063D5600121C230057595400E2F1
      E200FDFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6FB
      F600F1F8F100F1F5F100EAECEE00D2DEE300CBD1D50095999A0058737C00285D
      7900145F87001E7DA1003184A8004890B20064A5BC0084B8C0007DB6BC004392
      AE000A6598000A7198000A7398000A7398000A678F000B5E8C000D709E000A6F
      980007486600021620000F1215005C606100D0D4D000F2F9F200FEFFFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F4F7000000000000000000000000000000
      0000000000000000000000000000C7E0CE0000752200008E3F00008E3F00008E
      3D00008E3D00008E3D00008E3D00008E3D00008E3D00008E3D00008E3D00008D
      3A00008D3A00008D3A00008D3A00008B3900028736000B83360022864A006DA6
      9A009EB4AB00A8B8B100A7B6B000A5B4AD00A3B1AB00A0AEA8009FACA7009FAC
      A700A0AFA800A1B0A900A4B2AB00A4B5AC00A6B7AE00A7BAB000A8BCB100A8BC
      B100A8BCB100A7BBB000A6B9AE006BA697002E8F5F000C803700027F2C000084
      2E0000852F0000842F0000842C0000842C0000832C0000832C0000832B000083
      2B0000822B0000822B0000822B00008228000080280000802800008637004592
      6700B6C6BD00000000000000000000000000000000008D9CF7001C59F8000074
      FD000069FE000050FD000053FE000055FE000057FE000059FE00005BFE0000A6
      FF00005AF9005F79F900CED6FD00F6F8FF00D9E0FD007A93FA000142F90000BC
      FE00009EFF000078FF00006CFF00006DFF00006EFF00006EFF000070FF000070
      FF000070FF000070FF000070FF000070FF000071FF00007CFF00009BFF0001B2
      FF000A40FB005C7BFA00DDE4FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9EDFF003349F9000079FC00007CFE000055
      FE000051FE00004EFD00004BFD000048FC000045FC00005FFE000053FD003C69
      FA00ADB9FB00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005C0000005C0000006D00001A8B2900B2DFB4005EBA610060B1
      4700CAF8F300D3FFFF00E0FFFF00D5FFFF00D7FFFF00D1FFFE009BD5A200238E
      2700005800000058000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2EEF400B8D4
      E200A5C6D800A7CBDE003482A6000F6D990009435D0016252A0057585400E1EC
      E100FDFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAF5
      EA00DFF0DF00D8E3D800BCC2C200859CA4006E859100415D690029596A002E75
      8B004595AE005EA4BA007DBAC700A5CEDF00C5DEE100DDEADF00C8DDD70075AA
      BF000C6A98000A7298000A7398000A73980009547C000A3766000D5888000A6C
      97000C709C00042C400001060B0032343300979D9600D9E8D900FBFDFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F4F7000000000000000000000000000000
      0000000000000000000000000000C7E0CE000075220000904100008F3F00008F
      3F00008F3F00008F3F00008F3F00008F3F00008E3F00008E3F00008E3D00008E
      3D00008E3D00008E3D00008E3D00008632001687460065AB9D00DCE7E400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD006EAD9D00158351000079
      240000873000008530000085300000852F0000852F0000852F0000842F000084
      2E0000842C0000832C0000832C0000822B0000822B0000822B0000883B004593
      6A00B6C6BD0000000000000000000000000000000000C5CDFB002A4DF700007C
      FC000079FE000057FE000059FE00005BFE00005DFE00005FFF000061FF00008F
      FF000090FF000D62F9006883F900B0BFFC005C7AF9000046FA0000D4FF0000A2
      FF000079FF000071FF000072FF000073FF000075FF000075FF000075FF000075
      FF000077FF000077FF000077FF000077FF000081FF0000A6FF0000B6FE000945
      FC005573FA00ECEFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5B6FC002363FD00007CFE000073FE000057
      FE000055FE000053FE000051FE00004EFD00004AFD00006DFF000047FB005674
      FA00C7D0FC00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005F00005EA96100DBFBE800D9FFFE00D3FFFE00ACE2
      CD00EAE7C400E4F9F200E2FCFF00E2FBFF00E0F9FF00D5FBFC006CA874000054
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2EA
      EE00A5BFCB00A4C8DA005D9CB3001C769C001D6988002E515B0058575500DCDC
      DC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8F5
      EA00DAEEDF00C2D2C8008D9891005F6C6D003A6B7C003F88A3005DA0B00084B6
      C100AACEDA00C4E3E000C9EDE300DBEFFA00F1F0EA00FBF0E100E0E5E20090BC
      D000136E9A000B7298000A7398000A739800074F6E00041E3300052235000967
      89000F6BA10008395B0002101C000D0E0E0045464200BCC6BB00F6F8F600FEFF
      FE00FFFFFF00FFFFFF00FFFFFF00F9F5F8000000000000000000000000000000
      0000000000000000000000000000C7E1CE000077230000904100009041000090
      41000090410000904100009041000090410000904100008F3F00008F3F00008F
      3F00008F3F00008E3F00008B39000F8D520063B39E00EAF1F000F1F3F200F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD00B8C3BD006BA592001389
      530000832B000088330000883300008730000087300000863000008530000085
      300000852F0000852F0000852F0000842F0000842C0000832C00008A3E004594
      6C00B6C6BD0000000000000000000000000000000000F9FAFF003741F3000078
      FA000084FF00005EFF00005DFF00005FFF000061FF000063FF000066FF000071
      FF0000A5FF000194FE000B64FD001359FC000A79FD0000C2FE0000A7FF00007E
      FF000077FF000076FF000077FF000078FF000079FF000079FF00007BFF00007B
      FF00007BFF00007BFF00007CFF000088FF0000AFFF0000ACFE00105CFC005D7E
      FB00EBEFFE00FDFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D58F900047AFD000085FF00006EFF00005B
      FF000059FE000057FE000055FE000053FE000050FE00007EFF00003DFA007885
      FB00EAEDFE00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005800000055000037A57200CCFFFF00D3FFFE00D3FFFE00BFFB
      F700006F000000700400006E0600006F060000710600006B0600006100000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00E9F1F40088B5C10094B3C000387997004888A50060848D00646C6500C5C7
      C500FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8F3
      EA00B6DEDF00A3C1CC0096A9AC0096B2BD0095B2BE00B1D2D500CEE7DE00DCEE
      DE00DDEFDF00E2F0E300FCF0FD00E5F0FF00E0F0EA00E0F0EF00DFF0F300B6D8
      D3001B7EA6000C7499000A7398000A7398000A648F00073B5E0001050700041C
      2F00096487000A5D8A00052E480000080B001B1C1B007D847D00D7E7D700F7FB
      F700FFFFFF00FFFFFF00FFFFFF00F9F5F8000000000000000000000000000000
      0000000000000000000000000000C7E1CE000079250000914300009143000091
      4300009143000090430000904300009042000090410000904100009041000090
      410000904100009041000088340051A97400CEE5DF00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400C6D4CA0082B7A300388C68003172
      43003C8E640094AFA600D2DDD400D5DCD500CDD3CD00C1C6C100A4B3AD005B98
      770000802D000088330000883500008834000088320000883200008732000087
      32000087310000873000008530000085300000852E0000852E00008B43004594
      6E00B6C6BD0000000000000000000000000000000000000000006173F7001173
      FC000083FF000071FF000062FF000065FF000067FF000069FF00006CFF00006F
      FF00007FFF00009CFF0000AFFF0000B1FE0000ADFF0000A1FF000082FF00007C
      FF00007BFF00007CFF00007DFF00007EFF00007EFF00007FFF00007FFF000081
      FF000081FF000081FF00008EFF0000B7FF0000A6FE00166EFC006287FC00DEE4
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F8FF00B1C1FD001552FB000094FE000082FF000067FF000061
      FF00005EFF00005DFF00005BFE000057FE000064FF00007BFF000C51FA0092A3
      FC00FBFCFF00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005A00003DA97200CAFFFF00D3FFFE00D3FFFE00C7FF
      FF00006000000059000000550000005600000059000000560000005600000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EDF3F50095B4C000A4C5D6005C9BB300648FA10085949600979E9700C4C5
      C400FBF0FB00FFF3FF00FFF3FF00FFF8FF00FFFBFF00FFF5FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F5
      EA00D7E4DE00CADCDA00BEE2D600D2E5D900D2E5D900EBEBDE00F7EFEF00F9F0
      F900F9F0F900FAF2FA00FFFCFF00FAF2FF00E8F0FB00DFF0FC00DFF0F400B9DB
      D400248AA8000D769A000A7398000A7398000A709700074F6C00000609000307
      0A00236F8C0014759A0009678A000C4457001819180033353300B7BBB700F1F2
      F100FFFFFF00FFFFFF00FFFFFF00F1EEF0000000000000000000000000000000
      0000000000000000000000000000C7E1CF00007A260000924500009245000092
      4500009245000091450000914400009143000091420000914200009142000091
      42000090420000904200109055007CBFA500F6F9F800FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000CBD4CD007AA0830023683900034F1B000043
      0B00054F19002A5F350090AC9F00C8D2CB00CDD3CD00C1C6C100B4B7B4007CA2
      9200178956000088330000883500008936000089340000893400008834000088
      3400008833000088320000873200008732000086300000863000008C45004595
      7000B6C6BD0000000000000000000000000000000000000000009AAAF9002A6B
      FA000082FD000089FF000068FF00006AFF00006CFF00006EFF000070FF000072
      FF000075FF000084FF000093FF000097FF000091FF000085FF00007EFF00007F
      FF000080FF000080FF000082FF000084FF000085FF000085FF000085FF000086
      FF000086FF000093FF0000C3FF0000B4FF001983FD00678DFC00D3DCFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EEFE003566FA000680FD000096FF00007AFF000068FF000066
      FF000064FF000062FF00005FFF00005DFF00007AFF000063FE004174FB00B9C6
      FD0000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A0000117F1F00CFEDCE00CAF0
      E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0
      E000C7F0DE00B7E7C9005BAB3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005C00004CA96700DBFFEF00D9FFFE00D3FDFD00C7F5
      E60000610000005A000000580000005800000059000000590000005800000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0F6F800A3C3D4007EB2BF0083B5C800799BA9007E8F9100A7AEA700D6D8
      D600FCEEFC00EEF0EE00F7F7F700F5F8FF00F1F3FF00FFF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FC
      F800F4F7F400F0F5F400ECF9F400F4FAF400F4FAF400FCFAF400FFFAFB00FFFA
      FF00FFFAFF00FFFBFF00FFFFFF00FFFBFF00F8FAFF00F4FAFF00F4F7F400CEDD
      D4003992AA001371A3000B729B000A7398000A7398000857760002111D000101
      0200426B79005191A8003188A5001C718C002754650028282600686F6800DDDF
      DD00FFFFFF00FFFFFF00FFFFFF00EEEDEF000000000000000000000000000000
      0000000000000000000000000000C7E2D000007D290000934700009347000093
      4700009346000093460000934600009245000092450000924500009245000092
      4500009144000091430033996E00A3CAC100FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B9C5BE004D7D570000460A00004307000043
      0700004307000043070033876500B1CABE00CDD3CD00C1C6C100B5B7B50087A6
      9E002C906E000089340000883500008A3700008A3700008A3700008936000089
      3600008935000089340000893400008834000088330000883200008E48004595
      7100B6C6BD000000000000000000000000000000000000000000D6DDFC004465
      F800007AFB000099FF000072FF00006EFF000071FF000073FF000076FF000077
      FF000079FF00007BFF00007DFF00007FFF000080FF000082FF000083FF000084
      FF000085FF000086FF000088FF00008AFF00008AFF00008BFF00008CFF00008C
      FF000097FF0000C5FF0000BFFF001A92FE006999FD00CDD8FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEF3FE009FBAFD000153FC0000A9FF00008CFF000075FF00006DFF00006B
      FF000069FF000066FF000064FF000065FF00008FFF000048FB007B94FC00E0E6
      FE0000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000580000007100007EBF6B0078C0
      800075C0800072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF
      7F006FC07E006FB972001D8B0900005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000298E3600ACD6A100CFEEE300B4E2C6008ACA
      8A00005D0000005A0000005A0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8FBFD00D4E5EF0089BBC90081B5C3007FA2AB006D7F8000727B7600C6CA
      C600ECEDEC00E2F0E200E9F5F300EFF7FF00EFF5FF00F2F3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFAF400D9DE
      D6004496B1001373A1000B729A000A7398000A73980009608100062A3E000001
      02003843460089A0A7007CABC400418DB100317E9700596F7300515B5700D5D8
      D600FFFFFF00FFFFFF00FFFFFF00E6E6E7000000000000000000000000000000
      0000000000000000000000000000C7E2D000007F2C0000934800009348000093
      4700009346000093460000934600009346000093460000924600009246000092
      46000092450000914400489D7400B9CDC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBBB40046774F00004A0900004B0900004B
      0900004B0900004B0900037F4C00A5C7B800CDD3CD00C1C6C100B5B7B5008AA6
      9F00359271000089360000883600008A3600008B3900008A3800008A3800008A
      3800008A3700008A370000893600008936000088360000883400008F4C004596
      7300B6C6BD000000000000000000000000000000000000000000F8FAFE006C7F
      F9001073FB000098FF00008AFF000073FF000077FF000079FF00007BFF00007C
      FF00007EFF000080FF000083FF000084FF000085FF000088FF000089FF00008A
      FF00008BFF00008CFF00008EFF00008FFF000090FF000090FF000093FF00009C
      FF0000C6FF0000C7FF001998FE006A9FFD00CAD7FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F8
      FF00BFD0FE003B75FC000090FF0000ABFF000083FF000075FF000073FF000071
      FF00006EFF00006BFF00006BFF000079FF00008CFF001752FA00A8B6FC00F8F9
      FF0000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000056000000560000005C0000005D
      0000005D0000005C0000005C0000005C0000005C0000005C0000005C0000005C
      0000005900000055000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000054000000560000006D000081CA860043A01C00006E
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C8E0EB007BB1BB0077A5AE00667C8100434C4B008286
      8100C7D3C700DAE6DA00DFEEF300EFF7FF00F8FAFF00EEF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFAF400D9DE
      D6004496B20010779B000A7398000A7398000A7398000A6A8E00094865000004
      06001918180098999700BBCBD70081B1C9004E97AA007AABB5008E969500E4E6
      E500FFFFFF00FFFFFF00FFFFFF00DDDDDC000000000000000000000000000000
      0000000000000000000000000000C7E3D10000812F0000944A0000944A000094
      4900009448000093480000934800009348000093480000934700009347000093
      46000093460000924600489E7500B9CEC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBCB500467C510000530C0000540C000055
      0C0000550D0000550D0004825100A6C8B900CDD3CD00C1C6C100B5B7B5008BA6
      A00037937200008A3800008A370000893600008B3800008B3900008C3900008C
      3900008B3900008B3900008A3800008A3800008A38000089360000904F004598
      7600B6C7BE00000000000000000000000000000000000000000000000000ACBB
      FB003A72FB000083FE0000A9FF00007CFF00007BFF00007DFF00007FFF000082
      FF000083FF000086FF000088FF00008AFF00008AFF00008CFF00008EFF00008F
      FF000091FF000092FF000093FF000095FF000096FF000098FF0000A3FF0000C9
      FF0000D3FF001797FE00689FFD00CDDAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FAFF00CAD9
      FE006396FE000073FD0000C3FF000094FF00007FFF00007AFF000078FF000075
      FF000073FF000070FF000074FF000099FF00006AFE005482FC00CED8FD000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000600000005F0000005C00000058
      0000005800000059000000590000005900000059000000590000005900000059
      000000590000005A000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000058000000590000005C00000068000000630000005D
      0000005D00000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A1C8CD0070AABB0064909F00525F61003435
      3300898C8700C3C7C300DAE6EA00ECF6F800F8F8FB00FAF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFAF600D1DE
      D9003C93AA000F779A000A7398000A7398000A7398000A719800095E8600010C
      1400080A0C007F817F00CFD8CF00CCE2DC0099C1C90089B8BE00EAEAEA00FCFB
      FB00FFFFFF00FFFFFF00FFFFFF00DBDAD9000000000000000000000000000000
      0000000000000000000000000000C7E4D3000085360000954A0000954A000095
      4A0000954A0000944A0000944A0000944A000094490000944800009348000093
      48000093480000934800499F7600B9CEC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBDB60046825400005C1000005D1100005E
      1100005E1200005E120004865700A6C8BA00CDD3CD00C1C6C100B5B7B5008CA7
      A00037947300008B3900008B3700008A3700008A3700008C3900008D3A00008D
      3B00008C3B00008C3A00008C3900008B3900008B3900008A3700009153004599
      7800B6C8BE00000000000000000000000000000000000000000000000000EFF2
      FE007181FA000A6DFB0000B3FF000091FF000080FF000082FF000084FF000087
      FF000089FF00008BFF00008DFF00008FFF000090FF000092FF000093FF000096
      FF000097FF000098FF00009AFF00009BFF00009EFF0000A9FF0002C7FF0000E6
      FF001194FF00649BFD00D3DFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF00D6E4FF006FA2
      FD000073FD0000BCFF0000AAFF000088FF000081FF000080FF00007CFF00007A
      FF000077FF000078FF000083FF0000A8FF00094FFC00A1B7FD00EEF2FE000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C0000005C0000005A00000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000590000005900000059000000590000005900000059
      0000005A00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAF5F80085BDCF00509AB500638E9F00363C
      400029282600878B8600C6D2C600DDEEDD00E0F0EA00E7F3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FAFE00B7DC
      EB00258CA9000D769A000A7398000A7398000A7398000A73980009678A00041C
      330003070A00676D6700CED2CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DDDDDC000000000000000000000000000000
      0000000000000000000000000000C7E5D4000088400000964D0000964C000096
      4C0000964C0000954C0000954C0000954B0000954A0000954A0000954A000094
      4A0000944A0000944A0049A07700B9CFC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBDB6004687560000661600006617000066
      1800006618000067180005895A00A6C9BB00CDD3CD00C1C6C100B5B7B5008CA7
      A00037947400008B3A00008B3900008B3900008B3900008B3A00008D3C00008E
      3D00008E3D00008E3C00008E3A00008D3A00008D3A00008B390000925600459B
      7A00B6C9BE000000000000000000000000000000000000000000000000000000
      0000A9B8FC00387BFC000090FE0000B8FF000089FF000089FF00008BFF00008D
      FF00008FFF000091FF000093FF000095FF000095FF000097FF00009BFF00009D
      FF00009DFF00009FFF0000A0FF0000A1FF0001ACFF0003C9FF0007E8FF000A8F
      FF005E97FD00DDE8FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFDFF00E5EEFF0081B1FE001088
      FE0000B8FF0000C0FF00008BFF000089FF000087FF000084FF000082FF000080
      FF00007DFF000083FF00009CFF000080FF003874FB00D4E0FE00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAFDFD00B6D3DB0062A1B700498AA400757E
      84001F212100232423007C827C00C6D1C600E9F0EA00FDF3FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAF9F500A1D7
      D5001C80A6000C7499000A7398000A7398000A7398000A7398000A6A91000932
      6500020911005C5D5C00C7C7C700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DDDDDC000000000000000000000000000000
      0000000000000000000000000000C7E1D000007A2C0000985600009650000096
      4F0000964F0000964D0000964C0000964C0000964C0000964C0000964C000096
      4C0000954C0000954B0049A17800BACFC800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBEB600468B5900006D1A00006F1B00006F
      1C00006F1C00006F1C00078C5E00A7CABC00CDD3CD00C1C6C100B5B7B5008DA7
      A0003A947500008D3A00008D3A00008D3A00008B3900008B3900008D3B00008E
      3E00008F3F00008F3F00008E3D00008E3D00008E3D00008E3B0000915300459B
      7800B6CABF000000000000000000000000000000000000000000000000000000
      0000EEF1FE007D96FB000067FA0000CBFF0000A2FF00008DFF00008FFF000091
      FF000093FF000095FF000098FF00009BFF00009DFF00009FFF0000A1FF0000A1
      FF0000A3FF0000A3FF0000A4FF0000A9FF0005C8FF000CE8FF000993FF00578D
      FD00ECF2FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECFF005C95FE000081FE0000C5
      FF0000D1FF000099FF000091FF00008FFF00008DFF00008AFF000087FF000084
      FF000086FF000097FF0000AEFF000042FC00A9C1FE00F1F5FF00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00ECF3F400B1CCE000649BC5003F86
      9F004D676E001C2123002B2D2C006B726B00B6C0B600ECF3EC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2F0F4008EC0
      D1000E6F9C000B7398000A7398000A7398000A7398000A7398000A6A92000A34
      6B000209120044494800B4B9B800FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DCDCDB000000000000000000000000000000
      0000000000000000000000000000C9E2D300047E3900009C6600009753000096
      4F0000964F0000964F0000964F0000964F0000964F0000964F0000964F000096
      4C0000964C0000964C004AA27900BAD0C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0BFB60047905C0000751E0000761F000077
      20000077200000772000098F6300A7CABD00CDD3CD00C1C6C100B5B7B5008DA7
      A0003A957500008E3D00008E3D00008E3D00008D3B00008D3A00008D3A00008E
      3D00009041000090410000903F00008F3F00008F3F0000934F00008C49005FAA
      8400D0DFD6000000000000000000000000000000000000000000000000000000
      0000FDFDFF00BBC8FD00467BFC000081FE0000DBFF00009AFF000096FF000098
      FF00009AFF00009DFF00009FFF0000A1FF0000A2FF0000A3FF0000A5FF0000A6
      FF0000A7FF0000A9FF0000ABFF0000BEFF0001D4FF000ABFFF003F88FD00ECF2
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCD5FF004891FF000A98FF0000C9FF0000D1
      FF0000A6FF00009AFF000095FF000093FF000091FF00008FFF00008DFF00008A
      FF000098FF0000AEFF000A86FF005C8FFD00E6EEFF00FDFEFF00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00DBE8F00091BDD4004694
      B300377A9C00214A5C00111E220024262400585F5A00A0A9A300E9EAEA00DCF3
      EC00E7F5EC00F7FBF700FFFFFF00FFFFFF00FDFEFD00ECF7EC00FBF6FB00FFFC
      FF00FFFBFF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFFA
      FF00FAFDFF00EEF6FF00FEF6FF00EFF6EF00ECF6EC00E3F5EC00B9DCDC0065A3
      B6000A6A98000A7298000A7398000A7398000A7398000A7398000A6D94000A47
      7B00020C17002D3234009EA5A400F6FAF800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DBDADA000000000000000000000000000000
      0000000000000000000000000000D6E7DF0039926B0000976300009752000097
      500000975000009750000097500000975000009650000096500000964F000096
      4E0000964E0000964E004AA27A00BAD0C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0BFB70047945F00007B2400007C2500007D
      2600007D2600007D26000B916700A7CABE00CDD3CD00C1C6C100B5B7B5008DA7
      A1003B967700008F3F00008E3F00008E3D00008E3D00008E3C00008D3B00008E
      3C0000904000009143000090410000904100009041000D9A6C00057F3F0072AE
      8500E3EEE7000000000000000000000000000000000000000000000000000000
      000000000000F2F4FF009CB5FD000E66FC0000B5FF0000CCFF0000A0FF00009D
      FF00009FFF0000A1FF0000A3FF0000A5FF0000A7FF0000A9FF0000ABFF0000AC
      FF0000ADFF0000AFFF0000B0FF0002C7FF0002D7FF0014B7FF006EA4FE00FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFF00E8F0FF006EA9FF003090FF000CB5FF0000D2FF0000C9FF0000AE
      FF0000A3FF00009FFF00009DFF00009AFF000096FF000094FF000091FF00009D
      FF0000ADFF00019DFF001B75FD00D1E0FF00FAFCFF0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F8F800C5DFE50079AF
      C9003384AA0023718C0012445700081A2400151718004044430086878700B0C8
      BF00D3E2D700E9F1E900EBF8F100EBF9F400FDFEFD00EEF7EE00FCF7FC00FFFC
      FF00F8F8F800F1F0F100F1F0F100F1F0F100F1F0F100F1F0F100F1F0F900F7F6
      FF00FAFBFF00EEF0FD00F1F0F100EEF0E200E4F0DF00C2DFDE0081B5C8003283
      9F000A6E98000A7298000A7398000A7398000A7398000A7398000A7197000A62
      8E0002121E00202225008F979900EEF7F900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DAD9D9000000000000000000000000000000
      0000000000000000000000000000E3EDE80071AB8E00018B470000985C000098
      5400009851000098510000985100009850000097500000975000009750000097
      500000975000009650004AA27B00BAD0C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0C0B7004798630000802900008129000081
      2A0000812A0000812A000C936B00A8CBBF00CDD3CD00C1C6C100B5B7B5008DA8
      A1003B97780000904000008F3F00008F3E00008F3E00008E3E00008E3C00008E
      3D00008F400000924400009142000091420000934E0009996F000D864C008CC0
      9F00F7FAF8000000000000000000000000000000000000000000000000000000
      00000000000000000000DBE4FE00729CFD000072FD0000DDFF0000C2FF0000A9
      FF0000A4FF0000A7FF0000A9FF0000ABFF0000ADFF0000AEFF0000B0FF0000B1
      FF0000B3FF0000B3FF0000B4FF0001C5FF000BDFFF001ED1FF00388BFF00DFED
      FF00FCFDFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FBFF00D7E8
      FF0088BBFF004B97FF0017A5FF0004C9FF0000D5FF0000C9FF0000B5FF0000A8
      FF0000A6FF0000A4FF0000A2FF00009FFF00009CFF00009AFF0000A1FF0000B4
      FF0000A9FF001C81FE008FB7FE00FAFBFF00FEFFFF0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F6F900BBD6
      E40077AABB00338AA400166D930009425F000217210003040500141514006B6E
      6B009CA09F00C0C9C100CDE2D500D5EDE400F7FBF600FFFBF600F7FBF600FCFB
      FC00F4F6EF00E5F0DF00DFF0DF00DFF0DF00DFF0DF00E6F0E600E8F0F600EEF4
      FF00F3F7FC00EBEFF300DFEBDF00EAE7D700D3DACE0094B6CB00478ABA000E6F
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000870
      9800021823001C1C1D0089919800EBF6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DBDADA000000000000000000000000000000
      0000000000000000000000000000F5F8F600BAD6C500017F3100069A6C00019A
      5B00009852000098510000985100009851000098510000985100009851000098
      510000985000009750004AA37B00BAD1C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0C1B800479A660000842E0000852E000085
      2E0000852E00008530000E956E00A9CBC000CDD3CD00C1C6C100B5B7B5008EA8
      A1003D97790000904200009040000090400000904000008F3F00008F3E00008F
      3E00008F40000091440000934500009245001F9E71000A8C52003F9A6900B7D6
      C500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8FAFF00CAD8FF004D86FD000191FE0000DCFF0000C5
      FF0000B0FF0000ACFF0000AEFF0000B0FF0000B1FF0000B2FF0000B4FF0000B5
      FF0000B8FF0000B9FF0000B9FF0000C0FF000DDAFF0023EFFF0022B8FF005CA2
      FF009AC5FF00CEE4FF00F3F9FF00000000000000000000000000000000000000
      0000000000000000000000000000EEF6FF00D0E6FF00A3CEFF0077B8FF0056B1
      FF0023B4FF0007BFFF0001D3FF0000D9FF0000C8FF0000B6FF0000AFFF0000AD
      FF0000ABFF0000A8FF0000A5FF0000A3FF0000A1FF0000A5FF0000B9FF0000B4
      FF001A97FF006FA4FF00E6EFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00E2E2E20069AABE002579A4000D6B9A000853710001121A00010406000001
      020020242600666B6900A6A9A600C7CAC700D6E2D300F0E5D500DFE8D900EFEC
      EF00FAEFED00F1F0E100DFF0E300DFF0DF00DFF0DF00F7F0F400FFF0FB00F1EF
      FA00D6EBF000C0E2D700CFD4D300B2C2BB008799A000457E9E001374A1000A73
      98000A7398000A7398000A7398000A7398000A7398000A73980009729800056A
      9800011723001D1E1F008C929A00EEF6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DBDADA000000000000000000000000000000
      000000000000000000000000000000000000EAF3ED003E955E000D935D00129C
      6A00079B5D000098540000985200009852000098520000985100009851000098
      510000985000009750004AA37B00BBD1C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000C0CDC40053A77E00018B4000008833000088
      3300008833000088350045A18200B6CEC400CDD3CD00C1C6C100B5B7B5008EA8
      A1003E97790000904300009042000090420000904100008F4000008F4000008F
      3F00008F40000091430003944A001D9D6700229E78000A85410084BB9900E5EE
      E900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F6FF00B7CDFE003677FE0006B0FF0002DA
      FF0001CBFF0000B7FF0000B3FF0000B5FF0000B7FF0000B8FF0000B9FF0000BB
      FF0000BDFF0000BEFF0000BFFF0000C0FF0006CDFF0018E9FF002CF3FF002DAF
      FF003DB5FF0060BAFF0082BDFF0095C5FF009ECDFF00A4CFFF00A4CFFF00A4CF
      FF00A4D0FF009CCCFF0091C3FF007CC1FF0060C2FF0037BBFF0016B5FF000DBF
      FF0005DAFF0007E7FF0001DAFF0000C3FF0000B8FF0000B5FF0000B3FF0000B2
      FF0000B0FF0000AEFF0000ABFF0000A9FF0000ABFF0000BCFF0000B9FF00119D
      FF0059A3FF00CDE1FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFF
      FE00F9FBF900CBE4E30064A7BD00227AA9000F6EA2000962840004192B000109
      0F0000020300030303001514130043424000898A890098A19800B8BBB700D2D4
      D200DEE8DE00DFF0EA00DFF0F900DFF0DF00DFF0DF00F7F0DF00FFF0DF00F0E9
      DE00CED2CE00A5ACA80088929A003A6A7C00155980000B648F000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7298000A6A
      98000217230023292D009F9AA300FFF6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDDDD000000000000000000000000000000
      000000000000000000000000000000000000F6FAF800B2CFBF001B904F001A98
      6900199F6E00099C610000995600009855000098540000985200009852000098
      520000985200009851004BA47C00BCD1C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD40086C2AD003AA276001F9355000A90
      500014925400379C5F00A2BFAD00CCD5CE00CDD3CD00C1C6C100B5B7B5008FA8
      A1003F9879000092440000914400009143000090420000904200009041000090
      40000090420006934B001D9C65002DA48600058E5300329A6300BEDFCD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F8FF00A5C1FE002C7EFE0009BA
      FF0006DCFF0003D1FF0000BEFF0000BAFF0000BCFF0000BDFF0000BEFF0000C1
      FF0000C2FF0000C3FF0000C4FF0000C6FF0000C7FF0006CFFF001FEFFF0044F3
      FF002AE2FF0023BFFF002BA5FF0033A8FF0039B4FF003EB8FF003CB8FF003AB8
      FF0038B9FF002DB3FF0023A5FF001AB1FF0011C9FF000EDEFF0012E9FF0014EB
      FF0007E2FF0000C8FF0000C1FF0000BEFF0000BDFF0000BAFF0000B8FF0000B6
      FF0000B4FF0000B2FF0000B0FF0000B5FF0000C4FF0000C4FF0010A3FF0050A1
      FF00B5D5FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00F7FBF600B8D6E10064A6C2002380AB000A68A000095486000949
      740005233B0002101900030A0D000B0B0D0017171700222323003B3B3900555A
      540067716B0077807C00888F8C0095979500959795008E908A007D827C006B72
      6B0058605B00424B53001F4271001252800008618F00076D97000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7098000A6C98000A72
      9800021823002E363300A4A9A700FDFDFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBECEC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005BB188001192
      5300219C6E0023A276000F9E6700039B5D000099570000995500009955000099
      550000985400009853004BA57C00BCD2C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D0DCD400B2CCC0007AB5A3004AAF
      970061B39F00B0C9B900D6E0D600D5DCD500CDD3CD00C1C6C100B5B7B5008FA8
      A1003F987A000093460000924600009244000091440000914300009042000091
      46000B965300259F6A0039A58800059462001F8E47009FCCAF00EBF4EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008AB2FD002A84
      FF0011BFFF000AE3FF0005D7FF0002C5FF0000C0FF0000C2FF0000C4FF0000C6
      FF0000C7FF0000C8FF0000CAFF0000CBFF0000CCFF0000CCFF0000CFFF0000D8
      FF0025F2FF0047F5FF0064F5FF005EF8FF004CFBFF0044FCFF0040FBFF003BFB
      FF0036FBFF0038FBFF0046F6FF003BF5FF0025F5FF0010ECFF0002D8FF0000C9
      FF0000C7FF0000C6FF0000C5FF0000C3FF0000C1FF0000BFFF0000BDFF0000BB
      FF0000B9FF0000B7FF0000BCFF0000CFFF0000D3FF000DA5FF004EA5FF00B7D7
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFD00DAEBED00A6CCDA0069A9C3002C83A7000F6898000B64
      9D00095B810007486B0007325700051E3E0003111D00030D1100111314001719
      17001B1F1D00232625002D2F2F0032333300323333003537350028343A001C2F
      3A0019313E0015465C000A5E88000A679100096E9600097298000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7298000A7098000A73
      980002182300454C4900B5BAB600FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEF7F3004EAD
      7E000D93550035A073003EA98B0016A27A000D9D6100059B6000019A5C000099
      580000995600009956004BA57E00BCD2C900FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD00C1C6C100B5B7B5008FA8
      A2003F997B0000934700009346000093460000934A0004944B000C954D00119A
      610034A7840061B292000B976B00118A3A0092C1A700EBF3EE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008BB5
      FE002F8CFF0017BDFF0016EFFF000CE4FF0004CBFF0000C7FF0000C8FF0000CB
      FF0000CDFF0000CEFF0000D0FF0000D1FF0000D2FF0000D2FF0000D3FF0000D3
      FF0000D4FF0000D4FF0000D4FF0004DEFF000AEAFF000DEEFF000CEDFF000BEB
      FF000AEBFF000AE9FF0002D8FF0000D3FF0000D2FF0000D1FF0000D0FF0000CF
      FF0000CDFF0000CBFF0000CBFF0000C9FF0000C7FF0000C4FF0000C2FF0000C1
      FF0000C0FF0000C4FF0000DCFF0000E8FF0009A5FF004BA6FF00BDDCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E87C71001A540600005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B2F5D500038414000059000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F8F800E1EEF200BCD9E2007AB4C2003D8AAC00106F
      A1000A709A000A6B93000A5E8A0009527B000749640005445A000A303F000822
      3A00071D3A00081E3B000A213E000A213E000A213E000F2D3E000B3650000740
      6100084F6C000A6181000A7397000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7197000A63
      8E000718220064696600CACDCA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFEF
      E60059B38C000C914F001A98620052AD940070B69B002CA78C000CA28200029B
      6000019A5A00019A5A004BA68000BCD2C900FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD00C1C6C100B5B7B5008FA9
      A200409A7B00019448000193470001934700039A670027A3840068B59A0086BB
      A10055AA880000925300128E410097C5AC00F3F8F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFD7FF004792FF000FA7FF0028F8FF0027F6FF0000D6FF0000CFFF0000D1
      FF0000D1FF0000D2FF0000D4FF0000D5FF0000D6FF0000D7FF0000D7FF0000D7
      FF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DA
      FF0000DAFF0000DAFF0000D8FF0000D7FF0000D6FF0000D5FF0000D4FF0000D3
      FF0000D3FF0000D1FF0000CFFF0000CDFF0000CBFF0000C8FF0000C6FF0000C6
      FF0000D0FF0000EFFF0000EBFF000198FF0053ADFF00CDE6FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF8075002056070000600000067B
      000075BA68000059000000540000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005800000070
      0A00D9E5E3000C8018000059000000580000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F8F800CBE4E50091C0CA00448A
      B5001B799F000D7598000A7398000A7398000A7398000A7398000A5D7C000A4F
      79000A4B7B000A4B7B000A4B7B000A4B7B000A4B7B000A5477000A5D83000A68
      92000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7298000A6A95000A48
      7C00101E2700868F8800E0E5E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FC00E1F2EA0095CAB1003AA16B0009934C00129B66002BA4890070B29A0083C4
      A1008BD0A6008FD6AA00A2DBBB00C8E0D400E4E4E400E6E6E600E5E5E500E4E4
      E400E4E4E400E3E3E300E2E2E200E2E2E200E1E1E100E0E0E000E0E0E000E0E0
      E000E0E0E000E0E1E000E2E2E200E2E3E200E3E4E300E3E4E300E3E4E300E3E4
      E300E3E4E300E3E4E300E2E3E200E1E2E100E1E1E100DFE0DF00DEDEDE00D1DE
      D800B2E2C9009AE6B90098E3B70095E0B20083C4A30066B0980031A27E000F96
      5C000C914B002AA26C00A8D4BD00F4F9F600FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8FBFF00CCE1FF0061ABFF000B9AFF0027DDFF0055FBFF001FF8FF0004D9
      FF0000D6FF0000D8FF0000D9FF0000DAFF0000DBFF0000DCFF0000DEFF0000DE
      FF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DF
      FF0000DFFF0000DEFF0000DEFF0000DCFF0000DBFF0000DBFF0000DAFF0000D8
      FF0000D7FF0000D5FF0000D4FF0000D2FF0000D1FF0000CFFF0000D7FF0001EA
      FF0002EFFF0000C5FF000093FF008ACCFF00DCEFFF00FAFCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8A7D0026590A00005A0000006E
      000084C38700005500000054000000580000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005800000071
      1100F7F0FA0006771F000058000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFDFA00E4F2E6009DC0
      DE005098B5002381A10010769B000C7199000B719B000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7098000A619000092E
      5E002B3A4100ADB7B000F3F8F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFEFD00ECF5F100C7E4D5008DCBAB0048AB8000129C67001B995700209F
      5C0022A25E0023A460003DAC80008BC0B200D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400A9C9
      C1004BB18E0026A8630025A7630025A56000209D5A0018975500279E6B0053B0
      890093CBAD00D2EBE000F0F8F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FBFF00DAEAFF0091C9FF0033A9FF001DAFFF0052FFFF006DF7
      FF0032F6FF000BE6FF0000DFFF0000DFFF0000E0FF0000E2FF0000E2FF0000E4
      FF0000E4FF0000E4FF0000E4FF0000E5FF0000E5FF0000E5FF0000E4FF0000E4
      FF0000E4FF0000E4FF0000E4FF0000E2FF0000E1FF0000E1FF0000DFFF0000DE
      FF0000DDFF0000DAFF0000D9FF0000D7FF0000DFFF0007ECFF000AF2FF0004DD
      FF000AB8FF0038B6FF00AFDCFF00E7F4FF00FBFDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9586002C5D0F00005A0000005D
      00007BC79700178E4E001A8C3C001A8F3900208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00148F3F004FA8
      7200F9FDF2000E751C000058000000550000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFE00CDF0
      E500A9D0DC0069AAC3003086A800176E9E00106CA6000A7299000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7098000A5F89000620
      340076817E00DBD4DB00FFF8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FCFB00E6F3ED00C8E5D800ABDCC7008FCFAE007BC6
      A00078C69E0078C69F008FCFB400C3E2D700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D5E7
      E10098D3BC0078C69E0078C59E0078C59E0078C49D009AD3B400B7DFCD00CEE7
      DD00E8F3ED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF00E7F3FF00B1D8FF006CBEFF0028B2FF0035CA
      FF0060F4FF007AF8FF0057F5FF001EEFFF0000E8FF0000E7FF0000E7FF0000E8
      FF0000E9FF0000E9FF0000E9FF0000E9FF0000EAFF0000E9FF0000E9FF0000E9
      FF0000E9FF0000E8FF0000E8FF0000E7FF0000E6FF0000E5FF0000E4FF0000E3
      FF0000E2FF0000E3FF000AEDFF001BF1FF001BF5FF000EE8FF0004CDFF0025BE
      FF007ECDFF00C2E6FF00F5FBFF00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFA090003A631500006100000058
      00003DAF6B00A3E1D100A6DDAC009EE0A6009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009BDEB300BAE3
      D000B7DEA600147706000058000000560000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFE
      FD00F5FAFB00D0E6E80097C3CE005396B8000A6BA6000A6B99000A7198000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000C6E930014608400235A
      6E00B7C4C400F2F2F200FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFE00EDF7F300E0F1
      E800DEF1E700DEF1E700E6F5ED00F5FBF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9FD
      FB00EAF7F000DEF1E700DEF0E700DEF0E700DEF0E700F4FAF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FBFF00D4EBFF0094CCFF0064C6
      FF004BC5FF0058D5FF006BEFFF007FFBFF0083F7FF0062F5FF003AF5FF0012F5
      FF0002EFFF0000EEFF0000EEFF0000EEFF0000EEFF0000EEFF0000EEFF0000EE
      FF0000EEFF0000EDFF0000EDFF0000ECFF0000EBFF0001EDFF0008F0FF001AF4
      FF002FF3FF0042F4FF0025FBFF0017E4FF0012D2FF002ECDFF0062CEFF00A1DA
      FF00DFF1FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFAD9B004F691B00006100000055
      0000005900000068000006730000067300000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C740000007700000063
      0000005C0000005A00000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFFFF00F6FBFB00DEE8EA00B0CAD30071AECA003A8EA8001C7E9B000F75
      980008709800076E98000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000D70980017729B003A86A3009BB3
      AE00D9E4DF00F7FAF800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0E9
      FF008BCDFF0060C9FF0063D6FF007CDBFF008ADFFF0086F4FF0090FFFF0084FF
      FF0074F8FF0072F7FF0065F7FF0052F7FF0047F7FF0045F7FF0042F7FF003FF7
      FF003BF7FF0038F7FF0041F7FF004AF6FF0056F5FF0055F7FF0046FBFF003AFC
      FF003AEFFF0042DCFF0035E1FF0043D3FF0063CEFF0098DAFF00D3EEFF00FAFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB09E0052691B00005A00000058
      000000590000005C0000005D0000006100000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006400000059
      0000005C0000005A00000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FAFAFA00EBF0F100D0E6ED0094C5CC0067A6B6004091
      AD002483A70013779F00096D9800066D9800097298000A7398000A7398000A73
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A7398000A6F98000C6E9E001F76A2004B93AE0095C3CE00E3EB
      E600F3F8F500FCFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6EDFF00A1D8FF006FC8FF0054CAFF0066E0FF0098E8FF00AEE3
      FF00AAE5FF00B6F1FF00B3FBFF00A8FEFF00A0FFFF009BFFFF0094FFFF008EFF
      FF0085FFFF007DFFFF0082FEFF007FF7FF0084EDFF007EE7FF0066E7FF004FE9
      FF0043DDFF004CC8FF0077D2FF00B1E4FF00EAF8FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB49E00466A1B00005600000059
      0000005900000059000000580000005A00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000059
      0000005A0000005900000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFDFD00DFEEEE00C4DBE00095C3
      D1006DABBF004C93B0002C81A80013779F000E7099000D6F9E000B6F9B000A71
      98000A7398000A7398000A7398000A7398000A7398000A7398000A7398000A73
      98000A7398000A6F980013759E00287FAB005195B90093BFCF00E1F0F000FCFE
      FE00FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFDFF00DFF3FF00A7DEFF006ECBFF0044BF
      FF0038C2FF004CDCFF0067EEFF0088F5FF0098F6FF0094F6FF008FF7FF008AF7
      FF0083F7FF007DF7FF0069F6FF004DE7FF0039D3FF0035C6FF004DC9FF0080D7
      FF00AEE7FF00E8F7FF00FDFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB59B00436A1800005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3F0
      F000C6DADF00A3C4CF0074B3C5004D9BB8003985A700277BAB001975A4001072
      9D000B719C00087198000A7398000A7398000A7398000A7398000A7298000B71
      990010749D001B789E003E92B10068ACC1009CC8D700D5E6EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FBFF00D2F1FF00AAE5FF0093DEFF008CDCFF008CDCFF008CDEFF008CDE
      FF008CDEFF008CDEFF0097E2FF00BAEBFF00D9F4FF00F1FBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFBEAB0081753500005C0000005F
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EDFAF600C6EBE400B6D3E3009DC2CD006CADC1004A9EB700348B
      B100257AAD001E7AA200207D9E001E7D9E001E7D9E001F7D9E00217CA000267C
      A6003689B10059A2B30097C5D400BDE3E200E1F7F000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE2E900FFABA400E27A7900E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1F2E800C1EDDF00B7DF
      DF00A9CCDF00A7C9DB0099B5C1008AB4C00087B4C00090B4C0009EBDCB00AED3
      DF00C3EDDF00DCF0DF00F7FBF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000424D3E000000000000003E000000
      2800000020010000D80000000100010000000000601E00000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000000000000000FFFF000003FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000001FFFFFFFFFFFFFFFF
      FFFFFFFFF0003FFFFFFF000000000000000000000000000000000001FFFF87FF
      FFFFF81FFFFFFFFE000001FFFFFF000000000000000000000000000000000001
      FFFC000000000007FFFFFFF80000003FFFFF0000000000000000000000000000
      00000001FFF0000000000001FFFFFF800000000FFFFF00000000000000000000
      0000000000000001FFE00000000000007FFFFF0000000007FFFF000000000000
      000000000000000000000001FFC00000000000003FFFFC0000000000FFFF0000
      00000000000000000000000000000001FFC00000000000003FFFFC0000000000
      FFFF000000000000000000000000000000000001FFC00000000000001FFFF800
      000000007FFF000000000000000000000000000000000001FF00000000000000
      1FFFF000000000003FFF000000000000000000000000000000000001FE000000
      000000000FFFE000000000001FFF000000000000000000000000000000000001
      FE000000000000000FFFC000000000000FFF0000000000000000000000000000
      00000001FE0000000000000007FF00000000000007FF00000000000000000000
      0000000000000001FE0000000000000007FE00000000000003FF000000000000
      000000000000000000000001FE0000000000000007FC000001FE000001FF0000
      00000000000000000000000000000001FE0000000000000007FC00001FFF8000
      00FF000000000000000000000000000000000001FE0000000000000007FC0000
      7FFF8000007F000000000000000000000000000000000001FE00000000000000
      07F800007FFF8000007F000000000000000000000000000000000001FE000000
      0000000007F00001FFFF0000003F000000000000000000000000000000000001
      FE0000000000000007F00003FFFE0000003F0000000000000000000000000000
      00000001FE0000000000000007E00007FFFC0000001F00000000000000000000
      0000000000000001FE0000000000000007E0000FFFF80000001F000000000000
      000000000000000000000001FE0000000000000007C0003FFFE00000000F0000
      00000000000000000000000000000000FE0000000000000007C0007FFFC00000
      000F000000000000000000000000000000000000FE0000000000000007C0007F
      FF800000000F000000000000000000000000000000000000FE00000000000000
      07C000FFFF800000000F000000000000000000000000000000000000FE000000
      0000000007C000FFFF0000000007000000000000000000000000000000000000
      FE00000000000000078001FFFE00000000070000000000000000000000000000
      00000000FE00000000000000078001FFFC000000000700000000000000000000
      0000000000000000FE00000000000000078001FFF800000E0007000000000000
      000000000000000000000000FE00000000000000078003FFF000001F00070000
      00000000000000000000000000000000FE00000000000000078003FFC000003F
      0007000000000000000000000000000000000000FE00000000000000078003FF
      8000007F0007000000000000000000000000000000000000FE00000000000000
      078003FF000000FF0003000000000000000000000000000000000000FE000000
      00000000078003FF000001FF0003000000000000000000000000000000000000
      FE00000000000000078003FE000001FF00030000000000000000000000000000
      00000000FE00000000000000078003FC000007FF000300000000000000000000
      0000000000000000FE00000000000000078003F800000FFF0003000000000000
      000000000000000000000000FE00000000000000078003F000001FFF00070000
      00000000000000000000000000000000FE00000000000000078003E000003FFF
      0007000000000000000000000000000100000000FE0000000000000007800380
      00007FFF0007000000000000000000000000000000000000FE00000000000000
      078001000000FFFE0007000000000000000000000000000000000000FE000000
      00000000078000000001FFFE0007000000000000000000000000000000000000
      FE00000000000000078000000003FFFE00070000000000000000000000000000
      00000000FE00000000000000078000000003FFFE000700000000000000000000
      0000000000000000FE0000000000000007C00000000FFFF80007000000000000
      000000000000000000000000FE0000000000000007C00000001FFFF8000F0000
      00000000000000000000000000000000FE0000000000000007C00000003FFFF0
      000F000000000000000000000000000000000000FE0000000000000007C00000
      007FFFE0000F000000000000000000000400000000000000FE00000000000000
      07E0000000FFFFC0001F000000000000000000000000000000000000FE000000
      0000000007E0000001FFFF80001F000000000000000000000000000000000000
      FE0000000000000007F0000003FFFF00003F0000000000000000000000000000
      00000000FE0000000000000007F0000007FFFF00003F00000000000000000000
      0000000000000000FE0000000000000007F0000007FFFE00003F000000000000
      000000000000000000000000FE0000000000000007F800000FFFF000007F0000
      00000000000000000000000000000000FE0000000000000007FC000007FFC000
      007F000000000000000000000000000000000000FE000000000000000FFC0000
      01FE000001FF000000000000000000000000000000000000FF00000000000000
      0FFE00000000000003FF000000000000000000000000000000000000FF000000
      000000001FFF00000000000007FF000000000000000000000000000000000000
      FFC00000000000001FFFC000000000000FFF0000000000000000000000000000
      00000000FFC00000000000003FFFE000000000001FFF00000000000000000000
      0000000000000001FFE00000000000007FFFF000000000003FFF000000000000
      000000000000000000000001FFE00000000000007FFFF000000000003FFF0000
      00000000000000000000000000000001FFF0000000000001FFFFF80000000000
      7FFF000000000000000000000000000000000001FFFC000000000007FFFFFC00
      00000000FFFF000000000000000000000000000000000001FFFF80FFFFFFE03F
      FFFFFF0000000007FFFF000000000000000000000000000000000001FFFFFFFF
      FFFFFFFFFFFFFFE00000000FFFFF000000000000000000000000000000000001
      FFFFFFFFFFFFFFFFFFFFFFF80000007FFFFF0000000000000000000000000000
      00000001FFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFF00000000000000000000
      0000000000000001FFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFF000000000000
      000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000100000000000000000000000000000000
      000000000000}
  end
  inherited imageITEM: TImageList
    Left = 724
    Top = 38
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
    Left = 288
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
    Left = 288
    Top = 32
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
    Left = 320
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
    Left = 320
    Top = 32
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
    Left = 384
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
    Left = 384
    Top = 32
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
    Left = 416
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
    Left = 416
    Top = 32
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
    Left = 448
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
    Left = 448
    Top = 32
  end
  object ImageOPC2: TImageList
    Height = 36
    ShareImages = True
    Width = 36
    Left = 516
    Top = 62
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
    Left = 480
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
    Left = 480
    Top = 32
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
    Left = 352
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
    Left = 352
    Top = 32
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
