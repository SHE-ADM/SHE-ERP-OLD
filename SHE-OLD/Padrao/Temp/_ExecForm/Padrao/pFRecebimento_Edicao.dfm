inherited FrmFRecebimento_Edicao: TFrmFRecebimento_Edicao
  Left = 659
  Top = 27
  Caption = 'Manuten'#231#227'o de T'#237'tulos'
  ClientHeight = 623
  ClientWidth = 554
  FormStyle = fsNormal
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 602
    Width = 554
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
        Width = 280
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
    Top = 61
    Width = 554
    Height = 541
    DockType = 0
    OriginalWidth = 554
    OriginalHeight = 541
    inherited LDSMenu: TdxLayoutDockSite
      Width = 554
      Height = 541
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSEdicao: TdxLayoutDockSite
        Width = 454
        Height = 541
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited DPMenu: TdxDockPanel
        Height = 541
        DockType = 2
        OriginalWidth = 100
        OriginalHeight = 573
        inherited SBMenu: TdxSideBar
          Height = 516
        end
      end
    end
    inherited DPEdicao: TdxDockPanel
      Width = 554
      Height = 541
      DockType = 1
      OriginalWidth = 470
      OriginalHeight = 285
      inherited PNLPrincipal: TPanel
        Width = 550
        Height = 516
        object GBDocumento: TGroupBox
          Left = 0
          Top = 0
          Width = 550
          Height = 385
          Align = alTop
          Caption = '  Documento  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object LAFatura: TLabel
            Left = 51
            Top = 91
            Width = 36
            Height = 17
            Caption = 'Fatura'
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
          object LATitulo: TLabel
            Left = 56
            Top = 115
            Width = 31
            Height = 17
            Caption = 'T'#237'tulo'
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
          object LAVTitulo: TLabel
            Left = 57
            Top = 139
            Width = 30
            Height = 17
            Caption = 'Valor'
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
          object LAStatus: TLabel
            Left = 237
            Top = 280
            Width = 33
            Height = 17
            Caption = 'Status'
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
          object LAVPago: TLabel
            Left = 59
            Top = 211
            Width = 28
            Height = 17
            Caption = 'Pago'
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
          object LAVPendente: TLabel
            Left = 37
            Top = 235
            Width = 50
            Height = 17
            Caption = 'Pendente'
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
          object LACliente: TLabel
            Left = 50
            Top = 19
            Width = 37
            Height = 17
            Caption = 'Cliente'
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
          object LAVendedor: TLabel
            Left = 34
            Top = 43
            Width = 53
            Height = 17
            Caption = 'Vendedor'
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
          object LARepresentante: TLabel
            Left = 9
            Top = 67
            Width = 78
            Height = 17
            Caption = 'Representante'
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
          object LAVJuros: TLabel
            Left = 58
            Top = 163
            Width = 29
            Height = 17
            Caption = 'Juros'
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
          object LAVMulta: TLabel
            Left = 238
            Top = 163
            Width = 32
            Height = 17
            Caption = 'Multa'
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
          object LAVDesconto: TLabel
            Left = 31
            Top = 187
            Width = 56
            Height = 17
            Caption = 'Descontos'
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
          object LADTFatura: TLabel
            Left = 234
            Top = 91
            Width = 36
            Height = 17
            Caption = 'Fatura'
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
          object LADTVencimento: TLabel
            Left = 205
            Top = 115
            Width = 65
            Height = 17
            Caption = 'Vencimento'
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
          object LADTPagamento: TLabel
            Left = 226
            Top = 211
            Width = 44
            Height = 17
            Caption = 'Emiss'#227'o'
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
          object LATipo: TLabel
            Left = 246
            Top = 256
            Width = 24
            Height = 17
            Caption = 'Tipo'
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
          object LABoleto: TLabel
            Left = 14
            Top = 307
            Width = 73
            Height = 17
            Hint = 
              'Altera status da conta para Baixado e libera uma nova emiss'#227'o de' +
              ' boleto'
            Caption = 'Baixar Boleto'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object LADesvinculaNF: TLabel
            Left = 3
            Top = 355
            Width = 84
            Height = 17
            Hint = 'Desvincula NF do Pedido e altera status da conta para Baixado'
            Caption = 'Desvincular NF'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object LACancelaNF: TLabel
            Left = 18
            Top = 331
            Width = 69
            Height = 17
            Hint = 'Permite cancelamento da nota fiscal'
            Caption = 'Cancelar NF'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object LABanco: TLabel
            Left = 42
            Top = 283
            Width = 45
            Height = 17
            Caption = 'Carteira'
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
          object LAContainer: TLabel
            Left = 33
            Top = 259
            Width = 54
            Height = 17
            Caption = 'Container'
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
          object LABoletoST: TLabel
            Left = 201
            Top = 300
            Width = 345
            Height = 25
            Hint = 'Permite Baixar Boleto de Cobran'#231'a'
            Alignment = taCenter
            AutoSize = False
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
            Visible = False
          end
          object CEVTitulo: TdxCurrencyEdit
            Left = 90
            Top = 136
            Width = 104
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
            TabOrder = 8
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            OnValidate = CEVTituloValidate
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object DEVencto: TdxDateEdit
            Left = 273
            Top = 112
            Width = 100
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            TabOrder = 7
            AutoSize = False
            OnChange = DEFaturaChange
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object DEFatura: TdxDateEdit
            Left = 273
            Top = 88
            Width = 100
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            TabOrder = 5
            AutoSize = False
            OnChange = DEFaturaChange
            OnValidate = DEFaturaValidate
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object CEVPago: TdxCurrencyEdit
            Left = 90
            Top = 208
            Width = 104
            HelpContext = 1
            Color = 12910532
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
            TabOrder = 12
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            OnValidate = CEVPagoValidate
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object DEPago: TdxDateEdit
            Left = 273
            Top = 208
            Width = 100
            Color = 12910532
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            TabOrder = 13
            AutoSize = False
            OnChange = DEFaturaChange
            Date = -700000.000000000000000000
            DateValidation = True
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object CEVPendente: TdxCurrencyEdit
            Left = 90
            Top = 232
            Width = 104
            HelpContext = 1
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderColor = 16644596
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 14
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object IEVendedor: TdxImageEdit
            Left = 90
            Top = 40
            Width = 283
            Hint = 'Cor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 22
          end
          object IERepresentante: TdxImageEdit
            Left = 90
            Top = 64
            Width = 283
            Hint = 'Cor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 22
          end
          object CECliente: TdxCurrencyEdit
            Left = 90
            Top = 16
            Width = 50
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
            OnValidate = CEClienteValidate
            DecimalPlaces = 0
            DisplayFormat = '0'
            Height = 22
            StoredValues = 65
          end
          object CEVJuros: TdxCurrencyEdit
            Left = 90
            Top = 160
            Width = 104
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
            TabOrder = 9
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object CEVMulta: TdxCurrencyEdit
            Left = 273
            Top = 160
            Width = 100
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
            TabOrder = 10
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object CEVDesconto: TdxCurrencyEdit
            Left = 90
            Top = 184
            Width = 104
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
            TabOrder = 11
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = False
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object IEStatus: TdxImageEdit
            Left = 273
            Top = 280
            Width = 270
            Hint = 'Cor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 22
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 22
          end
          object EDCliente: TdxMaskEdit
            Left = 139
            Top = 16
            Width = 405
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Shadow = False
            TabOrder = 1
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            Height = 22
            StoredValues = 1
          end
          object EDFatura: TdxMaskEdit
            Left = 90
            Top = 88
            Width = 104
            Color = 16644596
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Shadow = False
            TabOrder = 4
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            OnValidate = EDFaturaValidate
            Height = 22
            StoredValues = 1
          end
          object EDTitulo: TdxMaskEdit
            Left = 90
            Top = 112
            Width = 104
            Color = 16644596
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtNone
            Style.Shadow = False
            TabOrder = 6
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            OnValidate = EDTituloValidate
            Height = 22
            StoredValues = 1
          end
          object IETipo: TdxImageEdit
            Left = 273
            Top = 256
            Width = 270
            Hint = 'Cor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 21
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 22
          end
          object IEBoleto: TdxImageEdit
            Left = 90
            Top = 304
            Width = 50
            Hint = 
              'Altera status da conta para Baixado e libera uma nova emiss'#227'o de' +
              ' boleto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 17
            Text = 'N'#195'O'
            AutoSize = False
            OnChange = IEBoletoChange
            DropDownRows = 15
            Descriptions.Strings = (
              'SIM'
              'N'#195'O')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '1'
              '0')
            Height = 22
          end
          object IEBoletoBX: TdxImageEdit
            Left = 139
            Top = 304
            Width = 55
            Hint = 
              'Altera status da conta para Baixado e libera uma nova emiss'#227'o de' +
              ' boleto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 18
            Text = 'T'#237'tulo'
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              'T'#237'tulo'
              'Doc')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              'T'#237'tulo'
              'Doc')
            Height = 22
          end
          object IEDesvinculaNF: TdxImageEdit
            Left = 90
            Top = 352
            Width = 50
            Hint = 'Desvincula NF do Pedido e altera status da conta para Baixado'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 19
            Text = '0'
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              'SIM'
              'N'#195'O')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '1'
              '0')
            Height = 22
          end
          object IECancelaNF: TdxImageEdit
            Left = 90
            Top = 328
            Width = 50
            Hint = 'Permite cancelamento da nota fiscal'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 20
            Text = '0'
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              'SIM'
              'N'#195'O')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '1'
              '0')
            Height = 22
          end
          object IEBanco: TdxImageEdit
            Left = 90
            Top = 280
            Width = 104
            Hint = 'Cor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 16
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              '03'
              '11'
              '19'
              '99')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3')
            Values.Strings = (
              '03'
              '11'
              '19'
              '99')
            Height = 22
          end
          object PEContainer: TdxPickEdit
            Left = 90
            Top = 256
            Width = 104
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            TabOrder = 15
            AutoSize = False
            CharCase = ecUpperCase
            DropDownRows = 15
            Height = 22
          end
        end
        object GBEMINFADCAD: TGroupBox
          Left = 0
          Top = 385
          Width = 550
          Height = 131
          Align = alClient
          Caption = '  Informa'#231#245'es Adicionais  '
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object EMINFADCAD: TdxMemo
            Left = 2
            Top = 19
            Width = 546
            Align = alClient
            Color = clWhite
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
            Height = 110
          end
        end
      end
    end
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
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
    DockControlHeights = (
      0
      0
      61
      0)
    inherited BLBValida: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBCancela: TdxBarLargeButton
      Visible = ivNever
    end
  end
end
