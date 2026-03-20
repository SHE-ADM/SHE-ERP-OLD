inherited FrmNFeSaida: TFrmNFeSaida
  Left = 432
  Top = 176
  Caption = 'Sa'#237'das de Notas Fiscais'
  ClientHeight = 519
  ClientWidth = 784
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 498
    Width = 784
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
        Width = 510
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
  inherited DSMenu: TdxDockSite
    Width = 784
    Height = 441
    DockType = 0
    OriginalWidth = 784
    OriginalHeight = 441
    inherited LDSMenu: TdxLayoutDockSite
      Width = 784
      Height = 441
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSEdicao: TdxLayoutDockSite
        Width = 684
        Height = 441
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited DPMenu: TdxDockPanel
        Height = 441
        DockType = 2
        OriginalWidth = 100
        OriginalHeight = 573
        inherited SBMenu: TdxSideBar
          Height = 416
        end
      end
    end
    inherited DPEdicao: TdxDockPanel
      Width = 784
      Height = 441
      DockType = 1
      OriginalWidth = 470
      OriginalHeight = 285
      inherited PNLPrincipal: TPanel
        Width = 780
        Height = 416
        object GBCEAN: TGroupBox
          Left = 0
          Top = 0
          Width = 780
          Height = 41
          Align = alTop
          Caption = '  C'#243'digo de Barras  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object EDCEAN: TdxMaskEdit
            Left = 1
            Top = 16
            Width = 776
            Color = 14065456
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            TabOrder = 0
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            Height = 22
            StoredValues = 1
          end
        end
        object PNLEdicao: TPanel
          Left = 0
          Top = 41
          Width = 780
          Height = 375
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            780
            375)
          object LACDNF: TLabel
            Left = 4
            Top = 12
            Width = 57
            Height = 14
            Caption = 'Nota Fiscal'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LADTSA: TLabel
            Left = 33
            Top = 60
            Width = 28
            Height = 14
            Caption = 'Sa'#237'da'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAMotorista: TLabel
            Left = 11
            Top = 108
            Width = 50
            Height = 14
            Caption = 'Motorista'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LACarro: TLabel
            Left = 33
            Top = 133
            Width = 28
            Height = 14
            Caption = 'Carro'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAModelo: TLabel
            Left = 68
            Top = 150
            Width = 202
            Height = 13
            AutoSize = False
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object LATipo: TLabel
            Left = 37
            Top = 36
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
          object LAAjudante1: TLabel
            Left = 11
            Top = 156
            Width = 50
            Height = 14
            Caption = 'Ajudante'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAAjudante2: TLabel
            Left = 11
            Top = 180
            Width = 50
            Height = 14
            Caption = 'Ajudante'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 6
            Top = 227
            Width = 55
            Height = 17
            Caption = 'N'#186' Coleta'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object CECDNF: TdxCurrencyEdit
            Left = 64
            Top = 8
            Width = 95
            HelpContext = 1
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 0
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            OnValidate = CECDNFValidate
            DecimalPlaces = 0
            DisplayFormat = '0'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object TEHRSA: TdxTimeEdit
            Left = 158
            Top = 56
            Width = 60
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 3
            AutoSize = False
            TimeEditFormat = tfHourMin
            Height = 22
            StoredValues = 4
          end
          object DEDTSA: TdxDateEdit
            Left = 64
            Top = 56
            Width = 95
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 2
            AutoSize = False
            Date = -700000.000000000000000000
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object PNLConsulta: TPanel
            Left = 298
            Top = 0
            Width = 479
            Height = 273
            BevelOuter = bvNone
            TabOrder = 10
            Visible = False
            object LALCDPV: TLabel
              Left = 46
              Top = 191
              Width = 37
              Height = 14
              Caption = 'Pedido'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADCDPV: TLabel
              Left = 86
              Top = 191
              Width = 4
              Height = 14
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
            object LALDTPV: TLabel
              Left = 41
              Top = 205
              Width = 42
              Height = 14
              Caption = 'Emiss'#227'o'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADDTPV: TLabel
              Left = 86
              Top = 205
              Width = 4
              Height = 14
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
            object LALFavorecido: TLabel
              Left = 25
              Top = 39
              Width = 58
              Height = 14
              Caption = 'Favorecido'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADFavorecido: TLabel
              Left = 86
              Top = 39
              Width = 4
              Height = 14
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
            object LALVendedor: TLabel
              Left = 29
              Top = 54
              Width = 54
              Height = 14
              Caption = 'Vendedor'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADVendedor: TLabel
              Left = 86
              Top = 54
              Width = 4
              Height = 14
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
            object LALRepresentante: TLabel
              Left = 2
              Top = 69
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
            object LADRepresentante: TLabel
              Left = 86
              Top = 69
              Width = 4
              Height = 14
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
            object LALVNF: TLabel
              Left = 56
              Top = 84
              Width = 27
              Height = 14
              Caption = 'Valor'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADVNF: TLabel
              Left = 86
              Top = 84
              Width = 4
              Height = 14
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
            object LALTransportadora: TLabel
              Left = 0
              Top = 115
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
            object LADTransportadora: TLabel
              Left = 86
              Top = 115
              Width = 4
              Height = 14
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
            object LALVolume: TLabel
              Left = 42
              Top = 130
              Width = 41
              Height = 14
              Caption = 'Volume'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADVolume: TLabel
              Left = 86
              Top = 130
              Width = 4
              Height = 14
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
            object LALPesoB: TLabel
              Left = 23
              Top = 145
              Width = 60
              Height = 14
              Caption = 'Peso Bruto'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADPesoB: TLabel
              Left = 86
              Top = 145
              Width = 4
              Height = 14
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
            object LADPesoL: TLabel
              Left = 86
              Top = 160
              Width = 4
              Height = 14
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
            object LALPesoL: TLabel
              Left = 15
              Top = 160
              Width = 68
              Height = 14
              Caption = 'Peso L'#237'quido'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADPCPV: TLabel
              Left = 86
              Top = 220
              Width = 4
              Height = 14
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
            object LALPCPV: TLabel
              Left = 52
              Top = 220
              Width = 31
              Height = 14
              Caption = 'Pe'#231'as'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADSPPV: TLabel
              Left = 86
              Top = 235
              Width = 4
              Height = 14
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
            object LALSPPV: TLabel
              Left = 28
              Top = 235
              Width = 55
              Height = 14
              Caption = 'Separador'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LALDTEM: TLabel
              Left = 41
              Top = 24
              Width = 42
              Height = 14
              Caption = 'Emiss'#227'o'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LADDTEM: TLabel
              Left = 86
              Top = 24
              Width = 4
              Height = 14
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
            object PNLEmpresa: TPanel
              Left = 0
              Top = 0
              Width = 479
              Height = 21
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object LAEmpresa: TLabel
                Left = 0
                Top = 0
                Width = 479
                Height = 21
                Align = alClient
                Alignment = taCenter
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold, fsItalic]
                ParentColor = False
                ParentFont = False
                Transparent = True
                Layout = tlCenter
                WordWrap = True
              end
            end
          end
          object GBInfAd: TGroupBox
            Left = 0
            Top = 268
            Width = 780
            Height = 107
            Align = alBottom
            Caption = '  Informa'#231#245'es Adicionais  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 9
            object EMInfAd: TdxMemo
              Left = 2
              Top = 19
              Width = 776
              Align = alClient
              Color = 16644596
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 0
              ScrollBars = ssVertical
              Height = 86
            end
          end
          object PEPlaca: TdxPickEdit
            Left = 64
            Top = 128
            Width = 95
            Color = 14065456
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 16644596
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 5
            Anchors = []
            AutoSize = False
            CharCase = ecUpperCase
            DropDownRows = 10
            Height = 22
          end
          object PEMotorista: TdxPickEdit
            Left = 64
            Top = 104
            Width = 225
            Color = 14065456
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 16644596
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 4
            OnExit = PEMotoristaExit
            Anchors = []
            AutoSize = False
            CharCase = ecUpperCase
            DropDownRows = 10
            Height = 22
          end
          object IETIPO: TdxImageEdit
            Left = 64
            Top = 32
            Width = 225
            Color = 14065456
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 16644596
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 1
            AutoSize = False
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 22
          end
          object PEAjudante1: TdxPickEdit
            Left = 64
            Top = 152
            Width = 225
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 6
            Anchors = []
            AutoSize = False
            CharCase = ecUpperCase
            DropDownRows = 10
            Height = 22
          end
          object PEAjudante2: TdxPickEdit
            Left = 64
            Top = 176
            Width = 225
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 7
            OnKeyDown = PEAjudante2KeyDown
            Anchors = []
            AutoSize = False
            CharCase = ecUpperCase
            DropDownRows = 10
            Height = 22
          end
          object EDCFRT: TdxMaskEdit
            Left = 64
            Top = 224
            Width = 90
            HelpType = htKeyword
            HelpKeyword = 'PK.DECD'
            Color = 14789952
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            TabOrder = 8
            AutoSize = False
            IgnoreMaskBlank = False
            MaxLength = 10
            Height = 22
            StoredValues = 2
          end
        end
      end
    end
  end
  inherited TConsulta: TIBTransaction
    Left = 16
    Top = 424
  end
  inherited SQLConsulta: TIBSQL
    Left = 48
    Top = 424
  end
  inherited QConsulta: TIBQuery
    Left = 16
    Top = 456
  end
  inherited Consulta: TIBQuery
    Left = 16
    Top = 488
  end
  inherited DTSConsulta: TDataSource
    Left = 48
    Top = 488
  end
  inherited TEdicao: TIBTransaction
    Left = 80
    Top = 424
  end
  inherited SQLEdicao: TIBSQL
    Left = 112
    Top = 424
  end
  inherited SPEdicao: TIBStoredProc
    Left = 144
    Top = 424
  end
  inherited TEvent: TIBTransaction
    Left = 176
    Top = 424
  end
  inherited SPEvent: TIBStoredProc
    Left = 208
    Top = 424
  end
  inherited EEvent: TIBEvents
    Left = 240
    Top = 424
  end
  inherited ILMenu: TImageList
    Left = 376
    Top = 480
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3D7B000EAB97500E1A14A00D8902E00D2861F00CD821E00DB92
      2E00E5A34B00EAB97500F3D7B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5DCBB00E19A
      3B00D67A0000D8810B00D6821100D2831500CF821800CC801900C87E1900C178
      1600D4831600DB861200D8810B00D67A0000E19A3B00F5DCBB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9EAD500DC8D2200D77D0400D986
      1500DB8A1B00D7871B00D4851A00D0831B00CC801900C97E1A00C57C1800C179
      1900B9751700D3851B00DD8B1C00DA891B00D9861500D77D0400DD8E2200F9EA
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9B36C00D5790000DA871700DB8A1C00DB8A
      1C00D8871B00D3851A00D0831A00CC801900C97E1A00C57C1800C1791900BD77
      1700B9741800B16F1600D1841A00DE8C1C00DB8A1C00DB8A1C00DA871700D579
      0000E9B46C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DE932D00D8800A00DA891B00DB8A1C00DB8A1C00D787
      1B00D3851A00D0831A00CC801900C97E1A00C57C1800C1791900BD771700BA74
      1800B6721600B2701700A86A1500D0831A00DF8C1C00DB8A1C00DB8A1C00DA89
      1B00D8800A00DE932D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DC8B1D00D9841100DB8A1C00DB8A1C00DB8A1C00D7871B00D385
      1A00D0831B00CC801900C97E1A00C57C1800C1791900BD771700BA751800B672
      1600B2701700AE6D1600AB6B1600A0651400CE821A00DF8C1C00DB8A1C00DB8A
      1C00DB8A1C00D9841100DC8B1D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DE932C00D9841100DB8A1C00DB8A1C00DB8A1C00D7871B00D3851A00D083
      1A00CC801900C97E1A00C57C1800C1791900BD771700BA741800B6721600B270
      1700AE6D1600AB6B1600A7691500A3661400975F1300CC801A00E08D1C00DB8A
      1C00DB8A1C00DB8A1C00D9841100DE932C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8B2
      6A00D8810B00DB8A1C00DB8A1C00DB8A1C00D7851700D07E0C00CD7B0C00C978
      0B00C5760B00C1730A00BD710A00B96F0900B56C0900B16A0800AD670800A964
      0700A5620700A16006009D5D06009A5B05009558050088500300C4750B00DD89
      1800DB8A1C00DB8A1C00DB8A1C00D8810A00E8B26A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9E9D300D679
      0000DA891B00DB8A1C00DB8A1C00D7851700D9943600EAC79800E8C69700E7C5
      9700E3C09100E2C19400E2C29600E0C09600DBBA8D00DCBF9600DBBD9600D6B7
      8D00D7BB9500D6BA9500D3B79200D0B48E00D1B79500CEB69400C2AE9200DE97
      3700DA881700DB8A1C00DB8A1C00DA891B00D5790000F9E9D400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DC8C2000DA87
      1700DB8A1C00DB8A1C00D7871B00D2811200DDA55A0000000000E7C89E00E7C9
      A200F6EDE000EBD7BB00E3C8A500E2C8A500FBF9F600DDC39F00DBC29F00FBF9
      F700DBC3A400D9C2A300E1D1BA00F0E9DF00D4BEA000D0B99B0000000000E5AA
      5A00D9851300DB8A1C00DB8A1C00DB8A1C00DA871700DC8C2000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4DBB800D77E0500DB8A
      1C00DB8A1C00D7871B00D3851A00CE7E1200DAA35800FAF5EF00BC660000B969
      0000E0BD8E00C4883800AF650000AC640200EAD9C3009F5600009A530000E8D8
      C4009857000092520000A7763400CAB08C00834700007A3D0000EFEEEE00E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00D77E0500F4DBB8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0983700DA861500DB8A
      1C00D7871B00D4851A00D0831A00CA7B1100D7A15800FAF5EE00B5610000B363
      0000DDBA8B00BE843400A95F0000A55E0000E8D7C20098500000934D0000E6D7
      C200915100008C4C0000A2723000C7AC89007D40000072370000EEEDEC00E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00D9861500E09937000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFDFC00D67A0000DB8A1C00D787
      1B00D3851A00D0831A00CC801900C67A1100D49D520000000000F3E6D400F3E7
      D700FBF7F200F5EDE200F2E8D900F1E6D800FDFDFC00EFE4D500EEE4D600FDFD
      FC00EEE5D800EEE5D800F1EBE200F8F5F100EBE3D600E9E0D30000000000E3A7
      5500D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA891B00D67A0000FFFE
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
      000000000000000000000000000000000000F3D5AC00D8810B00D7871B00D385
      1A00D0831A00CC801900C87E1A00C3771000D19D5500FCFBF900C3873600C189
      3C00E3CBAB00CBA26A00BA864100B7864200EDE2D400AE7B3700AA783700ECE1
      D400A97C4100A4793E00B6946800D4C2AA00996F380092683000F3F4F700E5A9
      5800D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00D8810B00F2D5
      AC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9B77200D6821100D4851A00D083
      1A00CC801900C97E1A00C57C1800BE741000CF9C5600FAF5F100AD610000AB64
      0200DABB9200B9843D00A26006009E5F0900E7D9C600915100008D4E0000E6D8
      C6008B530600864E03009E733A00C5AE9000774300006E390000EFEEEF00E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00D9841200E9B7
      7200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E09F4700D3831500D0831A00CC80
      1900C87E1A00C57C1800C1791900BB720F00CC9A5600F8F4EC00A3540000A156
      0000D5B48900B17A30009752000094520000E3D4C0008643000081400000E1D3
      C000804500007940000094682C00BFA687006A340000652D0000EDEBEB00E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA871600E2A0
      4700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D78E2A00D0821900CC801900C87E
      1A00C57C1800C1791900BD771700B76F0F00C895500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3A6
      5300D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA881A00DE92
      2B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2851B00CB801900C97E1A00C57C
      1800C1791900BD771700BA741800B36D0E00C7975600F8F3EC009A4D00009850
      0000D1B18700AA752D008E4C00008B4B0000E1D3BF007C3C000078390000DFD1
      BF00763E0000703900008C632800BDA4840069320000632B0000EDEBEB00E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA891B00DB8A
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC8B1C00CB7F1900C47B1800C179
      1900BD771700B9741800B6721600AF6B0E00C4955500F9F5F0009B5500009A57
      0000D2B69000AB7B3A00915402008D530500E3D6C500804500007B420000E1D5
      C6007A47020075430000936D3600C2AB8E00723E00006D370000EFEEEF00E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA891B00DB8A
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE922A00DD8A1A00C47B1900BC76
      1700BA741800B6721600B2701700AB680D00C1925300FCFCFA00B7874700B689
      4D00DECBB200C3A27700B0875000AE865200EBE2D700A47D4800A17A4700E9E1
      D700A17E50009F7C4E00B4997500D4C5B1009D794A009A754400F4F6FA00E5A9
      5700D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA891A00DE92
      2B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2A04600DA871700DE8C1C00BD77
      1800B4711600B2701700AE6D1600A7660D00BC8E4E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3A5
      5300D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA871700E2A0
      4600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9B67100D9841200DB8A1C00DF8C
      1C00B7731700AB6C1500AB6B1600A3630C00BB8E5100FDFDFD00B78C5400BA94
      6200B8936200B5916200B3906200B08E6100AE8D6100AB8B6100A98A6000A98A
      6100A98A6100A98A6100A98A6100A98A6100A98A6100A17F5200F5F7FC00E5A8
      5700D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00D9841200E9B6
      7100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2D4AB00D8810B00DB8A1C00DB8A
      1C00E08D1C00B16F1600A4671400A0610C00BA8E5400F5F0EA007F3800008445
      0000804200007C3F0000773D0000733A00006F3700006B3500006B3500006B35
      00006B3500006B3500006B3500006B3500006B3500005E240000ECE9E900E6AA
      5900D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00D8810B00F2D4
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFDFA00D67A0000DA891B00DB8A
      1C00DB8A1C00E18D1C00AA6B1500985C0B00B4894F0000000000F7F3ED00FBF9
      F700F9F6F200F7F5F100F7F5F100F7F4F100F7F4F100F9F7F500F9F7F500F7F4
      F100F7F4F100F7F4F100F7F4F100F8F6F300FAF9F700F5F2ED0000000000E3A6
      5400D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA891B00D67A0000FFFD
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0973500D9861500DB8A
      1C00DB8A1C00DB8A1C00E28E1C009F610C00AD844C000000000000000000E0D2
      C000FCFBF90000000000000000000000000000000000ECE5DD00ECE5DD000000
      0000000000000000000000000000FCFBF900DCD0C0000000000000000000E3A5
      5300D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00D9861500E09735000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4D9B500D77E0500DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DF891400B98E52000000000000000000E1D5
      C400EDEBE70000000000000000000000000000000000E8E1D600E4DED6000000
      0000000000000000000000000000F0EDE800DCD2C4000000000000000000E3A8
      5800D9851300DB8A1C00DB8A1C00DB8A1C00DB8A1C00D77E0500F4D9B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DC8B1E00DA87
      1700DB8A1C00DB8A1C00DB8A1C00DB891A00DD891700ECBC7A00C9A06700E3E1
      DF00E3A95A00E9B87500E8B77400E9B77400E5B47000B8AA9700EFCD9E00E8B5
      7000E8B77400E8B77400EEBB7600AB865400F5ECE100E8B36B00E9BA7900DA87
      1600DA891A00DB8A1C00DB8A1C00DB8A1C00DA871700DC8B1E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8E7D000D67A
      0000DA891B00DB8A1C00DB8A1C00DB8A1C00DA891A00D9841000D87F0600E0B7
      8000D9800700D9841000D9841000D9841000DA820B00D6974200E29F4400D881
      0B00D9841000D9841000DA841000CF7A0600E9BD8100D77E0600D9841000DA89
      1A00DB8A1C00DB8A1C00DB8A1C00DA891B00D67A0000F8E7D000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8B0
      6500D8810B00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA85
      1100DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB881700DA871600DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DC8A1C00D9841100DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00D8810B00E8B1660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DE912900D9841200DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00D9841200DE9129000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DC8A1B00D9841200DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00D9841200DC8A1B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DE912900D8810B00DA891B00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA89
      1B00D8810B00DE91290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8B16600D67A0000DA871700DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DA871700D67A
      0000E8B166000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8E8D000DC8B1E00D77E0500D986
      1500DA891B00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A1C00DB8A
      1C00DB8A1C00DB8A1C00DB8A1C00DA891B00D9861500D77E0500DC8C1E00F9E8
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4DAB500E097
      3500D67A0000D8810B00D9841200DA871700DA891A00DA891B00DA891B00DA89
      1A00DA871700D9841200D8810B00D67A0000E0983500F5DAB600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFDFB00F2D4AB00E9B67100E2A04600DE922A00DB8A1C00DB8A1C00DE92
      2A00E2A04700E9B67100F3D4AB00FFFDFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B49E850000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B600B0B0B000AEAEAE00AAAAAA00A9A9A900A9A9A900A6A6
      A600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A4A4A400A3A3A300A3A3
      A300A3A3A300A3A3A300A3A3A300A4A4A400A4A4A400A4A4A400A4A4A400A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A6A6A600A9A9A900A9A9A900AAAA
      AA00AEAEAE00B0B0B000B6B6B600000000000000000000000000000000000000
      0000F1F1F000F1F1F000F2F2F200F2F2F200F2F2F200F2F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F000F1F1F000F1F1F000F1F1
      F000F2F2F100F2F2F200F2F2F200F2F2F100F2F2F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC896000965A1500965A
      1500B36C1800C7711000F0DAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A3A300D7D6
      D600D0CDCE00C2C0C100C2C0C100B9B6B600B2AEAD00ACA7A700ADA8A800BBB7
      B600CFCCCB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E400DADADA00D5D5D500CDCDCD00CACACA00C8C8C800000000000000
      000000000000BEBEBE00B7B7B700B6B6B600B9B9B800C0BFBC00C1C0BC00C1C0
      BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C0BDBA00C5C1BC00C8C3BD00C4C0
      BC00C1BEBB00BFBDBB00C5C4C200C9C7C500C8C7C500C9C8C600D2D1CE00D3D2
      D000D7D6D300DEDDDA00DDDDDC00E4E4E400000000000000000000000000F2F2
      F200EBEDEF00EBEDEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEE
      F2000000000000000000000000000000000000000000EEEEF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F2ED00000000000000000000000000000000000000
      0000C3AC9000C3AC9000C3AC9000AA7E4800C58F5100D3A06500D3A46B00D3A4
      6B00D4A56E00D2A16700E2C4A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6
      F600E5E4E400DAD8D800D1CECE00CBC8C800C9C5C500C9C6C500C9C6C500CDCA
      C900D8D6D50000000000F1EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ADB5CC00A7AFC900A5AE
      C800A5ADC800A4ADC800ACB3CA006A94BF003A70AC004679B1005E89B80081A1
      C3009BB3D000C0CEDD00CDD4E000C3CBDB00BFC5D700BCC0D300BFC3D600BFC4
      D700C0C5D800C4CADC00F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F3000000
      00000000000000000000E6DBC600E6DBC600E7DDCA00E7DDC900E7DDC900E6DC
      CA00E6DCCA00E8DDCB00E8DDCA00E8DECB00E9DDCE00E9DDCE00E8DDCE00E9DF
      D000F0E8DC00F0E8DC00F0E8DC00F2ECE300EFECE400EFEBE300EFECE400EFEC
      E400EFECE400F0ECE500EEE6DC00E9DFCF00E9DFCF0000000000000000000000
      00000000000000000000000000000000000000000000EBE9E900B5B1B100FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F7F700ECECEB00E2E1E100DCDADA00D7D5D400D4D2D100D1CECD00CECA
      C900CECAC900D3D0CE00D3D0CE00D8D6D500DEDBD900E2E0DF00E9E7E7000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000008600000045E00000059000015
      670000176800001364000C3783002E6BAB00326BAA003069A8002D66A7002964
      A5002661A300235FA200215DA0001F5A9E001B549A00164D95000E418B000735
      8200002978000012680000035C00D4D9E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F3000000
      00000000000000000000E8DECB00E8DECB00E8DECE00E9DFD000E9DFD000EBE0
      CF00EBE0CF00EAE1CE00EBDFD100EBDFD200E9E0D100E9E0D100EAE1D300EAE1
      D300EBE1D200EBE1D200EBE1D200EAE1D300EBE2D400EAE2D400ECE3D400ECE3
      D400EDE3D500EBE3D500EBE4D600EBE2D500EBE2D50000000000000000000000
      00000000000000000000000000000000000000000000E0DEDD00C6C3C300FFFF
      FF00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFE00C4C1
      F00000000000FEFFFC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FBFBFB00FCFCFC00FCFCFD00FCFDFD00FDFDFD00FDFDFD00FEFEFE000000
      000000000000F6F6F600F6F6F600EEEDED00E7E5E500E2E0E000DBD9D900F0F0
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000102975000011650000136800AFB3BF00DAD7
      D000CECCC600CDC7BC00678AAF005081BC00326BAA00346CAA00346BA900336B
      A900336BA900326AA800326AA8003269A700326AA700336AA800336BA900346D
      AA00356EAB003772AD0017448B001128730000000000F1F1F10000000000B3AE
      A5008B6531008B65310093651F00986A25009B6F290096692400CFC2BA00EDE1
      E000EADEDF00EAE5E600EAE5E600E8E3E100E6E1DF00E4E2E000E4E4E300E3E2
      E100E2E2DE00EAEAEB00B1A18000B1A18000876823008C702B008B6E2B00896F
      2C00917226009A7823009D792000917126009171260000000000F3F4F6000000
      00000000000000000000E8DECB00E8DECB00E8DECE00E9DFD000E9DFD000EBE0
      CF00EBE0CF00EAE1CE00EBDFD100EBDFD200E9E0D100E9E0D100EAE1D300EAE1
      D300EBE1D200EBE1D200EBE1D200EAE1D300EBE2D400EAE2D400ECE3D400ECE3
      D400EDE3D500EBE3D500EBE4D600EBE2D500EBE2D50000000000000000000000
      00000000000000000000000000000000000000000000D4D2D000D8D6D700FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FFFFFF009C96
      E7006255DC00F6F5FB00FEFEFC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FAFA
      FA00FBFBFB00FAFAFA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9FAF900F8F8
      F800F9F9F900F9F9F900F9F9F900F9F9F900F9FAFA0000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000000B6200000E65007380A400E2DFD700CACA
      C900C1C1C100C0BCB7006C8CB200608EC400316AA900356DAB00346DAB00346C
      AA00336BA900336BA900326AA800326AA8003168A6003268A6003269A7003269
      A7003269A7003269A7003873AE000120700000000000F3F3F400000000009473
      450097662200976622009F723200A2743300A6793700A1722D00E4D5C700E6D0
      C400CCB19A00D0BBA700D0BBA700F4ECE600FFF7F600FFF9F700FFFCFC00FFFF
      FF00FFFFFF00FFFFFF00C2B08E00C2B08E008F69210096742A0095742B009775
      2B009A7A2F009D7C3100A17E2D00967733009677330000000000F3F4F6000000
      000000000000E7CDAD00E9E1D300E9E1D300EAE0D000EAE0CE00EAE0CE00EAE1
      D000EAE1D000EBDFD300EAE0D100E9E1D200EBE1D300EBE1D300EBE1D300EBE1
      D300EBE2D400EBE2D400EBE2D400EBE2D500EBE3D500EDE3D500ECE2D600ECE2
      D600EBE4D700EBE4D700ECE3D700ECE4D600ECE4D60000000000000000000000
      00000000000000000000000000000000000000000000C7C3C200ECEBEC00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FFFFFE00CDCA
      F2007D74E100A49DEB00FFFFFE00FCFCFC00FBFBFB00FAFAFA00FAFAFA00FBFB
      FB00FAFAFA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9
      F900F8F8F800F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000106600000C6500969FB600D8D7D300C9C9
      C900C1C1C100BFBBB7006E8EB300608FC500326BAA00356DAB00356DAB00346C
      AA00356CAA00336BA900346BA900326AA800326AA8003168A6003168A6003269
      A7003269A7003269A700356FAB000F34800000000000F3F4F60000000000956D
      39009B6B29009B6B29009E713300A1733400A57738009F723100DECDC300C3A2
      8800946935009B7548009B754800E4D6CB00FDF0EF00FAEDEA00FBF1F000FCF7
      F500FDFBFA00FFFFFF00BBA78B00BBA78B00815C1E008A66280089672B008B69
      2A00916F2D0096752F009A752C00917130009171300000000000F3F4F6000000
      0000B5762C00D6A46A00EDE8DC00EDE8DC00EAE0CF00EAE0D200EAE0D200EADF
      D200EADFD200E9E1D100EAE0D300EBE1D300EAE1D300EAE1D300EBE2D400EBE3
      D500EAE3D400EAE3D400EAE3D400ECE3D500EDE2D500EBE3D700EBE5D700EBE5
      D700ECE3D700EDE4D700EEE6D800ECE3D600ECE3D60000000000000000000000
      00000000000000000000000000000000000000000000BAB6B600FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FDFDFD00FFFFFD00B7B2
      ED005243D8004332D700FFFFFF00FCFCFB00FAFAFA00FBFBFB00FBFBFB00FAFA
      FA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8
      F800F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB300608EC400326CAB00366EAC00356EAC00366D
      AB00346CAA00356CAA00336CAA00336AA800336AA800326AA8003169A7003168
      A6003269A7003269A700356EAB000F35800000000000F3F4F500000000009870
      3D009C6929009C6929009F713300A2743500A6763800A1733100DECAC200C09F
      87009065360098734A0098734A00E4D1C700FCEBE800F7E8E400F9ECEA00FAF1
      EF00FCF5F300FFFFFF00B6A58B00B6A58B007A521A00825B2600825C2700845E
      26008A672A0094712E00947029008D6D30008D6D300000000000F3F4F6000000
      0000CBAD8900D5A46A00EDE8DE00EDE8DE00EAE0D200EAE0D100EAE0D100EAE1
      D200EAE1D200EAE1D300EBE1D300EAE1D300ECE2D400ECE2D400EBE2D400ECE4
      D500EDE2D500EDE2D500EDE2D500ECE3D600EBE5D700EBE4D700EDE4D700EDE4
      D700EEE6D800EDE5D900EDE5D800EDE4D800EDE4D80000000000000000000000
      00000000000000000000000000000000000000000000BAB6B600FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FEFEFD00FFFF
      FF001400CA001200CD00B4AEEE00FFFFFC00FBFBFB00FAFAFA00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8F800F7F7
      F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F70000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000146B0000106A00939DB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB4005F8EC500336CAB00376FAD00376FAD00356E
      AC00366DAB00346DAB00356CAA00346BA900346AA800336AA8003369A7003169
      A7003168A6003269A700356EAB000F36820000000000F3F4F500000000009A71
      3E009E6A2B009E6A2B00A2713300A4723500A7773900A2703400D5C8BE00BD9C
      85008B61380094714E0094714E00E4CAC100F9E3E000F6E2DC00F7E6E300F8EB
      E800F9EEEC00FFFFFF00B4A08800B4A08800714817007A5121007B5422007B53
      230085602800926E2F00906B28008B6930008B69300000000000F3F4F6000000
      000000000000C6945B00EDE8DF00EDE8DF00E9E0D200EAE1D300EAE1D300EBE1
      D300EBE1D300EAE1D300EBE2D400EBE2D400EBE3D500EBE3D500ECE3D500ECE2
      D600EBE4D700EBE4D700EBE4D700EBE4D600ECE4D700EEE5D800EEE6D800EEE6
      D800EDE6D800EDE5D900EEE6DA00ECE3D600ECE3D600F5F0EB00F5F0EB000000
      00000000000000000000000000000000000000000000C3C0BF00FFFFFF00FEFE
      FE00FDFDFD00FCFCFC00FCFCFC00FDFDFD00FCFCFC00FAFAFA00F3F3F200FFFF
      FF006C5FE0000C00CC005F52DD00FFFFFF00FDFDFD00FBFBFC00FBFBFC00FBFB
      FB00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8F800FBFBF800FFFF
      F900FCFCF800F8F8F800F8F8F800F7F7F700F6F6F600F7F7F700000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000166D0000126C00939DB600D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB500618FC500346DAC003770AE00376FAD00376E
      AC00366EAC00366EAC00356DAB00356CAA00346BA900346BA900336AA8003369
      A7003269A7003168A600356EAA001037830000000000F3F4F500000000009C72
      3F00A06A2C00A06A2C00A4713500A6743700A9783A00A4723400CAC0B500AE94
      7E00855C37008F6D4E008F6D4E00E0C4BA00F9DED800F5DCD700F5E0DD00F7E5
      E200F8E9E500FFFFFF00B19D8900B19D89006A411400734A1F00744B2000744C
      200082592700906C2F008E682800886630008866300000000000000000000000
      000000000000CCAA8000EDE7DD00EDE7DD00EBE1D300EAE1D300EAE1D300EAE2
      D400EAE2D400ECE2D500EAE1D300EBE2D200ECE2D300ECE2D300EDE4D700EDE7
      D900ECE3D600ECE3D600ECE3D600ECE3D600EDE5D600EDE5D800EDE5D800EDE5
      D800EEE6DA00EEE5DA00EFE7DD00ECE3D600ECE3D60000000000000000000000
      00000000000000000000000000000000000000000000CBC8C800FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FBFBFB00FEFEFE00E5E4E300BDB9B800D1CE
      C300847AC4000B00CE001200D100B8B2D900E6E4DC00E9E7E600E9E7E600F1F0
      F000F8F8F700FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFFF900EEEEF7008479
      ED00CAC6F300FCFDF800FCFDF800F6F6F600F7F7F700F6F6F600000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB5006190C600346EAD003871AF003770AE00376F
      AD00366FAD00366EAC00366EAC00356CAA00356CAA00346CAA00346BA900336B
      A9003369A7003269A700356EAA001038850000000000F2F4F500000000009E74
      4000A36C2B00A36C2B00A6723600A7753800AB783C00A5723600C6BBB100A78C
      77007D55340088684C0088684C00DEBFB300F9D8D200F3D7D000F5DBD700F5E0
      DC00F7E3DF00FFFDFE00AF9B8800AF9B8800653A12006D431D006E461E006D44
      1E007D55250091692E008D63270087642F0087642F0000000000000000000000
      000000000000E0CFBB00ECE3D600ECE3D600EAE1D300EBE2D400EBE2D400EBE2
      D400EBE2D400EAE1D100F0E9DE00F3ECE400F5F1E800F5F1E800EBE7DE00DFD6
      CA00F4EFE800F4EFE800F4EFE800F4EFE700F3EEE600EEE7DA00EEE4D800EEE4
      D800EFE7DB00EEE7DC00EFE8DD00F2ECE200F2ECE200AE855500AE8555000000
      00000000000000000000000000000000000000000000D2D0D000FFFFFF00FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FBFBFB00FFFFFF00D6D4D300ECEBEB00FFFF
      FF00FFFFFF000100C9001500D0002A15D300FFFFED00E5E3E200E5E3E200DDDB
      DB00D9D6D500D6D2D200D6D4D300DAD8D700ECECDD00D2D0E9004E3CE500796C
      EC0000000000F7F7F600F7F7F600F7F7F700F6F6F60000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000A4813100AC8D4600F0F0F0000019790000167100939EB700D8D6D300C9C9
      C900C1C1C100BFBBB7006F90B5006191C700356FAE003871AF003971AF003770
      AE003870AE00366FAD00366EAC00366DAB00356DAB00356DAB00346BA900336B
      A900336BA9003369A700356EAB001139860000000000F2F4F50000000000A276
      4100A66E2C00A66E2C00A8733600AB763800AD793C00A7733600C3BDB700BFAF
      A300A48B7C00B19F9200B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC978900AC97890057300D0060381800613A1A006039
      1900774F230092692E008B62270087622F0087622F0000000000000000000000
      00000000000000000000EAE0D100EAE0D100EBE2D400EBE2D400EBE2D400EBE1
      D100EBE1D100F6F3EC00FFFFFF00FFFFFF00FAFCFE00FAFCFE00A0723A00945C
      1B00E5E2DD00E5E2DD00E5E2DD00FFFFFF00FFFFFF00FEFFFF00F0E8DE00F0E8
      DE00EEE7DC00EEE7DD00EFE9DE00F3EFE800F3EFE8009A672C009A672C000000
      00000000000000000000000000000000000000000000DCDAD900FFFFFF00FDFD
      FD00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FFFFFF00C9C6C500F6F5F500FBFC
      FC00FFFFFE008A81E4000E00CE000D00D000C5C1F200FFFFFE00FFFFFE00FCFD
      FD00FCFCFC00FCFDFD00FCFCFC00FFFFFC00C8C4F0002C15E1004C3AE100D7D5
      F300FCFDF700F7F7F700F7F7F700F6F6F6000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000B5965000A0782100B086270035436500000F7C00929EB900D8D6D300C9C9
      C900C1C1C100BFBBB6007091B6006291C700356FAE003A72B0003871AF003970
      AE003770AE00386FAD00366FAD00366EAC00356DAB00356DAB00346DAB00346B
      A900336BA900336BA900366EAB00113B880000000000F2F4F50000000000A276
      4100A66E2C00A66E2C00A8733600AB763800AD793C00A7733600C3BDB700BFAF
      A300A48B7C00B19F9200B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC978900AC97890057300D0060381800613A1A006039
      1900774F230092692E008B62270087622F0087622F0000000000000000000000
      00000000000000000000E9E0D000E9E0D000ECE4D500EDE3D500EDE3D500EAE0
      D100EAE0D100FFFFFF00F8F5EF00E9E1D8009E6F37009E6F3700985E1C009A61
      21009F6F37009F6F37009F6F3700E1DACE00F0E8DC00FEFFFF00F7F5EF00F7F5
      EF00EEE7DB00EEE9DD00EFE9DF00F5F2EA00F5F2EA0091591800915918000000
      00000000000000000000000000000000000000000000E3E2E200FFFFFF00FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FFFFFF00C0BDBC00FEFEFE00FBFB
      FB00FFFFFB00E3E4F5000000CB001600D0001E07D500FFFFFC00FFFFFC00FAFA
      F900F9F9F900F9F9F800FFFFFA009B91EE000200DD00280EE5007E74DF00FFFF
      F900F7F7F700F7F7F700F7F7F700F5F5F500F6F6F60000000000000000000000
      0000C1A56900B4944B00B5954E00B5954E00B5954E00B5954E00B5954E00B797
      5100AC873700AA853200AA843200BE902A00665B440091A0C000D7D7D800C9C9
      C900C1C1C100BFBBB6007091B6006191C8003670AF003972B0003A72B0003872
      B0003970AE003870AE00386FAD00366FAD00366EAC00356DAB00356DAB00346D
      AB00346CAA00336BA9003770AC00123D8A0000000000F2F4F50000000000A577
      4300A96F2D00A96F2D00AB753800AD783A00AF7A3C00AD793C00A9886900B899
      7900B9997D00C4AA9200C4AA9200B0937400A9856200B1876600AF886800AE8A
      6900AD8A6A00B39375008F6A47008F6A470070461C00734B2100724A2200714A
      21007F56270090662E008B60270086612F0086612F0000000000000000000000
      00000000000000000000E9E0D000E9E0D000ECE4D500EDE3D500EDE3D500EAE0
      D100EAE0D100FFFFFF00F8F5EF00E9E1D8009E6F37009E6F3700985E1C009A61
      21009F6F37009F6F37009F6F3700E1DACE00F0E8DC00FEFFFF00F7F5EF00F7F5
      EF00EEE7DB00EEE9DD00EFE9DF00F5F2EA00F5F2EA0091591800915918000000
      000000000000000000000000000000000000EEEDED00EEEDED00FDFEFE00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFFFF00BDB9B800FFFFFF00FAFA
      FA00F9FAF900FFFFFE004D39D9001200D0000A00D200958CE900958CE900FFFF
      FB00FCFDF900FFFFFB006B5EE7000200DC001B01E0007267ED00EAE9DD00FAFB
      F900F7F7F700F5F5F500F5F5F500F6F6F600F6F5F500F4F4F400000000000000
      0000AC843200AD863300AD863300AD863300AD863300AD863300AD863300AD86
      3300AF883700AF893800AF893800AF893800B68C3200B78F3D00C9C2B500CACD
      D500C1C1C200BFBBB6007091B6006292C8003671B0003B73B1003973B1003A72
      B0003972B0003971AF003870AE00386FAD00376FAD00366EAC00366EAC00356D
      AB00356CAA00346CAA003770AC00123F8B0000000000F2F4F50000000000A87A
      4400AC712F00AC712F00AF773800B0793B00B17B3D00B27F4300AD793E00B07F
      4600B4865000BB926400BB926400AA7B45009761210093602200915E21008E5C
      20008B5B1E0089591C008E5F25008E5F250093662E0091652D0090642D008F64
      2D008F632D008E632D008C5F2600866030008660300000000000000000000000
      00000000000000000000EBE1D200EBE1D200EDE2D600EBE4D600EBE4D600EAE1
      D200EAE1D200FFFFFF00F3F1EC00A67C4A00975D1B00975D1B009E6729009F68
      2A009B611D009B611D009B611D00B0906800ECE5DC00FFFFFF00F8F5F100F8F5
      F100EEE7DC00EFE9DE00F0EAE000F5F2EB00F5F2EB009B6629009B662900B69A
      770000000000000000000000000000000000E8E7E700F6F5F500FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFFFF00BEBAB900FFFFFF00F9F9
      F900FAFAFA00FEFFFA00EEEDF7000000CD001900D4001000D4001000D400FFFF
      FA00FFFFF9003A25DF000B00DB001000DE004E3EE600FFFFF900E3E2DE00F9F9
      F900F5F5F500F6F6F600F6F6F600F5F5F500F5F5F400F4F4F400000000000000
      0000B48D3D00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B38C3900B2872E00BEA9
      7E00C1C5CD00BFBCBA007091B7006292C8003771B1003B74B2003B74B2003A73
      B1003972B0003971AF003971AF003870AE00386FAD00376FAD00376FAD00366E
      AC00366DAB00346CAA003871AD0013408E0000000000F2F3F50000000000AC7C
      4600AF743000AF743000B2793A00B37B3A00B47E3F00B5804400B7854A00B989
      5200BB8E5A00C19A6D00C19A6D00B98C5900A6713400A3713400A16F33009F6E
      32009D6B33009A6A320097683100976831009567310093662E0092642F009164
      2D0090632D008E622C008C5E2500866031008660310000000000000000000000
      00000000000000000000EBE1D300EBE1D300ECE4D700ECE3D700ECE3D700ECE3
      D500ECE3D500FFFFFF00B6956D00955B17009E692A009E692A00A06A2A00A06B
      2B00A26C2D00A26C2D00A26C2D009E611C00C5B19A00FFFFFF00F9F6F300F9F6
      F300EEE8DC00F0E9E000F1EBE100F6F2EC00F6F2EC009B6A2F009B6A2F00996B
      370000000000000000000000000000000000E5E3E300FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00C1BEBD00FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FFFFFD004D3CDB001300D3001400D5001400D5005341
      E0002209DB001300DA001200DC00240DE000F5F6F700F9F9F300E4E2E100F7F7
      F700F6F6F600F5F5F500F5F5F500F4F4F400F5F4F500F4F4F400000000000000
      0000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9914000B78D
      3500B9964E00BEB7AF007092BA006392C9003872B1003C75B3003C75B3003B74
      B2003A73B1003972B0003972B0003971AF003870AE003870AE003770AE00376E
      AC00366EAC00356DAB003871AD0013418F0000000000F2F3F50000000000AF80
      4800B3763000B3763000B57C3B00B4783400B5753000B4783600B57D3A00B781
      4300B9864C00BD8F5C00BD8F5C00BA8A5700A26926009F6523009D6322009861
      210095602000935E2100915B1E00915B1E008F5A1E008B581D008A581D008856
      1D008A5B240090642F008D5E2600885F3000885F300000000000000000000000
      00000000000000000000EAE2D400EAE2D400EDE4D700EEE6D900EEE6D900F0EA
      E100F0EAE100C9B49B00945713009F692A00A06A2B00A06A2B00A16B2C00A36D
      2E00A46E3000A46E3000A46E3000A56F2F00A1692800E4E1DE00FCFBF800FCFB
      F800F0E9DE00F1EBE000F1EAE200F6F3ED00F6F3ED009A6A33009A6A33008E55
      120000000000000000000000000000000000E5E3E200FFFFFF00FBFBFB00FCFC
      FC00FBFBFB00FAFAFA00FAFAFA00FCFCFC00F6F5F600C8C5C400FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FEFFF900E7E6F6000800D1001C00D6001C00D6001600
      D8001B00DA000D00DA00331EE000FFFFF800FDFEF800EFEEEE00E7E6E600F7F7
      F700F5F6F500F4F5F400F4F5F400F5F4F500F4F5F500F4F4F400000000000000
      0000BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BB92
      4000C69E4C00D2A347006F95C2006493CA003873B2003F7BB8003D78B5003D78
      B5003A74B2003A73B1003973B1003971AF003871AF003871AF003770AE003770
      AE00376EAC00366EAC003972AE001443910000000000F2F3F50000000000B484
      4B00B87A3100B87A3100B77A3300BD8D5400C6A27800C7A27600C7A47B00C8A6
      7F00CAAA8500CDAF8D00CDAF8D00D0B69600BE9B6F00BC986D00BA976D00BB98
      6D00BA986E00BA976C00B7966E00B7966E00B6966C00B7956D00B6956D00B798
      7000A47F50008B5B23008D5E2700885F3000885F300000000000000000000000
      00000000000000000000EBE3D400EBE3D400EEE5D800F0EADE00F0EADE00D2C0
      A800D2C0A80091520A00A0692B00A16B2C00A26B2A00A26B2A00A0682800A36A
      2900A7723200A7723200A7723200A8723300A86F2D00AE7E4900E8E6E100E8E6
      E100F3EDE500F1EAE200F2ECE200F7F2EE00F7F2EE00986A3200986A3200AA74
      340000000000000000000000000000000000E6E5E400FEFEFE00FCFCFC00FBFB
      FB00FAFAFA00FBFBFB00FBFBFB00FCFCFC00EEEEEE00CECBCB00FEFEFE00FAFA
      FA00FAFAFA00F9F9F800FFFFFB00F4F5F7001A01D4001B00D6001B00D6001C00
      D9001500D9006455E500FFFFF900FBFBF700F8F8F800EAE9E900ECEAEA00F6F6
      F600F4F4F400F5F4F500F5F4F500F5F5F500F5F5F500F4F3F400000000000000
      0000C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C2994800BF954200D8B4
      6600DABC7C00BCB6AD007194BA006494CA003C78B600234F9500000257002958
      9C003E78B6003A73B1003B73B1003973B1003971AF003871AF003870AE003770
      AE003770AE00366EAC003A72AF001444930000000000F2F3F50000000000B889
      4D00BC7F3300BC7F3300BA762800D0B69600F3FFFF00F2FAFE00F3FAFF00F7FD
      FF00F7FDFF00F9FFFF00F9FFFF00FCFFFF00FCFFFF00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6C6B000824D10008F5F2800896032008960320000000000000000000000
      00000000000000000000ECE3D500ECE3D500EDE6D900F0E9DE00F0E9DE00DECF
      BB00DECFBB0095581200A16B2B00A36C2C009F6725009F672500E4DED600B487
      5200A66D2900A66D2900A66D2900AB743600AD753700AC702C00B48C6000B48C
      6000E8E4DD00F4EFE700F2ECE400F6F4EE00F6F4EE00996A3300996A3300AB77
      3C00A27F5400A27F54000000000000000000E9E8E700FEFEFE00FBFBFB00FAFA
      FA00FBFBFB00FAFAFA00FAFAFA00FCFCFC00E8E6E700D4D2D100FDFEFE00FAFA
      FA00FFFFFA00FFFFFE00A6A0EA000100CD001900D4001C00D6001C00D6001C00
      D9001300D9007A6CE700FFFFFA00F7F7F700F7F7F700E7E6E500EEEEED00F5F5
      F500F4F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2F200000000000000
      0000C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D
      4C00C79E4D00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00E4C17600CFB9
      8F00BEC0C600BEBBB9007193B8006594CA003D7BB800133D8A00002078001844
      8E003F7BB7003C75B3003A74B2003A73B1003A73B1003972B0003871AF003970
      AE003770AE003770AE003A73AF001546950000000000F1F3F50000000000BE8E
      4F00C1843600C1843600BE7C2B00CCAD8700EAEBE900E6E3DD00E8E4DF00EAE6
      E100EBE8E300EDEBE600EDEBE600F0EEEA00EFEBE700ECE8E400EEEBE600EFEC
      E700EFEDE900F0EEEA00F3F1EC00F3F1EC00F4F2EE00F6F3EF00F5F3F000FCFE
      FF00CAB29800844F13008F5E28008A5F33008A5F330000000000000000000000
      00000000000000000000ECE4D700ECE4D700EEE6DA00EEE6DB00EEE6DB00F3EF
      E600F3EFE600DFCEBA0096570F009B5D1500D7C7B300D7C7B300F6F3EC00F2F0
      EA00AA723200AA723200AA723200AC733300B0783800B27A3A00B0732C00B073
      2C00B9977300ECEAE300F4EFE800F7F3EF00F7F3EF009A6C35009A6C3500AD7B
      400097652B0097652B000000000000000000EBEAE900FDFDFD00FAFAFA00FBFB
      FB00FAFAFA00F9F9F900F9F9F900FCFCFC00E2E0E000DAD9D800FDFDFD00FFFF
      FB00D9D6F2002F1AD2000C00CD001900D1001100D3000F00D4000F00D4001800
      D8001D00DB000200D800D1CEF200FEFFF600F7F8F800E3E2E100F1F1F100F5F5
      F500F4F4F500F5F5F500F5F5F500F5F5F500F3F3F300F2F2F200000000000000
      0000D4AD5D00CFA55500D0A65500D0A65500D0A65500D0A65500D0A65500D0A7
      5700CDA35300CCA25200CCA25200CA9D4C00E1B76500EAC98200CCC2B000C7CA
      D200C1C1C200BEBAB6007293B8006595CB003C77B600356EB100104AA0003771
      B1003E77B4003B75B3003C75B3003B74B2003B73B1003A72B0003A72B0003871
      AF003971AF003770AE003B74B0001547960000000000F1F3F40000000000C393
      5200C7893700C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7E300E9E7
      E300EAE9E400ECEBE700ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFC
      FD00C9B39800875014008F5F27008A6133008A61330000000000000000000000
      00000000000000000000EDE4D800EDE4D800EFE6DC00EEE7DC00EEE7DC00EDE5
      D900EDE5D900FFFFFF00E4D6C400D6C3AA00F2EFE600F2EFE600EFE7DD00F2EC
      E300E9E2D600E9E2D600E9E2D600A96D2700B2793700B47C3B00B57E3C00B57E
      3C00B4773000BDA18000EEEBE500FAF7F400FAF7F4009E6E37009E6E3700AE7D
      4400AC763700AC7637000000000000000000ECEBEB00FCFCFC00FBFBFB00FAFA
      FA00F9F9F900FAFAFA00FAFAFA00FDFDFD00DBDAD900E0DFDE00FFFFFD00BAB6
      EB000D00C9001300CD001900D0000000CD005F4FE000FFFFFB00FFFFFB001600
      D7001A00DA001800DB001A00DD00FFFFF900F9F9F700E0DEDD00F4F4F400F5F5
      F500F5F4F500F5F5F500F5F5F500F3F3F300F3F3F300F3F3F300000000000000
      0000F1E0BD00F0DDB000F1DDB100F1DDB100F1DDB100F1DDB100F1DDB100F3E1
      B800D7B06600CFA35200D0A25200FCD27C00988E760090A0BC00D5D6D600C9C9
      C900C1C1C100BEBAB6007294B9006695CC003B76B500407AB700427CB8003F78
      B6003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A72B0003A72
      B0003972B0003870AE003B74B0001549970000000000F1F3F40000000000C393
      5200C7893700C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7E300E9E7
      E300EAE9E400ECEBE700ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFC
      FD00C9B39800875014008F5F27008A6133008A61330000000000000000000000
      00000000000000000000EDE5DA00EDE5DA00EEE8DD00EFE8DD00EFE8DD00EDE7
      DB00EDE7DB00FAF8F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1EBE400AD6F2700B67D3B00B77F3E00B77F
      3E00B9814000B77A3200BEA28100F1F1EF00F1F1EF00A3743D00A3743D00B07F
      4600BD874900BD874900AD93750000000000EDECEC00FCFCFC00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00FDFEFE00D4D2D200E9E8E800FFFFFF00E7E7
      F9000000C8000F00CF001400D100CECBF200FFFFFC00FFFFF800FFFFF800CAC6
      F1000500D7001C00DB001100DC004431E300FFFFFA00DEDCDB00F6F6F600F5F5
      F500F5F5F500F4F4F400F4F4F400F3F4F400F3F3F30000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000DBB46E00D9AD5C00F8D2830056657F00001F8F0093A3BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007294B9006595CC003B76B5003F79B7003F78B6003E78
      B6003E77B5003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A73
      B1003A73B1003971AF003C75B100164A9A0000000000F1F2F40000000000C999
      5400CC8F3900CC8F3900CA882C00CFB18B00EFF1F200EBEAE600EBE9E500EAE8
      E400E9E8E400EAE9E500EAE9E500ECEAE600F0EFEB00EBE8E500EBE9E500ECEA
      E600EEEBE800EEECE900F0EEEB00F0EEEB00F1EFEC00F1EFEC00F1EFED00F6F8
      F900C6AF9500885115008F5E28008B6234008B62340000000000000000000000
      00000000000000000000EDE5DA00EDE5DA00EEE8DD00EFE8DD00EFE8DD00EDE7
      DB00EDE7DB00FAF8F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1EBE400AD6F2700B67D3B00B77F3E00B77F
      3E00B9814000B77A3200BEA28100F1F1EF00F1F1EF00A3743D00A3743D00B07F
      4600BD874900BD874900AD9375000000000000000000FCFCFC00F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FDFDFD00DEDCDC00BBB7B600BFBCBB00D5D3
      C4007C72C4004A39C300E5E4E100F7F7ED00F3F3F300F8F8F800F8F8F800FFFF
      FD008C83EC000700DA001D00DE000700DE008A80ED00F5F5DB00F7F7F700F5F5
      F500F4F4F300F3F3F400F3F3F400F4F3F300F3F2F200F6F5F400000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBCB8900E9C98700F0F0F000002E9300002E8E0095A5BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007295BA006796CD003C77B6003F79B7003F79B7003E79
      B7003E78B6003D77B5003D76B4003D76B4003C76B4003C74B2003B74B2003A74
      B2003A73B1003A72B0003D76B200164C9C0000000000F1F2F40000000000CFA0
      5600D2963B00D2963B00D0902F00D0B38C00F1F2F300ECEAE600EDEAE600EBE9
      E500EBE9E400EAE9E400EAE9E400EBE9E400ECEBE600EEECE900E7E5E000E9E7
      E200EBE8E400ECE9E500EDEBE700EDEBE700EDECE800EDECE800EDEBE700F1F2
      F200C3AC920089541600905F27008C6335008C63350000000000F3F4F6000000
      00000000000000000000EEE6DA00EEE6DA00EEE9DE00EEE8DE00EEE8DE00EFE9
      DE00EFE9DE00EEE8DD00F6F1EC00F8F6F100F7F4F100F7F4F100F7F5F100F8F5
      F200F8F5F200F8F5F200F8F5F200FEFFFF00E7DBCC00B1732B00BA803F00BA80
      3F00BC834200BD844300BB7C3400C7AD8E00C7AD8E00A77A4700A77A4700B584
      4B00C7945800C7945800976F3F000000000000000000FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F8F8F800000000000000000000000000F8F9
      F9000000000000000000E4E2DF00D9D7D700D4D1D000D0CDCC00D0CDCC00D1CD
      CC00EBEBD1004E3CD3000E00DD001C00DF000300DF00928ADE00FFFFF800F4F3
      F300F3F3F400F3F4F400F3F4F400F4F2F200F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000338F000030900095A6C000D8D5D100C9C9
      C900C1C1C100BEBAB6007395BA006697CD003C78B700417BB9003F79B7003F79
      B7003E78B6003E78B6003D78B6003D76B4003C76B4003C76B4003B75B3003B74
      B2003A73B1003A73B1003D77B300174D9D0000000000F1F2F40000000000D3A5
      5900D79E3B00D79E3B00D6973000D2B48E00F5F6F900EFEEEB00EFEEEA00EEED
      EA00EDECE900EDECE800EDECE800ECECE900ECEBE700EEEDEA00E9E8E300E7E6
      E100EAE9E400EAE8E500EBEAE600EBEAE600EBEAE700EAE9E500E9E9E500EDEE
      F000C1AA91008E571900916129008E6536008E65360000000000F3F4F6000000
      00000000000000000000EEE7DC00EEE7DC00EFE9DE00F0E9DF00F0E9DF00F0E9
      E000F0E9E000F1EBE000F0EADF00F0E8DE00F0EADF00F0EADF00F1E9E000F1EA
      E000F0EBE100F0EBE100F0EBE100F0EAE100F5F3EF00E5D8C900B6762E00B676
      2E00BC844100BE854400C0854300C3925A00C3925A00AB815100AB815100BA88
      5000CB985D00CB985D0099662A00EFEEED0000000000FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00F8F8F800F8F8F800F9F9F900F8F8F800F7F7F700F8F8F800F8F8
      F800F9F9F900FAFAFA00F9F9F900FAFAFA000000000000000000000000000000
      00000000000000000000321DE0001000DE001C00E0000700E2009991ED00FFFF
      F500F3F4F400F4F2F200F4F2F200F3F3F300F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C000D7D5D100C9C9
      C900C1C1C100BEBAB6007395BA006797CE003D78B800407BB900417BB9003F79
      B7003F79B7003E79B7003F78B6003D77B5003D77B5003C76B4003C75B3003B75
      B3003B74B2003A73B1003E77B300174E9F0000000000F0F2F40000000000D8AC
      5B00DCA53C00DCA53C00DB9F3100D2B68E00F5F7F900F2EFEB00EFEEEA00F0ED
      EB00EEECE900EDEDE800EDEDE800EDEBE900EDEBE800EDEBE800EEECE900E5E3
      DE00E7E5E000E7E5E000E8E6E100E8E6E100E7E5E100E6E4E100E6E5E100E9EA
      E900BDA78C008F5A1800916428008F6937008F69370000000000F3F4F6000000
      000000000000F8F4F000EEE8DC00EEE8DC00F1E9E000F0E9E000F0E9E000F1EB
      E000F1EBE000F0EAE100F0EAE200F1ECE300F1EBE200F1EBE200F1ECE300F1EC
      E300F0EBE400F0EBE400F0EBE400F2EDE400F2ECE500F6F3EF00EBE5DB00EBE5
      DB00BA7D3800BF844100C0833D00CEAF8B00CEAF8B00B6895500B6895500BF8E
      5400CB9A6000CB9A6000BB8648000000000000000000FAFAFA00FAFAFA00FAFA
      FA00F8F8F800F9F9F900F9F9F900F8F8F800F7F7F700F8F8F800F8F8F800F8F8
      F800F8F8F800F6F6F600F7F6F700F7F7F700F5F5F500F6F6F600F6F6F600F5F5
      F500F5F4F400FAFAF500000000003D29E2000900DF000E00E1001600E4009B92
      ED0000000000F3F2F300F3F2F300F4F3F300F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003695000034950096A7C100D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006897CE003E7AB900427CBA00407BB900417A
      B800407AB800407AB8003F79B7003E78B6003D78B6003D77B5003D76B4003C75
      B3003C75B3003B74B2003E77B3001850A10000000000F0F1F40000000000DCB5
      5D00E0AC3F00E0AC3F00E1A93300D4BA8F00F7F8FC00F3F2EF00F2F1EE00F1F0
      EC00F1EFEC00F0EEEB00F0EEEB00EFEEEA00EFEDEA00EFEDEA00EFEEEC00ECEB
      E700E5E1DC00E5E2DD00E4E1DD00E4E1DD00E3E1DE00E2E0DB00E0DED900E0E0
      E100B9A3890094611B0095672900936D3900936D390000000000F3F4F6000000
      00000000000000000000EFE8DE00EFE8DE00F1EAE100F0EAE100F0EAE100F0EA
      E100F0EAE100F1EBE200F1ECE300F2ECE200F2ECE300F2ECE300F1EBE400F1EC
      E400F2EDE500F2EDE500F2EDE500F2ECE500F2EDE600F1EEE600F6F3EE00F6F3
      EE00EFEAE500C1894A00B8742600E8E5E000E8E5E000BD8C5500BD8C5500C493
      5A00CD9C6200CD9C6200D8A4670092734D00F2F2F200FAFAFA00FAFAFA00F8F8
      F800F9F9F900F9F9F900F9F9F900F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F6F6F600F7F6F700F7F7F700F5F5F500F6F6F600F5F6F500F5F6F500F4F4
      F400F4F5F500F5F5F500F8F8F500000000009C94EB00CBC7F00000000000F7F6
      F300F4F3F300F4F3F300F4F3F300F4F3F300F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003897000036970096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006798CF003E7AB900427DBB00427CBA00417B
      B900407BB900407AB800407AB8003E78B6003E78B6003E77B5003E77B5003D76
      B4003D76B4003B75B3003F78B4001951A20000000000F0F1F40000000000E1BE
      6000E4B73F00E4B73F00E4B13500D5BC9300FAFDFF00F6F5F400F5F4F300F4F3
      F200F3F2F100F1F1EF00F1F1EF00F2F1EE00F1F0EE00F0F0EE00F1EFED00EFF0
      ED00EAEAE700E4E4DF00E2E2DD00E2E2DD00E1DFDC00DEDDD900DBD9D600DADB
      DC00B5A1850098671D00976A2A0095713B0095713B0000000000F3F4F6000000
      00000000000000000000F0E9DF00F0E9DF00F0EAE100F1EBE200F1EBE200F2EB
      E200F2EBE200F0EBE200F1EDE200F1ECE300F1ECE400F1ECE400F3ECE400F2ED
      E400F2EDE500F2EDE500F2EDE500F1EDE500F2EEE600F4EDE600F3EEE700F3EE
      E700F4F3EC00F1EFE900E8DED200F7F8F700F7F8F700C18F5600C18F5600C998
      5E00D09F6500D09F6500E3B07500723C040000000000FAFAFA00F8F8F800F9F9
      F900F9F9F900F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F6F6
      F600F7F7F700F7F7F700F5F5F500F6F6F600F5F6F500F4F4F400F4F4F400F5F5
      F500F4F5F500F4F5F500F5F5F500F4F4F3000000000000000000F5F4F200F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300F2F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007496BB006898CF003F7BBA00427DBB00427DBB00417C
      BA00417CBA00407BB900407AB8003F79B7003F79B7003F79B7003E77B5003E77
      B5003D77B5003C75B3004079B5001953A50000000000F0F1F40000000000E3C4
      6100F0C84200F0C84200EDC23700D3BD9100FAFAFC00F7F4F200F6F4F100F5F1
      EE00F4F1ED00F3F0EC00F3F0EC00F1EFEB00F1EFEB00F0EFEB00F0EEE900F0EE
      E900EEEDE900E7E4E000E2DED900E2DED900DEDBD500D9D6D100D5D2CB00D0D1
      CF00B19C8100A1712100A0752C009A773C009A773C0000000000F3F4F5000000
      000000000000F7F4F100EFE9DF00EFE9DF00F2ECE200F1ECE200F1ECE200F1EC
      E200F1ECE200F2ECE400F1EBE300F2ECE400F2EDE400F2EDE400F3ECE500F2ED
      E500F1EEE700F1EEE700F1EEE700F3EDE600F4EEE600F2EFE800F1F0E700F1F0
      E700F3EFE800F4F0EC00F5F3ED00F7F6F300F7F6F300C7935900C7935900CD98
      5B00D19A5A00D19A5A00D4985500E3C6A50000000000F9F9F900F9F9F900F9F9
      F90000000000F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F6F6F600F7F7
      F700F6F6F600F6F6F600F6F7F700F6F5F600F4F4F400F5F5F500F5F5F500F4F5
      F500F5F5F500F5F5F500F3F3F300F3F4F400F3F4F400F4F2F200F4F3F300F4F3
      F300F3F3F300F4F3F300F4F3F300F3F1F100F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003C9B00003A9C0096A8C300D7D5D100C9C9
      C900C1C1C100BEBAB6007497BC006899CF003F7CBB00437EBC00427DBB00427C
      BA00417CBA00417CBA00407BB900407AB800407AB8003F79B7003F79B7003E78
      B6003E77B5003D77B5004079B5001A54A60000000000F0F1F40000000000EACD
      6400BB9D3700BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8F700F8F7
      F500F7F6F400F6F5F300F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000E5E3E000DDDCD800D7D6D200D0CFCB00C8C9
      C900AF9C7E00986F200081612500A17F4100A17F410000000000F2F3F5000000
      00000000000000000000F1EAE000F1EAE000F1EBE300F2ECE300F2ECE300F2EC
      E300F2ECE300F1ECE300F2ECE400F2ECE400F2EDE500F2EDE500F1EEE500F3EE
      E600F4EDE600F4EDE600F4EDE600F3EEE700F1F0E600F2EFE700F3EFEA00F3EF
      EA00F3EFE900F3F0E800F4F1EC00F6F3F100F6F3F100D0A26B00D0A26B00E5C8
      A700000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800F8F8F800F8F8F800F7F8F70000000000F7F7F700F6F6
      F600F6F6F600F5F5F400F2F1F100F9F9F900F6F6F600F4F5F500F4F5F500F5F5
      F500F5F5F500F3F3F300F3F4F400F3F3F300F4F2F200F3F3F300F4F3F300F3F3
      F300F4F3F300F3F2F200F3F2F200F2F1F100F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003E9E00003C9E0098AAC500D7D5D100C9C9
      C900C1C1C100BEBAB6007597BC006999D000407DBC00437EBC00437EBC00427E
      BC00437CBA00417CBA00427CBA00407BB900407AB8003F79B7003F79B7003E79
      B7003E78B6003E77B500417AB6001A56A80000000000F0F1F40000000000EACD
      6400BB9D3700BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8F700F8F7
      F500F7F6F400F6F5F300F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000E5E3E000DDDCD800D7D6D200D0CFCB00C8C9
      C900AF9C7E00986F200081612500A17F4100A17F410000000000F2F3F5000000
      00000000000000000000EEE8DE00EEE8DE00F0EAE100EFEAE100EFEAE100F1EA
      E200F1EAE200F5F3EF00F7F5F400F6F7F500F7F8F600F7F8F600F9F7F600F9F8
      F500F7FAF700F7FAF700F7FAF700F6F9F400F5F4F000F3EEEA00F2EFE600F2EF
      E600F3EFE800F4EFEA00F4EFE900F3EEE900F3EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD8D500CECAB700C1BDA900F5F4F100F5F6F600F5F6F600F5F5
      F500F3F3F300F3F4F400F4F3F300F4F2F200F3F3F300F4F3F300F4F3F300F4F3
      F200F3F2F200F3F1F100F3F1F100F3F2F200F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B900DDD9D300C9C9
      C900C1C1C100BEBAB6007597BE00699AD100407DBC00447FBD00437FBD00447E
      BC00427EBC00437CBA00417DBB00417BB900417BB900407AB800407AB8003F79
      B7003E79B7003E77B500427BB7001A57A90000000000F0F1F40000000000EBCD
      5500AE932100AE932100D3AF1E00D1BE8A00FDFFFF00F9F9FB00F8F8FA00F7F7
      F900F6F5F700F5F4F500F5F4F500F4F3F400F3F2F300F1F1F100F0EFEF00EEED
      ED00EBEBE900EBEAE900E7E5E300E7E5E300DCDBD800D0CDCB00C8C6C400BBBD
      BD00A5916E00986E0E0079591200A07D3300A07D330000000000F2F3F5000000
      00000000000000000000EEE8DE00EEE8DE00F0EAE100EFEAE100EFEAE100F1EA
      E200F1EAE200F5F3EF00F7F5F400F6F7F500F7F8F600F7F8F600F9F7F600F9F8
      F500F7FAF700F7FAF700F7FAF700F6F9F400F5F4F000F3EEEA00F2EFE600F2EF
      E600F3EFE800F4EFEA00F4EFE900F3EEE900F3EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3E1DA00140FAA00140EC300DDDCDF00F9F9F600F9F9F600F3F3
      F300F3F3F300F3F3F300F3F2F200F3F2F200F3F3F300F4F3F300F4F3F300F3F1
      F100F2F1F100F2F2F200F2F2F200F3F2F200F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000446A5000648A700154C9B00D3CFC900DAD6
      CE00CECAC400CBC3B9007A9CBF006999D100417EBD004580BE004580BE00437F
      BD00447EBC00427EBC00437DBB00417CBA00407AB9003E79B8003D78B7003B76
      B5003A76B500407AB700467EB8001150A90000000000F0F0F200EFECE300ECDD
      A100EEDB8B00EEDB8B00F1DD8C00D6C69900DBCFB100DACDAD00D9CCAD00D9CB
      AD00D8CBAC00D7CAAB00D7CAAB00D7CAAC00D7CAAD00D6CAAE00D7CAB000D7CB
      B200D7CCB300D8CDB600DACEB900DACEB900D9D0BD00CBBFA700C3B59B00BFB3
      9B00BBAB8B00CBB47D00C5AF7B00C4B28900C4B2890000000000F1F2F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBBB9600D3AF8400D2AF8600D0AD8500D0AD8500CFAA8200CAA8
      7C00C59C6C00C59C6C00C59C6C00CBA77B00E1CDB60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9CAEC000000A5003332DF009594EF0000000000000000000000
      0000000000000000000000000000F3F2F200F3F1F100F2F1F100F2F0F000F2F0
      F000F2F1F100F2F1F100F2F1F100F2F1F100F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0001D5BB100094DA9000348A900094395004C6C
      9B00516F9B004B6894004D7DB2007BA6D8003D7BBC00447FBE00417EBD00407D
      BC003F7BBB003F7CBB003E7AB900417CBA004F85C0005E90C7006A98CB00729E
      CE0079A2D0006090C6001556AB00225EB2000000000000000000000000000000
      0000F0EFEC00F0EFEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEEEEC0000000000EDEDEB00EDEDEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFBB9200C88B4600C68B4800BF864200BF864200BB884F00D5B7
      9500F4ECE200F4ECE200F4ECE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004845C600321BD7003035E300DFDFF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5001154B0000C52
      AF000C51B000094FAF001F62B40099BAE1006597CD00538BC5006797CC00709E
      D000739FD10074A0D20076A1D200729DD0005B8CC700437ABE00306CB7001C5C
      AF000B4FA9001254AD003B72BE005282C300000000000000000000000000F0F0
      F100F0F0F100F0F0F100F0F0F100F0F0F100F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F100F0F1F100F0F1F100F0F1F100F0F0F100F0F1F200F1F1F200F1F1
      F200F0F1F200F0F1F100F0F1F100F0F0F100F0F0F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7ECDE00C9A07000D5C0A700EFEDEB00EFEDEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9BE6001700DE00D8DEFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00081A4D4004D80C4005988C8005988
      C8005988C8005988C8005484C600437DBF0076A0D2006E9ACF005387C500417A
      BE004178BE00477CC1004A7DC3004B7EC4004B7EC4004D80C5004F81C6005082
      C6005183C600497DC3006390CA00F0F0F000424D3E000000000000003E000000
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
      FFF801FFF0000000000000000000000000000000FFC0003FF000000000000000
      0000000000000000FF00000FF0000000000000000000000000000000FE000007
      F0000000000000000000000000000000FC000003F00000000000000000000000
      00000000F8000001F0000000000000000000000000000000F0000000F0000000
      000000000000000000000000E000000070000000000000000000000000000000
      C000000030000000000000000000000000000000C04000203000000000000000
      0000000000000000800000001000000000000000000000000000000080000000
      1000000000000000000000000000000000400020000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007FFFE000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007FFFE0000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000040002000000000000000000000000000000000
      80679E601000000000000000000000000000000080679E601000000000000000
      0000000000000000C000000030000000000000000000000000000000C0000000
      30000000000000000000000000000000E0000000700000000000000000000000
      00000000F0000000F0000000000000000000000000000000F8000001F0000000
      000000000000000000000000FC000003F0000000000000000000000000000000
      FE000007F0000000000000000000000000000000FF00000FF000000000000000
      0000000000000000FFC0003FF0000000000000000000000000000000FFF000FF
      F0000000000000000000000000000000FFFFFFFFFFFFFFFBFFFFFFFFFFF80000
      00010000F00000007FFFFF81FFC007FFFFF0380000000000E3FFFFEFBFFDF001
      FFC00005FFF0000000000000FFFFFFFFDC0000007F801FF00010000000000000
      FFFFFFFFDC0000007F8008001800000000000000A00000005C0000007F800000
      0070000000000000A0000000580000007F8000000030000000000000A0000000
      500000007F8000000030000000000000A0000000500000007F80000000700000
      00000000A0000000580000001F8000000030000000000000A000000078000000
      7F8000000030000000000000A0000000780000001F8000000870000000000000
      A00000007C0000001F80000000F0000000000000A00000007C0000001F800000
      0070000000000000A00000007C0000001F0000000030000000000000A0000000
      7C0000000F0000000030000000000000A00000007C0000000F00000000300000
      00000000A00000007C0000000F0000000030000000000000A00000007C000000
      0F0000000030000000000000A00000007C000000030000000030000000000000
      A00000007C000000030000000030000000000000A00000007C00000003000000
      0030000000000000A00000007C000000010000000070000000000000A0000000
      7C000000018000000030000000000000A00000005C0000000180EC0000700000
      00000000A00000005C000000008000FC0070000000000000A000000058000000
      018000020870000000000000A00000005C000000000000012070000000000000
      A00000005C00000000800000C070000000000000A00000005800000000880000
      0070000000000000A00000005C0000000FF840000070000000000000A0000000
      5C0000007FFFF8000070000000000000A00000005C0000007FFFF80000700000
      00000000800000005FF8007FFFFFF87E0070000000000000F3FFFFFA7FF801FF
      FFFFF87FFFF0000000000000E00000007FF83FFFFFFFF8FFFFF0000000000000
      00000000000000000000000000000000000000000000}
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        IsMainMenu = True
        ItemLinks = <
          item
            Item = BLBSalva
            Visible = True
          end
          item
            Item = BLBValida
            Visible = True
          end
          item
            Item = BLBHistorico
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBCancela
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSaida
            Visible = True
          end>
        MultiLine = True
        Name = 'Toolbar'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Top = 488
    DockControlHeights = (
      0
      0
      57
      0)
    inherited BLBSalva: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBCancela: TdxBarLargeButton
      Visible = ivNever
    end
    object BLBHistorico: TdxBarLargeButton
      Action = ACTHistorico
      Category = 0
      AutoGrayScale = False
      HotImageIndex = 4
    end
  end
  inherited PMMain: TdxBarPopupMenu
    Top = 488
  end
  inherited DMMain: TdxDockingManager
    Top = 520
  end
  inherited ALMain: TActionList
    Top = 552
    object ACTHistorico: TAction
      Category = 'Menu'
      Caption = '[Ctrl+H] Hist'#243'rico'
      OnExecute = ACTHistoricoExecute
    end
  end
end
