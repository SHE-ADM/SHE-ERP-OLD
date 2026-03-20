inherited frmcad_for_edi: Tfrmcad_for_edi
  Left = 406
  Top = 22
  ActiveControl = edfant
  AlphaBlendValue = 0
  ClientHeight = 567
  ClientWidth = 542
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 542
    Height = 483
    inherited PaintBox: TPaintBox
      Width = 542
      Height = 228
    end
    object pcinfo: TdxPageControl
      Left = 0
      Top = 0
      Width = 542
      Height = 228
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
          Height = 204
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
          Left = 267
          Top = 85
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
          Top = 109
          Width = 35
          Height = 14
          Caption = 'C.C.M.'
          Color = clBtnFace
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
          Left = 267
          Top = 109
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
          Top = 133
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
          Left = 268
          Top = 133
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
          Left = 363
          Top = 13
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
        object Label56: TLabel
          Left = 3
          Top = 181
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
        object Label40: TLabel
          Left = 268
          Top = 157
          Width = 46
          Height = 14
          Caption = 'Empresa'
          Color = clBtnFace
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
        object edcfor: TdxEdit
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
          OnValidate = edcforValidate
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
          TabOrder = 3
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
          TabOrder = 4
          AutoSize = False
          EditMask = '99.999.999/9999-999;0; '
          IgnoreMaskBlank = False
          OnValidate = edcnpjValidate
          Height = 24
          StoredValues = 4
        end
        object edinsc: TdxEdit
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
          TabOrder = 5
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edCCM: TdxEdit
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
          TabOrder = 6
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
          TabOrder = 7
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
          TabOrder = 8
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
          TabOrder = 10
          Text = 'ATIVO'
          AutoSize = False
          Descriptions.Strings = (
            'ATIVO'
            'INATIVO'
            'PR'#201'-CADASTRO')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            'A'
            'I'
            'E')
          Height = 24
        end
        object cbramo: TComboBox
          Left = 96
          Top = 177
          Width = 441
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
          TabOrder = 12
        end
        object cbcdep: TdxImageEdit
          Left = 372
          Top = 152
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
          TabOrder = 11
          Text = 'TODOS'
          AutoSize = False
          Descriptions.Strings = (
            'TODOS')
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
          Width = 542
          Height = 224
          Align = alClient
        end
        object Label55: TLabel
          Left = 3
          Top = 39
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
          Top = 61
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
          Top = 157
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
          Top = 131
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
          Top = 85
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
          Top = 109
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
        object Label2: TLabel
          Left = 3
          Top = 13
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
          Top = 32
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
          Top = 56
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
            '1'
            '0')
          Height = 24
        end
        object cbdtra: TdxImageEdit
          Left = 104
          Top = 152
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
          TabOrder = 6
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
          Top = 128
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
          TabOrder = 5
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
        object cbricm: TdxImageEdit
          Left = 104
          Top = 104
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
          TabOrder = 4
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
        object edsite: TdxEdit
          Left = 104
          Top = 8
          Width = 433
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
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
      end
      object tsobs: TdxTabSheet
        Caption = 'Observa'#231#245'es'
        object pcOBS: TdxPageControl
          Left = 0
          Top = 0
          Width = 542
          Height = 204
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
              Height = 198
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
              Height = 198
            end
          end
          object ts2: TdxTabSheet
            Caption = 'Ocorrencias'
            object Bevel11: TBevel
              Left = 0
              Top = 0
              Width = 542
              Height = 178
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
              Height = 178
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 228
      Width = 542
      Height = 255
      Align = alBottom
      TabOrder = 0
      object pcmain: TdxPageControl
        Left = 1
        Top = 1
        Width = 540
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
            Width = 540
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
                Height = 203
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
                Left = 104
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
                Left = 104
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
                Left = 176
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
                Left = 176
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
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                OnDblClick = edtel1DblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfte2: TdxMaskEdit
                Left = 271
                Top = 56
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edffax: TdxMaskEdit
                Left = 271
                Top = 80
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                OnDblClick = edfaxDblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfcel: TdxMaskEdit
                Left = 104
                Top = 104
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 11
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edfnid: TdxMaskEdit
                Left = 72
                Top = 152
                Width = 102
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
                Left = 104
                Top = 128
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 14
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
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
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
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
                Left = 172
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
                Left = 172
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
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                OnDblClick = edtel1DblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcte2: TdxMaskEdit
                Left = 271
                Top = 56
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcfax: TdxMaskEdit
                Left = 271
                Top = 80
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                OnDblClick = edfaxDblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edccel: TdxMaskEdit
                Left = 104
                Top = 104
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 11
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
                IgnoreMaskBlank = False
                Height = 24
                StoredValues = 4
              end
              object edcnid: TdxMaskEdit
                Left = 72
                Top = 152
                Width = 102
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
                Left = 104
                Top = 128
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 14
                OnDblClick = edcelDblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
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
                Width = 70
                Color = clWhite
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                OnDblClick = edtel2DblClick
                AutoSize = False
                EditMask = '9999-9999;0; '
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
                Left = 172
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
                Left = 172
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
                Width = 540
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
    Top = 548
    Width = 542
  end
  inherited PNLMenu: TPanel
    Width = 542
    inherited SpeedBar2: TSpeedBar
      Width = 542
    end
  end
  object cad_for: TIBDataSet
    Database = FBird.DBERP
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_FOR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_FOR'
      
        '  (FOR_BAI, FOR_BAIC, FOR_BAIV, FOR_CCEL, FOR_CCM, FOR_CCON, FOR' +
        '_CDD2, '
      
        '   FOR_CDD3, FOR_CDD4, FOR_CDD5, FOR_CDD6, FOR_CDDD, FOR_CDEP, F' +
        'OR_CEL, '
      
        '   FOR_CEP, FOR_CEPC, FOR_CEPV, FOR_CFAX, FOR_CICM, FOR_CID, FOR' +
        '_CIDC, '
      
        '   FOR_CIDV, FOR_CMAI, FOR_CMUC, FOR_CMUN, FOR_CMUV, FOR_CNCE, F' +
        'OR_CNID, '
      
        '   FOR_CNPJ, FOR_COMC, FOR_COMP, FOR_COMV, FOR_CONT, FOR_CPAG, F' +
        'OR_CPF, '
      
        '   FOR_CRED, FOR_CTC1, FOR_CTC2, FOR_CTE1, FOR_CTE2, FOR_CTE3, F' +
        'OR_CTRA, '
      
        '   FOR_DALT, FOR_DCAD, FOR_DD2, FOR_DD3, FOR_DD4, FOR_DD5, FOR_D' +
        'D6, FOR_DDD, '
      
        '   FOR_DFUN, FOR_DPAG, FOR_DTRA, FOR_DULT, FOR_ESTA, FOR_ESTC, F' +
        'OR_ESTV, '
      
        '   FOR_FANT, FOR_FAX, FOR_FCEL, FOR_FCON, FOR_FDD2, FOR_FDD3, FO' +
        'R_FDD4, '
      
        '   FOR_FDD5, FOR_FDD6, FOR_FDDD, FOR_FFAX, FOR_FMAI, FOR_FNCE, F' +
        'OR_FNID, '
      
        '   FOR_FTC1, FOR_FTC2, FOR_FTE1, FOR_FTE2, FOR_FTE3, FOR_IMUN, F' +
        'OR_INSC, '
      
        '   FOR_LOGC, FOR_LOGR, FOR_LOGV, FOR_MAIL, FOR_NCEL, FOR_NEID, F' +
        'OR_NUMC, '
      
        '   FOR_NUME, FOR_NUMV, FOR_OBSE, FOR_OBSO, FOR_RAMO, FOR_RAZA, F' +
        'OR_REGI, '
      
        '   FOR_REVE, FOR_RG, FOR_RICM, FOR_SITE, FOR_STA, FOR_STAV, FOR_' +
        'TCE1, FOR_TCE2, '
      
        '   FOR_TEL1, FOR_TEL2, FOR_TEL3, FOR_TLOC, FOR_TLOG, FOR_TLOV, F' +
        'OR_TPVE, '
      '   FOR_VDSC, FOR_VULT, ID)'
      'values'
      
        '  (:FOR_BAI, :FOR_BAIC, :FOR_BAIV, :FOR_CCEL, :FOR_CCM, :FOR_CCO' +
        'N, :FOR_CDD2, '
      
        '   :FOR_CDD3, :FOR_CDD4, :FOR_CDD5, :FOR_CDD6, :FOR_CDDD, :FOR_C' +
        'DEP, :FOR_CEL, '
      
        '   :FOR_CEP, :FOR_CEPC, :FOR_CEPV, :FOR_CFAX, :FOR_CICM, :FOR_CI' +
        'D, :FOR_CIDC, '
      
        '   :FOR_CIDV, :FOR_CMAI, :FOR_CMUC, :FOR_CMUN, :FOR_CMUV, :FOR_C' +
        'NCE, :FOR_CNID, '
      
        '   :FOR_CNPJ, :FOR_COMC, :FOR_COMP, :FOR_COMV, :FOR_CONT, :FOR_C' +
        'PAG, :FOR_CPF, '
      
        '   :FOR_CRED, :FOR_CTC1, :FOR_CTC2, :FOR_CTE1, :FOR_CTE2, :FOR_C' +
        'TE3, :FOR_CTRA, '
      
        '   :FOR_DALT, :FOR_DCAD, :FOR_DD2, :FOR_DD3, :FOR_DD4, :FOR_DD5,' +
        ' :FOR_DD6, '
      
        '   :FOR_DDD, :FOR_DFUN, :FOR_DPAG, :FOR_DTRA, :FOR_DULT, :FOR_ES' +
        'TA, :FOR_ESTC, '
      
        '   :FOR_ESTV, :FOR_FANT, :FOR_FAX, :FOR_FCEL, :FOR_FCON, :FOR_FD' +
        'D2, :FOR_FDD3, '
      
        '   :FOR_FDD4, :FOR_FDD5, :FOR_FDD6, :FOR_FDDD, :FOR_FFAX, :FOR_F' +
        'MAI, :FOR_FNCE, '
      
        '   :FOR_FNID, :FOR_FTC1, :FOR_FTC2, :FOR_FTE1, :FOR_FTE2, :FOR_F' +
        'TE3, :FOR_IMUN, '
      
        '   :FOR_INSC, :FOR_LOGC, :FOR_LOGR, :FOR_LOGV, :FOR_MAIL, :FOR_N' +
        'CEL, :FOR_NEID, '
      
        '   :FOR_NUMC, :FOR_NUME, :FOR_NUMV, :FOR_OBSE, :FOR_OBSO, :FOR_R' +
        'AMO, :FOR_RAZA, '
      
        '   :FOR_REGI, :FOR_REVE, :FOR_RG, :FOR_RICM, :FOR_SITE, :FOR_STA' +
        ', :FOR_STAV, '
      
        '   :FOR_TCE1, :FOR_TCE2, :FOR_TEL1, :FOR_TEL2, :FOR_TEL3, :FOR_T' +
        'LOC, :FOR_TLOG, '
      '   :FOR_TLOV, :FOR_TPVE, :FOR_VDSC, :FOR_VULT, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FOR_RAZA,'
      '  FOR_FANT,'
      '  FOR_CONT,'
      '  FOR_DCAD,'
      '  FOR_STA,'
      '  FOR_MAIL,'
      '  FOR_DDD,'
      '  FOR_TEL1,'
      '  FOR_TEL2,'
      '  FOR_FAX,'
      '  FOR_CEL,'
      '  FOR_RG,'
      '  FOR_CPF,'
      '  FOR_INSC,'
      '  FOR_CNPJ,'
      '  FOR_TLOG,'
      '  FOR_LOGR,'
      '  FOR_CEP,'
      '  FOR_NUME,'
      '  FOR_COMP,'
      '  FOR_BAI,'
      '  FOR_CID,'
      '  FOR_ESTA,'
      '  FOR_TLOC,'
      '  FOR_LOGC,'
      '  FOR_CEPC,'
      '  FOR_NUMC,'
      '  FOR_COMC,'
      '  FOR_BAIC,'
      '  FOR_CIDC,'
      '  FOR_ESTC,'
      '  FOR_OBSO,'
      '  FOR_STAV,'
      '  FOR_VULT,'
      '  FOR_TPVE,'
      '  FOR_OBSE,'
      '  FOR_TLOV,'
      '  FOR_LOGV,'
      '  FOR_CEPV,'
      '  FOR_NUMV,'
      '  FOR_COMV,'
      '  FOR_BAIV,'
      '  FOR_CIDV,'
      '  FOR_ESTV,'
      '  FOR_RICM,'
      '  FOR_CPAG,'
      '  FOR_DPAG,'
      '  FOR_CMUN,'
      '  FOR_DALT,'
      '  FOR_CTRA,'
      '  FOR_DTRA,'
      '  FOR_DFUN,'
      '  FOR_CICM,'
      '  FOR_RAMO,'
      '  FOR_CMUV,'
      '  FOR_CMUC,'
      '  FOR_DD2,'
      '  FOR_DD3,'
      '  FOR_DD4,'
      '  FOR_DD5,'
      '  FOR_DD6,'
      '  FOR_TEL3,'
      '  FOR_TCE1,'
      '  FOR_TCE2,'
      '  FOR_NCEL,'
      '  FOR_NEID,'
      '  FOR_FCON,'
      '  FOR_FMAI,'
      '  FOR_FDDD,'
      '  FOR_FTE1,'
      '  FOR_FDD2,'
      '  FOR_FTE2,'
      '  FOR_FDD3,'
      '  FOR_FTE3,'
      '  FOR_FDD4,'
      '  FOR_FFAX,'
      '  FOR_FDD5,'
      '  FOR_FCEL,'
      '  FOR_FTC1,'
      '  FOR_FDD6,'
      '  FOR_FNCE,'
      '  FOR_FTC2,'
      '  FOR_FNID,'
      '  FOR_CCON,'
      '  FOR_CMAI,'
      '  FOR_CDDD,'
      '  FOR_CTE1,'
      '  FOR_CDD2,'
      '  FOR_CTE2,'
      '  FOR_CDD3,'
      '  FOR_CTE3,'
      '  FOR_CDD4,'
      '  FOR_CFAX,'
      '  FOR_CDD5,'
      '  FOR_CCEL,'
      '  FOR_CTC1,'
      '  FOR_CDD6,'
      '  FOR_CNCE,'
      '  FOR_CTC2,'
      '  FOR_CNID,'
      '  FOR_VDSC,'
      '  FOR_CRED,'
      '  FOR_SITE,'
      '  FOR_REVE,'
      '  FOR_IMUN,'
      '  FOR_CCM,'
      '  FOR_DULT,'
      '  FOR_REGI,'
      '  FOR_CDEP'
      'from CAD_FOR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_FOR')
    ModifySQL.Strings = (
      'update CAD_FOR'
      'set'
      '  FOR_BAI = :FOR_BAI,'
      '  FOR_BAIC = :FOR_BAIC,'
      '  FOR_BAIV = :FOR_BAIV,'
      '  FOR_CCEL = :FOR_CCEL,'
      '  FOR_CCM = :FOR_CCM,'
      '  FOR_CCON = :FOR_CCON,'
      '  FOR_CDD2 = :FOR_CDD2,'
      '  FOR_CDD3 = :FOR_CDD3,'
      '  FOR_CDD4 = :FOR_CDD4,'
      '  FOR_CDD5 = :FOR_CDD5,'
      '  FOR_CDD6 = :FOR_CDD6,'
      '  FOR_CDDD = :FOR_CDDD,'
      '  FOR_CDEP = :FOR_CDEP,'
      '  FOR_CEL = :FOR_CEL,'
      '  FOR_CEP = :FOR_CEP,'
      '  FOR_CEPC = :FOR_CEPC,'
      '  FOR_CEPV = :FOR_CEPV,'
      '  FOR_CFAX = :FOR_CFAX,'
      '  FOR_CICM = :FOR_CICM,'
      '  FOR_CID = :FOR_CID,'
      '  FOR_CIDC = :FOR_CIDC,'
      '  FOR_CIDV = :FOR_CIDV,'
      '  FOR_CMAI = :FOR_CMAI,'
      '  FOR_CMUC = :FOR_CMUC,'
      '  FOR_CMUN = :FOR_CMUN,'
      '  FOR_CMUV = :FOR_CMUV,'
      '  FOR_CNCE = :FOR_CNCE,'
      '  FOR_CNID = :FOR_CNID,'
      '  FOR_CNPJ = :FOR_CNPJ,'
      '  FOR_COMC = :FOR_COMC,'
      '  FOR_COMP = :FOR_COMP,'
      '  FOR_COMV = :FOR_COMV,'
      '  FOR_CONT = :FOR_CONT,'
      '  FOR_CPAG = :FOR_CPAG,'
      '  FOR_CPF = :FOR_CPF,'
      '  FOR_CRED = :FOR_CRED,'
      '  FOR_CTC1 = :FOR_CTC1,'
      '  FOR_CTC2 = :FOR_CTC2,'
      '  FOR_CTE1 = :FOR_CTE1,'
      '  FOR_CTE2 = :FOR_CTE2,'
      '  FOR_CTE3 = :FOR_CTE3,'
      '  FOR_CTRA = :FOR_CTRA,'
      '  FOR_DALT = :FOR_DALT,'
      '  FOR_DCAD = :FOR_DCAD,'
      '  FOR_DD2 = :FOR_DD2,'
      '  FOR_DD3 = :FOR_DD3,'
      '  FOR_DD4 = :FOR_DD4,'
      '  FOR_DD5 = :FOR_DD5,'
      '  FOR_DD6 = :FOR_DD6,'
      '  FOR_DDD = :FOR_DDD,'
      '  FOR_DFUN = :FOR_DFUN,'
      '  FOR_DPAG = :FOR_DPAG,'
      '  FOR_DTRA = :FOR_DTRA,'
      '  FOR_DULT = :FOR_DULT,'
      '  FOR_ESTA = :FOR_ESTA,'
      '  FOR_ESTC = :FOR_ESTC,'
      '  FOR_ESTV = :FOR_ESTV,'
      '  FOR_FANT = :FOR_FANT,'
      '  FOR_FAX = :FOR_FAX,'
      '  FOR_FCEL = :FOR_FCEL,'
      '  FOR_FCON = :FOR_FCON,'
      '  FOR_FDD2 = :FOR_FDD2,'
      '  FOR_FDD3 = :FOR_FDD3,'
      '  FOR_FDD4 = :FOR_FDD4,'
      '  FOR_FDD5 = :FOR_FDD5,'
      '  FOR_FDD6 = :FOR_FDD6,'
      '  FOR_FDDD = :FOR_FDDD,'
      '  FOR_FFAX = :FOR_FFAX,'
      '  FOR_FMAI = :FOR_FMAI,'
      '  FOR_FNCE = :FOR_FNCE,'
      '  FOR_FNID = :FOR_FNID,'
      '  FOR_FTC1 = :FOR_FTC1,'
      '  FOR_FTC2 = :FOR_FTC2,'
      '  FOR_FTE1 = :FOR_FTE1,'
      '  FOR_FTE2 = :FOR_FTE2,'
      '  FOR_FTE3 = :FOR_FTE3,'
      '  FOR_IMUN = :FOR_IMUN,'
      '  FOR_INSC = :FOR_INSC,'
      '  FOR_LOGC = :FOR_LOGC,'
      '  FOR_LOGR = :FOR_LOGR,'
      '  FOR_LOGV = :FOR_LOGV,'
      '  FOR_MAIL = :FOR_MAIL,'
      '  FOR_NCEL = :FOR_NCEL,'
      '  FOR_NEID = :FOR_NEID,'
      '  FOR_NUMC = :FOR_NUMC,'
      '  FOR_NUME = :FOR_NUME,'
      '  FOR_NUMV = :FOR_NUMV,'
      '  FOR_OBSE = :FOR_OBSE,'
      '  FOR_OBSO = :FOR_OBSO,'
      '  FOR_RAMO = :FOR_RAMO,'
      '  FOR_RAZA = :FOR_RAZA,'
      '  FOR_REGI = :FOR_REGI,'
      '  FOR_REVE = :FOR_REVE,'
      '  FOR_RG = :FOR_RG,'
      '  FOR_RICM = :FOR_RICM,'
      '  FOR_SITE = :FOR_SITE,'
      '  FOR_STA = :FOR_STA,'
      '  FOR_STAV = :FOR_STAV,'
      '  FOR_TCE1 = :FOR_TCE1,'
      '  FOR_TCE2 = :FOR_TCE2,'
      '  FOR_TEL1 = :FOR_TEL1,'
      '  FOR_TEL2 = :FOR_TEL2,'
      '  FOR_TEL3 = :FOR_TEL3,'
      '  FOR_TLOC = :FOR_TLOC,'
      '  FOR_TLOG = :FOR_TLOG,'
      '  FOR_TLOV = :FOR_TLOV,'
      '  FOR_TPVE = :FOR_TPVE,'
      '  FOR_VDSC = :FOR_VDSC,'
      '  FOR_VULT = :FOR_VULT,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 416
    Top = 40
    object cad_forID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_FOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_forFOR_RAZA: TIBStringField
      FieldName = 'FOR_RAZA'
      Origin = '"CAD_FOR"."FOR_RAZA"'
      Size = 60
    end
    object cad_forFOR_FANT: TIBStringField
      FieldName = 'FOR_FANT'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 40
    end
    object cad_forFOR_CONT: TIBStringField
      FieldName = 'FOR_CONT'
      Origin = '"CAD_FOR"."FOR_CONT"'
      Size = 30
    end
    object cad_forFOR_DCAD: TDateField
      FieldName = 'FOR_DCAD'
      Origin = '"CAD_FOR"."FOR_DCAD"'
    end
    object cad_forFOR_STA: TIBStringField
      FieldName = 'FOR_STA'
      Origin = '"CAD_FOR"."FOR_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_forFOR_MAIL: TIBStringField
      FieldName = 'FOR_MAIL'
      Origin = '"CAD_FOR"."FOR_MAIL"'
      Size = 60
    end
    object cad_forFOR_DDD: TIBStringField
      FieldName = 'FOR_DDD'
      Origin = '"CAD_FOR"."FOR_DDD"'
      Size = 2
    end
    object cad_forFOR_TEL1: TIBStringField
      FieldName = 'FOR_TEL1'
      Origin = '"CAD_FOR"."FOR_TEL1"'
      Size = 9
    end
    object cad_forFOR_TEL2: TIBStringField
      FieldName = 'FOR_TEL2'
      Origin = '"CAD_FOR"."FOR_TEL2"'
      Size = 9
    end
    object cad_forFOR_FAX: TIBStringField
      FieldName = 'FOR_FAX'
      Origin = '"CAD_FOR"."FOR_FAX"'
      Size = 9
    end
    object cad_forFOR_CEL: TIBStringField
      FieldName = 'FOR_CEL'
      Origin = '"CAD_FOR"."FOR_CEL"'
      Size = 9
    end
    object cad_forFOR_RG: TIBStringField
      FieldName = 'FOR_RG'
      Origin = '"CAD_FOR"."FOR_RG"'
      Size = 15
    end
    object cad_forFOR_CPF: TIBStringField
      FieldName = 'FOR_CPF'
      Origin = '"CAD_FOR"."FOR_CPF"'
      Size = 11
    end
    object cad_forFOR_INSC: TIBStringField
      FieldName = 'FOR_INSC'
      Origin = '"CAD_FOR"."FOR_INSC"'
    end
    object cad_forFOR_CNPJ: TIBStringField
      FieldName = 'FOR_CNPJ'
      Origin = '"CAD_FOR"."FOR_CNPJ"'
      Size = 14
    end
    object cad_forFOR_TLOG: TIBStringField
      FieldName = 'FOR_TLOG'
      Origin = '"CAD_FOR"."FOR_TLOG"'
      Size = 15
    end
    object cad_forFOR_LOGR: TIBStringField
      FieldName = 'FOR_LOGR'
      Origin = '"CAD_FOR"."FOR_LOGR"'
      Size = 60
    end
    object cad_forFOR_CEP: TIBStringField
      FieldName = 'FOR_CEP'
      Origin = '"CAD_FOR"."FOR_CEP"'
      Size = 9
    end
    object cad_forFOR_NUME: TIBStringField
      FieldName = 'FOR_NUME'
      Origin = '"CAD_FOR"."FOR_NUME"'
      Size = 10
    end
    object cad_forFOR_COMP: TIBStringField
      FieldName = 'FOR_COMP'
      Origin = '"CAD_FOR"."FOR_COMP"'
      Size = 40
    end
    object cad_forFOR_BAI: TIBStringField
      FieldName = 'FOR_BAI'
      Origin = '"CAD_FOR"."FOR_BAI"'
      Size = 40
    end
    object cad_forFOR_CID: TIBStringField
      FieldName = 'FOR_CID'
      Origin = '"CAD_FOR"."FOR_CID"'
      Size = 40
    end
    object cad_forFOR_ESTA: TIBStringField
      FieldName = 'FOR_ESTA'
      Origin = '"CAD_FOR"."FOR_ESTA"'
      Size = 2
    end
    object cad_forFOR_TLOC: TIBStringField
      FieldName = 'FOR_TLOC'
      Origin = '"CAD_FOR"."FOR_TLOC"'
      Size = 15
    end
    object cad_forFOR_LOGC: TIBStringField
      FieldName = 'FOR_LOGC'
      Origin = '"CAD_FOR"."FOR_LOGC"'
      Size = 60
    end
    object cad_forFOR_CEPC: TIBStringField
      FieldName = 'FOR_CEPC'
      Origin = '"CAD_FOR"."FOR_CEPC"'
      Size = 9
    end
    object cad_forFOR_NUMC: TIBStringField
      FieldName = 'FOR_NUMC'
      Origin = '"CAD_FOR"."FOR_NUMC"'
      Size = 10
    end
    object cad_forFOR_COMC: TIBStringField
      FieldName = 'FOR_COMC'
      Origin = '"CAD_FOR"."FOR_COMC"'
      Size = 40
    end
    object cad_forFOR_BAIC: TIBStringField
      FieldName = 'FOR_BAIC'
      Origin = '"CAD_FOR"."FOR_BAIC"'
      Size = 40
    end
    object cad_forFOR_CIDC: TIBStringField
      FieldName = 'FOR_CIDC'
      Origin = '"CAD_FOR"."FOR_CIDC"'
      Size = 40
    end
    object cad_forFOR_ESTC: TIBStringField
      FieldName = 'FOR_ESTC'
      Origin = '"CAD_FOR"."FOR_ESTC"'
      Size = 2
    end
    object cad_forFOR_OBSO: TMemoField
      FieldName = 'FOR_OBSO'
      Origin = '"CAD_FOR"."FOR_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_forFOR_STAV: TIBStringField
      FieldName = 'FOR_STAV'
      Origin = '"CAD_FOR"."FOR_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_forFOR_VULT: TIBBCDField
      FieldName = 'FOR_VULT'
      Origin = '"CAD_FOR"."FOR_VULT"'
      Precision = 9
      Size = 2
    end
    object cad_forFOR_TPVE: TIBStringField
      FieldName = 'FOR_TPVE'
      Origin = '"CAD_FOR"."FOR_TPVE"'
      Size = 10
    end
    object cad_forFOR_OBSE: TMemoField
      FieldName = 'FOR_OBSE'
      Origin = '"CAD_FOR"."FOR_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_forFOR_TLOV: TIBStringField
      FieldName = 'FOR_TLOV'
      Origin = '"CAD_FOR"."FOR_TLOV"'
      Size = 15
    end
    object cad_forFOR_LOGV: TIBStringField
      FieldName = 'FOR_LOGV'
      Origin = '"CAD_FOR"."FOR_LOGV"'
      Size = 60
    end
    object cad_forFOR_CEPV: TIBStringField
      FieldName = 'FOR_CEPV'
      Origin = '"CAD_FOR"."FOR_CEPV"'
      Size = 9
    end
    object cad_forFOR_NUMV: TIBStringField
      FieldName = 'FOR_NUMV'
      Origin = '"CAD_FOR"."FOR_NUMV"'
      Size = 10
    end
    object cad_forFOR_COMV: TIBStringField
      FieldName = 'FOR_COMV'
      Origin = '"CAD_FOR"."FOR_COMV"'
      Size = 40
    end
    object cad_forFOR_BAIV: TIBStringField
      FieldName = 'FOR_BAIV'
      Origin = '"CAD_FOR"."FOR_BAIV"'
      Size = 40
    end
    object cad_forFOR_CIDV: TIBStringField
      FieldName = 'FOR_CIDV'
      Origin = '"CAD_FOR"."FOR_CIDV"'
      Size = 40
    end
    object cad_forFOR_ESTV: TIBStringField
      FieldName = 'FOR_ESTV'
      Origin = '"CAD_FOR"."FOR_ESTV"'
      Size = 2
    end
    object cad_forFOR_RICM: TIBStringField
      FieldName = 'FOR_RICM'
      Origin = '"CAD_FOR"."FOR_RICM"'
      FixedChar = True
      Size = 1
    end
    object cad_forFOR_CPAG: TIBStringField
      FieldName = 'FOR_CPAG'
      Origin = '"CAD_FOR"."FOR_CPAG"'
      Size = 2
    end
    object cad_forFOR_DPAG: TIBStringField
      FieldName = 'FOR_DPAG'
      Origin = '"CAD_FOR"."FOR_DPAG"'
      Size = 50
    end
    object cad_forFOR_CMUN: TIBStringField
      FieldName = 'FOR_CMUN'
      Origin = '"CAD_FOR"."FOR_CMUN"'
      Size = 10
    end
    object cad_forFOR_DALT: TDateField
      FieldName = 'FOR_DALT'
      Origin = '"CAD_FOR"."FOR_DALT"'
    end
    object cad_forFOR_CTRA: TIntegerField
      FieldName = 'FOR_CTRA'
      Origin = '"CAD_FOR"."FOR_CTRA"'
    end
    object cad_forFOR_DTRA: TIBStringField
      FieldName = 'FOR_DTRA'
      Origin = '"CAD_FOR"."FOR_DTRA"'
      Size = 60
    end
    object cad_forFOR_DFUN: TDateField
      FieldName = 'FOR_DFUN'
      Origin = '"CAD_FOR"."FOR_DFUN"'
    end
    object cad_forFOR_CICM: TIBStringField
      FieldName = 'FOR_CICM'
      Origin = '"CAD_FOR"."FOR_CICM"'
      FixedChar = True
      Size = 1
    end
    object cad_forFOR_RAMO: TIBStringField
      FieldName = 'FOR_RAMO'
      Origin = '"CAD_FOR"."FOR_RAMO"'
      Size = 120
    end
    object cad_forFOR_CMUV: TIBStringField
      FieldName = 'FOR_CMUV'
      Origin = '"CAD_FOR"."FOR_CMUV"'
      Size = 10
    end
    object cad_forFOR_CMUC: TIBStringField
      FieldName = 'FOR_CMUC'
      Origin = '"CAD_FOR"."FOR_CMUC"'
      Size = 10
    end
    object cad_forFOR_DD2: TIBStringField
      FieldName = 'FOR_DD2'
      Origin = '"CAD_FOR"."FOR_DD2"'
      Size = 2
    end
    object cad_forFOR_DD3: TIBStringField
      FieldName = 'FOR_DD3'
      Origin = '"CAD_FOR"."FOR_DD3"'
      Size = 2
    end
    object cad_forFOR_DD4: TIBStringField
      FieldName = 'FOR_DD4'
      Origin = '"CAD_FOR"."FOR_DD4"'
      Size = 2
    end
    object cad_forFOR_DD5: TIBStringField
      FieldName = 'FOR_DD5'
      Origin = '"CAD_FOR"."FOR_DD5"'
      Size = 2
    end
    object cad_forFOR_DD6: TIBStringField
      FieldName = 'FOR_DD6'
      Origin = '"CAD_FOR"."FOR_DD6"'
      Size = 2
    end
    object cad_forFOR_TEL3: TIBStringField
      FieldName = 'FOR_TEL3'
      Origin = '"CAD_FOR"."FOR_TEL3"'
      Size = 9
    end
    object cad_forFOR_TCE1: TIBStringField
      FieldName = 'FOR_TCE1'
      Origin = '"CAD_FOR"."FOR_TCE1"'
      Size = 10
    end
    object cad_forFOR_TCE2: TIBStringField
      FieldName = 'FOR_TCE2'
      Origin = '"CAD_FOR"."FOR_TCE2"'
      Size = 10
    end
    object cad_forFOR_NCEL: TIBStringField
      FieldName = 'FOR_NCEL'
      Origin = '"CAD_FOR"."FOR_NCEL"'
      Size = 9
    end
    object cad_forFOR_NEID: TIBStringField
      FieldName = 'FOR_NEID'
      Origin = '"CAD_FOR"."FOR_NEID"'
      Size = 15
    end
    object cad_forFOR_FCON: TIBStringField
      FieldName = 'FOR_FCON'
      Origin = '"CAD_FOR"."FOR_FCON"'
      Size = 30
    end
    object cad_forFOR_FMAI: TIBStringField
      FieldName = 'FOR_FMAI'
      Origin = '"CAD_FOR"."FOR_FMAI"'
      Size = 60
    end
    object cad_forFOR_FDDD: TIBStringField
      FieldName = 'FOR_FDDD'
      Origin = '"CAD_FOR"."FOR_FDDD"'
      Size = 2
    end
    object cad_forFOR_FTE1: TIBStringField
      FieldName = 'FOR_FTE1'
      Origin = '"CAD_FOR"."FOR_FTE1"'
      Size = 9
    end
    object cad_forFOR_FDD2: TIBStringField
      FieldName = 'FOR_FDD2'
      Origin = '"CAD_FOR"."FOR_FDD2"'
      Size = 2
    end
    object cad_forFOR_FTE2: TIBStringField
      FieldName = 'FOR_FTE2'
      Origin = '"CAD_FOR"."FOR_FTE2"'
      Size = 9
    end
    object cad_forFOR_FDD3: TIBStringField
      FieldName = 'FOR_FDD3'
      Origin = '"CAD_FOR"."FOR_FDD3"'
      Size = 2
    end
    object cad_forFOR_FTE3: TIBStringField
      FieldName = 'FOR_FTE3'
      Origin = '"CAD_FOR"."FOR_FTE3"'
      Size = 9
    end
    object cad_forFOR_FDD4: TIBStringField
      FieldName = 'FOR_FDD4'
      Origin = '"CAD_FOR"."FOR_FDD4"'
      Size = 2
    end
    object cad_forFOR_FFAX: TIBStringField
      FieldName = 'FOR_FFAX'
      Origin = '"CAD_FOR"."FOR_FFAX"'
      Size = 9
    end
    object cad_forFOR_FDD5: TIBStringField
      FieldName = 'FOR_FDD5'
      Origin = '"CAD_FOR"."FOR_FDD5"'
      Size = 2
    end
    object cad_forFOR_FCEL: TIBStringField
      FieldName = 'FOR_FCEL'
      Origin = '"CAD_FOR"."FOR_FCEL"'
      Size = 9
    end
    object cad_forFOR_FTC1: TIBStringField
      FieldName = 'FOR_FTC1'
      Origin = '"CAD_FOR"."FOR_FTC1"'
      Size = 10
    end
    object cad_forFOR_FDD6: TIBStringField
      FieldName = 'FOR_FDD6'
      Origin = '"CAD_FOR"."FOR_FDD6"'
      Size = 2
    end
    object cad_forFOR_FNCE: TIBStringField
      FieldName = 'FOR_FNCE'
      Origin = '"CAD_FOR"."FOR_FNCE"'
      Size = 9
    end
    object cad_forFOR_FTC2: TIBStringField
      FieldName = 'FOR_FTC2'
      Origin = '"CAD_FOR"."FOR_FTC2"'
      Size = 10
    end
    object cad_forFOR_FNID: TIBStringField
      FieldName = 'FOR_FNID'
      Origin = '"CAD_FOR"."FOR_FNID"'
      Size = 15
    end
    object cad_forFOR_CCON: TIBStringField
      FieldName = 'FOR_CCON'
      Origin = '"CAD_FOR"."FOR_CCON"'
      Size = 30
    end
    object cad_forFOR_CMAI: TIBStringField
      FieldName = 'FOR_CMAI'
      Origin = '"CAD_FOR"."FOR_CMAI"'
      Size = 60
    end
    object cad_forFOR_CDDD: TIBStringField
      FieldName = 'FOR_CDDD'
      Origin = '"CAD_FOR"."FOR_CDDD"'
      Size = 2
    end
    object cad_forFOR_CTE1: TIBStringField
      FieldName = 'FOR_CTE1'
      Origin = '"CAD_FOR"."FOR_CTE1"'
      Size = 9
    end
    object cad_forFOR_CDD2: TIBStringField
      FieldName = 'FOR_CDD2'
      Origin = '"CAD_FOR"."FOR_CDD2"'
      Size = 2
    end
    object cad_forFOR_CTE2: TIBStringField
      FieldName = 'FOR_CTE2'
      Origin = '"CAD_FOR"."FOR_CTE2"'
      Size = 9
    end
    object cad_forFOR_CDD3: TIBStringField
      FieldName = 'FOR_CDD3'
      Origin = '"CAD_FOR"."FOR_CDD3"'
      Size = 2
    end
    object cad_forFOR_CTE3: TIBStringField
      FieldName = 'FOR_CTE3'
      Origin = '"CAD_FOR"."FOR_CTE3"'
      Size = 9
    end
    object cad_forFOR_CDD4: TIBStringField
      FieldName = 'FOR_CDD4'
      Origin = '"CAD_FOR"."FOR_CDD4"'
      Size = 2
    end
    object cad_forFOR_CFAX: TIBStringField
      FieldName = 'FOR_CFAX'
      Origin = '"CAD_FOR"."FOR_CFAX"'
      Size = 9
    end
    object cad_forFOR_CDD5: TIBStringField
      FieldName = 'FOR_CDD5'
      Origin = '"CAD_FOR"."FOR_CDD5"'
      Size = 2
    end
    object cad_forFOR_CCEL: TIBStringField
      FieldName = 'FOR_CCEL'
      Origin = '"CAD_FOR"."FOR_CCEL"'
      Size = 9
    end
    object cad_forFOR_CTC1: TIBStringField
      FieldName = 'FOR_CTC1'
      Origin = '"CAD_FOR"."FOR_CTC1"'
      Size = 10
    end
    object cad_forFOR_CDD6: TIBStringField
      FieldName = 'FOR_CDD6'
      Origin = '"CAD_FOR"."FOR_CDD6"'
      Size = 2
    end
    object cad_forFOR_CNCE: TIBStringField
      FieldName = 'FOR_CNCE'
      Origin = '"CAD_FOR"."FOR_CNCE"'
      Size = 9
    end
    object cad_forFOR_CTC2: TIBStringField
      FieldName = 'FOR_CTC2'
      Origin = '"CAD_FOR"."FOR_CTC2"'
      Size = 10
    end
    object cad_forFOR_CNID: TIBStringField
      FieldName = 'FOR_CNID'
      Origin = '"CAD_FOR"."FOR_CNID"'
      Size = 15
    end
    object cad_forFOR_VDSC: TIBBCDField
      FieldName = 'FOR_VDSC'
      Origin = '"CAD_FOR"."FOR_VDSC"'
      Precision = 9
      Size = 2
    end
    object cad_forFOR_CRED: TIBBCDField
      FieldName = 'FOR_CRED'
      Origin = '"CAD_FOR"."FOR_CRED"'
      Precision = 9
      Size = 2
    end
    object cad_forFOR_SITE: TIBStringField
      FieldName = 'FOR_SITE'
      Origin = '"CAD_FOR"."FOR_SITE"'
      Size = 120
    end
    object cad_forFOR_REVE: TIBStringField
      FieldName = 'FOR_REVE'
      Origin = '"CAD_FOR"."FOR_REVE"'
      Size = 3
    end
    object cad_forFOR_IMUN: TIBStringField
      FieldName = 'FOR_IMUN'
      Origin = '"CAD_FOR"."FOR_IMUN"'
    end
    object cad_forFOR_CCM: TIBStringField
      FieldName = 'FOR_CCM'
      Origin = '"CAD_FOR"."FOR_CCM"'
    end
    object cad_forFOR_DULT: TDateField
      FieldName = 'FOR_DULT'
      Origin = '"CAD_FOR"."FOR_DULT"'
    end
    object cad_forFOR_REGI: TIBStringField
      FieldName = 'FOR_REGI'
      Origin = '"CAD_FOR"."FOR_REGI"'
    end
    object cad_forFOR_CDEP: TIntegerField
      FieldName = 'FOR_CDEP'
      Origin = '"CAD_FOR"."FOR_CDEP"'
    end
  end
  object QConsulta: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 624
    Top = 72
  end
end
