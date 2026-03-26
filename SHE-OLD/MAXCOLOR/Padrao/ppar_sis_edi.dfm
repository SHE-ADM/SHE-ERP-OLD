inherited frmpar_sis_edi: Tfrmpar_sis_edi
  Left = 348
  Top = 14
  ActiveControl = edfant
  ClientHeight = 667
  ClientWidth = 678
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 678
    Height = 534
    object Bevel2: TBevel [0]
      Left = 0
      Top = 0
      Width = 678
      Height = 146
      Align = alClient
    end
    object Bevel3: TBevel [1]
      Left = 0
      Top = 0
      Width = 678
      Height = 146
      Align = alClient
    end
    inherited PaintBox: TPaintBox
      Width = 678
      Height = 146
    end
    object Label47: TLabel
      Left = 2
      Top = 129
      Width = 83
      Height = 14
      Caption = 'Tipo de Pedido'
      Color = clBtnFace
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
      Left = 396
      Top = 126
      Width = 96
      Height = 14
      Caption = 'Tipo de Cobran'#231'a'
      Color = clBtnFace
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
      Left = 2
      Top = 6
      Width = 43
      Height = 14
      Caption = 'Fantasia'
      Color = clBtnFace
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
      Left = 2
      Top = 30
      Width = 65
      Height = 14
      Caption = 'Raz'#227'o Social'
      Color = clBtnFace
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
      Left = 395
      Top = 78
      Width = 27
      Height = 14
      Caption = 'Fone'
      Color = clBtnFace
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
      Left = 2
      Top = 54
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
    object Label42: TLabel
      Left = 2
      Top = 102
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
    object Label43: TLabel
      Left = 395
      Top = 102
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
    object Label57: TLabel
      Left = 462
      Top = 6
      Width = 30
      Height = 14
      Caption = 'CNAE'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 2
      Top = 78
      Width = 96
      Height = 14
      Caption = 'Tipo de Atividade'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edlogo: TdxEdit
      Tag = 1
      Left = 498
      Top = 97
      Width = 171
      Hint = 'Inscri'#231#227'o Estadual'
      Color = clWhite
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
      CharCase = ecUpperCase
      MaxLength = 20
      Height = 24
      StoredValues = 2
    end
    object cbstpd: TdxImageEdit
      Tag = 1
      Left = 112
      Top = 121
      Width = 169
      Hint = 'Tipo Venda'
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
      Text = 'VENDA DIRETA'
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
    object edfant: TdxEdit
      Tag = 1
      Left = 112
      Top = 1
      Width = 281
      Hint = 'Fantasia'
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
      OnExit = edfantExit
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 40
      Height = 24
      StoredValues = 2
    end
    object edraza: TdxEdit
      Tag = 1
      Left = 112
      Top = 25
      Width = 557
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
    object edddd: TdxMaskEdit
      Tag = 1
      Left = 498
      Top = 73
      Width = 34
      Hint = 'DDD'
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
      EditMask = '(99);0; '
      IgnoreMaskBlank = False
      Text = '11'
      Height = 24
      StoredValues = 4
    end
    object edfone: TdxMaskEdit
      Tag = 1
      Left = 530
      Top = 73
      Width = 82
      Hint = 'Fone'
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
      EditMask = '9999-9999;0; '
      IgnoreMaskBlank = False
      Height = 24
      StoredValues = 4
    end
    object edramo: TdxEdit
      Tag = 1
      Left = 112
      Top = 49
      Width = 557
      Hint = 'Ramo de Atividade'
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
      MaxLength = 120
      Height = 24
      StoredValues = 2
    end
    object edcnpj: TdxMaskEdit
      Tag = 1
      Left = 112
      Top = 97
      Width = 169
      Hint = 'C.N.P.J.'
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
      OnExit = edcnpjExit
      AutoSize = False
      EditMask = '99.999.999/9999-999;0; '
      IgnoreMaskBlank = False
      Height = 24
      StoredValues = 4
    end
    object edinsc: TdxEdit
      Tag = 1
      Left = 498
      Top = 97
      Width = 171
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
      TabOrder = 7
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 20
      Height = 24
      StoredValues = 2
    end
    object edid: TdxEdit
      Left = 962
      Top = 191
      Width = 31
      Hint = 'Fantasia'
      Style.BorderStyle = xbsFlat
      Style.ButtonStyle = btsFlat
      Style.Shadow = False
      TabOrder = 10
      Visible = False
      CharCase = ecUpperCase
      MaxLength = 20
      StoredValues = 2
    end
    object edcnae: TdxEdit
      Left = 498
      Top = 1
      Width = 167
      Hint = 'CNAE'
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
      TabOrder = 1
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 20
      Height = 24
      StoredValues = 2
    end
    object pcMAIN: TdxPageControl
      Left = 0
      Top = 146
      Width = 678
      Height = 388
      ActivePage = tsGERAL
      Align = alBottom
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
      TabOrder = 11
      TabPosition = dxtpTop
      TabWidth = 0
      object tsGERAL: TdxTabSheet
        Caption = 'Geral'
        object Bevel4: TBevel
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          Align = alClient
        end
        object PaintBox1: TPaintBox
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 4
          Top = 177
          Width = 78
          Height = 14
          Caption = 'Cliente Padr'#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 4
          Top = 30
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
        object Label8: TLabel
          Left = 316
          Top = 33
          Width = 27
          Height = 14
          Caption = 'S'#233'rie'
          Color = clBtnFace
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
          Left = 4
          Top = 249
          Width = 174
          Height = 14
          Caption = 'Condi'#231#227'o de Pagamento Padr'#227'o'
          Color = clBtnFace
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
          Top = 273
          Width = 124
          Height = 14
          Caption = 'Transportadora Padr'#227'o'
          Color = clBtnFace
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
          Left = 4
          Top = 297
          Width = 82
          Height = 14
          Caption = 'Volume Padr'#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label61: TLabel
          Left = 4
          Top = 57
          Width = 157
          Height = 14
          Caption = 'Sempre Imprimir Duplicatas ?'
          Color = clBtnFace
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
          Left = 4
          Top = 105
          Width = 172
          Height = 14
          Caption = 'C.F.O.P. Padr'#227'o Fora do Estado'
          Color = clBtnFace
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
          Left = 4
          Top = 81
          Width = 187
          Height = 14
          Caption = 'C.F.O.P. Padr'#227'o Dentro do Estado'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 4
          Top = 153
          Width = 161
          Height = 14
          Caption = 'Email Padr'#227'o da Contabilidade'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 4
          Top = 7
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
        object Label16: TLabel
          Left = 4
          Top = 201
          Width = 103
          Height = 14
          Caption = 'Fornecedor Padr'#227'o'
          Color = clBtnFace
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
          Left = 4
          Top = 225
          Width = 122
          Height = 14
          Caption = 'Representante Padr'#227'o'
          Color = clBtnFace
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
          Left = 4
          Top = 129
          Width = 228
          Height = 14
          Caption = 'R.I.C.M.S. para Clientes Dentro do Estado'
          Color = clBtnFace
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
          Left = 4
          Top = 321
          Width = 168
          Height = 14
          Caption = 'Referencia segue fornecedor ?'
          Color = clBtnFace
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
          Left = 4
          Top = 345
          Width = 204
          Height = 14
          Caption = 'Relat'#243'rio Padr'#227'o de Pedido de Venda'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object eddcli: TdxEdit
          Left = 304
          Top = 172
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 11
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object edccli: TdxEdit
          Left = 236
          Top = 172
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 10
          Text = '00001'
          OnExit = edccliExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          Height = 24
          StoredValues = 2
        end
        object edcdnf: TdxEdit
          Left = 236
          Top = 28
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          Text = '000000'
          CharCase = ecUpperCase
          MaxLength = 6
          StoredValues = 2
        end
        object edseri: TdxEdit
          Left = 367
          Top = 28
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 2
          CharCase = ecUpperCase
          MaxLength = 3
          StoredValues = 2
        end
        object edcpag: TdxEdit
          Left = 236
          Top = 244
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 16
          Text = '001'
          OnExit = edcpagExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object eddpag: TdxEdit
          Left = 304
          Top = 244
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 17
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 50
          Height = 24
          StoredValues = 2
        end
        object edctra: TdxEdit
          Left = 236
          Top = 268
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 18
          Text = '001'
          OnExit = edctraExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object eddtra: TdxEdit
          Left = 304
          Top = 268
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 19
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object edtvol: TdxEdit
          Left = 236
          Top = 292
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 20
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object cbdupl: TdxImageEdit
          Left = 236
          Top = 52
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object eddna2: TdxEdit
          Left = 304
          Top = 100
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 7
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 60
          Height = 24
          StoredValues = 2
        end
        object edcna2: TdxEdit
          Left = 236
          Top = 100
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 6
          OnExit = edcna2Exit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object edcna1: TdxEdit
          Left = 236
          Top = 76
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          OnExit = edcna1Exit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          Height = 24
          StoredValues = 2
        end
        object eddna1: TdxEdit
          Left = 304
          Top = 76
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 60
          Height = 24
          StoredValues = 2
        end
        object edfmai: TdxEdit
          Left = 236
          Top = 148
          Width = 469
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 9
          AutoSize = False
          CharCase = ecLowerCase
          MaxLength = 120
          Height = 24
          StoredValues = 2
        end
        object cbccrt: TdxImageEdit
          Left = 236
          Top = 2
          Width = 201
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Alignment = taLeftJustify
          AutoSize = False
          OnChange = cbccrtChange
          Descriptions.Strings = (
            'Simples Nacional'
            'Simples Nacional Excesso de Sublimite de Receita Bruta'
            'Normal')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            '1'
            '2'
            '3')
          Height = 24
          StoredValues = 1
        end
        object edcfor: TdxEdit
          Left = 236
          Top = 196
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 12
          Text = '00001'
          OnExit = edcforExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          Height = 24
          StoredValues = 2
        end
        object eddfor: TdxEdit
          Left = 304
          Top = 196
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 13
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object edcrep: TdxEdit
          Left = 236
          Top = 220
          Width = 70
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 14
          Text = '00001'
          OnExit = edcrepExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          Height = 24
          StoredValues = 2
        end
        object eddrep: TdxEdit
          Left = 304
          Top = 220
          Width = 368
          Enabled = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 15
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object cbricm: TdxImageEdit
          Left = 236
          Top = 124
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 8
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbrfor: TdxImageEdit
          Left = 236
          Top = 316
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 21
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbprel: TdxImageEdit
          Tag = 1
          Left = 235
          Top = 340
          Width = 438
          Hint = 'Cor'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 22
          Text = 'PEDIDO DE VENDA'
          AutoSize = False
          DropDownRows = 14
          Descriptions.Strings = (
            'PEDIDO DE VENDA'
            'PEDIDO DE VENDA DE COBRAN'#199'A'
            'PEDIDO DE VENDA (CUPOM)'
            'SIMPLES CONFERENCIA'
            'SIMPLES CONFERENCIA (CUPOM)'
            'SIMPLES CONFERENCIA (MATRICIAL)'
            'SEPARA'#199#195'O DE PEDIDO DE VENDA'
            'FICHA T'#201'CNICA')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7')
          Values.Strings = (
            'PEDIDO DE VENDA'
            'PEDIDO DE VENDA DE COBRAN'#199'A'
            'PEDIDO DE VENDA (CUPOM)'
            'SIMPLES CONFERENCIA'
            'SIMPLES CONFERENCIA (CUPOM)'
            'SIMPLES CONFERENCIA (MATRICIAL)'
            'SEPARA'#199#195'O DE PEDIDO DE VENDA'
            'FICHA T'#201'CNICA')
          Height = 24
        end
      end
      object tsEND: TdxTabSheet
        Caption = 'Endere'#231'o'
        object Bevel6: TBevel
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          Align = alClient
        end
        object Label23: TLabel
          Left = 11
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
        object Label24: TLabel
          Left = 107
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
        object Label25: TLabel
          Left = 11
          Top = 85
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
        object Label26: TLabel
          Left = 11
          Top = 45
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
        object Label27: TLabel
          Left = 11
          Top = 169
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
          Left = 10
          Top = 211
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
        object Label29: TLabel
          Left = 9
          Top = 253
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
        object Label45: TLabel
          Left = 12
          Top = 127
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
        object Label46: TLabel
          Left = 107
          Top = 85
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
        object edcuf: TdxEdit
          Left = 9
          Top = 268
          Width = 28
          Enabled = False
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 9
          Visible = False
          CharCase = ecUpperCase
          MaxLength = 2
          StoredValues = 2
        end
        object edtlog: TdxEdit
          Left = 11
          Top = 18
          Width = 95
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 0
          CharCase = ecUpperCase
          MaxLength = 15
          StoredValues = 2
        end
        object edlogr: TdxEdit
          Left = 107
          Top = 18
          Width = 558
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 1
          CharCase = ecUpperCase
          MaxLength = 60
          StoredValues = 2
        end
        object ednume: TdxEdit
          Left = 11
          Top = 100
          Width = 95
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 3
          CharCase = ecUpperCase
          MaxLength = 10
          StoredValues = 2
        end
        object edbai: TdxEdit
          Left = 11
          Top = 184
          Width = 654
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 6
          CharCase = ecUpperCase
          MaxLength = 40
          StoredValues = 2
        end
        object edcid: TdxEdit
          Left = 10
          Top = 226
          Width = 655
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 7
          CharCase = ecUpperCase
          MaxLength = 40
          StoredValues = 2
        end
        object eduf: TdxEdit
          Left = 10
          Top = 268
          Width = 28
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 8
          CharCase = ecUpperCase
          MaxLength = 2
          StoredValues = 2
        end
        object edcep: TdxButtonEdit
          Left = 11
          Top = 60
          Width = 95
          Color = clWhite
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 2
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
        object edcomp: TdxEdit
          Left = 12
          Top = 142
          Width = 205
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 5
          CharCase = ecUpperCase
          MaxLength = 40
          StoredValues = 2
        end
        object edccid: TdxButtonEdit
          Left = 107
          Top = 100
          Width = 110
          Color = clWhite
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 4
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = edccidValidate
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
          OnButtonClick = edccidButtonClick
          StoredValues = 6
          ExistButtons = True
        end
      end
      object tsFOTO: TdxTabSheet
        Caption = 'Fotografia'
        OnShow = tsFOTOShow
        object pcfoto: TdxPageControl
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          ActivePage = tsfoto1
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpTop
          TabWidth = 0
          object tsfoto1: TdxTabSheet
            Caption = 'Imagem Padr'#227'o do Sistema'
            object imag1: TImage
              Left = 0
              Top = 0
              Width = 678
              Height = 340
              Align = alClient
              Stretch = True
            end
            object sb_imag1: TSpeedButton
              Left = 661
              Top = 323
              Width = 17
              Height = 17
              Cursor = crHandPoint
              Hint = 'Pesquisa Foto'
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_imag1Click
            end
          end
          object tsfoto2: TdxTabSheet
            Caption = 'Imagem Padr'#227'o do Produto'
            object imag2: TImage
              Left = 0
              Top = 0
              Width = 678
              Height = 340
              Align = alClient
              Stretch = True
            end
            object sb_imag2: TSpeedButton
              Left = 661
              Top = 323
              Width = 17
              Height = 17
              Cursor = crHandPoint
              Hint = 'Pesquisa Foto'
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_imag2Click
            end
          end
          object tsfoto3: TdxTabSheet
            Caption = 'Logo'
            object imag3: TImage
              Left = 0
              Top = 0
              Width = 678
              Height = 340
              Align = alClient
            end
            object sb_imag3: TSpeedButton
              Left = 661
              Top = 323
              Width = 17
              Height = 17
              Cursor = crHandPoint
              Hint = 'Pesquisa Foto'
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_imag3Click
            end
          end
          object dxTabSheet6: TdxTabSheet
            Caption = 'Logo Mono'
            object imag4: TImage
              Left = 0
              Top = 0
              Width = 678
              Height = 340
              Align = alClient
            end
            object sb_imag4: TSpeedButton
              Left = 661
              Top = 323
              Width = 17
              Height = 17
              Cursor = crHandPoint
              Hint = 'Pesquisa Foto'
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_imag4Click
            end
          end
        end
      end
      object tsOUT: TdxTabSheet
        Caption = 'Outros'
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          Align = alClient
        end
        object Label4: TLabel
          Left = 4
          Top = 6
          Width = 135
          Height = 14
          Caption = 'Valor Atualizado do Dolar'
          Color = clBtnFace
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
          Left = 4
          Top = 126
          Width = 210
          Height = 14
          Caption = 'Visutalizar Todo Cadastro de Clientes ?'
          Color = clBtnFace
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
          Left = 4
          Top = 150
          Width = 217
          Height = 14
          Caption = 'Visutalizar Todo Cadastro de Produtos ?'
          Color = clBtnFace
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
          Left = 4
          Top = 174
          Width = 150
          Height = 14
          Caption = 'Possui Grade de Produtos ?'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 4
          Top = 30
          Width = 193
          Height = 14
          Caption = 'Valor Mensal do Cr'#233'dito de I.C.M.S.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label62: TLabel
          Left = 4
          Top = 102
          Width = 237
          Height = 14
          Caption = 'Somar Valor do Frete na Base do I.C.M.S. ?'
          Color = clBtnFace
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
          Top = 270
          Width = 87
          Height = 14
          Caption = 'Pesquisa Padr'#227'o'
          Color = clBtnFace
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
          Left = 4
          Top = 246
          Width = 149
          Height = 14
          Caption = 'N'#250'mero de Vias por Pedido'
          Color = clBtnFace
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
          Left = 4
          Top = 222
          Width = 97
          Height = 14
          Caption = 'Abertura de Caixa'
          Color = clBtnFace
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
          Left = 4
          Top = 318
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
        object Label20: TLabel
          Left = 4
          Top = 342
          Width = 21
          Height = 14
          Caption = 'Site'
          Color = clBtnFace
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
          Left = 320
          Top = 126
          Width = 87
          Height = 14
          Caption = 'Canhoto Pedido'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 320
          Top = 150
          Width = 72
          Height = 14
          Caption = 'End. Entrega'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 4
          Top = 198
          Width = 211
          Height = 14
          Caption = 'Separar Produtos Conforme Empresa ?'
          Color = clBtnFace
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
          Left = 485
          Top = 126
          Width = 80
          Height = 14
          Caption = 'Estoque Pe'#231'as'
          Color = clBtnFace
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
          Left = 485
          Top = 174
          Width = 106
          Height = 14
          Caption = 'Estoque Segmento'
          Color = clBtnFace
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
          Left = 320
          Top = 174
          Width = 84
          Height = 14
          Caption = 'C'#243'd. Original DI'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label44: TLabel
          Left = 320
          Top = 198
          Width = 84
          Height = 14
          Caption = 'Imprimir S/ Sep'
          Color = clBtnFace
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
          Left = 485
          Top = 198
          Width = 77
          Height = 14
          Caption = 'Bx. Est. Auto.'
          Color = clBtnFace
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
          Left = 485
          Top = 222
          Width = 87
          Height = 14
          Caption = 'C'#243'd. Sequencial'
          Color = clBtnFace
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
          Left = 4
          Top = 54
          Width = 187
          Height = 14
          Caption = 'Acr'#233'cimo (%) varejo pelo atacado'
          Color = clBtnFace
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
          Left = 4
          Top = 78
          Width = 232
          Height = 14
          Caption = 'Acr'#233'cimo (%) representante pelo atacado'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label60: TLabel
          Left = 320
          Top = 222
          Width = 92
          Height = 14
          Caption = 'Limite Separa'#231#227'o'
          Color = clBtnFace
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
          Left = 485
          Top = 150
          Width = 123
          Height = 14
          Caption = 'End. Entrega Relat'#243'rio'
          Color = clBtnFace
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
          Left = 4
          Top = 294
          Width = 209
          Height = 14
          Caption = 'Descri'#231#227'o do Produto Segue Cr'#233'dito ?'
          Color = clBtnFace
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
          Left = 320
          Top = 246
          Width = 135
          Height = 14
          Caption = 'Local de Estoque Padr'#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object eddola: TdxEdit
          Tag = 1
          Left = 248
          Top = 1
          Width = 69
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 10
          Text = '0,00'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          MaxLength = 6
          OnValidate = eddolaValidate
          StoredValues = 3
        end
        object cbgrad: TdxImageEdit
          Tag = 1
          Left = 248
          Top = 169
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 15
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbtcli: TdxImageEdit
          Tag = 1
          Left = 248
          Top = 121
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 13
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbtpro: TdxImageEdit
          Tag = 1
          Left = 248
          Top = 145
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 14
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object edcicm: TdxEdit
          Tag = 1
          Left = 248
          Top = 25
          Width = 69
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 11
          Text = '0,00'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          MaxLength = 6
          OnValidate = edcicmValidate
          StoredValues = 3
        end
        object cbfret: TdxImageEdit
          Left = 248
          Top = 97
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 12
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object gbdentro: TGroupBox
          Left = 320
          Top = 1
          Width = 356
          Height = 112
          Caption = 'Substitui'#231#227'o Tribut'#225'ria'
          TabOrder = 22
          object dxPageControl2: TdxPageControl
            Left = 2
            Top = 16
            Width = 352
            Height = 94
            ActivePage = dxTabSheet4
            Align = alClient
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpTop
            TabWidth = 0
            object dxTabSheet4: TdxTabSheet
              Caption = 'Dentro de SP'
              object Bevel7: TBevel
                Left = 0
                Top = 0
                Width = 352
                Height = 70
                Align = alClient
              end
              object Label12: TLabel
                Left = 8
                Top = 8
                Width = 67
                Height = 14
                AutoSize = False
                Caption = 'C.F.O.P.'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsItalic]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object clcstd: TLabel
                Left = 8
                Top = 32
                Width = 67
                Height = 14
                AutoSize = False
                Caption = 'C.S.O.S.N.'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsItalic]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object edcnsd: TdxEdit
                Tag = 1
                Left = 80
                Top = 3
                Width = 113
                Hint = 'C.F.O.P.'
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
                OnExit = edcnsdExit
                AutoSize = False
                CharCase = ecUpperCase
                MaxLength = 10
                Height = 24
                StoredValues = 2
              end
              object cbcstd: TdxImageEdit
                Tag = 1
                Left = 80
                Top = 27
                Width = 260
                Hint = 'Tipo da Natureza'
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
                Alignment = taLeftJustify
                AutoSize = False
                DropDownRows = 15
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
                Height = 24
                StoredValues = 1
              end
            end
            object dxTabSheet5: TdxTabSheet
              Caption = 'Fora de SP'
              object Bevel8: TBevel
                Left = 0
                Top = 0
                Width = 352
                Height = 62
                Align = alClient
              end
              object Label14: TLabel
                Left = 8
                Top = 8
                Width = 67
                Height = 14
                AutoSize = False
                Caption = 'C.F.O.P.'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsItalic]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object clcstf: TLabel
                Left = 8
                Top = 32
                Width = 67
                Height = 14
                AutoSize = False
                Caption = 'C.S.O.S.N.'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsItalic]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object edcnsf: TdxEdit
                Tag = 1
                Left = 80
                Top = 3
                Width = 97
                Hint = 'C.F.O.P.'
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
                OnExit = edcnsfExit
                AutoSize = False
                CharCase = ecUpperCase
                MaxLength = 10
                Height = 24
                StoredValues = 2
              end
              object cbcstf: TdxImageEdit
                Tag = 1
                Left = 80
                Top = 27
                Width = 260
                Hint = 'Tipo da Natureza'
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
                Alignment = taLeftJustify
                AutoSize = False
                DropDownRows = 15
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
                Height = 24
                StoredValues = 1
              end
            end
          end
        end
        object cbpgrd: TdxImageEdit
          Tag = 1
          Left = 94
          Top = 265
          Width = 224
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 19
          Text = '0'
          Alignment = taLeftJustify
          AutoSize = False
          Descriptions.Strings = (
            'C'#243'digo de Referencia'
            'C'#243'digo de Produto'
            'C'#243'digo de Barras'
            'C'#243'digo de Grade'
            'Descri'#231#227'o de Produto'
            'Referencia')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          Height = 24
          StoredValues = 1
        end
        object cbnvia: TdxImageEdit
          Left = 248
          Top = 241
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 18
          Text = '1'
          Alignment = taLeftJustify
          AutoSize = False
          Descriptions.Strings = (
            '1'
            '2')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            '1'
            '2')
          Height = 24
          StoredValues = 1
        end
        object cbcaix: TdxImageEdit
          Left = 248
          Top = 217
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 17
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object edmail: TdxEdit
          Tag = 1
          Left = 40
          Top = 313
          Width = 633
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 20
          Alignment = taLeftJustify
          CharCase = ecLowerCase
          MaxLength = 120
          OnValidate = eddolaValidate
          StoredValues = 3
        end
        object edsite: TdxEdit
          Tag = 1
          Left = 40
          Top = 337
          Width = 633
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 21
          Alignment = taLeftJustify
          CharCase = ecLowerCase
          MaxLength = 60
          OnValidate = eddolaValidate
          StoredValues = 3
        end
        object cbcanh: TdxImageEdit
          Left = 412
          Top = 121
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Text = 'SIM'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbcend: TdxImageEdit
          Left = 412
          Top = 145
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 2
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbspro: TdxImageEdit
          Tag = 1
          Left = 248
          Top = 193
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 16
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbpeca: TdxImageEdit
          Left = 608
          Top = 121
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbeseg: TdxImageEdit
          Left = 608
          Top = 169
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbDIOR: TdxImageEdit
          Tag = 1
          Left = 412
          Top = 169
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          Text = '0'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbpsep: TdxImageEdit
          Left = 412
          Top = 193
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 6
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbIEST: TdxImageEdit
          Tag = 1
          Left = 608
          Top = 193
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 7
          Text = '0'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbCSEQ: TdxImageEdit
          Tag = 1
          Left = 608
          Top = 217
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 9
          Text = '0'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object edpvar: TdxEdit
          Tag = 1
          Left = 248
          Top = 49
          Width = 69
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 23
          Text = '0,00'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          MaxLength = 6
          OnValidate = edpvarValidate
          StoredValues = 3
        end
        object edprep: TdxEdit
          Tag = 1
          Left = 248
          Top = 73
          Width = 69
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 24
          Text = '0,00'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          MaxLength = 6
          OnValidate = edprepValidate
          StoredValues = 3
        end
        object cbdsep: TdxEdit
          Tag = 1
          Left = 412
          Top = 217
          Width = 70
          Hint = 'Nota Fiscal'
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 8
          Text = '0'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          MaxLength = 6
          OnValidate = edprepValidate
          StoredValues = 3
        end
        object cbrend: TdxImageEdit
          Left = 608
          Top = 145
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbdcrd: TdxImageEdit
          Left = 248
          Top = 289
          Width = 70
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 25
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object cbDMAP: TdxImageEdit
          Left = 464
          Top = 241
          Width = 214
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 26
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
      end
      object tsFIN: TdxTabSheet
        Caption = 'Financeiro'
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          Align = alClient
        end
        object Label33: TLabel
          Left = 4
          Top = 13
          Width = 225
          Height = 14
          Caption = 'Limite em dias para atraso (s) em carteira'
          Color = clBtnFace
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
          Left = 4
          Top = 37
          Width = 209
          Height = 14
          Caption = 'Limite em dias para atraso (s) Banc'#225'rio'
          Color = clBtnFace
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
          Left = 4
          Top = 62
          Width = 135
          Height = 14
          Caption = 'Verificar limite de cr'#233'dito'
          Color = clBtnFace
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
          Left = 4
          Top = 85
          Width = 186
          Height = 14
          Caption = 'Bx. Autom'#225'tica de Contas a Pagar'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label63: TLabel
          Left = 4
          Top = 109
          Width = 223
          Height = 14
          Caption = 'Bx. Autom'#225'tica de Cheques em Cust'#243'dia'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label64: TLabel
          Left = 4
          Top = 133
          Width = 195
          Height = 14
          Caption = 'Valor M'#225'ximo para Limite de Cr'#233'dito'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label65: TLabel
          Left = 4
          Top = 157
          Width = 332
          Height = 14
          Caption = '% M'#225'ximo para Autoriza'#231#227'o de Limite de Cr'#233'dito Insuficiente'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edlimc: TdxEdit
          Left = 340
          Top = 8
          Width = 90
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Text = '0'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edlimcValidate
          Height = 24
          StoredValues = 3
        end
        object edlimb: TdxEdit
          Left = 340
          Top = 32
          Width = 90
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          Text = '0'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edlimbValidate
          Height = 24
          StoredValues = 3
        end
        object cblime: TdxImageEdit
          Tag = 1
          Left = 340
          Top = 57
          Width = 70
          Hint = 'Simples Nacional'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 2
          Text = 'N'#195'O'
          Alignment = taLeftJustify
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
          StoredValues = 1
        end
        object edBPAG: TdxEdit
          Left = 340
          Top = 80
          Width = 90
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          Text = '0'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edBPAGValidate
          Height = 24
          StoredValues = 3
        end
        object edBCHQ: TdxEdit
          Left = 340
          Top = 104
          Width = 90
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          Text = '0'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edBCHQValidate
          Height = 24
          StoredValues = 3
        end
        object edMCRD: TdxEdit
          Left = 340
          Top = 128
          Width = 90
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          Text = '0,00'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edMCRDValidate
          Height = 24
          StoredValues = 3
        end
        object edPCRD: TdxEdit
          Left = 340
          Top = 152
          Width = 90
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 6
          Text = '0,00'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edPCRDValidate
          Height = 24
          StoredValues = 3
        end
      end
      object tsOBS: TdxTabSheet
        Caption = 'Mensagens'
        object dxPageControl1: TdxPageControl
          Left = 0
          Top = 0
          Width = 678
          Height = 364
          ActivePage = dxTabSheet3
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpTop
          TabWidth = 0
          object dxTabSheet1: TdxTabSheet
            Caption = 'Observa'#231#227'o Nota Fiscal'
            object edonfe: TdxMemo
              Left = 0
              Top = 0
              Width = 678
              Align = alClient
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderStyle = xbsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 340
            end
          end
          object dxTabSheet2: TdxTabSheet
            Caption = 'Mensagem padr'#227'o para simples nacional'
            object edocrt: TdxMemo
              Left = 0
              Top = 0
              Width = 678
              Align = alClient
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderStyle = xbsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 340
            end
          end
          object dxTabSheet3: TdxTabSheet
            Caption = 'Observa'#231#227'o Pedido'
            object edoped: TdxMemo
              Left = 0
              Top = 0
              Width = 678
              Align = alClient
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderStyle = xbsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 340
            end
          end
        end
      end
    end
    object cbstco: TdxImageEdit
      Tag = 1
      Left = 498
      Top = 121
      Width = 171
      Hint = 'Tipo Venda'
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
      TabOrder = 9
      Text = 'DINHEIRO'
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
    object cbtipo: TdxImageEdit
      Tag = 1
      Left = 112
      Top = 73
      Width = 171
      Hint = 'Tipo Venda'
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
      TabOrder = 12
      Alignment = taLeftJustify
      AutoSize = False
      Descriptions.Strings = (
        'TECIDOS'
        'AVIAMENTOS'
        'CONFEC'#199#213'ES'
        'FARDOS'
        'PL'#193'STICOS'
        'CAL'#199'ADOS'
        'OFICINAS'
        'OUTROS')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      Height = 24
      StoredValues = 1
    end
  end
  inherited sbMSG: TStatusBar
    Top = 648
    Width = 678
    Visible = False
  end
  inherited SpeedBar2: TSpeedBar
    Width = 678
    inherited siCAN: TSpeedItem [5]
    end
    inherited siVAL: TSpeedItem [6]
    end
    inherited siSAV: TSpeedItem [7]
    end
  end
  inherited imageOPC: TImageList
    Left = 404
    Top = 6
  end
  inherited imageITEM: TImageList
    Left = 596
    Top = 30
  end
  object cep_log: TIBQuery
    Database = dmDADOS.bCEP
    Transaction = dmDADOS.tCEP
    SQL.Strings = (
      
        'SELECT CEP_LOG.ID,LOG_TIT,LOG_NO,LOG_CEP,BAI_NO,LOC_NO,LOG_UF FR' +
        'OM CEP_LOG,CEP_BAI,CEP_LOC'
      'WHERE LOG_CEP = :LOG_CEP'
      'AND   LOG_BAI = BAI_NU'
      'AND   LOG_CID = CEP_LOC.LOC_NU')
    Left = 336
    Top = 72
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
  object OpenPictureDialogEdit: TOpenPictureDialog
    InitialDir = 'C:\DEV\FOTOS'
    Left = 472
    Top = 24
  end
  object par_sis: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT PAR_FOTO,PAR_FOT2,PAR_FOT3,PAR_CBAR FROM PAR_SIS')
    Left = 336
    Top = 104
    object par_sisPAR_FOTO: TBlobField
      FieldName = 'PAR_FOTO'
      Origin = '"PAR_SIS"."PAR_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object par_sisPAR_FOT2: TBlobField
      FieldName = 'PAR_FOT2'
      Origin = '"PAR_SIS"."PAR_FOT2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object par_sisPAR_FOT3: TBlobField
      FieldName = 'PAR_FOT3'
      Origin = '"PAR_SIS"."PAR_FOT3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object par_sisPAR_CBAR: TBlobField
      FieldName = 'PAR_CBAR'
      Origin = '"PAR_SIS"."PAR_CBAR"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
end
