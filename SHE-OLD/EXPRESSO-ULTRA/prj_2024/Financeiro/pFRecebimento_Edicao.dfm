inherited FrmFRecebimento_Edicao: TFrmFRecebimento_Edicao
  Left = 669
  Top = 47
  Caption = 'Manuten'#231#227'o de T'#237'tulos'
  ClientHeight = 732
  ClientWidth = 574
  FormStyle = fsNormal
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 711
    Width = 574
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
        Width = 300
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
    Width = 574
    Height = 650
    DockType = 0
    OriginalWidth = 574
    OriginalHeight = 650
    inherited LDSMenu: TdxLayoutDockSite
      Width = 574
      Height = 650
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSEdicao: TdxLayoutDockSite
        Width = 474
        Height = 650
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited DPMenu: TdxDockPanel
        Height = 650
        DockType = 2
        OriginalWidth = 100
        OriginalHeight = 573
        inherited SBMenu: TdxSideBar
          Height = 625
        end
      end
    end
    inherited DPEdicao: TdxDockPanel
      Width = 574
      Height = 650
      DockType = 1
      OriginalWidth = 470
      OriginalHeight = 285
      inherited PNLPrincipal: TPanel
        Width = 570
        Height = 625
        object GBDocumento: TGroupBox
          Left = 0
          Top = 0
          Width = 570
          Height = 465
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
            Left = 7
            Top = 123
            Width = 64
            Height = 17
            Caption = 'Documento'
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
            Left = 7
            Top = 147
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
            Left = 7
            Top = 227
            Width = 68
            Height = 17
            Caption = 'Vl. T'#237'tulo R$'
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
            Left = 7
            Top = 411
            Width = 77
            Height = 17
            Caption = 'Situa'#231#227'o Final'
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
            Left = 7
            Top = 275
            Width = 46
            Height = 17
            Caption = 'Vl. Pago'
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
            Left = 7
            Top = 299
            Width = 68
            Height = 17
            Caption = 'Vl. Pendente'
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
            Left = 7
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
            Left = 7
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
            Left = 7
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
            Left = 219
            Top = 227
            Width = 66
            Height = 17
            Caption = 'Vl. Juros R$'
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
            Left = 216
            Top = 251
            Width = 69
            Height = 17
            Caption = 'Vl. Multa R$'
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
            Left = 7
            Top = 251
            Width = 93
            Height = 17
            Caption = 'Vl. Descontos R$'
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
            Left = 241
            Top = 123
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
          object LADTVencimento: TLabel
            Left = 247
            Top = 147
            Width = 38
            Height = 17
            Caption = 'Vencto'
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
            Left = 241
            Top = 275
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
            Left = 7
            Top = 99
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
            Left = 7
            Top = 331
            Width = 83
            Height = 17
            Hint = 
              'Altera status da conta para Baixado e libera uma nova emiss'#227'o de' +
              ' boleto'
            Caption = 'Baixar Boleto ?'
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
            Left = 7
            Top = 379
            Width = 94
            Height = 17
            Hint = 'Desvincula NF do Pedido e altera status da conta para Baixado'
            Caption = 'Desvincular NF ?'
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
            Left = 7
            Top = 355
            Width = 65
            Height = 17
            Hint = 'Permite cancelamento da nota fiscal'
            Caption = 'Baixar NF ?'
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
            Left = 7
            Top = 171
            Width = 65
            Height = 17
            Caption = 'N'#186' Carteira'
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
            Left = 211
            Top = 171
            Width = 74
            Height = 17
            Caption = 'N'#186' Container'
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
            Left = 209
            Top = 404
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
          object Label1: TLabel
            Left = 7
            Top = 195
            Width = 29
            Height = 17
            Caption = 'Envio'
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
          object CEVTitulo: TdxCurrencyEdit
            Left = 105
            Top = 224
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
            TabOrder = 14
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
            Left = 288
            Top = 144
            Width = 100
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
            TabOrder = 10
            AutoSize = False
            OnChange = DEFaturaChange
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object DEFatura: TdxDateEdit
            Left = 288
            Top = 120
            Width = 100
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
            TabOrder = 8
            AutoSize = False
            OnChange = DEFaturaChange
            OnValidate = DEFaturaValidate
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object CEVPago: TdxCurrencyEdit
            Left = 105
            Top = 272
            Width = 100
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
            TabOrder = 18
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
            Left = 288
            Top = 272
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
            TabOrder = 19
            AutoSize = False
            OnChange = DEFaturaChange
            Date = -700000.000000000000000000
            DateValidation = True
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
          object CEVPendente: TdxCurrencyEdit
            Left = 105
            Top = 296
            Width = 100
            Cursor = crNo
            HelpContext = 1
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 20
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = True
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            UseThousandSeparator = True
            Height = 22
            StoredValues = 65
          end
          object IEVendedor: TdxImageEdit
            Left = 155
            Top = 40
            Width = 405
            Hint = 'Cor'
            Color = 16644596
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
          object IERepresentante: TdxImageEdit
            Left = 155
            Top = 64
            Width = 405
            Hint = 'Cor'
            Color = 16644596
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
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
            Left = 105
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
            Left = 288
            Top = 224
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
            TabOrder = 15
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
            Left = 288
            Top = 248
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
            TabOrder = 17
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
            Left = 105
            Top = 248
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
            TabOrder = 16
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
            Left = 105
            Top = 408
            Width = 220
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
            TabOrder = 24
            Text = 'PROTESTADO COM INSTRUMENTO'
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              'PROTESTADO COM ADVOGADO')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              'PROTESTADO COM ADVOGADO')
            Height = 22
          end
          object EDCliente: TdxMaskEdit
            Left = 155
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
            Left = 105
            Top = 120
            Width = 120
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
            TabOrder = 7
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            OnValidate = EDFaturaValidate
            Height = 22
            StoredValues = 1
          end
          object EDTitulo: TdxMaskEdit
            Left = 105
            Top = 144
            Width = 120
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
            TabOrder = 9
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            OnValidate = EDTituloValidate
            Height = 22
            StoredValues = 1
          end
          object IETipo: TdxImageEdit
            Left = 105
            Top = 96
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
            TabOrder = 6
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
            Left = 105
            Top = 328
            Width = 50
            Cursor = crHandPoint
            Hint = 
              'Altera status da conta para Baixado e libera uma nova emiss'#227'o de' +
              ' boleto'
            Color = 16644596
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
            TabOrder = 21
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
            Left = 105
            Top = 432
            Width = 220
            Hint = 
              'Altera status da conta para Baixado e libera uma nova emiss'#227'o de' +
              ' boleto'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 25
            Text = '1'
            AutoSize = False
            DropDownRows = 15
            Descriptions.Strings = (
              'Atualizar apenas esse t'#237'tulo'
              'Atualizar todo documento')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '0'
              '1')
            Height = 22
          end
          object IEDesvinculaNF: TdxImageEdit
            Left = 105
            Top = 376
            Width = 50
            Cursor = crHandPoint
            Hint = 'Desvincula NF do Pedido e altera status da conta para Baixado'
            Color = 16644596
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
            TabOrder = 23
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
            Left = 105
            Top = 352
            Width = 50
            Cursor = crHandPoint
            Hint = 'Permite cancelamento da nota fiscal'
            Color = 16644596
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
            TabOrder = 22
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
            Left = 105
            Top = 168
            Width = 50
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
            TabOrder = 11
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
            Left = 288
            Top = 168
            Width = 100
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
            TabOrder = 13
            AutoSize = False
            CharCase = ecUpperCase
            DropDownRows = 15
            Height = 22
          end
          object CEVendedor: TdxCurrencyEdit
            Left = 105
            Top = 40
            Width = 50
            Cursor = crNo
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
            TabOrder = 2
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = True
            DecimalPlaces = 0
            DisplayFormat = '0'
            Height = 22
            StoredValues = 65
          end
          object CERepresentante: TdxCurrencyEdit
            Left = 105
            Top = 64
            Width = 50
            Cursor = crNo
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
            TabOrder = 4
            Alignment = taRightJustify
            AutoSize = False
            ReadOnly = True
            DecimalPlaces = 0
            DisplayFormat = '0'
            Height = 22
            StoredValues = 65
          end
          object dxDateEdit1: TdxDateEdit
            Left = 105
            Top = 192
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
            TabOrder = 12
            AutoSize = False
            OnChange = DEFaturaChange
            OnValidate = DEFaturaValidate
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 22
            StoredValues = 4
          end
        end
        object GBEMINFADCAD: TGroupBox
          Left = 0
          Top = 465
          Width = 570
          Height = 160
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
            Width = 566
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
            Height = 139
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
