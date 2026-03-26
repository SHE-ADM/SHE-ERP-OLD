inherited frmrec_cad: Tfrmrec_cad
  Left = 370
  Top = 5
  Caption = 'Cadastro de Contas a Receber'
  ClientHeight = 643
  ClientWidth = 689
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 689
    Height = 510
    inherited PaintBox: TPaintBox
      Width = 689
      Height = 510
    end
    object Label41: TLabel
      Left = 512
      Top = 8
      Width = 55
      Height = 14
      Caption = 'Cadastro'
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
    object pcmain: TdxPageControl
      Left = 0
      Top = 0
      Width = 689
      Height = 510
      ActivePage = tsban1
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
      object tsban1: TdxTabSheet
        Caption = 'Dados Banc'#225'rio'
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 689
          Height = 486
          Align = alClient
        end
        object Label1: TLabel
          Left = 8
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
          Left = 8
          Top = 56
          Width = 87
          Height = 14
          Caption = 'Descri'#231#227'o Conta'
          Color = clBtnFace
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
          Left = 8
          Top = 80
          Width = 83
          Height = 14
          Caption = 'Plano de Conta'
          Color = clBtnFace
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
          Left = 280
          Top = 80
          Width = 138
          Height = 14
          Caption = 'Descri'#231#227'o Plano de Conta'
          Color = clBtnFace
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
          Left = 8
          Top = 104
          Width = 90
          Height = 14
          Caption = 'Centro de Custo'
          Color = clBtnFace
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
          Left = 280
          Top = 104
          Width = 145
          Height = 14
          Caption = 'Descri'#231#227'o Centro de Custo'
          Color = clBtnFace
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
          Left = 8
          Top = 128
          Width = 42
          Height = 14
          Caption = 'Cliente'
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
        object Label8: TLabel
          Left = 8
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
        object Label10: TLabel
          Left = 8
          Top = 176
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
        object Label11: TLabel
          Left = 8
          Top = 32
          Width = 71
          Height = 14
          Caption = 'Documento'
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
        object Label12: TLabel
          Left = 8
          Top = 344
          Width = 72
          Height = 14
          Caption = 'Vencimento'
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
        object Label28: TLabel
          Left = 8
          Top = 200
          Width = 100
          Height = 14
          Caption = 'Instru'#231#227'o de Baixa'
          Color = clBtnFace
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
          Left = 8
          Top = 224
          Width = 106
          Height = 14
          Caption = 'Tipo de Cobran'#231'a'
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
        object Label27: TLabel
          Left = 8
          Top = 296
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
        object Label13: TLabel
          Left = 8
          Top = 368
          Width = 106
          Height = 14
          Caption = 'Valor Documento'
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
        object Label36: TLabel
          Left = 8
          Top = 440
          Width = 58
          Height = 14
          Caption = 'Valor Pago'
          Color = clBtnFace
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
          Left = 8
          Top = 464
          Width = 85
          Height = 14
          Caption = 'Valor Pendente'
          Color = clBtnFace
          Enabled = False
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
          Left = 8
          Top = 392
          Width = 94
          Height = 14
          Caption = 'Valor Encargo (s)'
          Color = clBtnFace
          Enabled = False
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
          Left = 8
          Top = 320
          Width = 75
          Height = 14
          Caption = 'Lan'#231'amento'
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
          Left = 8
          Top = 416
          Width = 62
          Height = 14
          Caption = 'Pagamento'
          Color = clBtnFace
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
          Left = 8
          Top = 248
          Width = 117
          Height = 14
          Caption = 'Forma de Cobran'#231'a'
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
        object Label43: TLabel
          Left = 8
          Top = 272
          Width = 130
          Height = 14
          Caption = 'Forma de Pagamento'
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
        object edcdrd: TdxEdit
          Left = 144
          Top = 3
          Width = 130
          Hint = 'C'#243'digo'
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
          TabOrder = 35
          Text = '0'
          Visible = False
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object edippl: TdxEdit
          Tag = 1
          Left = 144
          Top = 3
          Width = 130
          Hint = 'C'#243'digo'
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
          TabOrder = 33
          Visible = False
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object eddbai: TdxDateEdit
          Tag = 1
          Left = 144
          Top = 315
          Width = 100
          Hint = 'Vencimento'
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
          TabOrder = 32
          Visible = False
          Alignment = taLeftJustify
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 5
        end
        object edconc: TdxEdit
          Tag = 1
          Left = 144
          Top = 3
          Width = 130
          Hint = 'C'#243'digo'
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
          TabOrder = 31
          Text = '0'
          Visible = False
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object edccab: TdxEdit
          Tag = 1
          Left = 144
          Top = 291
          Width = 130
          Hint = 'Documento'
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
          TabOrder = 29
          Text = '0'
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object edcdbx: TdxEdit
          Tag = 1
          Left = 144
          Top = 291
          Width = 130
          Hint = 'Documento'
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
          TabOrder = 28
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object edcdcx: TdxEdit
          Tag = 1
          Left = 144
          Top = 3
          Width = 99
          Hint = 'Caixa'
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
          TabOrder = 27
          Visible = False
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object edid: TdxEdit
          Left = 144
          Top = 3
          Width = 130
          Hint = 'C'#243'digo'
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
          Alignment = taLeftJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object eddesc: TdxEdit
          Left = 144
          Top = 51
          Width = 536
          Hint = 'Descri'#231#227'o Conta'
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
        object edcppl: TdxButtonEdit
          Left = 144
          Top = 75
          Width = 130
          Hint = 'Clique na Lupa para Pesquisar Plano de Conta'
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = edcpplValidate
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
          Height = 24
          StoredValues = 6
          ExistButtons = True
        end
        object cbdppl: TdxPickEdit
          Left = 432
          Top = 74
          Width = 248
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          OnExit = cbdpplExit
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
        end
        object edccus: TdxButtonEdit
          Left = 144
          Top = 99
          Width = 130
          Hint = 'Clique na Lupa para Pesquisar Centro de Custo'
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = edccusValidate
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
          Height = 24
          StoredValues = 6
          ExistButtons = True
        end
        object cbdcus: TdxPickEdit
          Left = 432
          Top = 98
          Width = 248
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 6
          OnExit = cbdcusExit
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
        end
        object edccli: TdxButtonEdit
          Tag = 1
          Left = 144
          Top = 123
          Width = 130
          Hint = 'Clique na Lupa para Pesquisar Cliente'
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 7
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = edccliValidate
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
          OnButtonClick = edccliButtonClick
          Height = 24
          StoredValues = 6
          ExistButtons = True
        end
        object edcven: TdxButtonEdit
          Tag = 1
          Left = 144
          Top = 147
          Width = 130
          Hint = 'Clique na Lupa para Pesquisar Vendedor'
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 9
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = edcvenValidate
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
          OnButtonClick = edcvenButtonClick
          Height = 24
          StoredValues = 6
          ExistButtons = True
        end
        object edcrep: TdxButtonEdit
          Tag = 1
          Left = 144
          Top = 171
          Width = 130
          Hint = 'Clique na Lupa para Pesquisar Representante'
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 11
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = edcrepValidate
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
          OnButtonClick = edcrepButtonClick
          Height = 24
          StoredValues = 6
          ExistButtons = True
        end
        object eddven: TdxDateEdit
          Tag = 1
          Left = 144
          Top = 339
          Width = 100
          Hint = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 20
          Alignment = taLeftJustify
          AutoSize = False
          OnValidate = eddvenValidate
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 5
        end
        object cbdven: TdxPickEdit
          Tag = 1
          Left = 274
          Top = 146
          Width = 273
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 10
          OnExit = cbdvenExit
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
        end
        object cbdrep: TdxPickEdit
          Tag = 1
          Left = 274
          Top = 170
          Width = 273
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 12
          OnExit = cbdrepExit
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
        end
        object cbidbx: TdxImageEdit
          Tag = 1
          Left = 144
          Top = 194
          Width = 130
          Hint = 'Tipo Lan'#231'amento'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 13
          AutoSize = False
          OnChange = cbidbxChange
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
        end
        object eddibx: TdxEdit
          Left = 272
          Top = 195
          Width = 409
          Hint = 'Nome Fantasia'
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
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 40
          Height = 24
          StoredValues = 2
        end
        object cbstco: TdxImageEdit
          Tag = 1
          Left = 144
          Top = 218
          Width = 130
          Hint = 'Tipo Lan'#231'amento'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 15
          AutoSize = False
          Descriptions.Strings = (
            'CARTEIRA'
            'BANC'#193'RIO')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            #13#10'CARTEIRA'
            'BANC'#193'RIO')
          Height = 24
        end
        object cbstfi: TdxImageEdit
          Tag = 1
          Left = 144
          Top = 291
          Width = 130
          Hint = 'Tipo Lan'#231'amento'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 18
          AutoSize = False
          OnValidate = cbstfiValidate
          Descriptions.Strings = (
            'PENDENTE'
            'PAGO'
            'PAGO CARTORIO'
            'PROTESTADO'
            'PRORROGADO'
            'VENCIDO'
            'CART'#211'RIO'
            'DEVOLU'#199#195'O'
            'N'#195'O PAGO')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8')
          Values.Strings = (
            #13#10'PENDENTE'
            'PAGO'
            'PAGO CARTORIO'
            'PROTESTADO'
            'PRORROGADO'
            'VENCIDO'
            'CART'#211'RIO'
            'DEVOLU'#199#195'O'
            'N'#195'O PAGO')
          Height = 24
        end
        object GroupBox1: TGroupBox
          Left = 280
          Top = 312
          Width = 401
          Height = 121
          Caption = 'Encargos'
          TabOrder = 26
          object Label29: TLabel
            Left = 8
            Top = 24
            Width = 50
            Height = 14
            Caption = 'Multa ($)'
            Color = clBtnFace
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
            Left = 232
            Top = 24
            Width = 55
            Height = 14
            Caption = 'Multa (%)'
            Color = clBtnFace
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
            Left = 232
            Top = 48
            Width = 92
            Height = 14
            Caption = 'Juros Di'#225'rios (%)'
            Color = clBtnFace
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
            Left = 8
            Top = 48
            Width = 87
            Height = 14
            Caption = 'Juros Di'#225'rios ($)'
            Color = clBtnFace
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
            Left = 8
            Top = 72
            Width = 73
            Height = 14
            Caption = 'Desconto ($)'
            Color = clBtnFace
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
            Left = 232
            Top = 72
            Width = 78
            Height = 14
            Caption = 'Desconto (%)'
            Color = clBtnFace
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
            Left = 8
            Top = 96
            Width = 39
            Height = 14
            Caption = 'At'#233' dia'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object edvmul: TdxCalcEdit
            Left = 104
            Top = 19
            Width = 100
            Hint = 'Valor'
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            Alignment = taRightJustify
            Text = '0,00'
            OnValidate = edvmulValidate
            ButtonStyle = bsExtraFlat
            StoredValues = 1
          end
          object edpmul: TdxCalcEdit
            Left = 328
            Top = 19
            Width = 65
            Hint = 'Valor'
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 1
            Alignment = taRightJustify
            Text = '0,00'
            OnValidate = edpmulValidate
            ButtonStyle = bsExtraFlat
            StoredValues = 1
          end
          object edvjur: TdxCalcEdit
            Left = 104
            Top = 43
            Width = 100
            Hint = 'Valor'
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            Alignment = taRightJustify
            Text = '0,00'
            OnValidate = edvjurValidate
            ButtonStyle = bsExtraFlat
            StoredValues = 1
          end
          object edpjur: TdxCalcEdit
            Left = 328
            Top = 43
            Width = 65
            Hint = 'Valor'
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 3
            Alignment = taRightJustify
            Text = '0,00'
            OnValidate = edpjurValidate
            ButtonStyle = bsExtraFlat
            StoredValues = 1
          end
          object edvdes: TdxCalcEdit
            Left = 104
            Top = 67
            Width = 100
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 4
            Alignment = taRightJustify
            Text = '0,00'
            OnValidate = edvdesValidate
            ButtonStyle = bsExtraFlat
            StoredValues = 1
          end
          object edpdes: TdxCalcEdit
            Left = 328
            Top = 67
            Width = 65
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 5
            Alignment = taRightJustify
            Text = '0,00'
            OnValidate = edpdesValidate
            ButtonStyle = bsExtraFlat
            StoredValues = 1
          end
          object edddes: TdxDateEdit
            Left = 104
            Top = 91
            Width = 100
            Hint = 'Dt Vencimento'
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 6
            Date = -700000.000000000000000000
            UseEditMask = True
            StoredValues = 4
          end
        end
        object edvpag: TdxEdit
          Tag = 1
          Left = 144
          Top = 435
          Width = 100
          Hint = 'Valor Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 24
          Text = '0,00'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          OnValidate = edvpagValidate
          Height = 24
          StoredValues = 1
        end
        object edvpen: TdxEdit
          Left = 144
          Top = 459
          Width = 100
          Hint = 'Valor'
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
          TabOrder = 25
          Text = '0,00'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object edvenc: TdxEdit
          Left = 144
          Top = 387
          Width = 100
          Hint = 'Valor'
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
          TabOrder = 22
          Text = '0,00'
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
          StoredValues = 1
        end
        object eddcad: TdxDateEdit
          Tag = 1
          Left = 144
          Top = 315
          Width = 100
          Hint = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 19
          Alignment = taLeftJustify
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 5
        end
        object eddpag: TdxDateEdit
          Tag = 1
          Left = 144
          Top = 411
          Width = 100
          Hint = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 23
          Alignment = taLeftJustify
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 24
          StoredValues = 5
        end
        object eddoct: TdxButtonEdit
          Left = 144
          Top = 27
          Width = 130
          Hint = 'Clique na Lupa para Pesquisar N'#250'mero de Nota Fiscal'
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          OnValidate = eddoctValidate
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
          OnButtonClick = eddoctButtonClick
          Height = 24
          StoredValues = 6
          ExistButtons = True
        end
        object GroupBox2: TGroupBox
          Left = 280
          Top = 224
          Width = 401
          Height = 81
          Caption = 'Observa'#231#245'es'
          TabOrder = 30
          object edobse: TdxMemo
            Left = 2
            Top = 16
            Width = 397
            Align = alClient
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clWhite
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            Height = 63
          end
        end
        object cbstdo: TdxImageEdit
          Tag = 1
          Left = 144
          Top = 242
          Width = 49
          Hint = 'Tipo Lan'#231'amento'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 16
          AutoSize = False
          Descriptions.Strings = (
            'C 0'
            'C 1'
            'B 1'
            'T 1')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3')
          Values.Strings = (
            'C 0'
            'C 1'
            'B 1'
            'T 1')
          Height = 24
        end
        object cbtipo: TdxImageEdit
          Tag = 1
          Left = 144
          Top = 266
          Width = 130
          Hint = 'Tipo Lan'#231'amento'
          Color = clWhite
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 17
          AutoSize = False
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 24
        end
        object edvalo: TdxButtonEdit
          Tag = 1
          Left = 144
          Top = 363
          Width = 100
          Hint = 'Clique na Lupa para Cadastrar Cheques'
          Color = clWhite
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 21
          OnExit = edvaloExit
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 0
          Text = '0,00'
          OnValidate = edvaloValidate
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
          Height = 24
          StoredValues = 7
          ExistButtons = True
        end
        object cbdcli: TdxPickEdit
          Tag = 1
          Left = 274
          Top = 122
          Width = 407
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 8
          OnExit = cbdcliExit
          AutoSize = False
          CharCase = ecUpperCase
          Height = 24
        end
        object GroupBox3: TGroupBox
          Left = 280
          Top = 432
          Width = 401
          Height = 49
          Caption = 'Container'
          TabOrder = 34
          object Label9: TLabel
            Left = 8
            Top = 24
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
          object edctnr: TdxEdit
            Left = 56
            Top = 19
            Width = 153
            Hint = 'C'#243'digo'
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
            Alignment = taLeftJustify
            AutoSize = False
            CharCase = ecUpperCase
            MaxLength = 20
            Height = 24
            StoredValues = 3
          end
        end
      end
      object tschq: TdxTabSheet
        Caption = 'Bordero Cheque (s)'
        object dbgchq: TdxDBGrid
          Left = 0
          Top = 0
          Width = 689
          Height = 486
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
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clBlack
          BandFont.Height = -12
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = dtslan_chq
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -12
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideSelectionColor = 14789952
          HighlightColor = 14789952
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlack
          PreviewFont.Height = -12
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          RowFooterTextColor = clBlack
          object dbgchqFIN_VALO: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_VALO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'FIN_VALO'
            SummaryFooterFormat = '#,0.00'
          end
          object dbgchqFIN_DVEN: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_DVEN'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgchqFIN_BANC: TdxDBGridMaskColumn
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_BANC'
          end
          object dbgchqFIN_AGEN: TdxDBGridMaskColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_AGEN'
          end
          object dbgchqFIN_CONT: TdxDBGridMaskColumn
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_CONT'
          end
          object dbgchqFIN_NCHQ: TdxDBGridMaskColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_NCHQ'
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 624
    Width = 689
  end
  inherited SpeedBar2: TSpeedBar
    Width = 689
  end
  inherited imageOPC: TImageList
    Left = 404
    Top = 46
  end
  inherited imageITEM: TImageList
    Left = 468
    Top = 62
  end
  object psq_cli: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CL' +
        'I_BAI,CLI_LOGR,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,'
      
        '          CLI_OBSO,CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,' +
        'CLI_VULT'
      'FROM   CAD_CLI'
      'WHERE ID = 0'
      '')
    Left = 568
    Top = 16
    object psq_cliID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object psq_cliCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
    object psq_cliCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object psq_cliCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object psq_cliCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CAD_CLI"."CLI_CPF"'
      Size = 11
    end
    object psq_cliCLI_CRED: TIBBCDField
      FieldName = 'CLI_CRED'
      Origin = '"CAD_CLI"."CLI_CRED"'
      Precision = 9
      Size = 2
    end
    object psq_cliCLI_CID: TIBStringField
      FieldName = 'CLI_CID'
      Origin = '"CAD_CLI"."CLI_CID"'
      Size = 40
    end
    object psq_cliCLI_BAI: TIBStringField
      FieldName = 'CLI_BAI'
      Origin = '"CAD_CLI"."CLI_BAI"'
      Size = 40
    end
    object psq_cliCLI_LOGR: TIBStringField
      FieldName = 'CLI_LOGR'
      Origin = '"CAD_CLI"."CLI_LOGR"'
      Size = 60
    end
    object psq_cliCLI_ESTA: TIBStringField
      FieldName = 'CLI_ESTA'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object psq_cliCLI_STA: TIBStringField
      FieldName = 'CLI_STA'
      Origin = '"CAD_CLI"."CLI_STA"'
      FixedChar = True
      Size = 1
    end
    object psq_cliCLI_STAV: TIBStringField
      FieldName = 'CLI_STAV'
      Origin = '"CAD_CLI"."CLI_STAV"'
      FixedChar = True
      Size = 1
    end
    object psq_cliCLI_DPAG: TIBStringField
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI"."CLI_DPAG"'
      Size = 50
    end
    object psq_cliCLI_OBSO: TMemoField
      FieldName = 'CLI_OBSO'
      Origin = '"CAD_CLI"."CLI_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object psq_cliCLI_VDSC: TIBBCDField
      FieldName = 'CLI_VDSC'
      Origin = '"CAD_CLI"."CLI_VDSC"'
      Precision = 9
      Size = 2
    end
    object psq_cliCLI_DCAD: TDateField
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI"."CLI_DCAD"'
    end
    object psq_cliCLI_DFUN: TDateField
      FieldName = 'CLI_DFUN'
      Origin = '"CAD_CLI"."CLI_DFUN"'
    end
    object psq_cliCLI_DALT: TDateField
      FieldName = 'CLI_DALT'
      Origin = '"CAD_CLI"."CLI_DALT"'
    end
    object psq_cliCLI_DULT: TDateField
      FieldName = 'CLI_DULT'
      Origin = '"CAD_CLI"."CLI_DULT"'
    end
    object psq_cliCLI_VULT: TIBBCDField
      FieldName = 'CLI_VULT'
      Origin = '"CAD_CLI"."CLI_VULT"'
      Precision = 9
      Size = 2
    end
  end
  object dtslan_chq: TDataSource
    DataSet = lan_chq
    Left = 352
    Top = 80
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 352
    Top = 8
  end
  object ibSHEILD: TIBStoredProc
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 384
    Top = 8
  end
  object consulta_S: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    SQL.Strings = (
      '')
    Left = 384
    Top = 48
  end
  object cadastro: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    DeleteSQL.Strings = (
      'delete from FIN_REC_BAI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_REC_BAI'
      
        '  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CCAB, FIN_CCLI, FIN_CCUS, F' +
        'IN_CDBA, '
      
        '   FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CDRD, FIN_COBR, FIN_CONC, F' +
        'IN_CONT, '
      
        '   FIN_CPF, FIN_CPPL, FIN_CREP, FIN_CTNR, FIN_CVEN, FIN_DATR, FI' +
        'N_DBAI, '
      
        '   FIN_DBAN, FIN_DCAD, FIN_DCLI, FIN_DEBA, FIN_DFIN, FIN_DMED, F' +
        'IN_DOCT, '
      
        '   FIN_DPAG, FIN_DREP, FIN_DVEN, FIN_MCHQ, FIN_NCHQ, FIN_OBSE, F' +
        'IN_PDES, '
      
        '   FIN_PJUR, FIN_PMUL, FIN_PRAZ, FIN_RCLI, FIN_RREP, FIN_STA, FI' +
        'N_STCO, '
      
        '   FIN_STDO, FIN_STFI, FIN_TIPO, FIN_VALO, FIN_VCHQ, FIN_VDES, F' +
        'IN_VENC, '
      '   FIN_VEND, FIN_VJUR, FIN_VMUL, FIN_VPAG, FIN_VPEN, ID)'
      'values'
      
        '  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CCAB, :FIN_CCLI, :FIN_C' +
        'CUS, :FIN_CDBA, '
      
        '   :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CDRD, :FIN_COBR, :FIN_C' +
        'ONC, :FIN_CONT, '
      
        '   :FIN_CPF, :FIN_CPPL, :FIN_CREP, :FIN_CTNR, :FIN_CVEN, :FIN_DA' +
        'TR, :FIN_DBAI, '
      
        '   :FIN_DBAN, :FIN_DCAD, :FIN_DCLI, :FIN_DEBA, :FIN_DFIN, :FIN_D' +
        'MED, :FIN_DOCT, '
      
        '   :FIN_DPAG, :FIN_DREP, :FIN_DVEN, :FIN_MCHQ, :FIN_NCHQ, :FIN_O' +
        'BSE, :FIN_PDES, '
      
        '   :FIN_PJUR, :FIN_PMUL, :FIN_PRAZ, :FIN_RCLI, :FIN_RREP, :FIN_S' +
        'TA, :FIN_STCO, '
      
        '   :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_VALO, :FIN_VCHQ, :FIN_V' +
        'DES, :FIN_VENC, '
      '   :FIN_VEND, :FIN_VJUR, :FIN_VMUL, :FIN_VPAG, :FIN_VPEN, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CCAB,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CDRD,'
      '  FIN_CCLI,'
      '  FIN_DFIN,'
      '  FIN_DCLI,'
      '  FIN_RCLI,'
      '  FIN_CVEN,'
      '  FIN_VEND,'
      '  FIN_CREP,'
      '  FIN_DREP,'
      '  FIN_RREP,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DCAD,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DMED,'
      '  FIN_DATR,'
      '  FIN_DBAI,'
      '  FIN_CPPL,'
      '  FIN_CCUS,'
      '  FIN_CDCO,'
      '  FIN_CDBA,'
      '  FIN_DEBA,'
      '  FIN_STDO,'
      '  FIN_DOCT,'
      '  FIN_BANC,'
      '  FIN_DBAN,'
      '  FIN_AGEN,'
      '  FIN_CONT,'
      '  FIN_NCHQ,'
      '  FIN_MCHQ,'
      '  FIN_TIPO,'
      '  FIN_STFI,'
      '  FIN_STCO,'
      '  FIN_VALO,'
      '  FIN_VPAG,'
      '  FIN_VPEN,'
      '  FIN_VENC,'
      '  FIN_CTNR,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_VCHQ,'
      '  FIN_CPF,'
      '  FIN_STA,'
      '  FIN_COBR,'
      '  FIN_OBSE'
      'from FIN_REC_BAI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_REC_BAI'
      'ORDER BY FIN_DVEN')
    ModifySQL.Strings = (
      'update FIN_REC_BAI'
      'set'
      '  FIN_AGEN = :FIN_AGEN,'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_BANC = :FIN_BANC,'
      '  FIN_CCAB = :FIN_CCAB,'
      '  FIN_CCLI = :FIN_CCLI,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBA = :FIN_CDBA,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCO = :FIN_CDCO,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CDRD = :FIN_CDRD,'
      '  FIN_COBR = :FIN_COBR,'
      '  FIN_CONC = :FIN_CONC,'
      '  FIN_CONT = :FIN_CONT,'
      '  FIN_CPF = :FIN_CPF,'
      '  FIN_CPPL = :FIN_CPPL,'
      '  FIN_CREP = :FIN_CREP,'
      '  FIN_CTNR = :FIN_CTNR,'
      '  FIN_CVEN = :FIN_CVEN,'
      '  FIN_DATR = :FIN_DATR,'
      '  FIN_DBAI = :FIN_DBAI,'
      '  FIN_DBAN = :FIN_DBAN,'
      '  FIN_DCAD = :FIN_DCAD,'
      '  FIN_DCLI = :FIN_DCLI,'
      '  FIN_DEBA = :FIN_DEBA,'
      '  FIN_DFIN = :FIN_DFIN,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DREP = :FIN_DREP,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_MCHQ = :FIN_MCHQ,'
      '  FIN_NCHQ = :FIN_NCHQ,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_RCLI = :FIN_RCLI,'
      '  FIN_RREP = :FIN_RREP,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_TIPO = :FIN_TIPO,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VCHQ = :FIN_VCHQ,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VEND = :FIN_VEND,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 48
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAI"."FIN_CCAB"'
    end
    object cadastroFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_BAI"."FIN_CDBX"'
    end
    object cadastroFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_BAI"."FIN_CDCX"'
    end
    object cadastroFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAI"."FIN_CCLI"'
    end
    object cadastroFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 40
    end
    object cadastroFIN_DCLI: TIBStringField
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_BAI"."FIN_DCLI"'
      Size = 40
    end
    object cadastroFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_BAI"."FIN_RCLI"'
      Size = 60
    end
    object cadastroFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAI"."FIN_CVEN"'
    end
    object cadastroFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_BAI"."FIN_VEND"'
      Size = 40
    end
    object cadastroFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAI"."FIN_CREP"'
    end
    object cadastroFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_BAI"."FIN_DREP"'
      Size = 40
    end
    object cadastroFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_BAI"."FIN_RREP"'
      Size = 60
    end
    object cadastroFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAI"."FIN_PRAZ"'
    end
    object cadastroFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_BAI"."FIN_ATRA"'
    end
    object cadastroFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_BAI"."FIN_CONC"'
    end
    object cadastroFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAI"."FIN_DCAD"'
    end
    object cadastroFIN_DVEN: TDateField
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAI"."FIN_DVEN"'
    end
    object cadastroFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAI"."FIN_DPAG"'
    end
    object cadastroFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAI"."FIN_DMED"'
    end
    object cadastroFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAI"."FIN_DATR"'
    end
    object cadastroFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_BAI"."FIN_DBAI"'
    end
    object cadastroFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_BAI"."FIN_CPPL"'
    end
    object cadastroFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_BAI"."FIN_CCUS"'
    end
    object cadastroFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAI"."FIN_CDCO"'
    end
    object cadastroFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAI"."FIN_CDBA"'
      Size = 4
    end
    object cadastroFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAI"."FIN_DEBA"'
      Size = 50
    end
    object cadastroFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAI"."FIN_STDO"'
      Size = 3
    end
    object cadastroFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAI"."FIN_DOCT"'
    end
    object cadastroFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAI"."FIN_BANC"'
      Size = 4
    end
    object cadastroFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAI"."FIN_DBAN"'
      Size = 50
    end
    object cadastroFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAI"."FIN_AGEN"'
      Size = 10
    end
    object cadastroFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAI"."FIN_CONT"'
      Size = 15
    end
    object cadastroFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAI"."FIN_NCHQ"'
      Size = 10
    end
    object cadastroFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAI"."FIN_MCHQ"'
    end
    object cadastroFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAI"."FIN_TIPO"'
    end
    object cadastroFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAI"."FIN_STFI"'
    end
    object cadastroFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAI"."FIN_STCO"'
    end
    object cadastroFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAI"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAI"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAI"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_BAI"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAI"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAI"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_BAI"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object cadastroFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_BAI"."FIN_CTNR"'
    end
    object cadastroFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAI"."FIN_CDRD"'
    end
    object cadastroFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_BAI"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_BAI"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_BAI"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_BAI"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_BAI"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_BAI"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC_BAI"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_BAI"."FIN_CPF"'
      Size = 14
    end
    object cadastroFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_BAI"."FIN_DERD"'
      Size = 30
    end
    object cadastroFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_BAI"."FIN_DTST"'
    end
  end
  object lan_chq: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    DeleteSQL.Strings = (
      'delete from FIN_REC_BAI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_REC_BAI'
      
        '  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CCAB, FIN_CCLI, FIN_CCUS, F' +
        'IN_CDBA, '
      
        '   FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CDRD, FIN_COBR, FIN_CONC, F' +
        'IN_CONT, '
      
        '   FIN_CPF, FIN_CPPL, FIN_CREP, FIN_CTNR, FIN_CVEN, FIN_DATR, FI' +
        'N_DBAI, '
      
        '   FIN_DBAN, FIN_DCAD, FIN_DCLI, FIN_DEBA, FIN_DERD, FIN_DFIN, F' +
        'IN_DMED, '
      
        '   FIN_DOCT, FIN_DPAG, FIN_DREP, FIN_DTST, FIN_DVEN, FIN_MCHQ, F' +
        'IN_NCHQ, '
      
        '   FIN_OBSE, FIN_PDES, FIN_PJUR, FIN_PMUL, FIN_PRAZ, FIN_RCLI, F' +
        'IN_RREP, '
      
        '   FIN_STA, FIN_STCO, FIN_STDO, FIN_STFI, FIN_TIPO, FIN_VALO, FI' +
        'N_VCHQ, '
      
        '   FIN_VDES, FIN_VENC, FIN_VEND, FIN_VJUR, FIN_VMUL, FIN_VPAG, F' +
        'IN_VPEN, '
      '   ID)'
      'values'
      
        '  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CCAB, :FIN_CCLI, :FIN_C' +
        'CUS, :FIN_CDBA, '
      
        '   :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CDRD, :FIN_COBR, :FIN_C' +
        'ONC, :FIN_CONT, '
      
        '   :FIN_CPF, :FIN_CPPL, :FIN_CREP, :FIN_CTNR, :FIN_CVEN, :FIN_DA' +
        'TR, :FIN_DBAI, '
      
        '   :FIN_DBAN, :FIN_DCAD, :FIN_DCLI, :FIN_DEBA, :FIN_DERD, :FIN_D' +
        'FIN, :FIN_DMED, '
      
        '   :FIN_DOCT, :FIN_DPAG, :FIN_DREP, :FIN_DTST, :FIN_DVEN, :FIN_M' +
        'CHQ, :FIN_NCHQ, '
      
        '   :FIN_OBSE, :FIN_PDES, :FIN_PJUR, :FIN_PMUL, :FIN_PRAZ, :FIN_R' +
        'CLI, :FIN_RREP, '
      
        '   :FIN_STA, :FIN_STCO, :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_VA' +
        'LO, :FIN_VCHQ, '
      
        '   :FIN_VDES, :FIN_VENC, :FIN_VEND, :FIN_VJUR, :FIN_VMUL, :FIN_V' +
        'PAG, :FIN_VPEN, '
      '   :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CCAB,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CDRD,'
      '  FIN_CCLI,'
      '  FIN_DFIN,'
      '  FIN_DCLI,'
      '  FIN_RCLI,'
      '  FIN_CVEN,'
      '  FIN_VEND,'
      '  FIN_CREP,'
      '  FIN_DREP,'
      '  FIN_RREP,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DCAD,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DMED,'
      '  FIN_DATR,'
      '  FIN_DBAI,'
      '  FIN_CPPL,'
      '  FIN_CCUS,'
      '  FIN_CDCO,'
      '  FIN_CDBA,'
      '  FIN_DEBA,'
      '  FIN_STDO,'
      '  FIN_DOCT,'
      '  FIN_BANC,'
      '  FIN_DBAN,'
      '  FIN_AGEN,'
      '  FIN_CONT,'
      '  FIN_NCHQ,'
      '  FIN_MCHQ,'
      '  FIN_TIPO,'
      '  FIN_STFI,'
      '  FIN_STCO,'
      '  FIN_VALO,'
      '  FIN_VPAG,'
      '  FIN_VPEN,'
      '  FIN_VENC,'
      '  FIN_CTNR,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_VCHQ,'
      '  FIN_CPF,'
      '  FIN_STA,'
      '  FIN_COBR,'
      '  FIN_DERD,'
      '  FIN_OBSE,'
      '  FIN_DTST'
      'from FIN_REC_BAI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_REC_BAI'
      'ORDER BY FIN_DVEN')
    ModifySQL.Strings = (
      'update FIN_REC_BAI'
      'set'
      '  FIN_AGEN = :FIN_AGEN,'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_BANC = :FIN_BANC,'
      '  FIN_CCAB = :FIN_CCAB,'
      '  FIN_CCLI = :FIN_CCLI,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBA = :FIN_CDBA,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCO = :FIN_CDCO,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CDRD = :FIN_CDRD,'
      '  FIN_COBR = :FIN_COBR,'
      '  FIN_CONC = :FIN_CONC,'
      '  FIN_CONT = :FIN_CONT,'
      '  FIN_CPF = :FIN_CPF,'
      '  FIN_CPPL = :FIN_CPPL,'
      '  FIN_CREP = :FIN_CREP,'
      '  FIN_CTNR = :FIN_CTNR,'
      '  FIN_CVEN = :FIN_CVEN,'
      '  FIN_DATR = :FIN_DATR,'
      '  FIN_DBAI = :FIN_DBAI,'
      '  FIN_DBAN = :FIN_DBAN,'
      '  FIN_DCAD = :FIN_DCAD,'
      '  FIN_DCLI = :FIN_DCLI,'
      '  FIN_DEBA = :FIN_DEBA,'
      '  FIN_DERD = :FIN_DERD,'
      '  FIN_DFIN = :FIN_DFIN,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DREP = :FIN_DREP,'
      '  FIN_DTST = :FIN_DTST,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_MCHQ = :FIN_MCHQ,'
      '  FIN_NCHQ = :FIN_NCHQ,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_RCLI = :FIN_RCLI,'
      '  FIN_RREP = :FIN_RREP,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_TIPO = :FIN_TIPO,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VCHQ = :FIN_VCHQ,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VEND = :FIN_VEND,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 352
    Top = 48
    object lan_chqID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_REC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object lan_chqFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_REC"."FIN_CCAB"'
    end
    object lan_chqFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_REC"."FIN_CDBX"'
    end
    object lan_chqFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_REC"."FIN_CDCX"'
    end
    object lan_chqFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_REC"."FIN_CCLI"'
    end
    object lan_chqFIN_DCLI: TIBStringField
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_REC"."FIN_DCLI"'
      Size = 40
    end
    object lan_chqFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_REC"."FIN_RCLI"'
      Size = 60
    end
    object lan_chqFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_REC"."FIN_CVEN"'
    end
    object lan_chqFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_REC"."FIN_VEND"'
      Size = 40
    end
    object lan_chqFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_REC"."FIN_CREP"'
    end
    object lan_chqFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_REC"."FIN_DREP"'
      Size = 40
    end
    object lan_chqFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_REC"."FIN_RREP"'
      Size = 60
    end
    object lan_chqFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_REC"."FIN_PRAZ"'
    end
    object lan_chqFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_REC"."FIN_ATRA"'
    end
    object lan_chqFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_REC"."FIN_CONC"'
    end
    object lan_chqFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_REC"."FIN_DCAD"'
    end
    object lan_chqFIN_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_REC"."FIN_DVEN"'
    end
    object lan_chqFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_REC"."FIN_DPAG"'
    end
    object lan_chqFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_REC"."FIN_DMED"'
    end
    object lan_chqFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_REC"."FIN_DATR"'
    end
    object lan_chqFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_REC"."FIN_STDO"'
      Size = 3
    end
    object lan_chqFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_REC"."FIN_DOCT"'
    end
    object lan_chqFIN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_REC"."FIN_BANC"'
      Size = 4
    end
    object lan_chqFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_REC"."FIN_DBAN"'
      Size = 50
    end
    object lan_chqFIN_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_REC"."FIN_AGEN"'
      Size = 10
    end
    object lan_chqFIN_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_REC"."FIN_CONT"'
      Size = 15
    end
    object lan_chqFIN_NCHQ: TIBStringField
      DisplayLabel = 'Cheque No'
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_REC"."FIN_NCHQ"'
      Size = 10
    end
    object lan_chqFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_REC"."FIN_MCHQ"'
    end
    object lan_chqFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_REC"."FIN_TIPO"'
    end
    object lan_chqFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_REC"."FIN_STFI"'
    end
    object lan_chqFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_REC"."FIN_STCO"'
    end
    object lan_chqFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_REC"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_REC"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_REC"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_REC"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object lan_chqFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_REC"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object lan_chqFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_REC"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object lan_chqFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_REC"."FIN_DBAI"'
    end
    object lan_chqFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_REC"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAI"."FIN_CDRD"'
    end
    object lan_chqFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 60
    end
    object lan_chqFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_BAI"."FIN_CPPL"'
    end
    object lan_chqFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_BAI"."FIN_CCUS"'
    end
    object lan_chqFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAI"."FIN_CDCO"'
    end
    object lan_chqFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAI"."FIN_CDBA"'
      Size = 4
    end
    object lan_chqFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAI"."FIN_DEBA"'
      Size = 50
    end
    object lan_chqFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_BAI"."FIN_CTNR"'
    end
    object lan_chqFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_BAI"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_BAI"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object lan_chqFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_BAI"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_BAI"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object lan_chqFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_BAI"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_BAI"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object lan_chqFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC_BAI"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_BAI"."FIN_CPF"'
      Size = 14
    end
    object lan_chqFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_BAI"."FIN_DERD"'
      Size = 30
    end
    object lan_chqFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_BAI"."FIN_DTST"'
    end
  end
end
