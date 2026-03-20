object frmetiqueta_geral: Tfrmetiqueta_geral
  Left = 243
  Top = 112
  ActiveControl = edTXT
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
  ClientHeight = 578
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object SpeedBar2: TSpeedBar
    Left = 0
    Top = 0
    Width = 1104
    Height = 100
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    BoundLines = [blTop, blBottom, blLeft, blRight]
    Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns]
    BtnOffsetHorz = 2
    BtnOffsetVert = 2
    BtnWidth = 95
    BtnHeight = 95
    Images = imageOPC
    BevelOuter = bvNone
    TabOrder = 0
    InternalVer = 1
    object SpeedbarSection5: TSpeedbarSection
      Caption = 'Movimento'
    end
    object SpeedbarSection6: TSpeedbarSection
      Caption = 'Edicao'
    end
    object SpeedbarSection7: TSpeedbarSection
      Caption = 'Confirmacao'
    end
    object SpeedbarSection8: TSpeedbarSection
      Caption = 'Utilitarios'
    end
    object BSai: TSpeedItem
      BtnCaption = 'Sair'
      Hint = '[Esc] - Sair'
      ImageIndex = 4
      Spacing = 1
      Left = 382
      Top = 2
      Visible = True
      OnClick = BSaiClick
      SectionName = 'Movimento'
    end
    object BVis: TSpeedItem
      BtnCaption = 'Visualizar'
      Hint = '[Ctrl+V] - Visualizar'
      ImageIndex = 1
      Spacing = 1
      Left = 97
      Top = 2
      Visible = True
      OnClick = BVisClick
      SectionName = 'Movimento'
    end
    object BPri: TSpeedItem
      BtnCaption = 'Imprimir'
      Hint = '[Ctrl+P] - Relat'#243'rios'
      ImageIndex = 3
      Spacing = 1
      Left = 192
      Top = 2
      Visible = True
      SectionName = 'Movimento'
    end
    object BSav: TSpeedItem
      BtnCaption = 'Gerar Arquivo'
      Hint = '[Ctrl+S] - Salvar'
      ImageIndex = 0
      Spacing = 1
      Left = 287
      Top = 2
      Visible = True
      OnClick = BSavClick
      SectionName = 'Movimento'
    end
    object siLI: TSpeedItem
      BtnCaption = 'Limpar'
      Hint = 'Limpar produtos selecionados'
      ImageIndex = 5
      Spacing = 1
      Left = 2
      Top = 2
      Visible = True
      OnClick = siLIClick
      SectionName = 'Movimento'
    end
  end
  object pnltop: TPanel
    Left = 0
    Top = 100
    Width = 1104
    Height = 125
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 1
    object Panel9: TPanel
      Left = 321
      Top = 2
      Width = 781
      Height = 121
      Align = alClient
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 15788249
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 121
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object rgpsqp: TGroupBox
          Left = 0
          Top = 0
          Width = 417
          Height = 121
          Align = alLeft
          Caption = 'Pesquisa Produtos'
          TabOrder = 0
          object Label11: TLabel
            Left = 8
            Top = 24
            Width = 37
            Height = 14
            Caption = 'Campo'
            Color = clBtnFace
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
            Left = 8
            Top = 72
            Width = 35
            Height = 14
            Caption = 'Edi'#231#227'o'
            Color = clBtnFace
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
            Left = 8
            Top = 48
            Width = 35
            Height = 14
            Caption = 'Status'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object laqtde: TLabel
            Left = 8
            Top = 96
            Width = 63
            Height = 14
            Caption = 'Quantidade'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object sbpsqp: TSpeedButton
            Left = 146
            Top = 92
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Hint = 'Pesquisar'
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
            OnClick = sbpsqpClick
          end
          object Label2: TLabel
            Left = 240
            Top = 48
            Width = 101
            Height = 14
            Caption = 'Com Observa'#231#227'o ?'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object edTXT: TdxMaskEdit
            Left = 80
            Top = 68
            Width = 329
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 2
            OnExit = edTXTExit
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            StoredValues = 1
          end
          object edqtde: TdxMaskEdit
            Left = 80
            Top = 92
            Width = 65
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 3
            OnExit = edqtdeExit
            Alignment = taRightJustify
            CharCase = ecUpperCase
            IgnoreMaskBlank = False
            Text = '1'
            StoredValues = 1
          end
          object cbCAMPO: TdxImageEdit
            Left = 80
            Top = 20
            Width = 150
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 0
            Text = 'Referencia'
            AutoSize = False
            Descriptions.Strings = (
              'Referencia'
              'Produto'
              'Ref. Fornecedor'
              'Categoria'
              'Grupo'
              'Cole'#231#227'o')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
            Values.Strings = (
              'Referencia'
              'Produto'
              'Ref. Fornecedor'
              #13#10'Categoria'
              'Grupo'
              'Cole'#231#227'o')
            Height = 22
          end
          object cbstat: TdxImageEdit
            Left = 80
            Top = 44
            Width = 150
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 1
            Text = 'Todos'
            AutoSize = False
            Descriptions.Strings = (
              'Todos'
              'Linha'
              'Fora de Linha'
              'Estoque')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3')
            Values.Strings = (
              'Todos'
              'Linha'
              'Fora de Linha'
              'Estoque')
            Height = 22
          end
          object cbobs: TdxImageEdit
            Left = 355
            Top = 44
            Width = 54
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 4
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
            Height = 22
          end
        end
        object rgpsqd: TGroupBox
          Left = 417
          Top = 0
          Width = 364
          Height = 121
          Align = alClient
          Caption = 'Pesquisa Datas'
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 24
            Width = 50
            Height = 14
            Caption = 'Pesquisar'
            Color = clBtnFace
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
            Top = 48
            Width = 58
            Height = 14
            Caption = 'Data Inicial'
            Color = clBtnFace
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
            Left = 8
            Top = 72
            Width = 52
            Height = 14
            Caption = 'Data Final'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object sbpsqd: TSpeedButton
            Left = 181
            Top = 68
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Hint = 'Pesquisar'
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
            OnClick = sbpsqdClick
          end
          object dxDT1: TdxDateEdit
            Left = 80
            Top = 43
            Width = 100
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 1
            Alignment = taLeftJustify
            AutoSize = False
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 24
            StoredValues = 5
          end
          object dxDT2: TdxDateEdit
            Left = 80
            Top = 67
            Width = 100
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 2
            Alignment = taLeftJustify
            AutoSize = False
            Date = -700000.000000000000000000
            UseEditMask = True
            Height = 24
            StoredValues = 5
          end
          object cbDATA: TdxImageEdit
            Left = 80
            Top = 20
            Width = 150
            Color = 16644596
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = False
            TabOrder = 0
            Text = 'Cadastro'
            AutoSize = False
            Descriptions.Strings = (
              'Cadastro'
              'Altera'#231#227'o'
              'Venda'
              'Programa'#231#227'o'
              'Entrada')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            Values.Strings = (
              'Cadastro'
              'Altera'#231#227'o'
              'Venda'
              'Programa'#231#227'o'
              'Entrada')
            Height = 22
          end
        end
      end
    end
    object rgTIPO: TRadioGroup
      Left = 2
      Top = 2
      Width = 319
      Height = 121
      Align = alLeft
      Caption = 'Tipos de Etiquetas'
      Color = 15788249
      Columns = 2
      ItemIndex = 5
      Items.Strings = (
        'C'#243'digo de Barras'
        'Composi'#231#227'o'
        'Cat'#225'logo Com Pre'#231'o'
        'Cat'#225'logo Sem Pre'#231'o'
        'Identifica'#231#227'o (1)'
        'Cartela Com Cor'
        'Cartela Sem Cor'
        'Estoque'
        'Cores'
        'Identifica'#231#227'o (2)')
      ParentColor = False
      TabOrder = 1
    end
  end
  object pnlbot: TPanel
    Left = 0
    Top = 225
    Width = 1104
    Height = 353
    Align = alClient
    TabOrder = 2
    object qrpeti_ide_mat: TQuickRep
      Left = 718
      Top = 25
      Width = 374
      Height = 144
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = rom_001
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Continuous = False
      Page.Values = (
        10.000000000000000000
        381.000000000000000000
        10.000000000000000000
        989.541666666667000000
        100.000000000000000000
        30.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      ReportTitle = 'Etique de Identifica'#231#227'o'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsMaximized
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRChildBand1: TQRChildBand
        Left = 38
        Top = 138
        Width = 325
        Height = 1
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2.645833333333333000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        PrintOrder = cboAfterParent
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 4
        Width = 325
        Height = 134
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = DetailBand1BeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          354.541666666666700000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object qrlicnpj: TQRLabel
          Left = 0
          Top = 27
          Width = 155
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            0.000000000000000000
            71.437500000000000000
            410.104166666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'CNPJ: 05.305.532/0001-50'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object qrliraza: TQRLabel
          Left = 55
          Top = 8
          Width = 214
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            145.520833333333300000
            21.166666666666670000
            566.208333333333300000)
          XLColumn = 0
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = True
          Caption = 'ETIQUETA DE IDENTIFICA'#199#195'O'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 10
        end
        object qrlindu: TQRLabel
          Left = 183
          Top = 29
          Width = 142
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            484.187500000000000000
            76.729166666666670000
            375.708333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'IND'#218'STRIA BRASILEIRA'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 0
          Top = 51
          Width = 40
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            134.937500000000000000
            105.833333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Produto'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText1: TQRDBText
          Left = 73
          Top = 51
          Width = 61
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            134.937500000000000000
            161.395833333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_CPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRLabel2: TQRLabel
          Left = 0
          Top = 67
          Width = 52
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            177.270833333333300000
            137.583333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Descri'#231#227'o'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText2: TQRDBText
          Left = 73
          Top = 67
          Width = 248
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            177.270833333333300000
            656.166666666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRLabel3: TQRLabel
          Left = 0
          Top = 99
          Width = 63
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            261.937500000000000000
            166.687500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Composi'#231#227'o'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel4: TQRLabel
          Left = 0
          Top = 83
          Width = 59
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            219.604166666666700000
            156.104166666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Quantidade'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object qrliqtde: TQRLabel
          Left = 73
          Top = 83
          Width = 25
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            219.604166666666700000
            66.145833333333330000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '0,00'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText13: TQRDBText
          Left = 73
          Top = 99
          Width = 249
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666670000
            193.145833333333300000
            261.937500000000000000
            658.812500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_COMP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRDBText14: TQRDBText
          Left = 152
          Top = 51
          Width = 171
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            402.166666666666700000
            134.937500000000000000
            452.437500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DCOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
      end
    end
    object qprn_car_mat_sem: TQuickRep
      Left = 86
      Top = 89
      Width = 374
      Height = 155
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = rom_001
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Continuous = False
      Page.Values = (
        10.000000000000000000
        410.000000000000000000
        10.000000000000000000
        990.000000000000000000
        100.000000000000000000
        30.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      ReportTitle = 'Listagem de Clientes - Vendas'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsMaximized
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRBand1: TQRBand
        Left = 38
        Top = 4
        Width = 325
        Height = 141
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDashDotDot
        AlignToBottom = False
        BeforePrint = QRBand1BeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          373.062500000000000000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText5: TQRDBText
          Left = 0
          Top = 8
          Width = 100
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            0.000000000000000000
            21.166666666666670000
            264.583333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_CART'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 12
        end
        object qrlcomp3: TQRLabel
          Left = 0
          Top = 63
          Width = 78
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            166.687500000000000000
            206.375000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Composi'#231#227'o1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object qrlcomp4: TQRLabel
          Left = 0
          Top = 77
          Width = 78
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            203.729166666666700000
            206.375000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Composi'#231#227'o1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText9: TQRDBText
          Left = 0
          Top = 33
          Width = 321
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            87.312500000000000000
            849.312500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 8
        end
      end
      object QRChildBand2: TQRChildBand
        Left = 38
        Top = 145
        Width = 325
        Height = 1
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2.645833333333333000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        PrintOrder = cboAfterParent
      end
    end
    object qprn_car_mat_cor: TQuickRep
      Left = 198
      Top = 17
      Width = 374
      Height = 151
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = rom_001
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Continuous = False
      Page.Values = (
        10.000000000000000000
        400.000000000000000000
        10.000000000000000000
        989.500000000000000000
        100.000000000000000000
        30.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      ReportTitle = 'Listagem de Clientes - Vendas'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsMaximized
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRBand8: TQRBand
        Left = 38
        Top = 149
        Width = 325
        Height = 13
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDashDotDot
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          34.395833333333330000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText24: TQRDBText
          Left = 1
          Top = 0
          Width = 70
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            2.645833333333333000
            0.000000000000000000
            185.208333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_CPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 10
        end
        object QRDBText25: TQRDBText
          Left = 113
          Top = 0
          Width = 71
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            298.979166666666700000
            0.000000000000000000
            187.854166666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DCOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 10
        end
      end
      object qrgrom_dven: TQRGroup
        Left = 38
        Top = 4
        Width = 325
        Height = 133
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDashDotDot
        AlignToBottom = False
        BeforePrint = qrgrom_dvenBeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          351.895833333333300000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Expression = 'rom_001.PRO_QTDE'
        Master = qprn_car_mat_cor
        ReprintOnNewPage = False
        object qrllarg: TQRLabel
          Left = 0
          Top = 86
          Width = 67
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            227.541666666666700000
            177.270833333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Largura Util'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText30: TQRDBText
          Left = 0
          Top = 8
          Width = 76
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            0.000000000000000000
            21.166666666666670000
            201.083333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_CART'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 10
        end
        object qrldbrend: TQRDBText
          Left = 257
          Top = 86
          Width = 64
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            679.979166666666700000
            227.541666666666700000
            169.333333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_REND'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 8
        end
        object QRLabel15: TQRLabel
          Left = 0
          Top = 72
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            190.500000000000000000
            132.291666666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Largura:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText33: TQRDBText
          Left = 81
          Top = 72
          Width = 63
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            214.312500000000000000
            190.500000000000000000
            166.687500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_LARG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 8
        end
        object QRShape1: TQRShape
          Left = 2
          Top = 69
          Width = 324
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333330000
            5.291666666666670000
            182.562500000000000000
            857.250000000000000000)
          XLColumn = 0
          Pen.Color = clSilver
          Pen.Style = psDashDotDot
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBRichText2: TQRDBRichText
          Left = 2
          Top = 99
          Width = 319
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            5.291666666666670000
            261.937500000000000000
            844.020833333333000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AutoStretch = True
          Color = clWindow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DataField = 'PRO_OBSE'
          DataSet = rom_001
        end
        object QRLabel27: TQRLabel
          Left = 168
          Top = 72
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            444.500000000000000000
            190.500000000000000000
            179.916666666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Gramatura:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText42: TQRDBText
          Left = 257
          Top = 72
          Width = 66
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            679.979166666666700000
            190.500000000000000000
            174.625000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_GRAM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 8
        end
        object qrlcomp1: TQRLabel
          Left = 0
          Top = 39
          Width = 78
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            103.187500000000000000
            206.375000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Composi'#231#227'o1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object qrlcomp2: TQRLabel
          Left = 0
          Top = 53
          Width = 78
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            140.229166666666700000
            206.375000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Composi'#231#227'o1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText32: TQRDBText
          Left = 0
          Top = 25
          Width = 321
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            66.145833333333330000
            849.312500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 8
        end
        object qrlrend: TQRLabel
          Left = 168
          Top = 86
          Width = 74
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            444.500000000000000000
            227.541666666666700000
            195.791666666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Rendimento:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 81
          Top = 86
          Width = 58
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            214.312500000000000000
            227.541666666666700000
            153.458333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_UTIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 8
        end
      end
      object qrgrom_drep: TQRGroup
        Left = 38
        Top = 137
        Width = 325
        Height = 12
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDashDotDot
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          31.750000000000000000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Expression = 'rom_001.PRO_QTDE'
        Master = qprn_car_mat_cor
        ReprintOnNewPage = False
      end
      object QRChildBand3: TQRChildBand
        Left = 38
        Top = 162
        Width = 325
        Height = 1
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2.645833333333333000
          859.895833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        PrintOrder = cboAfterParent
      end
    end
    object SpeedBar4: TSpeedBar
      Left = 1
      Top = 1
      Width = 44
      Height = 351
      Cursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BoundLines = [blTop, blBottom, blLeft, blRight]
      Align = alLeft
      Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbGrayedBtns, sbTransparentBtns, sbStretchBitmap]
      BtnOffsetHorz = 2
      BtnOffsetVert = 2
      BtnWidth = 40
      BtnHeight = 40
      Images = imageOPC3
      BevelOuter = bvNone
      TabOrder = 0
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
      object siINC: TSpeedItem
        Caption = 'Incluir'
        Enabled = False
        Hint = '[Ins] - Incluir'
        ImageIndex = 2
        Spacing = 1
        Left = 2
        Top = 2
        Visible = True
        OnClick = siINCClick
        SectionName = 'Movimento'
      end
      object siDEL: TSpeedItem
        Caption = 'Excluir'
        Hint = '[Del] - Excluir'
        ImageIndex = 3
        Spacing = 1
        Left = 2
        Top = 82
        Visible = True
        OnClick = siDELClick
        SectionName = 'Movimento'
      end
      object siSAV: TSpeedItem
        Caption = 'Salvar'
        Enabled = False
        Hint = 'Salvar|'
        ImageIndex = 1
        Spacing = 1
        Left = 2
        Top = 122
        Visible = True
        OnClick = siSAVClick
        SectionName = 'Movimento'
      end
      object siCAN: TSpeedItem
        Caption = 'Cancelar'
        Enabled = False
        Hint = 'Cancelar|'
        ImageIndex = 4
        Spacing = 1
        Left = 2
        Top = 162
        Visible = True
        OnClick = siCANClick
        SectionName = 'Movimento'
      end
      object siALT: TSpeedItem
        Caption = 'Alterar'
        Hint = 'Alterar|'
        ImageIndex = 0
        Spacing = 1
        Left = 2
        Top = 42
        Visible = True
        OnClick = siALTClick
        SectionName = 'Movimento'
      end
    end
    object qrpeti_ide_las: TQuickRep
      Left = 718
      Top = 177
      Width = 374
      Height = 144
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = rom_001
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Continuous = False
      Page.Values = (
        10.000000000000000000
        381.000000000000000000
        10.000000000000000000
        989.500000000000000000
        100.000000000000000000
        10.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      ReportTitle = 'Etique de Identifica'#231#227'o'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsMaximized
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRChildBand4: TQRChildBand
        Left = 38
        Top = 138
        Width = 332
        Height = 1
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2.645833333333333000
          878.416666666666700000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        PrintOrder = cboAfterParent
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 4
        Width = 332
        Height = 134
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = DetailBand1BeforePrint
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          354.541666666666700000
          878.416666666666700000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object qrlraza: TQRLabel
          Left = 88
          Top = 1
          Width = 155
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            232.833333333333300000
            2.645833333333333000
            410.104166666666700000)
          XLColumn = 0
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = True
          Caption = 'ETIQUETA DE IDENTIFICA'#199#195'O'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object qrlcnpj: TQRLabel
          Left = 0
          Top = 14
          Width = 133
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            0.000000000000000000
            37.041666666666670000
            351.895833333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'CNPJ: 05.305.532/0001-50'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel5: TQRLabel
          Left = 205
          Top = 14
          Width = 127
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            542.395833333333300000
            37.041666666666670000
            336.020833333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'IND'#218'STRIA BRASILEIRA'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel6: TQRLabel
          Left = 0
          Top = 29
          Width = 40
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            76.729166666666670000
            105.833333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Produto'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText4: TQRDBText
          Left = 73
          Top = 29
          Width = 61
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            76.729166666666670000
            161.395833333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_CPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRDBText7: TQRDBText
          Left = 73
          Top = 43
          Width = 257
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            113.770833333333300000
            679.979166666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DPRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRLabel13: TQRLabel
          Left = 0
          Top = 57
          Width = 63
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            150.812500000000000000
            166.687500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Composi'#231#227'o'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText10: TQRDBText
          Left = 73
          Top = 57
          Width = 257
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666670000
            193.145833333333300000
            150.812500000000000000
            679.979166666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_COMP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRDBText8: TQRDBText
          Left = 160
          Top = 29
          Width = 171
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            423.333333333333300000
            76.729166666666670000
            452.437500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_DCOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRLabel7: TQRLabel
          Left = 0
          Top = 83
          Width = 39
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            219.604166666666700000
            103.187500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Largura'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText6: TQRDBText
          Left = 73
          Top = 83
          Width = 59
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            219.604166666666700000
            156.104166666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_LARG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRLabel12: TQRLabel
          Left = 0
          Top = 97
          Width = 30
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            256.645833333333300000
            79.375000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Metro'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText11: TQRDBText
          Left = 73
          Top = 97
          Width = 60
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            256.645833333333300000
            158.750000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_METR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
        object QRDBImage1: TQRDBImage
          Left = 144
          Top = 85
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            381.000000000000000000
            224.895833333333300000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN1'
          DataSet = rom_001
          Stretch = True
        end
        object QRDBImage2: TQRDBImage
          Left = 176
          Top = 85
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            465.666666666666700000
            224.895833333333300000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN2'
          DataSet = rom_001
          Stretch = True
        end
        object QRDBImage3: TQRDBImage
          Left = 208
          Top = 85
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            550.333333333333300000
            224.895833333333300000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN3'
          DataSet = rom_001
          Stretch = True
        end
        object QRDBImage4: TQRDBImage
          Left = 240
          Top = 85
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            635.000000000000000000
            224.895833333333300000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN4'
          DataSet = rom_001
          Stretch = True
        end
        object QRDBImage6: TQRDBImage
          Left = 208
          Top = 111
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            550.333333333333300000
            293.687500000000000000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN6'
          DataSet = rom_001
          Stretch = True
        end
        object QRDBImage5: TQRDBImage
          Left = 272
          Top = 85
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            719.666666666666700000
            224.895833333333300000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN5'
          DataSet = rom_001
          Stretch = True
        end
        object QRDBImage7: TQRDBImage
          Left = 272
          Top = 111
          Width = 25
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333330000
            719.666666666666700000
            293.687500000000000000
            66.145833333333330000)
          XLColumn = 0
          DataField = 'PRO_PRN7'
          DataSet = rom_001
          Stretch = True
        end
        object QRLabel8: TQRLabel
          Left = 0
          Top = 43
          Width = 52
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            113.770833333333300000
            137.583333333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Descri'#231#227'o'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel9: TQRLabel
          Left = 0
          Top = 111
          Width = 26
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            293.687500000000000000
            68.791666666666670000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Peso'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText12: TQRDBText
          Left = 73
          Top = 111
          Width = 60
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            293.687500000000000000
            158.750000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = rom_001
          DataField = 'PRO_PESO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Mask = '0.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FullJustify = False
          FontSize = 7
        end
      end
    end
    object dbgrom: TdxDBGrid
      Left = 45
      Top = 1
      Width = 1058
      Height = 351
      Bands = <
        item
          Alignment = taRightJustify
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14789952
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = dbgromKeyDown
      AutoSearchColor = 9395
      AutoSearchTextColor = clWhite
      DataSource = dtsrom_001
      Filter.Criteria = {00000000}
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks]
      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      ShowRowFooter = True
      object dbgromPRO_SEQU: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_SEQU'
      end
      object dbgromPRO_CPRO: TdxDBGridMaskColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_CPRO'
        SummaryFooterType = cstCount
        SummaryFooterField = 'ID'
        SummaryFooterFormat = 'Etiquetas 0'
      end
      object dbgromPRO_DCOR: TdxDBGridPickColumn
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_DCOR'
      end
      object dbgromPRO_DPRO: TdxDBGridMaskColumn
        Width = 226
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_DPRO'
      end
      object dbgromPRO_DUNI: TdxDBGridPickColumn
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_DUNI'
      end
      object dbgromPRO_METR: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_METR'
      end
      object dbgromPRO_PESO: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_PESO'
      end
      object dbgromPRO_LARG: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_LARG'
      end
      object dbgromPRO_REND: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_REND'
      end
      object dbgromPRO_GRAM: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_GRAM'
      end
      object dbgromPRO_STAT: TdxDBGridPickColumn
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_STAT'
        Items.Strings = (
          'Linha'
          'Fora de Linha'
          'Estoque')
      end
      object dbgromPRO_CDNF: TdxDBGridMaskColumn
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_CDNF'
      end
      object dbgromPRO_DORI: TdxDBGridPickColumn
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_DORI'
      end
      object dbgromPRO_OBSE: TdxDBGridBlobColumn
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRO_OBSE'
      end
    end
  end
  object consulta: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = ibTRA
    Left = 456
    Top = 8
  end
  object imageOPC: TImageList
    Height = 72
    Width = 72
    Left = 620
    Top = 9
    Bitmap = {
      494C010106000900040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000000000EFEE
      ED00E4E3E000DEDCD900C7C5C400E8E8E800F5F5F500FCFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F700E6E6E300D1D2
      C900A2A5940085887300666957004F54450041493900343C2E00343B2E003239
      2C00333B2E00484F4100606859008A918100BCBFB600FBFAF900FFFFFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000005900000056000000580000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      EE00DFDBD700D9D2CB00D7D5D100CCCACA00D9D8D800E8E9E900F6F6F600FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F400ADB1A500858B7B0076786A007275
      6400525444003A3C2F00282A20001D1F18001619120012140E0012140F001317
      1100161B13001C211A0022261F002B302800383D35005E645A008F968900D1D3
      CE00F6F6F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000580000005900000059000000590000000000000000000000000000FDFD
      FD00FAFAFA00F6F7F600FAFAFA00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFB00E3E3
      DF00CEC7C000BDB0A700DDDAD500CBC9C700CECCCC00D4D5D500DFE1E100ECED
      ED00FAFAFA00FEFEFE0000000000000000000000000000000000000000000000
      000000000000F5F6F400CCD0C700959C8F00555B4C00484E3D00484A39003F41
      31001C1D150010110B000A0B0800080906000708050004050200030402000507
      0400080B07000F120D001115100013181200151913001E241C0032382E005055
      4E00757A7400EDEEED0000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000005900000059000000590000005900000000000000000000FCFCFC00F6F6
      F500F0F0EE00E9E9E600E7E8E600E6E6E500EAEAEA00F3F3F300F9F9F900FEFE
      FE000000000000000000000000000000000000000000FDFEFD00F6F8F700DDDC
      D800BDB5AE00A3958C00B9AEA700C5C3C000C7C6C400CACBCA00CDCFCF00D5D6
      D700E9EAEA00F2F2F200F8F8F800FCFCFC000000000000000000000000000000
      0000E5E9E300A8B0A500757E6F00505A4900383F30003B403100414434003A3D
      2F003F423A003437310022241F0023241E003A39300017191600040403000708
      0500090A07000D0F0A000F120D0011140F0012161000151A1400171C1500171E
      1700252C240084878300C0C0BF00F6F6F6000000000000000000000000000000
      0000000000000000000000000000FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000058000000590000005900000059000000000000FEFEFE00F4F4F300EEEE
      EB00ECEBE700E9E9E500E2E3E000C6C3BF00BBB9B800C8C9C900D6D8D800EAEB
      EB00F4F5F500FCFCFC000000000000000000FDFDFD00F9FBF900F7F9F600E8E7
      E400C9C5BF00B9B0AB00A79B9300C7C4C100CACAC800CACCCB00C9CBCB00C9CB
      CB00D6D9D900E1E3E300EBECEC00F4F4F500FDFEFE000000000000000000FAFB
      F900A1AD9B0064725F00465240003A433300404638006064540072746700767A
      6F0093958C008E9188005F615A0055554B0069675A00373831000E0F0D000D0E
      0A000C0D09000D0E0B000D0F0C000D100C000E100C000F130D0013181200161C
      1600192018002D322B005B5B5900A5A5A500E7E7E800FAFAFA00000000000000
      0000000000000000000000000000FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      27000079150000630000005900000058000000000000F8F9F800EDECE900E8E7
      E300EAE8E400F1EFEC00EAE9E500B1AAA3009B9591009B9D9C00A2A6A600C2C5
      C500DCDEDE00F4F4F400FDFEFE0000000000FAFBF900F6F8F400F9FBF600F6F6
      F300E6E5E100DEDCD800C1BCB700D5D2CF00D2D4D100CED1D100CCCFCF00C9CC
      CC00D0D3D400D9DCDC00E4E5E500EDEEEF00FAFBFB00FEFEFE00FCFCFB00EAEC
      E700667960004B59480039423400292E2300373A30007B7C6D00B6B5AA00BDC0
      B700C3C2BA00C7C7BE0093968B007F81750076756A0043423A00282926001314
      11000D0E0A000F100C000F100D000E0F0C000C0D0A000C0F0B00171A16001E22
      1D001A20190020241C001E1E1B0038393900979A9C00DCDEE000FAFAFA00FEFE
      FD00000000000000000000000000F7F8F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      E700C5EAC400007A0E000058000000580000FDFEFD00EDEDEB00ECEBE700E5E3
      DF00E1DFDB00EAE7E400E4E3DF00B1AAA200B6B0A900A7A9A500979B99009A9D
      9C00BFC2C100E3E5E500F7F9F90000000000FBFBF900F6F7F400F8FAF500FAFA
      F600EEEFEB00D8D7D200CDCBC700CECBC600CBCAC700CDCFCE00D0D2D200D0D4
      D400D8DCDC00E0E3E300E8EAEA00EFF0F000FAFBFB00FEFEFE00F7F7F400D3D6
      CA00596A55002E372D00191D180012130F001718120053544A00C5C4BA00C6C6
      BE00B5B5AB00AFB2A80092958A00898A7F007E7E74003939350050504A002021
      1E000D0E0C000E0F0B000E0F0C000E0F0C001314110027292400363933003237
      3200171A18001B1B150021211A00191A1900323638009EA4AA00E8EAEA00F6F7
      F600FDFDFC00FEFEFE0000000000F5F7F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      3C00EAFBFF0000762400005A000000580000FBFCF900E5E3E000EBE9E500E6E4
      E000E1DEDA00E6E3E000E8E7E200CFCCC700E5E4DF00E4E3DF00D3D3CF007D7C
      76009C9C9700CACAC900EAEBEB00FBFBFB00FCFCFB00F8F8F600F8F9F500FEFE
      FA00F8F8F600DEDED900ABA7A400A6A09B00B9B5B300C9C9C800D5D7D700E0E3
      E300E8EAEA00EFF1F100F3F4F400F8F8F800FDFDFD00FEFEFE00F1F1EC00BEC0
      AF002A332C0021252000242821001B1D180011120E004D4F4900CCCEC600CDCD
      C700B6B7B100A8ACA5006E726C005B5D56007979700041443F0066665E002B2D
      29000F110F000D0E0B000D0E0A00191A16003D3E38005B5D54004D5148003136
      3100191C1A000707050010100D00191816001E21220060687000C9CED000E2E5
      E600F3F4F400FBFBFA0000000000F5F6F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0E00D5F7ED00037E1C00005A000000560000F7F8F400ECEAE700E2DDD800DED7
      D100D5CDC600D9D2CC00F4F3EE00D8D4CE00D8D2CB00EAE7E000E0DFDA006661
      5C00706B6400ABA7A100D5D5D200E0E1E100EDEDED00F4F4F200F9FAF600FAFA
      F600F3F3EF00EEEDE900DDDEDB00D1D1D100D7D8D700E0E0E000ECECEC00F7F8
      F700FAFBFB00FDFDFD00FDFDFD00FEFEFE0000000000FEFEFC00DEE1D8007E86
      74006D7264006B6D5F008A8B7B00656659002C2F2900797C7100D1D2CA00D1D2
      CD00D1D2CD00CDD1CB00979D9700676B640075756E004C4D490076766C002529
      2500131614000B0C0A0011120E004D4D4700A7A59B007E8072005E6259003237
      32001A1D1B00040604000305030008090800171A1A00454B4F00AFB4BC00CDD0
      D300E4E7E700F2F4F400FCFDFD00F4F5F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0900BDF4D80006831500005A000000560000F1F3F000F8F8F500E8E3DD00E0DA
      D500D1C9C300BBAEA600EDE8E300EDE8E200DDD9D400CECAC400BBB9B200B5B4
      AE00BDB9B300DADAD600DBDCD800C4C5C500C8CBCB00D8DBD900EBEEEA00F2F2
      EE00EFEFEB00EBECE800E3E4E100DEDFDD00D8DAD800E2E4E200F4F5F400FEFE
      FE00FEFFFF0000000000000000000000000000000000F6F6F400B8BAB300464D
      4200AAA79E008C8A7D00878476006664560068675B0058584C008E8F8100D4D5
      D000CCCEC800C4C7C000ACB1A8006A6E650040423A00474943005A5A50002F32
      2D00222421001213110023231F0047463F00726E63008A887C008D8E8100575C
      54002C312C00070A080002040200040504000C0F0E00394143009DA5AC00BCC2
      C600D8DBDC00E9EBEB00F8F9F900F2F3F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D500038414000059000000560000ECEDE900F6F6F300E8E5E000E0DC
      D700DDD8D300CDC6BF00DCD3CB00ECE9E400C8C7C5009C9791009C978F00D1D1
      CB00D7D7D100EBECE800EAEAE600CDCDCA00C1C5C400CED2D100E4E7E400EFEF
      EB00EFEFEC00EDEDEA00E7E8E400E3E4E200E8E9E800F2F2F200FBFBFB000000
      00000000000000000000000000000000000000000000DEE0DC008A8E84004246
      3C00948E7E009C998A00A09E900095938500938D80005C594C005D5C5200CACB
      C400C5C6BF00BDBFB500B8B8AE00999D930062675F0034342E00484940005355
      4C003C3D3600606158007172690054554E003B3A33005A59500067665B006163
      5700363A33000A0D0C00030604000305030008090800292F2F00919BA200B1B8
      BB00D0D5D600E4E6E700F4F5F500EAEBEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F1F1EF00F6F7F500F1F0EC00E3DF
      DB00C5BDB600B2A79D00D3CCC500C8C5C000A19E9A00948F8900A29D9700D5D5
      CF00DDDDD700EBECE800EFEFEB00CDCDCA00C0C4C200C2C7C700CDD2D000E7E9
      E600EDEEEA00ECECE800E9EAE600E5E7E600F3F4F300FCFCFC00FEFEFE000000
      00000000000000000000000000000000000000000000C9C9C400626458004346
      3B006F6A5C00827B6C00A9A79B00B7B6AB0096928200706A58006A635400ADAB
      9D00C9CBC500C4C6BF00C1C3BC00BBBEB7008A8D86003C393100636055007070
      63006A695D006E6E650067685D006D6F630054574F0046473E0046483E004042
      3A00272B26000C0F0E000508080004060500060806001F2321008D989F00ADB5
      B800CED3D400E2E6E600F2F3F300E7E8E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D500038414000059000000560000FAFAFA00FBFCFB00F5F4F100ECEB
      E700D6D0CB00BEB5AD00D8D3CE00BFBCB800AAA6A100AAA8A300B8B8B300E1E0
      DB00E3E3DE00E5E6E200EAEAE600CCCCC800C4C7C500C1C6C500C4C9C900DEE1
      E000E8EAE800ECEDEA00ECEDEC00F1F3F300FAFBFB0000000000000000000000
      00000000000000000000000000000000000000000000BCBBB60048473C004042
      39008B897F00918D8100B5B3A900C0BEB500A09E8F008D887600867D6A00A19A
      8900C4C5BC00C6C8C100C9CBC600C1C4BE008689820063605300929085008686
      79009594870052534B0034352F006D6E65008F908600525348005B5D52003D41
      3B00212522000C0F0E00070A0A0005080700060806001B1E1B00939EA200B5BD
      BE00D2D7D700E3E7E700F0F1F200E5E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000F4F4F200F3F3
      F000F2F2EF00E4E0DD00DBDAD500D0D0CD00C9CAC600CACBC600D5D7D200F0F0
      ED00ECECE900E6E7E300E5E6E300CBCCC800C7C9C800CCCFCF00D2D5D500E1E4
      E300EAEBEB00F0F2F100F4F6F600FDFDFD00FEFEFE0000000000000000000000
      000000000000000000000000000000000000FFFFFE00B5B4AF003A392E003B3C
      3500B5B6AD00B7B6AE00C1BFB800C0BDB400BAB9AF00ACA99B00988E7B00A196
      8500A4A09000B3B2A700BEBFB700AEB1AA006F736B0075736500AAA99E009494
      8700ADACA1002B2D280020221F006C6E6700ABABA20049483F0077776C005459
      52002E332E000C0F0E00070A09000508070006080600191B1900A7B0B100C4CB
      CA00D9DEDD00E3E8E700EFF1F200E4E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000F8F8F700F5F5
      F300F8F8F600F6F6F300DFE0DC00E0E3E200E1E4E300E1E1DC00E9EAE400F4F5
      F200F0F0EE00EAEBE700E5E7E400CCCECB00C6C7C600D8DADA00E7E9E900F0F2
      F100F4F5F500F8F9F900FCFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC00AFAFA900313126002F31
      2B00BDBDB400C7C7C000C6C6BE00C4C3BA00CECDC500BFBBAF00A9A19000A69C
      8F008E877600A29E9100A8A79C00909389005D60580065655A00A0A09400A5A5
      9A00B5B5AB00191C180040433D007F817700929389003A39330068665D005F61
      59003E433D000B0E0C0004060500040706000507050016181500C0C7C700D4D9
      D800DEE2E200E3E7E700EEF0F000E4E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000FEFEFE00FBFB
      FB00F9F9F700F8F9F600F0F1F100EDEFEF00F5F6F500E8E8E300EAEBE400EDED
      E900E9EBE700E4E5E200E4E6E300D6D7D500CBCCCB00E1E2E100F6F7F700FCFC
      FC00FDFDFD00FDFDFD00FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAF900AAA9A4002C2B22001E20
      1A00A5A59A00C4C4BC00C3C3B800B9BAB000C3C1B700B9B4A500BFBCB200B6B1
      A800A7A49800ACAAA000A2A295007E81750050524B0055554C008B8A7E00B5B4
      AC00AEAEA3002D312C0072756E008F9187005F605600585A520041423B005355
      4D00434841000A0D0B0002030200030403000607050012141200D4DBDA00DEE2
      E100E1E6E500E4E8E700EDEFEF00E3E5E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000067F1F000C832A000C85
      2900005800000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F6F500EDEEEA00E4E4
      E000E2E1DE00E1E2DE00E1E3E000E0E0DD00E4E4E200F2F2F100FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F500A2A29D0027261E001B1B
      1600656B5D00B0AFA400A2A39800767A6D008F8E8000AEAB9C00CCCCC400BCBA
      AF00B4B3A800ACA99F00A8A89E008C918600565B5400413F38006F6C5E008682
      75007E7D6E0042453E008688800090928A0050524B0071776C004D534A00494C
      45003D403B000C0E0D000304030004060400060706000F120F00E1E5E400E4E8
      E700E4E8E700E6EAE900EDF0EF00E2E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000560000005D0000006D0000006D
      0000006D0000006C0000006C0000006C0000006C0000006C0000006C0000006C
      0000006A0000006C000000640000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000AFDFBA00BDEAD400BFF0
      D100005600000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F5F5F300E4E4
      E100DCDCDA00D9D9D700D5D6D300C5C3C000DCDBD800F5F4F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F00098989300202119002223
      1D00474B42003F41370021231D000C0D0B0043413A00B0AB9D00D3D0C900BAB6
      AD009F9E8F00939385008D90830080877A00565E53002B2924004C4941003C38
      32002C2B27001718160047443D0088867A009EA097006B6F630078796D005C60
      5700373C36000E110F00080A08000B0D0A00060805000B0E0B00E5E9E800E8ED
      EC00E6ECEB00E9EDEC00EEF2F100E4E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005600000C7E1F00EFEECF00C7F3
      EF00C7F3EE00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1
      ED00C2F0EE00B4E7D6004CAF3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CCECE400D3FBFD00C7FC
      FA00005C000000600000005C0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00E0E2
      DF00DDE0DE00DFE1DE00DDDFDC00D8D7D400ECECEA00FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECEBE8008F8D88001C1D16002527
      20005455480046473D00272823000D0E0C00131310005A575000C8C4B900B2AD
      A300A1978700A9A598009E9E9100818376005E6054006C685E00A29E93008380
      740049474200232422003B3A3600716F66009D9C900071736600818071007376
      6B0041484000191C1900141613000F110E000709060007090700E2E6E500ECF1
      EF00EAF0EE00ECF0EF00F2F4F400E5E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005800000C802D00DDFBF000D5FF
      FE00D5FFFE00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D3FFFF00BFF4E20057B53F00005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CFEBE600D3FFFF00C7FF
      FF00005D0000005F0000005A00000059000000580000005A0000005A0000005A
      0000005A00000059000000580000005800000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00E3E5
      E200E3E5E200ECEDEB00F2F3F100F7F7F600FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E2DE0083827B001C1C16002B2C
      25005B594E006B6A5C007B7A6D00605F55001F211C0031312B0085827700B6B4
      A700988E8100ABA69A009A9587008680700086827200918B80009D958A00A6A4
      98006E6E6400272926003537330054575000777A6F0084877B00828475005B5E
      5400353935001C1F1C001A1C1900111310000809070004060400DEE4E100EEF3
      F100EDF2F000EEF2F100F3F6F500E7E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A00000C832F00D1F9F600D1FF
      FD00D1FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D5FFFD00BFF3E20064B34500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000C5EBE700D3FFFF00CFFF
      FF00005A0000005C0000005A0000005800000056000000560000005800000058
      000000580000005800000056000000560000005C0000005A0000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE00F3F4
      F200F4F5F400FAFAF900FCFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7D5D10074726B001C1D17003233
      2A00625F5400727162009190800088867800646256005655490063625800A9A9
      9F0073706600848173008E8A7B00A09C8F00B5B2A7008C867B006A655B00A09C
      9100A6A59B002A2D2A002A2D2B00383C39004B4F490062675E00595D53004345
      3E002D302C001E201D001E201D00131412000A0B080003050300DAE0DD00EFF4
      F300EEF2F100F0F4F300F4F7F700E8E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000590000005C0000005A00000067000000802C00148A4A001A8E4D00178E
      4D00178E4D001D8E4D00238F4E001A8C4100005F0000005A0000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8C7C100626057001E1E18003838
      300069665A00737163009391840097958800817D6D00706E5F00615F54007B7C
      7200878880007B7A6D00908D7F00B6B4AA00CBC9C3009B988C007B796E007C79
      7000B4B1A90030353100232725002B2F2C00363A3600464941003F423A003A3B
      34002F312C001F211E0020221F00151714000C0D0B0002040200D7DBD800F2F6
      F500F1F3F300F2F5F500F6F9F900E9EBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000580000005C0000005A0000007D1F009BDDBD00D3FCFF00D7FFFF00D3FF
      FF00D3FFFF00D9FFFF00DEFFFF00D7FBED0000600000005A0000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7B0004D4E430021221C003F3F
      3700716E610079766800928E8300A09E92008A877900807D6E00767366006F6F
      620083847B006C6B61008B887C00BCB9AE00CAC8C100AFAFA300A5A59A007978
      6F00B3B0A70042474100323631003D403A004748420049494000404038003B39
      330033342E0020221E0020231F00161815000D0E0D0002040200D4D6D400F6F8
      F800F3F5F500F4F6F600F7F9F900E9ECED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FE00004C0000005D0000005800000C7D1500B2DD9E00C2FFF000D3FDFE00D1FF
      FD00CFFCFA00CFFCFD00CFFDFF00CAF7E6000063000000510000005400000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A0003C3D3300272721004646
      3D0076736500838072008C887B009F9D9000A09D920097948900908E81008583
      750052524800494A4100726F6400AEAB9F00BFBDB500B2B1A800B2B2A8009F9F
      9500AFAEA40062675D0053574E005B5C5200636156005553490048463D003C3A
      340034352F0021231F0022242000181917000F100E0003050300CFD1CF00F9FB
      FB00F6F8F800F7F8F800F9FAFB00EAECEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D7FF
      FF00005400000058000000580000087B15009BD59E00D3F7F400CFFCF700DBFF
      FA00DBFFFA00DBFFFA00D7FDFA00CFF5E4000061000000540000005600000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999300313229002D2D25004F4C
      4200767265008E8B7F008986780094918300A9A79C00A4A2970098978900827E
      71004C4C3F0046463D00555449008D8C8000ABABA200A4A49A00A5A59B00B3B3
      A9008D9184007E8275007374680064635700666357005452490048473D003C3B
      35003536300021242000232421001A1B180011120F0004060400C8CAC800FAFD
      FC00FAFCFC00F9FBFA00FAFBFC00EBEDEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE900D5FFFF00D5FF
      FF005BB37B00006A000000590000067B150098D4A100D9F8F70098D7B00060B7
      670066B8680066B8680064B867005BB35B000058000000560000005800000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8D87002A2C230033332B005552
      48007774660098958A00928E81008E897B009593850091908200868475007773
      6300676557005453490049493F0063645900838579007A7C6C007D7D6E00A4A4
      9700676D600078786A007F7E6E006E6B5D006260550056544A004A493F003D3D
      35003536310023252100232421001C1D1A001213110006080500C1C2C000FAFA
      FA00FDFEFE00FBFDFD00FBFDFD00EDEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000095D4A400C5F7E600D3FF
      FD00DBF9F20043AB670026913F00007B15009ED6A100D3F9F6005BB47500006D
      0000006F00000070000000700000006F00000055000000580000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080817C00262821003A3B33005C5B
      51007C786B009C998E00A2A0940097948700908D7D008C89780084817100817D
      6E0076766300545346004E4D43004F4E4400504F440066655700686658007472
      64006A6C5F0086817300888676007370620063605500545248004D4D43004040
      39003638320023252100242622001D1E1B0014151200090A0800B6B6B400F6F6
      F600FEFEFE00FDFEFE00FDFDFD00F5F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000037920F007BD09600BAF1
      E400D9FFFF00D5FFFF00D7F9DD00208C4200A1D9A500C2F5F4003AA976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000074756F0028292100444339006664
      580088847700908D8200AAA89F00A7A69B009793860097948500999589009D9B
      8F006C6A5B005A584B0057574B005353480054534700656255006E6A5D00726C
      5E007B766700827D6F008C897A007C786C0064605600525146004D4B4100403F
      3700393A330024262200252723001E201D00151614000C0C0A00A7A8A400F1F1
      F000FEFFFF00FEFFFF0000000000F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005500000055000040A8
      7500C2FFFA00E2FFFA00D1FFEE00E6F5F300B4E2C600C7F9F70040AB77000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065675F002829210049493E00706E
      61008F8D81008A867A00A09D9100B0ADA200ADA99F00ACA99E00A7A59A009B98
      8C00747161006C6A5B005D5C4F0056554A005A584C0067645800747162007670
      600082806E007E7A6B008E8B7C008583760069675A00545248004B4A41003F3F
      37003C3D370026282400262824001E201D00151715000E0E0C008F8F8B00E7E7
      E600000000000000000000000000F6F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000000580000005C0000006C
      0000D3FBE800CCFFF700DBFFF200D7FCFE00DDF9EA00D1FFFD0040A976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054564C00292A23004F4D43007370
      630093908400918E810098948600A4A19600ACA89E00A8A49A009C9A8D00908C
      7D0087857600747364005F5E500059584C005C5B4F0069665800787665007471
      6000878575007A7766008B8877008D8B7C0074726400545249004A4941003F3E
      380040413B0027282400262723001F211D00161815000F100E006E706A00D9DA
      D800000000000000000000000000F4F7F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000007A
      1500067F1B000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005600000056
      0000005800000055000000560000005800000058000000580000005900000058
      000037AB6200A1F0D100D1FFEF00D3FFFF00D9FFFC00C7FBFC0046AB75000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000043453C0030312A0059574D007672
      6500928F8200A09E93009C988B009B998C00A19E92009F9B8E0097948500928F
      8000918F82007573640066645600605E52005E5C5100686558007E7D6A007672
      62008C887A007977670086837300929080008180710056554B004C4A43004141
      3A0044463F00262723002628230021231F00181A1600101210004C504A00CBCD
      CA00000000000000000000000000F3F6F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600005EB4
      7A004FA4530000690000006A0000006A0000006A0000006A0000006A0000006A
      0000006A0000006A0000006A0000006A0000006A000000690000006A00000061
      0000005A00000066000000690000006A0000006A0000006A0000006A00000069
      0000006C000092E8B700CAFDEE00D3FFFD00CCFFFC00BDF9F90043A66B000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD003738300039393200636357007B77
      6B008F8E8000ADAAA100AAA69C00A09D91009F9C8E009F9C8E00A09B8E00A2A0
      93008F8B7C007B786800706D5F0065625600605D51006865580082806D007974
      64008D8A7C007C7B6C0082807000919080008B8A7C005D5C5100504F47004748
      40004B4D45002527230026292400232521001A1B18001113100032353000C0C1
      BF00000000000000000000000000F3F6F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F000000751800BFE5
      D90084BF79003D9917003D9A17003D9A17003D9A17003D9A17003D9A17003D9A
      17003D9A17003D9A17003D9A17003D9A17003D9A17003D991700499D18000E7B
      0000006700001A951800329917003D9A17003D9A1700409918003D9A17003596
      1700067E2F00B4EDCB00D1FFF200D3FFFA00D1FFF300BFFFF90026913E000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F8002F3028003F4037006C6B5F00817F
      7200908E8100ABA79E00B4B1A800AFACA100AAA89B00ABA99C00ADA89E00ABA9
      9F008E897900898675007775650067645700646253006B695A007F7C69007B77
      67008A897A0082817200807F6F008E8E7E00929385006A685C005A584F005051
      480053554C002526220027292500262824001B1C1A001113110020221E00B8B9
      B700000000000000000000000000F4F7F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005C0000005C000000710E00EAFDFF00CCFF
      FD00CFFDFD00D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FF
      F900D9FFF900D9FFF900D9FFF900D9FFF900D9FFFA00D9FCFD00E6FFFF0066B0
      880000743000D3FDFF00D7FFFC00D9FFFA00D7FDF900DDFBFF00CFFFFC00DBFF
      F900F5FFFF00E0FFFC00D7FFFD00DDFFFC00EFFDF900CFFFFF00005600000059
      0000005C00000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F100292A220044433A00727165008787
      78009A968B009E9A8E00AFADA100B8B6AB00B8B6AB00B7B4A900B2ADA200A49F
      95009A968700939080007A7768006B6A5A0069685800716F5D007A7765007F7B
      6C00868374008B8A7B0081827200898C7D0096998B007A796A0069655C005B5A
      5200595B520023232000282825002A2C28001C1D1B001113110015171400B3B4
      B200FFFFFE000000000000000000F5F8F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005A000000590000006700006CBA6100C5FB
      F400CAFFF100CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFF
      F700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFFA00DBFFFF005EB1
      880000763000C7FDFF00CAFFFC00CFFFF700D3FFFA00D5FFFA00CFFFF900D1FD
      F900CAFCEF00D5FDFE00D3FFFF00D1FDFF00BFF3F0006CC46B0000590000005A
      000000590000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E8E6002C2D25004D4E420077766A008D8A
      7E00A9A69D009F9C9000A19D9100A9A69B00AEABA000AAA69C00A39F9200A099
      8B00A5A195008E8B7A007E7B6A00767564006E6C5D00747462007A7766008682
      720083807000918F8100828174007F7F73008A8A7F0084827300767567006969
      600060635A0021232000282A26002C2E2A001C1E1B00111311000E100E00ADAD
      AC00FCFCFB000000000000000000F5F7F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBDBD600313129005A5A4E00838274009894
      8800B6B2AA00ABA99F00A4A09400A39F9000A6A19200A6A19400A7A29600ACA7
      9C00A19C8D008F8A79008A8675007C7969006E6C5B00767462007E7B69008E8A
      7900827D6E009592840084837400777465007B766700868477007B7A6F007170
      650063635A00232420002A2B27002F312D001D201C00111311000A0B0900A4A5
      A200F8F8F7000000000000000000F5F8FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CAC8C20035352D006061570087867A009A98
      8C00ACA79F00BCB8B000B1ADA500A9A49A00A9A59900ABA99D00B5B2A700B8B3
      AB009C9889009D998C00908C7E007D79690073705F007C7966007B7A67009492
      820085817000999788008B8A7C0074736300727061007E7A6C00787669006A69
      60005C5C5300232521002A2B270032332F00222320001415130006080600999A
      9800F2F2F1000000000000000000F6F8FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005A0000005A0000005900000E8B
      0E00007901000055000000550000005500000055000000550000005500000055
      0000005500000055000000550000005500000055000000550000005500000058
      000000590000005100000054000000550000006F0000BDF5E400D1FFF600D1FF
      F400CFFDF700D1FFF700D1FFFE00B4EBDB0069B87B0000610000007A0E001A86
      2100006A0000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B1B1A9003939310068675D008C897F009C9A
      8F009A968A00B3AEA600BCB9B000BCB9AF00BAB6AE00BCB7AE00B9B6AB00AFAA
      9E00A7A39500A39F90008F8B7A00827F6D007B796800858270007A7766009694
      83008985720098968700908E7F00777465006E6B5D00716E61006E6C5F006463
      5A0055554D0024262200292B270032332F002525220016171400040604008A8B
      8800E8E8E7000000000000000000F6F8FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005500000060
      0000005D00000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00D5FFFF007ECEA400005C00000059000060B76900A6DB
      9D002F972900005F000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999990003D3D34006D6B5F008C887D009A96
      8B009A948700A5A19500B1AFA400BAB6AC00BAB5AD00B5B0A800AFAA9F00AAA4
      9800AEAB9F009F9B8D0093907F008B8876007E7C6900868372007F7D6A009391
      80008F8C7A0095938300959384007D7B6C006C6A5B006A695B00636356005A5A
      50004E4E4600252723002A2C280033352F002728240017181500030403007375
      7100D9DBD9000000000000000000F5F8F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600000056
      0000005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00DBFFF40095C59A00005500000056000081D28C00C2FD
      FD00ACF3DC00006B000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE0084837A0041413700706E62008C887D00928E
      8200A7A29700A29E9100A8A59900AFABA000B1ABA100AEA89F00ACA69B00B2AC
      A100AAA89B00A09C8E009C998A008F8C7B00807D6B0084816F00888573008F8D
      7C0098958400918F7E009896870088867700706E5F00696859005E5D52005352
      49004A4941002A2C27002D2E290033352F002A2B2600181A1700030302005559
      5400C6C9C6000000000000000000F6F7F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000560000005C
      0000005F0000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E600CCFFFA00CFFF
      FC00D1FFFE00D3FFFE00CAFCFF000066000000520000004F0000C2F1EE00D1FB
      FF00CAE9E900005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAF9007171690047473D0077756900908C81008D8B
      7D00B6B2A900AEA99F00ABA69C00ABA69C00B0ABA000B3ADA300B4B0A500B9B4
      A900A9A59700A7A49600A09D8F00908C7C0086817000858270008E8C7C008D8B
      79009D9C8A008C8A7A0096948400939081007B796A00686658005C5A50005150
      460048473F0032332E0030312D00333430002B2D29001A1B180003030200383C
      3700B3B6B3000000000000000000F6F7F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000005A
      0000005C00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005600000056000000710000C7F8ED00CFFFFF00D1FF
      FF00CCFCFF00D5FFFD00CCFCFF0060C69B0064C5A10064C69B00C7FDFF008CDD
      CD001A9147000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F10061625B0053524700807F7300939085009391
      8400B6B1A800BBB6AE00B6B1A900B3AEA600B9B5AC00BBB6AD00B9B5AB00B4B0
      A400B0AA9E00AEA99D009F9B8D00938F7E008B87760088857400929080008D8A
      79009E9D8C008A887800928F7F009895860087857600666457005A584E005150
      47004A4941003A3B350034353100333531002C2E2A001C1D1A00030403002225
      2100A4A6A4000000000000000000F8F8FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000058000000560000006E0000B7E9CE008FD9A80095D9
      9D00BFFBFF00CFFFFD00D5FFFF00C7FFFC00C7FFFF00CAFFFC00B7F0DD0057BD
      7B00005F00000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E500575751005E5D520086847700939085009F9A
      8F00A49F9300B3AFA500B9B5AC00BAB7AF00BCBAAF00B7B4A900B3AEA300AFA9
      9D00B6B1A600ABA79900A29D8E00999585008D8A790088857400959282008A87
      76009C9B8A008E8A79008E8B7A00969385008F8C7E0069675A005B594E00504F
      47004D4C460041423C0035373200333531002C2E2A001E201D00040604001518
      14009B9D9B000000000000000000F9F9FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005C0000005C0000006D00001A8B2900B2DFB4005EBA610060B1
      4700CAF8F300D3FFFF00E0FFFF00D5FFFF00D7FFFF00D1FFFE009BD5A200238E
      2700005800000058000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCDAD70051504B0063635700838074008F8B7F00A5A1
      980099948800A09B8E00A9A39800AEA99E00AEAA9F00AEA89E00B0ABA100B5B0
      A600B0ABA000A7A49500A7A495009B998A008C8B7A0084827000979484008B88
      770098978500908C7A0088857400928E7F0094918300757165005E5B51005251
      490055564D004648420030322D0032342F002E302B0021221F00060806000C0F
      0C0095969500FDFDFD0000000000F9FAFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005F00005EA96100DBFBE800D9FFFE00D3FFFE00ACE2
      CD00EAE7C400E4F9F200E2FCFF00E2FBFF00E0F9FF00D5FBFC006CA874000054
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCAC4004C4C4500646257007F7B6E008D897B00A19E
      94009C968D009F9A8E00A59F9300AAA59900ADA89D00B2ACA400BCB7AE00C0BB
      B200AAA49500ADA99C00AAA699009C998900928F7E0088857400959482009190
      810094938200908F7E0082806D0086847200908E81008380720066665B005D5D
      550062625900494943002E2F2B0031322E0030312C002224210008090800080A
      08008C8D8B00F8F8F80000000000F9FAFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005800000055000037A57200CCFFFF00D3FFFE00D3FFFE00BFFB
      F700006F000000700400006E0600006F060000710600006B0600006100000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7B5AE004647400064625600817E7100918D80009390
      8400B6B1AA00AEA9A100ACA89F00AEAAA000B9B4AB00C0BDB300C1BDB500B7B0
      A700B2ADA000B4AFA500A5A193009D99890097948500938E7F008D8979009997
      87008C8B7A009896870087847200807C6A00868375008B8A7E007B7A6F007171
      67006E6C65003E413B002A2A260030312D0030312D00242522000A0B0A000607
      050083848200F2F2F00000000000F9FAFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005A00003DA97200CAFFFF00D3FFFE00D3FFFE00C7FF
      FF00006000000059000000550000005600000059000000560000005600000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009B9B90003E4037006964580084807300979387008F8B
      7D00B4AFA700BBB6AF00BDBAB000BFBCB300BCB9AF00B8B5A900B6B2A600B4AD
      A200B6B3A700ADAA9D00A6A29400A29F91009795850094938300878472009A99
      89008B8A79009B9A8A008E8C7C007A78670079766700848377007F7D72007677
      6B006B6B62003B3C3600242521002E2F2B0032332F00252723000C0E0C000406
      040077797500E7E8E60000000000F9FAFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A0000117F1F00CFEDCE00CAF0
      E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0
      E000C7F0DE00B7E7C9005BAB3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005C00004CA96700DBFFEF00D9FFFE00D3FDFD00C7F5
      E60000610000005A000000580000005800000059000000590000005800000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E740037372F00716E6100888378009B968C009893
      8700A29C9200AEAA9F00B4B2A700B8B4AB00B4B0A500B1ADA100B4AFA400BCB7
      AD00B2AFA200AAA79900AAA79A00A5A3940098968600919182008A8879009796
      8600928F800098968700939284007E7B6D00726F600075756900727367006E6F
      630062625A003738320022231F002C2D290036383300272824000D100D000305
      0400696B6700DADAD80000000000F4F5F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000580000007100007EBF6B0078C0
      800075C0800072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF
      7F006FC07E006FB972001D8B0900005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000298E3600ACD6A100CFEEE300B4E2C6008ACA
      8A00005D0000005A0000005A0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFD0069675D0035342B00777468008884780097948800A4A1
      960099948700A3A09400AAA79C00AEAA9F00B1ADA200B5B0A600BCB8AE00C0BB
      B100AFACA000B0ADA000ABA89B00A3A192009A988800929082008C8A7B009491
      8300989586008F8D7F0094938500858375006F6C5E006B695D0064665B006263
      59005A5B52003636310021221E002B2C28003B3D3700282A26000E110F000405
      0400595B5700CACCC80000000000EFF0F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000056000000560000005C0000005D
      0000005D0000005C0000005C0000005C0000005C0000005C0000005C0000005C
      0000005900000055000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000054000000560000006D000081CA860043A01C00006E
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F80059564E0036342B007A786A00868275008F8C7F00ABA9
      A000A29D9200A7A39800AAA69B00ADA99D00B7B3A900BDB8AF00BEBBB100BAB5
      A900B4B1A500B3B0A500A9A69900A19F90009A988800939183008E8C7D008F8C
      7E009B97890087847600918F81008D8B7D0073716400656258005C5C54005A59
      520055564D003939330022231F002B2D29003F413B00282A26000F110F000405
      040044474300B5B8B40000000000EFF0F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000600000005F0000005C00000058
      0000005800000059000000590000005900000059000000590000005900000059
      000000590000005A000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000058000000590000005C00000068000000630000005D
      0000005D00000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F1F1F0004C4A430039362D007D7A6C00878376008B867A00A6A3
      9A00B2AEA700B4B0A700B5B1A800B6B2A800BDB9B000BDB9AF00B8B3A800B6B1
      A500BAB6AB00AFABA000A8A69900A3A1920099978700908E7F00949283008986
      770099968600838070008A877800908F8100807D71005F5E5400595850005756
      4E0053524B003D3D3700252723002E302C0041433E00292B2600111311000405
      04002F322F00A1A4A10000000000F4F4F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C0000005C0000005A00000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000590000005900000059000000590000005900000059
      0000005A00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFDFD00E7E6E40044433C003E3D31007F7B6C008F8B7E00908C7F009491
      8600B5B3AB00BBB8B000BFBCB500C1BDB600BAB5AC00B6B0A700B7B2A700BCB8
      AE00B4B0A500A9A69900ACA99D00A3A1940098958600858374009A9789008683
      7100918E8000827F70007E7B6C0089867A0089867C005E5E540059584E005755
      4D0051514B0040413B002E2F2A003536310040413D002B2C2800131613000505
      0500212421009395930000000000FAF9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC00DBDAD70042413A00444236007E796C00938F82009C988C008E8A
      7E00A19E9200A9A69D00B2AFA700B5B2A900B3AFA400BAB5AC00C1BEB300C0BD
      B200ABA69900AFABA000ADACA000A19E910099968800807F6E00999889008582
      73008884760083807200747164007B786C0089857B006D6C6200615F55005A58
      500054544E00484943003B3C36003B3B36003E3E3A002D2E2A00161815000606
      0600151715008688860000000000FAFAFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00C9C7C3003F3E360049453A007B7668008E8A7E00A4A397009896
      8A009D998B00A29F9300AAA59A00B1AA9F00BDB9AE00C2C0B800BEBAB100B4AF
      A300B3AFA200B3AFA500A5A194009D998B009A96890087847700878679008C8B
      7F007D7B6B008D8B7D00777568006E6C600077766A0087877D0075746800605E
      56005A58520056565100454641003C3F39003A3C380030322D00181917000607
      06000D0F0D007E807F0000000000F9FBFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900B0AFA7003F3D35004C493D007D796A0086817400A09E9100AFAD
      A300A19F9300A6A29700AEA99E00B9B4AB00C0BDB300B7B4AB00B2AEA200B3AD
      A200B4B1A500A7A39700A19E9000A19E900096948500939083007B7A6B008F8F
      80007E7E6D008F8E800083817400706C60006E6B610089898100828279007473
      68006B6B610062625C004A4C4500383B3500393B350033342E001A1C1900080A
      0800090B09007879770000000000F3F7F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700928F8300403E3300524F420085827300868274008E8A7C00A9A7
      9D00B6B4AA00B9B6AC00BEBBB300C2BEB700BCB8AE00B9B5AA00BBB7AC00C2BD
      B500B4B0A500AEAB9E00AEABA000A9A69A009C9A8C0096948700848273009492
      8400939182009593850095928600817D7200747065007B796F007B7B72007B7C
      720076776D0062635B00474A43003535310039393300383933001D1F1C000B0C
      0B000608070070716F0000000000F4F6F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F5F50076726500413F33005F5B4C008D8A7D00918E8100898577009C99
      8E00C2BFB600C2BFB700BAB7B000AFACA3009A9689008F8A7D00888378008582
      7700626056005E5C53005A58500053514A004B4A420045443D00414038004746
      3E004B4A43004E4D460057574F0055554E00525149005E5E5500696960007475
      6B007A7970006061590041423D002F2F2B003C3C35003F3F390021221E000E10
      0E00050705006769660000000000F7F8F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F20065605400403C31006964560097938700A09D93008A887A00807E
      7000848175007B776D00746F65006F6A5D005A544900504B3F004A433900423E
      340026241C00211F19001C1B15001716110014120F000F0E0B000F0E0B000E0E
      0C0010100F0013131100181816001B1B19001C1C1A00242421002C2C28003535
      31003F3E3A003C3E39002E2F2B00292A26003F3F39004A4A4500252621001213
      1100050706005E605E0000000000F9F9FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEED0059544900423E3300676356007873680075716700605D51004C48
      3D003C372C0038322800403A2E004C4537004A453A004A463B004F493E004E4B
      3F0048463C0046443B0043423A00413F38003D3B340035332C0035342D003331
      2D0031302C0029292500232320001C1C1A00151413000A0A0900060706000606
      0600090909001213120012131200161714002829260037393500262823001618
      1500060807005455530000000000F7F8F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E7E6004B483D003C392D0049463C0038342A002F2A21002D281F00312C
      240048433A0058534B006C675E007D796F008E8B8200949187009C9A9000A2A0
      9500A5A39900A5A39900A3A29800A09E940099978C008E8D8100939186009390
      8700939087008A89800081807900777671006C6B68005C5B5800525150004A49
      480041403E00242423001212120008090800090B09000F110F00191B18001416
      1300070907004849470000000000F2F4F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFCECB0037342B00232019001D1A13002B2923003E3B340054504A006F6C
      6400A3A09800B9B7B100C8C7C100D2D0CB00E0DEDA00E3E2DC00E4E3DE00E5E3
      DE00E1DFD900DDDBD600D9D8D100D4D3CB00CDCCC400C7C5BB00CFCBC400D3D0
      C900D9D6CF00DFDDD700E1DFD900E2E0DC00E3E1DE00E4E2DE00DFDDD900D7D5
      D100C8C6C100888783005B5A58003B3B38003635340027262500090A0900090B
      090005060500373A370000000000EFF1F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0700B2F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD0075736C00181711001A1813002E2B260081807900ACACA400C9C8C200D8D8
      D200DDDCD700DDDBD700DEDCD700DEDCD800DFDDD800DEDDD800DFDCD800DDDA
      D500D8D6CF00D4D2CD00D0CFC800CBCAC200C6C4BB00C1BDB600C7C3BC00CCC8
      C100D0CDC600D5D2CD00D6D5CF00D8D7D300DAD8D500E0DEDA00E1DFDB00E3E1
      DD00E5E3DF00EAE7E500D8D5D200C3BFB900D4D1CE00B4B2AE0035353400191B
      19000A0B0A001C211F00F2F4F400F0F1F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0A00D9E5E3000C80180000590000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEEF
      EE00161614001D1E1C003F413A007C7C7300BBBAB400C3C2BC00C9C8C200CFCE
      C700D3D2CB00D6D4CD00D9D8D200DBDAD400DEDCD700DFDDD800DEDCD800DBD9
      D400D6D5CF00D3D2CA00CFCEC700CBC9C200C6C4BC00C4C1BA00C9C6BE00CECB
      C300D1CFC700D6D4CF00D8D5D200D9D7D300DAD8D500DFDDDA00E0DEDB00DFDD
      DA00DFDDDA00E0DEDA00CFCCC900BAB7B200DCD9D600E5E4E100D6D5D100A6A5
      A100545653001A1E1C00949D9B00EDEFF0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      1100F7F0FA0006771F0000580000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADB
      DA00191A19000F100F004B4C420080807500B1B0A900BCBCB600C6C6C000CECE
      C800D2D1C900D6D4CF00D8D7D200DAD8D300DCDAD600DCDBD700DCDBD700D9D8
      D400D4D3CD00D2D1CA00CDCDC500C9C8C000C6C3BA00C5C2BA00C9C7C000CECC
      C400D1CFC800D7D4D000D9D6D300DAD8D600DCD9D700E0DEDA00E0DEDC00E0DE
      DA00E0DEDA00E0DDDA00D1CDC900BCB7B100D8D5D200E0DEDC00D0CFCB00C9C7
      C300A4A29C005F5F5A005C616000DEDFE0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      7200F9FDF2000E751C0000580000005500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E100131412000F100E0064685C008F908500B4B3AC00BEBEB700C8C8C200CDCE
      C800D2D1CB00D4D3CD00D8D7D100DAD9D300DCDBD700DDDBD800DCDAD600DAD8
      D300D3D2CB00CFCEC800CBCAC300C7C6BE00C5C1B800C4C2B800C9C6BE00CDCA
      C300D0CDC700D6D4CE00D8D6D100D9D7D400DBD9D500DFDCD800E0DDDA00E0DD
      DA00E0DEDA00E0DEDB00D3D0CC00C0BAB500D8D5D000E1DFDD00D1CFCB00CBC9
      C500B1B0AB006F6D690070716D00D9D9DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      D000B7DEA6001477060000580000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F3002E2F29000B0C0900484A420093948C00C0BFB900C4C3BD00C9C9C300D0CE
      C900D4D2CC00D6D5CE00D9D8D200DAD9D400DDDBD600DEDCD800DCDBD600D9D8
      D300D2D0C900CDCCC600C9C8C200C6C4BD00C3C1B800C5C2B700C9C7BE00CDCA
      C200CFCDC600D6D3CE00D7D5D100D9D7D300DBD9D500DFDCD900E1DEDB00E1DE
      DB00E1DFDB00E1DFDD00D6D3D000C4BFB900D9D5D100E4E2DF00DBD8D500D3D2
      CF009E9E9A0053524E00A3A19C00E7E7E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000005C0000005A000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00999A96003435300021221E004748440098999400BDBDB700D1D0CA00DAD7
      D300DBD9D400DBD9D400DBDAD400DBDAD400DDDBD600DEDCD800DDDBD600DAD8
      D300D1CFCA00CDCDC700CAC9C300C7C6BF00C5C4BC00C8C5BD00CBC9C200CFCD
      C600D1CFC900D7D5D000D8D6D200DAD8D500DDDBD700E1DEDB00E4E1DE00E3E1
      DE00E4E2DF00E6E3E100DEDBD800D0CCC700E1DDDA00EDEBE900BBBDBB00898A
      870051524E0043423E00DDDBD800F2F3F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000005C0000005A000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00A1A29E006A6B68003233300041434000666864007F807C009495
      9200C8C8C400D6D5D100DDDCD700E0DFDA00E3E1DD00E3E1DD00E2DFDB00DEDC
      D700D4D2CD00CFCEC900CAC9C400C8C7C200C8C7C100CDCBC600D1CFCA00D4D1
      CD00D6D4D000DBD9D500DDDBD700DFDDDA00E2E0DD00E7E5E300EAE8E500EBE9
      E700EBE9E800E9E7E500D7D7D500B4B5B3009E9E9E00949594005D5F5E003B3D
      38004D4E49008A898500FCFBFB00F8F9FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000005A00000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E6E500979895004849470030312E001E201C00282B
      2800717371008889860096969300A0A09D00B1B1AE00BCBBB800C7C6C300CDCD
      C900CACAC600C6C6C100C0C0BC00BDBDB900BCBDB900C5C5C200CACAC600CECC
      C900D0CFCD00D6D5D100D8D6D300D9D7D400DBDAD600D7D6D300D0CDCA00C2C0
      BD00B4B3B1009F9F9E00888989005C60600031353600202321004D4C4A006D6D
      6900B2B1AD00ECECEA0000000000FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000005900000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDA00A2A29C0060625D004344
      41002F302E00252723001D1E1B001D1E1B00363836004C4F4E006A6C6A007D7F
      7E00898C8A008A8D89008788860082838100808381008B8D8B0092928F009898
      93009C9D9800AAAAA400ADACA600ABA9A400AAA8A200918F880077736C005452
      4D0037363100282724002E2D2B003636340041413F0056555200DADAD700F8F8
      F700000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000006000000060000000600000006000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D7D7D400AAAAA30074736D004B4B46002929280024252200212120001F1F
      1D001A1A1900181816001818150017171400171613001E1B180024211B002E2A
      24003A362D0058554800615D5000615B50005E594E00464139003D3A34003C39
      350046433D008D8A8200BEBCB700E4E3E100FAF9F70000000000000000000000
      0000000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      7700E27A7700E27A7700E27A7700E27A76000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00F6F6F300E9E8
      E500BCBAB200A4A197008F8D81007D7A6E00716C61006B6559006E665B007874
      6700848177009A999000A8A8A100BCBCB800D1D0CE00EDEDED00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FDFDFD00FBFBFB00FBFBFB00F8F8
      F800F8F8F800F9F9F900F4F4F400F3F3F300F2F2F200F0F0F000EFEFEF00EEEE
      EE00EDEDED00ECECEC00EBEBEB00E7E7E700E6E6E600E6E6E600E4E4E400E3E3
      E300E0E0E000DFDFDF00DFDFDF00DDDDDD00DCDCDC00DBDBDB00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DEDEDE00DDDDDD00DDDDDD00DEDEDE00E1E1E100E4E4
      E400E6E6E600E5E5E500E6E6E600E9E9E900ECECEC00EFEFEF00F1F1F100EFEF
      EF00F0F0F000F2F2F200F4F4F400F5F5F500F4F4F400F0F0F000F7F7F700FAFA
      FA00F2F2F200FCFCFC00FDFDFD00FDFDFD000000000000000000000000000000
      0000FEFEFE00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFDFC00EAF3EF00D6E8E200D6E8E200EFF6
      F300FCFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFAF900F0EAE800E4DA
      D800E4DAD800F2ECEB00FDFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F700DEDFEB00D6D7E800D8D9E800E2E3EE00FCFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FCFCFC00FAFAFA00FAFAFA00FAFA
      FA00F8F8F800F2F2F200E0E0E000E3E3E300E6E6E600D7D7D700D6D6D600D5D5
      D500D4D4D400D3D3D300D1D1D100C8C8C800C8C8C800C7C7C700C5C5C500C5C5
      C500BFBFBF00BDBDBD00BCBCBC00BBBBBB00BABABA00B9B9B900BCBCBC00BBBB
      BB00BBBBBB00BABABA00B9B9B900BABABA00BCBCBC00BDBDBD00BFBFBF00C1C1
      C100C3C3C300C5C5C500C6C6C600C9C9C900CCCCCC00CECECE00D0D0D000D6D6
      D600D7D7D700D8D8D800DBDBDB00DCDCDC00DDDDDD00DFDFDF00E5E5E500F8F8
      F800EFEFEF00FAFAFA00F8F8F800F9F9F900FBFBFB00FCFCFC00FEFEFE000000
      0000FDFDFD00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F1F400E2E2E800DEDEE500DEDEE500DEDEE500DEDEE500DEDE
      E500DEDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDE
      E500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDE
      E500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDEE500DDDE
      E500DDDEE500DDDEE500DDDEE500DEDEE500DEDEE500DEDEE500DEDEE500DEDE
      E500DEDEE500DEDEE500DEDEE500DEDEE500DEDEE400DEDEE400DEDEE400DEDE
      E400E6E6EA00F8F8FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6FAF800CCE2D90085BAA400539979004C8F6D00438A6700438A67004E90
      6E0060A386009AC8B800DDEEE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0EAE900CBB4AE00A37B73008B5B5400824E4B007C48
      44007C484400824F4C008D5D5600AC888000D4C2BD00F3EEEC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F2F700C2C4E2008285BF005D5FA7004F4F
      9E0047479D0043449C0044449C0048499E0053539B006466AC008C8EC300CBCC
      E400F6F6FA000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00FCFCFC00FAFAFA00F9F9F900FBFB
      FB00EDEDED00D1D1D100A1A1A100A0A0A000A6A6A600A6A6A600A6A6A600A4A4
      A400A3A3A300A2A2A200A3A3A300A7A7A700A6A6A600A5A5A500A4A4A400A3A3
      A300A4A4A400A4A4A400A4A4A400A2A2A200A1A1A100A0A0A000A1A1A1009F9F
      9F009E9E9E009D9D9D009B9B9B009A9A9A009898980098989800989898009797
      9700979797009696960095959500959595009595950096969600969696009494
      9400959595009696960098989800999999009B9B9B009B9B9B009E9E9E00DDDD
      DD00E7E7E700ECECEC00EFEFEF00F2F2F200F4F4F400F7F7F700FAFAFA00FBFB
      FB00FCFCFC00FDFDFD00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F500B2B5
      CA008589B0006A6FA8005E64AB005B62B1005B62B1005B62B1005B62B1005B63
      B1005B63B1005B63B1005B63B1005B63B1005B63B2005B63B3005B63B3005B63
      B3005B63B3005B63B3005B63B3005B63B3005B63B3005B63B3005B63B3005B63
      B3005B63B3005B63B3005B63B3005B63B4005B63B5005B63B5005B63B5005B63
      B5005B63B5005B63B5005B63B5005B63B5005B63B5005B63B5005B63B5005B63
      B4005B63B3005B63B3005B63B3005B63B5005B63B4005B63B4005B63B4005B63
      B1006067AB007378A9009397B500D1D2DE00FAFAFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDEE
      E80094C1AF004F967500207B5000006C3900006C380000713D00006E3900006B
      3700086F40002E835C0061A38600A4CCBD00EFF6F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCF9F900CAADA800A3726D0095463B0093271400991A02009F1B02009F1B
      02009F1C02009A1801008E160200892B1D008D4D4500A77D7700D5BFBA00FCFA
      FA00000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7FC00B8BAE1007070B800484AB1001E20A8000607A3000000
      A5000000AA000000AA000000AA000000A70000009C000A0B9D0025269F004E4F
      A7008182BE00BFC1E100FAFAFC00000000000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00FBFBFB00FAFAFA00F9F9F900FBFB
      FB00F1F1F100DEDEDE00ABABAB00A7A7A700A5A5A500ACACAC00ACACAC00AAAA
      AA00AAAAAA00A8A8A800A8A8A800AAAAAA00A9A9A900A8A8A800A7A7A700A6A6
      A600A7A7A700A7A7A700A7A7A700A5A5A500A4A4A400A3A3A300A1A1A1009F9F
      9F009D9D9D009B9B9B009898980097989800989A9A0097989800959595009292
      9200908F910093929300939293008F9090008B8E8D00888C8B00878B89008B8D
      8B008E8D8C008F8E8E009290920092919400918F9100979696009C9B9B00DBDA
      DA00DFDFDF00E8E8E800EAEAEA00EBEBEB00EEEEEE00F2F2F200F6F5F500F8F7
      F700FCFCFC00FCFCFC00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F3F3F600BEC0D300868AB400424B
      9F0014209200041398000315A9000419B500051CB900051CB900051CBA00051E
      BA00051EBA00051EBB00051FBB00051FBB00051FBC00051FBE00051FBE000520
      BE000520BF000520BF000520BF000520BF000520BF000520BF000520BF000520
      BF000520BF000520BF000520BF000520C0000520C0000520C0000520C0000520
      C0000520BF000520BF00051FBF000520BF000520BF000520BE00051FBE00051F
      BD00051FBC00051FBC00051DBC00051DBD00051DBD00051DBC00041BBA000318
      B4000214A50008159500232F97006167A8009598B800D7D8E300F7F8FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFEFEA0085B7
      A10028825900006E3B0000743F00007A4300007C450000824A00007E4600007E
      46000079420000703C00076F3F003388630093C0AD00F0F7F400000000000000
      0000000000000000000000000000000000000000000000000000FEFDFD00F5F0
      EF00C09B950097443700941F0C00A91C0200C1210200D4280200DD2C0400DC2C
      0400DD2D0400D8290200CB240200B41F0200961601008320130096584F00D0B2
      AD00FCFBFB000000000000000000000000000000000000000000000000000000
      0000E9EAF6009193D2004749B5000808A1000000AF000000C1000000CD000000
      D3000000D5000000D5000000D4000000D1000000CC000000C2000000B1000000
      9E0016179B005355B300AAADDB00FAFAFD000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD00FCFC
      FC00F9F9F900E5E5E500ABABAB00A8A8A800A4A4A400B2B2B200A5A5A500A5A5
      A500A8A8A800A6A6A600A7A7A700ABABAB00ABABAB00ABABAB00ABABAB00ABAB
      AB00A6A6A600A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300A2A09F00A1A0
      A000A0A0A0009EA0A0009EA0A0009B9F9F00969A9B00969A9B0097999B009698
      9A0097979B009D949A00978E94008F939300859591007D8F880086958B008E92
      8E0094908E009D94970098919800918D9800948F9600A0979900A8A2A300E7E4
      E400ECECEC00E6E7E700ECEFEF00EFF1F100F3F3F300F6F3F400FAF5F600FAF6
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFD00E1E3F1009DA1CA004A519D000A168B000316
      B3000317C300041BCB000625DA000931EA000A36F0000A36F0000B36F2000B39
      F2000B39F2000B3AF2000B3CF3000B3CF3000B3CF4000B3CF4000B3DF4000B3E
      F4000B3EF6000B3EF6000B3EF6000C3FF6000C3FF6000C3FF6000C3FF6000C3F
      F6000C3FF6000C3FF6000C3FF6000C3EF6000C3EF6000C3EF6000C3EF6000C3E
      F6000C3EF4000B3EF4000B3CF4000B3CF4000B3CF4000B3CF3000B3BF3000B39
      F2000B38F2000A38F2000A36F1000A36EF000A35EF000A34EE00082BE4000622
      D8000521D5000521D500041AC80004129D00141D83006E74B400C8CCE400F5F6
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F6F40089BAA600257F
      530000713C00007F470000884E0000864C0000834B0000834B0000834B000087
      4D00008A500000854D00007A4300006D3A00217C5200A0C9B900FBFCFC000000
      00000000000000000000000000000000000000000000FEFEFE00F7F2F100C9A7
      A00084241500A51B0200CE280300DE2E0400DD2D0400DB2C0300DA2A0300DA2A
      0300DA2A0300DB2B0300DE2D0400E2300500D82A0300B11D0100871909008F45
      3A00D7BDB800000000000000000000000000000000000000000000000000F1F1
      FA00AAACE0001115A5000000AD000000C7000000D2000000D9000000DB000000
      DB000000DB000000DB000000D9000000D9000000D9000000D7000000D1000000
      C7000000B5000708A200363AAD00B1B5E2000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FDFDFD00FEFE
      FE00F9F9F900F8F8F800A8A8A800ABABAB007D7D7D0080808000999999009999
      99009A9A9A009898980097979700979797009797970097979700979797009797
      9700979797009797970097979700979797009797970097979700959493009494
      9400949494009294940091949400909493008F9292008E9192008F9092008F8F
      9200908F9200948A9000938D92008A9493007F9992005B7A6E00587366008E9B
      92008B8C89009D969900948B93004E495400ABA5AD00A79D9F00C6BFC000F3EE
      EF00F8F8F800F2F3F300F4F9F800F6FAF900FBFBFB00FEFBFC00FFFCFD00FFFD
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00E2E3F3008A90CF000E1A94000212A700051FCF000724
      D700061CB6000517A8000726C9000B3DF5000C44FE000C46FE000E46FF000E49
      FF000E49FF000E4AFF000E4CFF000E4CFF000E4CFF000E4CFF000E4DFF000E4D
      FF000E4DFF000E4DFF000E4DFF000E4FFF000E50FF000E50FF000E50FF000E50
      FF000E50FF000E50FF000E50FF000E4EFF000E4DFF000E4DFF000E4DFF000E4D
      FF000E4DFF000E4CFF000E4CFF000E4CFF000E4CFF000E4AFF000E49FF000E48
      FF000E46FF000C46FF000C44FE000C44FD000C42FD000B3CF5000728CB000519
      AB000722C0000A34EA00092CE600061FD4000214B600000D9D00646CB800CBCF
      E300FAFAFB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F2F2F200EFEFEF00F1F1
      F100FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABD0C200247A50000077
      400000874D0000894F0000854B00008248000082480000824800008248000082
      480000854B00008B5100008D530000814900026D3A00217E5500D9EAE300FBFC
      FC000000000000000000000000000000000000000000FBF8F800E2CBC7008B30
      1F00A81C0400D82D0400E1300400DD2E0300DD2E0300DD2D0300DD2C0300DD2C
      0300DD2C0300DD2C0300DD2C0300DF2E0400E3310500E02F0400BC2102008315
      07008E433500F5ECEB00FEFDFD0000000000000000000000000000000000CDCE
      EE005054C6000000B2000000D0000000D8000000DC000000DC000000DC000000
      DC000000DC000000DC000000DC000000DC000000DC000000DC000000DA000000
      D6000000D0000000BF000909A300252CB0000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00FCFCFC00FCFCFC00FAFA
      FA00EEEEEE00F5F5F500B1B1B100B0B0B0008B8B8B0092929200DFDFDF00DDDD
      DD00DCDCDC00DBDBDB00D8D8D800D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700DADADA00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00D9D9D900D9D9
      D900D9D9D900D7D9D900D7D9D900D8DADA00DBDCDC00DADADC00DBDADC00DBD9
      DB00DCD9DB00E5DFE200D9DADB00CADCD700A7CBBF00537E6F00446D5C00ACCA
      BB00CFDCD500D5D6D500D1CBD100736B7400B4ACB200A8A0A200E3DDDE00FAF6
      F700FEFEFE00F9FBFB00F9FDFC00FDFEFE0000000000FFFEFF00FFFEFF00FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000F2F3F7009DA3D6000D1DAC000112BA00041ACD000A39F2000920
      C200070C520004052B00040F7300092AD8000E49FF000E4BFF000E4BFF000E4D
      FF000E4DFF000E4DFF000E4FFF000E4FFF000E4FFF000E50FF001052FF001052
      FF001052FF001052FF001052FF001052FF001053FF001054FF001054FF001054
      FF001054FF001054FF001053FF001052FF001052FF001052FF001052FF001052
      FF001052FF00104FFF000E4FFF000E4FFF000E4FFF000E4EFF000E4DFF000E4D
      FF000E4BFF000E4BFF000E48FF000E48FF000E47FF00092CE000051170000405
      2400060D5A000923CF000B3CF600082AE3000113B5000110AE00071392006F75
      AF00DCDDE500FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E5E5E500AEAEAE00A3A3A300AAAA
      AA00D4D4D400F3F3F300FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5FAF80026835B00037642000089
      4F00008C510000854B0000834900008349000083490000834900008349000083
      49000083490000864C00008E54000092570000844B000C6A3C0072B29700EEF5
      F3000000000000000000000000000000000000000000F1E4E200B9776C009812
      0100DD300400E3320500E02F0400DF2E0400DF2E0400DF2E0400DF2E0400DF2E
      0400DF2E0400DF2E0400DF2E0400DF2E0400E2300500E6340500DE300400B61D
      01007D1A1000CDA29A00F9F5F30000000000000000000000000000000000AEB1
      E500090FB9000000D1000000D8000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DC000000D9000000CE000000B9000000A5000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00FBFBFB00FBFBFB00FCFC
      FC00F6F6F600F7F7F700D3D3D300A3A3A3009E9E9E0077777700E2E2E200DFDF
      DF00DFDFDF00DDDDDD00DCDCDC00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DCDEDE00DDDE
      DE00DEDEDE00DEDEDE00DFDEDE00E0DFDF00E2E1E100E3E1E100E2E0E000E4DF
      DF00E2DEDF00DEE0DF00D3DFDB00B1D0C5005284720077B39C007DBBA1005586
      7200B4D4C500D3E2DB00C0C1C1006D666C00B8B1B600A8A1A300F0EBEC00F8F5
      F600F9F9F900F6F8F800F6F8F800F9FAFA00FDFCFC00FFFCFD00FFFDFE00FFFD
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000BDC0D9004751A6000312A9000216C4000215C300082CE500081C
      BB00030B660000054E00040F88000A2CD7000E4DFF000E4FFF000E4FFF001052
      FF001052FF001052FF001053FF001053FF001053FF001054FF001156FF001156
      FF001156FF001156FF001156FF001156FF001157FF001159FF001159FF001159
      FF001159FF001159FF001157FF001156FF001156FF001156FF001156FF001156
      FF001156FF001053FF001053FF001053FF001052FF001052FF001052FF000F51
      FF000E4FFF000E4FFF000E4CFF000E4CFF000E4BFF00092FDF00031180000005
      4900020B7500061DCA000A33EC000214C1000113BB000520D4000520D5000D1B
      93007679A200F6F6F80000000000000000000000000000000000000000000000
      0000000000000000000000000000DADADA005353530008080800060606000505
      05001E1E1E0094949400F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4D0C100136F400000884E000091
      5600008A510000864D0000864D0000864D0000864D0000864D0000864D000086
      4C0000864C0000864C00008C5100009559000091570000764000006A3B00D7E8
      E100FCFDFD0000000000000000000000000000000000E6D0CC0093281500CF26
      0200E6350600E4310400E22F0400E22F0400E22F0400E22F0400E22F0400E22F
      0400E22F0400E22F0400E22F0400E22F0400E22F0400E6340500EA3B0600D531
      050089140400953B2800F3E9E70000000000000000000000000000000000AAAA
      E7000000BF000000DD000000E0000000E2000000E2000000E2000000E2000000
      E2000000E2000000E2000000E2000000E1000000E1000000E1000000E1000000
      E0000000DF000000DA000000CD000000B4000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00FCFCFC00FAFAFA00F9F9F900F7F7
      F700F0F0F000F5F5F500E5E5E500A4A4A400A4A4A4006F6F6F00DFDFDF00DBDB
      DB00DFDFDF00DADADA00DEDEDE00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DEDEDE00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DBDDDD00DBDD
      DD00DDDDDD00DEDDDD00E1DDDD00E1DEDD00E2DFDE00E2DFDE00E1DEDD00E0DE
      DB00DEDEDB00D9E4DE00CCE7DB006591800071B29A0088D7B8008BDDBC006EB7
      9A00669C8500C4E5D600B4BFB9008A888800A8A2A400ADAAAA00F0EEEE00F6F6
      F600F2F4F400F2F4F400F7F8F800FAFAFA00FEFCFC00FFFCFD00FFFEFF00FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000F2F2F600878BBB000A1A99000729DE000A3BF300051ED200041DD2000829
      DF00041ABD000318BC000930DE000F4CFB001051FF001053FF001053FF001153
      FF001155FF001156FF001157FF001158FF001158FF001158FF001159FF00125A
      FF00125AFF00125AFF00125AFF00125AFF00125AFF00125BFF00125DFF00125D
      FF00125DFF00125AFF00125AFF00125AFF00125AFF00125AFF00125AFF00125A
      FF00125AFF001158FF001158FF001158FF001156FF001156FF001156FF001155
      FF001053FF001053FF001051FF001051FF000E4FFF000D47FC00082ED9000418
      BC00061FC900092EE600051CD0000316C7000931E8000B3DF6000932EA00071F
      C300414CB200B2B6D30000000000000000000000000000000000000000000000
      00000000000000000000D0D0D0005B5B5B001010100007070700060606000505
      0500070707001F1F1F0084848400F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F9E8100097B4800009156000090
      5400008A4F0000894F0000894F0000894F0000894F0000894F0000894F000089
      4F0000894E0000884D00008A500000925700009A5D00008C530000602F0099C7
      B500EDF6F20000000000000000000000000000000000E3CBC8008E140300E83A
      0600E7380600E5330500E4320500E4320500E4320500E4320500E4320500E432
      0500E4320500E4320400E2320400E2320400E2320400E6360500EB3D0700E038
      0600AE1B000083110400F1E4E30000000000000000000000000000000000AAAA
      E9000000C4000000E2000000E4000000E5000000E5000000E5000000E5000000
      E5000000E5000000E5000000E5000000E5000000E5000000E5000000E5000000
      E4000000E3000000DF000000D3000000BA00000000000000000000000000FEFE
      FE0000000000F8F8F800EEEEEE00EDEDED00ECECEC00ECECEC00EBEBEB00ECEC
      EC00DFDFDF00E1E1E100D1D1D100A4A4A400A2A2A20071717100D5D5D500D6D6
      D600DCDCDC00D6D6D600DADADA00D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D8D9D900D7D9D900D6D9
      D900D7D9D900DBD9D900DDD9D800DEDAD900DDD9D800DCD9D700D9DAD500D8DA
      D500D2DAD300C8E0D30077A39000619D850094E4C40067C6A10055BC940077D7
      B1004C9A7A006B9F880093AEA100858C8500ADADAC00ACAEAE00DFE2E200E9EB
      EB00E4E6E600E6E8E800EDEEEE00EFEEEE00F1F0F000F5F3F400FCFBFC00FDFC
      FC0000000000FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000B0B5D300414EB2000623CB000B3CF4000D3DED000C3BEF000725DD000625
      DC000830E7000C40F2000E48FA000E47FE000C43FB000C41F8000C43F8000C43
      F8000C44FA000C44FA000C45FB000C45FC000C45FC000C45FC000D45FC000D46
      FD000D48FD000D48FD000D48FD000D48FD000D48FD000D48FD000D49FD000D49
      FE000D49FE000D48FE000D48FE000D48FE000D48FD000D48FD000D48FD000D48
      FD000D48FD000D48FD000D48FD000D46FD000D45FC000C45FC000C45FC000C45
      FB000C43FA000C43FA000C43FA000C43F8000C41F8000C41F8000B3EF4000A3A
      F2000933EA000624D900061FD3000930E3000D38E9000E44FA000C41FA000932
      E7001429B2006C71A90000000000000000000000000000000000000000000000
      000000000000C8C8C80060606000171717000A0A0A0011111100121212000D0D
      0D000707070006060600232323007E7E7E00F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6B3E000289500000965B000090
      5500008C5100008B5100008B5100008B5100008B5100008B5100008B5100008B
      5100008B5000008A5000008B500000915500009E610000985D00006A37005EA5
      8800DEEDE70000000000000000000000000000000000E5CBC70093140100EE41
      0900EA3B0600E7340500E6330500E6330500E6330500E6330500E6330500E632
      0500E6320500E6320500E5320500E5320500E5320500E8360600EC3E0800E63C
      0700BC210200880E0000F2E4E20000000000000000000000000000000000AAAA
      EA000000C9000000E9000000E9000000E7000000E7000000E7000000E7000000
      E7000000E7000000E7000000E7000000E7000000E7000000E7000000E7000000
      E6000000E8000000E5000000D8000000BF00FCFCFC00FEFEFE00FEFEFE00FBFB
      FB00DEDEDE00BBBBBB00C8C8C800C9C9C900C9C9C900CACACA00CACACA00CFCF
      CF00CACACA00CACACA00CACACA00A6A6A600ABABAB0076767600B3B3B300C9C9
      C900C8C8C800CCCCCC00C6C6C600CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CACBCB00C8CACB00C7CA
      CA00C9CACA00CCCACA00CECAC900CECBC900CFCEC900C9CCC600C9CFC900C3CE
      C400C1D2C70087AE9C00518E750087D2B3006CC8A2004AB68A0049BF900054C8
      9A0073D7AF00489173004E7966008A9F92009DA6A0009DA4A300AEB5B400B1B6
      B500B5B7B700B6B6B600B6B5B500BCBABA00BAB8B800BCBABA00D3D1D100F7F5
      F50000000000FDFDFD00FCFCFC00000000000000000000000000000000000000
      00008389BC00142CAE00092AD0000C2299000E1856000E1B5E000D39E100092F
      E6000830E8000B3CF2000C43FA000B3BF300082CDF000722CD000723CD000624
      CE000624CF000724D0000724D1000724D2000724D2000624D3000724D3000724
      D3000725D3000725D5000725D5000725D5000725D5000725D5000725D5000725
      D5000725D5000725D7000725D7000725D7000725D6000725D5000725D5000725
      D5000725D5000725D5000725D5000724D5000724D4000624D4000624D3000624
      D3000624D2000624D1000624D1000623D0000622CF000726D6000932E6000936
      EE00082CE4000826DB000B2CCF000D1759000E1655000B24AB000C3EEA000B3F
      F6000826C6004A52AC00DCDFE900000000000000000000000000000000000000
      0000D0D0D000707070001D1D1D000C0C0C001616160026262600262626001515
      15000D0D0D000606060006060600252525007E7E7E00F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005F2E0000955A0000995D000091
      5600008D5200008D5200008D5200008D5200008D5200008C5200008C5200008C
      5200008C5200008C5200008C520000925600009F6100009F6300007A43003791
      6E00D4E7E00000000000000000000000000000000000E6CBC7009A160100F045
      0900EC3D0700E7350500E6330500E6330500E6330500E6330500E6330500E633
      0500E6330500E6330500E6330500E6330500E6330500E9370600EE410900E940
      0800C32603008D0F0000F2E4E20000000000000000000000000000000000AAAA
      EB000000CC000001EF000000EC000000E9000000E9000000E9000000E9000000
      E9000000E9000000E9000000E9000000E9000000E9000000E9000000E9000000
      EA000000EC000001EB000000DC000000C100F5F5F500FBFBFB00FDFDFD00F6F6
      F600B3B3B300DCDCDC00F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200ECEC
      EC00EAEAEA00E8E8E800F8F8F800B8B8B800A6A6A60080808000A7A7A700BDBD
      BD00BDBDBD00C0C0C000BBBBBB00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BCBDBD00BABCBD00B9BC
      BD00BCBBBD00BEBCBC00C0BCBB00C0BCBB00BBBDB800B8C1B900ADBCB100A5B9
      AC0099B7A7004981690080CDAD0079D2AB004EB5880046BD8B003EC18C0035B8
      83005BD1A10086E5BE003B7C600081A7930098AEA300A8B4B100C3CDCC00C1C8
      C700CDCFCF00C5C5C500C5C3C300CFCACB00C9C4C500C8C6C600ACABAB00ECEC
      EC0000000000FDFDFD00FDFDFD0000000000000000000000000000000000F0F1
      F6006972BB000725BD000C30C7000C0F51000E050B000E060E00113CD6000E45
      F4000A38ED000934EC00082DD700051EAF0003139A000211A3000211A3000211
      A6000211A6000211A7000211A8000211A9000211AA000212AB000212AB000212
      AB000212AB000212AD000212AE000212AE000212AE000212AE000212AE000212
      AE000212AE000212AF000212B0000212AF000212AF000212AE000212AE000212
      AE000212AE000212AE000212AE000212AD000211AC000211AC000211AB000211
      AB000211AA000211A9000211A9000211A7000211A6000212A3000317A100051F
      BA000829DF000B35E9000F33CB000E060E000E050B000A1170000C3BD9000D47
      FC000931E0003647C200AFB5D300000000000000000000000000000000000000
      0000A3A3A300363636000D0D0D001616160021212100545454004D4D4D003636
      36001A1A1A000B0B0B0006060600050505002222220082828200F3F3F300FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005F2E00009C6000009B5E000092
      5700008F5500008F5500008F5500008F5500008F5500008F5500008F5500008F
      5500008F5500008E5500008E550000935800009E610000A4660000834B002B8B
      6700D1E5DE0000000000000000000000000000000000E8CBC700A0170100F248
      0A00ED3F0800E8370600E7350500E7350500E7350500E7350500E7350500E635
      0500E6350500E6330500E6330500E6330500E6330500E9390600F0430900EC44
      0A00C829040094110000F3E4E20000000000000000000000000000000000AAAA
      EC000001CF000003F3000001F0000000EC000000EC000000EC000000EC000000
      EC000000EC000000EC000000EC000000EC000000EC000000EC000000EC000000
      ED000001F0000002F0000001E1000000C400FEFEFE00FEFEFE0000000000E3E3
      E300BABABA00F8F8F800F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F1F1
      F100F1F1F100E4E4E400E6E6E600BFBFBF00A7A7A7008585850092929200B4B4
      B400B3B3B300B4B4B400B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200AFB1B200B0B0
      B300B1B0B200B3B1B100B4B1B000B1B1AD00AEB4AE00ACBCB100A2BAAD0094B3
      A3005A83710079C2A3007AD7B00058BD900054C3910048C58E0038C186002EBC
      81002FB37E0067D7A90073C6A300437C610082A49500A0B1AC00ADBAB800BDC5
      C300C3C8C700C3C2C200CBC7C800C7C2C300C8C3C400D3D1D100C2C1C100B8B8
      B800FAFAFA00FDFDFD000000000000000000000000000000000000000000E0E2
      EC005E69C500082BD1000D3AD7000B146E000B071B000E0D45001145DE001154
      FC000D45F800082EDE000318AE00010D8C00010F98000212AB000212AC000212
      AE000212AE000213AE000213B0000213B1000213B1000214B3000214B3000214
      B3000214B3000214B5000214B5000214B5000214B5000215B5000215B5000215
      B5000215B5000215B5000215B6000215B6000214B5000214B5000214B5000214
      B5000214B4000214B4000214B4000214B3000213B2000213B2000213B2000213
      B1000212B0000212B0000212B0000212AD000112AD000110A400010D9200020F
      96000623C1000C3FF5000F3BDC000D0C41000C0931000A1B8E000D40E2000F4E
      FF000C3FF300223FCF007A84BB00000000000000000000000000000000000000
      00009191910023232300101010001D1D1D002323230067676700676767005656
      560035353500181818000A0A0A0004040400040404001B1B1B008C8C8C00EAEA
      EA00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005F2E00009F6100009E61000095
      5900009256000092560000925600009256000092560000915600009156000091
      560000915600009056000090560000945900009F620000A7680000874D002B8B
      6700D1E5DE0000000000000000000000000000000000E9CBC700A6190100F44C
      0B00EF430800E9390600E8360500E8360500E8360500E8360500E8360500E736
      0500E7360500E7350500E7350500E7350500E7350500EA3B0600F1460900EE48
      0A00CD2D04009B120000F3E4E20000000000000000000000000000000000AAAA
      EC000001D2000004F7000003F3000000EF000000EE000000EE000000EE000000
      EE000000EE000000EE000000EE000000EE000000EE000000EE000000EE000000
      EF000002F3000003F4000001E5000000C800FBFBFB00F9F9F900FCFCFC00D6D6
      D600D5D5D500ECECEC00F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200EFEF
      EF00F2F2F200CCCCCC00BDBDBD00B4B4B400AAAAAA00969696008F8F8F00CCCC
      CC00C7C7C700C6C6C600C8C8C800C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C4C5C800C5C5
      C800C6C5C700C8C6C600C8C6C500C4C6C100C0CBC200BBD1C300A7C7B700507B
      680078AD960081D7B20057C2950055C291004ABD88003EBE820039C687002EC3
      840029B87E003DBC890071D5AC0069B394004C796700869C970099A6A400B3BC
      BB00C5CAC900C1C0C000D3CECF00C6C1C200D1CCCD00C2C0C000C2C1C100A6A6
      A600F5F5F500FEFEFE0000000000FEFEFE00000000000000000000000000DBDE
      E9005B67CD000931DB000F4AF4000D33C7000B2676000F30B4001259F6001157
      FF000E48FC000624C000010E96000212AC000319CB000419CC00041ACD00041A
      CD00041ACE00041BCE00041CCF00041CCF00041CCF00051CD000051DD000051D
      D100051DD100051DD200051DD200051DD200051DD200051ED300051ED300051E
      D300051ED300051ED300051ED300051ED300051DD200051DD200051DD200051D
      D200051DD100051DD100051DD000051CD000041CCF00041CCF00041CCF00041B
      CE00041ACE00041ACD00041ACD000419CB000319CB000318CA000315C000010E
      9E000317A0000A38EF000E47F6000D2CAD000C2896000D3AD9000F4CF9001053
      FF000E4AFC00153CD4005560A800000000000000000000000000000000000000
      00009D9D9D002F2F2F000E0E0E001A1A1A001D1D1D0044444400656565006363
      6300525252003131310015151500090909000404040003030300101010009191
      9100D3D3D300E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4
      E400E6E6E600EAEAEA00EFEFEF00F8F8F800FEFEFE0000000000000000000000
      000000000000000000000000000000000000005F2E0000A3630000A264000098
      5B00009458000094580000945800009458000094580000935800009358000093
      580000935800009358000093580000975B0000A3650000AB6B00008A4E002B8C
      6700D1E5DE0000000000000000000000000000000000EBCBC700AC1B0100F650
      0C00F1460900EB3B0700E9380600E9380600E9380600E9380600E9380600E938
      0600E9380600E9380600E9380600E9380600E9380600EC3E0700F34A0B00F14C
      0B00D0300500A1140000F4E4E20000000000000000000000000000000000AAAA
      ED000001D5000006FA000004F6000001F2000001F1000001F1000001F1000001
      F1000001F1000001F1000001F1000000F0000000F0000000F0000000F0000001
      F2000004F6000005F8000002E9000000CB0000000000FDFDFD00FDFDFD00C7C7
      C700DBDBDB00F5F5F500EFEFEF00EFEFEF00F0F0F000F0F0F000F1F1F100EFEF
      EF00FBFBFB00929292007F7F7F007777770097979700A6A6A60095959500EEEE
      EE00E5E5E500E2E2E200E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E4E5E800E5E5
      E700E6E5E600E7E6E600E5E7E400E3E9E300D6E4DA00CCE8D9007CA49200689A
      8400A1DFC50066C39E004DC0910054C794004BC18A0041C0850034C281002DC4
      840030C488003DC48F0053C0940092EAC500679F880058726B005A6B67009EAA
      A700C7CDCB00C1C1C100C9C5C500C8C3C400CBC6C700C5C3C300C8C7C700A3A5
      A500F2F2F200FDFDFD0000000000FEFEFE00000000000000000000000000DBDE
      EA005B68D1000934DE00115AFF00125CFF00125EFF001261FF001361FF001155
      FF000D43F800051EA800010E9500031ACC00041CCF00041CD000051CD000051D
      D000051DD200051DD200051ED300051FD300051FD300051FD300051FD3000520
      D5000520D5000520D5000520D5000520D5000520D6000520D7000520D7000520
      D7000520D7000520D7000520D7000520D7000520D6000520D5000520D5000520
      D5000520D5000520D500051FD300051FD300051FD300051FD300051ED300051D
      D200051DD200051DD000051CD000041CCF00041CCF00041BCE00041ACD000214
      B5000212AB000727DB000E4BFF00125BFF00125BFF00115AFF001158FF001055
      FF000F51FF001644DB005560AB00000000000000000000000000000000000000
      0000C5C5C500585858000C0C0C001010100016161600161616004A4A4A006060
      60005E5E5E004C4C4C002D2D2D00111111000808080003030300000000000C0C
      0C006B6B6B00AAAAAA00C0C0C000C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C1C1C100C1C1C100C1C1C100C1C1
      C100C2C2C200C7C7C700CFCFCF00DEDEDE00ECECEC00F6F6F600FDFDFD000000
      000000000000000000000000000000000000005F2E0000A5670000A56600009A
      5D0000965A0000965A0000965A0000965A0000965A0000965A0000965A000096
      5A0000965A0000955A0000955A00009A5E0000A7680001AE6D00008B4F002B8C
      6700D1E5DE0000000000000000000000000000000000ECCCC700B21D0100F953
      0D00F2480900EC3E0700EB3C0600EB3C0600EB3C0600EB3C0600EB3C0600EB3C
      0600EB3B0600EB3B0600EB3B0600EB3A0600EA3A0600ED410800F44E0C00F350
      0C00D4320500A9150000F5E4E20000000000000000000000000000000000AAAA
      EE000002D8000007FD000004F9000002F3000002F2000002F2000002F2000002
      F2000002F2000002F2000002F2000001F2000001F2000001F1000001F1000002
      F3000005F9000006FB000003ED000000CE00FEFEFE00FCFCFC00FEFEFE00C0C0
      C000E0E0E000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ECEC
      EC00FDFDFD005A5A5A003636360039393900747474008B8B8B0087878700F6F6
      F600EBEBEB00EDEDED00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00ECEFF000E9EB
      EC00EEEFEF00E8E9E800E5EAE500E4EFE500DFF5E70092B7A40065988000ADEB
      D0008AD5B6005EC49A004FC795004EC693004AC48E0042C38B003CC3890039C4
      8B003AC18A003BBB870049BE8E005DC799007ECFAD00568B770031594B007F9B
      9100C3D1CB00C8CAC900C7C0C100D2C8CA00CDC6C700C5C3C000C7CBC5009DA2
      9D00E2E3E200FEFEFE0000000000FEFEFE00000000000000000000000000DBDE
      EC005B68D4000A36E000125FFF001361FF001363FF001363FF001465FF001156
      FF000B39EC000419B1000211A900051DD100051ED200051ED200051ED300051F
      D400051FD500051FD5000520D6000521D6000521D7000521D7000521D8000622
      D8000622D8000622D9000622D9000622D9000622D9000622D9000622D9000622
      D9000622D9000622D9000622D9000622D9000622D9000622D9000622D9000622
      D9000622D8000622D8000521D8000521D7000521D7000521D6000520D600051F
      D500051FD500051FD400051ED300051ED200051ED200051DD100051CD0000316
      BF000111B4000523D5000F4DFF001361FF00125EFF00125DFF00125CFF00115A
      FF001157FF001748DC005460AE00000000000000000000000000000000000000
      0000F1F1F100929292001D1D1D00090909001111110012121200131313004444
      44005C5C5C005A5A5A0047474700272727000D0D0D0007070700030303000000
      0000070707008A8A8A00E6E6E600FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500E1E1E100D8D8D800BCBCBC00B7B7B700D5D5D500EFEFEF00FCFC
      FC0000000000000000000000000000000000005F2E0001A7690000A76800009C
      5E0000985B0000985B0000985B0000985B0000985B0000985B0000985B000098
      5B0000985B0000975B0000975B00009C5F0001A96A0003B07000008C51002B8C
      6700D1E5DE0000000000000000000000000000000000EECCC700B81F0200FB56
      0E00F44A0B00EE410800ED3F0700ED3F0700ED3F0700ED3F0700ED3F0700ED3F
      0700ED3C0700ED3C0700ED3C0700ED3C0700EC3C0700EF430900F6510D00F552
      0E00D7330600AF160000F6E5E20000000000000000000000000000000000AAAA
      EF000002DA000009FF000006FB000003F5000003F4000003F4000003F4000003
      F4000003F4000003F4000003F4000003F4000002F4000002F2000002F2000003
      F5000006FB000008FD000005EF000000D000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100ECEC
      EC00FAFAFA002D2D2D000F0F0F000A0A0A000E0E0E001B1B1B0058585800F3F3
      F300F6F6F600F3F3F300F0F0F000F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F0F2F300EEF0
      F100F3F5F500ECF0ED00F1FBF400EFFEF600A7C5B500538068009AD6B9009DE3
      C40085D6B3005BC396004EC794004BC6920047C5910045C4900043C28E0044C3
      8F0042BF8B0043BC89004AC18E0052C8950067CCA20090DCBE0039765F0077A1
      9000BAD2C800C2C7C600C7C2C300D2C7C900CFC6C600C4C2BE00C7CCC4009DA4
      9D00DADCDB000000000000000000FEFEFE00000000000000000000000000DBDE
      EC005C6BD7000B3BE4001364FF001365FF001465FF001467FF001569FF001158
      FF000B3BEF00041AB6000213AD00051FD500051FD6000521D6000521D8000521
      D8000622D9000622D9000622D9000623DA000624DB000624DB000624DB000624
      DB000624DC000725DC000725DC000725DC000725DC000725DC000725DC000725
      DC000725DC000725DC000725DC000725DC000725DC000725DC000725DC000725
      DC000624DC000624DB000624DB000624DB000624DB000623DA000622D9000622
      D9000622D9000521D8000521D8000521D600051FD600051FD500051ED4000318
      C3000113B9000625D9000F51FF001465FF001363FF001361FF001260FF00125E
      FF00125BFF00174CDF005460B400000000000000000000000000000000000000
      0000D8D8D800B2B2B200777777000E0E0E000707070010101000101010001010
      10003E3E3E005959590056565600424242002323230009090900070707000202
      0200000000000707070083838300EFEFEF00000000000000000000000000FEFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800C1C1C100BABABA00E3E3
      E30000000000000000000000000000000000005F2E0003AA6B0001AB6B00009E
      6100009A5D00009B5D00009B5D00009B5D00009B5D0000995D0000995D000099
      5D0000995D0000995D0000995D00009E610001AC6C0003B37400008D53002B8C
      6700D1E5DE0000000000000000000000000000000000EFCDC700BE200200FC5A
      1000F64E0C00EF430900ED400800ED400800ED400800ED400800ED400800ED40
      0800ED400800ED400800ED400800ED400800ED400800F1470A00F8540E00F856
      0F00DA370700B4190000F7E5E20000000000000000000000000000000000AAAA
      F0000003DD00000BFF000007FE000004F6000004F5000004F5000004F5000004
      F5000004F5000004F5000004F5000004F5000004F5000004F5000003F5000004
      F7000008FB00000AFE000005F2000000D300FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100ECEC
      EC00FCFCFC0031313100020202000404040002020200070707003D3D3D00B8B8
      B800CBCBCB00CACACA00CBCBCB00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CAC9C900CAC9
      CA00CBCDCC00C2CBC600BAC8C000AEC7BB00688E7B009CCDB500B0EDD000A1E7
      C80087D6B30065CB9E0054C9970051C895004CC793004AC6920048C5910049C6
      920048C38F0049C18E004EC3910055C8960060C69A0082D4B2007FC4A800578A
      75009FBFB000B9C8C200C1C3C100CCC7C800CEC7C800C6C3C000C9CAC5009EA0
      9B00DCDCDB000000000000000000FEFEFE00000000000000000000000000DBDE
      ED005C6CDB000C3EE7001467FF001467FF001569FF00156BFF00156DFF00125C
      FF000C3FF200041CBA000315B1000622D8000622D9000622D9000624DB000624
      DB000725DC000725DC000725DD000725DE000726DE000727DE000727DF000727
      DF000727DF000727DF000728DF000829E0000829E1000829E1000829E1000829
      E1000829E1000829E1000829E1000829E1000829E0000829DF000728DF000727
      DF000727DF000727DF000727DF000727DE000726DE000725DE000725DD000725
      DC000725DC000624DB000624DB000622D9000622D9000622D8000521D800031A
      C7000215BD000728DB001055FF001469FF001467FF001465FF001364FF001361
      FF00135FFF001950DF005462B50000000000000000000000000000000000D6D6
      D600C8C8C800DFDFDF00E9E9E900A5A5A5000B0B0B00050505000C0C0C000D0D
      0D00131313003636360052525200505050003E3E3E001D1D1D00080808000606
      060002020200010101001414140079797900EFEFEF00F4F9F700C6DBD50081AC
      A20037876E0023643E001E452A001C3C27001C3D27001C3F27001C4227001D4C
      2E00277E5D00579D8700A8CABE00E9F1EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F800DCDCDC00C7C7
      C700DCDCDC00000000000000000000000000005F2E0003AE6F0001AE6E0000A2
      6300009D5F00009D5F00009D5F00009D5F00009D5F00009D5F00009D5F00009D
      5F00009D5F00009D5F00009D5F0000A2640001B0700005B77500008F56002B8C
      6800D1E5DE0000000000000000000000000000000000F0CDC700C2220200FF5D
      1100F8520D00F2470A00F0440900F0440900F0440900F0440900F0440900F044
      0900EF440900EF430900EF430900EF430900EF430900F3490B00FA560F00F95A
      1000DE3B0700BA1B0000F7E5E20000000000000000000000000000000000AAAA
      F1000004DD000011FF00000BFF000005F9000004F8000004F8000004F8000004
      F8000004F8000004F8000004F8000004F8000004F8000004F8000004F8000006
      FA00000CFD00000FFF000009F5000000D400FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000F5F5F5005555550004040400060606000101010002020200040404000E0E
      0E000D0D0D000C0C0C000C0C0C000D0D0D000D0D0D000D0D0D000D0D0D000D0D
      0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000F0D0D00151112001512
      11000D0E0D000C130E000A1B0F00395B4B0094C2AD00B3E9D100A7E5C8009DE1
      C2009AE4C1006DCDA1005CCC9A0058CA980053C9960051C895004EC794004FC8
      95004FC6930050C6930054C6940057C8960060C99B006CC8A0008FDFBC007AB9
      9E00527E6B00ADC8BD00B7C4BD00C6C7C600CCC8C900C7C3C300CBC8C7009E9C
      9B00DBDBDB00FEFEFE00FEFEFE00FDFDFD00000000000000000000000000DCDE
      ED005D6EDD000D40E9001569FF00156BFF00166CFF00166FFF00166FFF00135F
      FF000C42F400041EBF000317B6000624DB000724DB000724DD000726DD000726
      DE000727DE000827E0000828E1000828E1000829E100082BE200082BE200082B
      E200082BE200082BE400082BE400082BE400082BE400082CE400082CE400092C
      E400092CE400092CE400082CE400082CE400082BE400082BE400082BE400082B
      E400082BE200082BE200082BE200082BE2000829E1000828E1000828E1000827
      E0000727DE000726DE000726DD000724DD000724DB000624DB000623DA00041C
      CB000217C200082ADD001156FF00156BFF00156BFF001569FF001467FF001465
      FF001464FF001A55E1005563BA00000000000000000000000000E0E0E000C8C8
      C800DDDDDD00F9F9F900FDFDFD00ECECEC00A4A4A4000A0A0A00060606000B0B
      0B000C0C0C0014141400303030004C4C4C004A4A4A0037373700181818000808
      08000404040002020200010101001A1D1C003C574C003C7A60002A4A37001942
      2B0007401F0003411400013E1000013F1000014310000146110002481200024A
      130004571F000F5B28002363340036794C0077A58C00CDDDD800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F800D7D7
      D700CBCBCB00E6E6E6000000000000000000005F2E0004B1710001B0700000A4
      6500009F6100009F6100009F6100009F6100009F6100009F6100009F6100009F
      6100009F6100009F6100009E610000A4660001B3720005BA7900009156002B8D
      6800D1E5DE0000000000000000000000000000000000F2CEC700C8240200FF60
      1200F9540E00F3490A00F1460900F1460900F1460900F1460900F1460900F146
      0900F1460900F1450900F1450900F1450900F0450900F44B0B00FB581000FA5B
      1100E13C0800C01D0000F8E6E20000000000000000000000000000000000AAAA
      F2000006DF00001BFF00000FFF000006F9000005F8000005F8000005F8000005
      F8000005F8000005F8000005F8000005F8000005F8000005F8000005F8000007
      FB000011FE000019FF00000DF6000000D600FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEF
      EF00F8F8F800D8D8D800A3A3A300A0A0A000A4A4A4009D9D9D009D9D9D009F9F
      9F009E9E9E00A1A1A100A0A0A0009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009E9C9C00A5A1A0009B98
      96009AA09B0083978D004D6D5F007CA89500B6ECD400A6E1C800A3E1C4009DDF
      C00096DCBA0074CFA40063CC9C005FCB9B005BCA990058C9980055C9970056CA
      980057C9970057C9970059C897005CC8970060C89A0067C89D0070C7A00098E2
      C10067A18600678F7D00A7BFB400BCC9C400C7CBC900C6C4C400CBC6C7009E99
      9A00DCDBDB00FEFEFE00FEFEFE00FDFDFD00000000000000000000000000DCDF
      EE005E70DF000E44EA00166DFF00166FFF001670FF001771FF001773FF001462
      FF000D45F600051FBF000213AF00051DCF00061DD000061ED100061FD200061F
      D200061FD2000620D4000620D5000620D5000621D5000621D6000623D6000623
      D7000623D7000623D8000623D8000623D8000623D8000623D8000623D8000623
      D8000623D8000623D8000623D8000623D8000623D8000623D8000623D8000623
      D8000623D7000623D6000623D6000621D6000621D5000620D5000620D5000620
      D400061FD200061FD200061FD100061ED100061DCF00051DCE00051DCE000317
      BF000216BA00082CE000125AFF00166FFF00166DFF00156CFF00156BFF001469
      FF001468FF001A59E3005564BF000000000000000000FAFAFA00C7C7C700DADA
      DA00F6F6F6000000000000000000FDFDFD00E8E9E900708079000E1311000505
      0500090909000B0B0B00131313002B2B2B004545450045454500303030001616
      16000808080004040400010604000112090003291300033F1B0001380F00013E
      10000141100002481100024B1200024E13000252130002541400025615000257
      1600035A16000259160002581600045D1B001C6C3300428659005BA07C005FAD
      90005FAD91005FAC90005FAC8E005FAA8E005FAA8D005FA98D005FA98C005FA7
      8B005FA68A005FA58A005EA489005EA389005EA187005EA187005D9F850060A2
      8B0078B09F00B3CDC700EFF5F20000000000000000000000000000000000F4F4
      F400D5D5D500CFCFCF00FBFBFB000000000000622F0005B4740002B4730000A6
      670000A1640000A1640000A1640000A1640000A1640000A1630000A1630000A1
      630000A1630000A0630000A0630000A6670002B5730006BD7B00009359002B8E
      6B00D1E6DF0000000000000000000000000000000000F3CEC700CB270200FF64
      1300FA570F00F44B0B00F2480A00F2480A00F2480A00F2480A00F2480A00F248
      0A00F2480A00F2480A00F2480A00F2470A00F1470A00F54D0C00FC5A1100FA5E
      1200E33F0800C41F0000F9E6E20000000000000000000000000000000000AAAA
      F300000AE1000029FF000013FF000007FA000006F9000006F9000006F9000006
      F9000006F9000006F9000006F9000006F9000006F9000006F9000006F9000008
      FC00001AFE000025FF000012F7000000D900FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F3F3
      F300ECECEC00F2F2F200EFEFEF00E9E9E900EEEEEE00ECECEC00F2F2F200F3F3
      F300F0F0F000F7F7F700ECECEC00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F000EFEEEA00EFF2
      EC00E3F1E8008EA99C00729B8A00BDECDB00AEE9D000ACEBCF00A4E4C600A8E7
      C9009BDCBD0079CEA5006ACD9F0067CB9D0063CA9B005FC99A005BC999005CCA
      9A005ECA9B005FCA9B0060C99A0060C7980062C899006DD0A30063C095007ED0
      AA009FE4C400699E860092B7A600B4CCC100C2CDC900C4C5C500CAC6C9009C97
      9900DBD9DA00FDFDFD00FDFDFD00FCFCFC00000000000000000000000000DCDF
      EF005E72E3000E47ED001770FF001772FF001773FF001874FF001977FF001567
      FF000E49F8000520B500010B8600020E8D00020E8F00020F9000020F9100020F
      9200020F9200020F9400020F9500020F9500020F9600020F9700021097000210
      9800021099000210990002109900021099000210990002109900021099000210
      9900021099000210990002109900021099000210990002109900021098000210
      9800021098000210970002109500020F9500020F9400020F9300020F9300020F
      9200020F9100020F8F00020F8E00020F8D00020E8B00020E8A00020E8800010C
      810002129800092FE200135EFF001772FF00166FFF00166FFF00166DFF00156B
      FF00156CFF001B5DE5005566C1000000000000000000E0E0E000CCCCCC00ECEC
      EC00000000000000000000000000EBF5F2009CCABA004A9966000B431A00010F
      050004050400080808000909090011111100272727003F3F3F003E3E3E002828
      2800101311000411090001180A0000270C0001360E00013D0F0001451000014A
      1100024C1200024F130004581A0005652800066C2E00066B2B0004662300035D
      18000360190003611A0003631B0003641B0003631B0003651F00066B2A00086D
      3400096E350009743700097336000972360008703500086E3400086C3200086A
      3100086930000867300007662F0007642E0007622D0007612C00075E2B00095D
      2D00186039003F6F5500749E8200D5E4DD00FBFCFB0000000000000000000000
      0000E4E4E400CBCBCB00E4E4E400000000000064310006B7760003B6750001A9
      6A0000A3670000A3670000A3670000A3670000A3670000A3660000A3650000A3
      650000A3650000A3650000A3650001A8690003B7750007C07D0000965B002B90
      6D00D1E7DF0000000000000000000000000000000000F4CFC700CF290300FF66
      1400FC5A1000F54E0C00F34B0B00F34B0B00F34B0B00F34B0B00F34B0B00F34B
      0B00F34B0B00F34B0B00F34B0B00F34A0B00F34A0B00F7500D00FD5D1200FA60
      1300E5410900C9210100F9E6E20000000000000000000000000000000000AAAA
      F300000DE3000036FF000018FF000008FB000006FB000006FB000006FB000006
      FB000006FB000006FB000006FB000006FB000006FB000006FB000006FB00000A
      FD000021FF000031FF00001AF7000000DB00FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EEEEEE00F5F5F500EFEFEF00F1F1F100F5F5F500EDEFEE00F2F8F200E0ED
      E300ACC4B600688B7C00BEEBD800B5EDD600A8E5CC00ADECCF00A7E5C700A4DF
      C100A4DFC10090DDB8007BD4A9006BC89C0068C89C006BCDA0006ACEA10064CA
      9D0064CA9D0065CB9E0068CC9F006ACB9F006ACC9F006ACB9E0070CEA30077CD
      A40084D1AC0099D9BB00497B66008FB2A300B9CEC500C1C9C700C2C2C4009A97
      9900D4D3D400FEFEFE0000000000FEFEFE00000000000000000000000000DCDF
      F0005E75E7000F4BF1001773FF001875FF001876FF001879FF00197AFF00156A
      FF000E4CFA000522BD000211940004189B0004189D000419A0000419A0000419
      A200041AA200041AA300041AA400041BA400041BA500041BA700051BA700051B
      A700051CA800051CA900051CA900051CA900051CA900051CA900051CA900051C
      A900051CA900051CA900051CA900051CA900051CA900051CA800051CA800051C
      A800051CA700051BA700051BA500041BA500041BA300041BA200041AA200041A
      A100041AA00004199E0004199D0004199C0004189A0004189900041798000312
      90000315A3000931E4001361FF001875FF001774FF001772FF001670FF00156E
      FF001670FF001C61E6005568C4000000000000000000C5C5C500E1E1E100F8F8
      F8000000000000000000F1F7F400B3D6C30031945F0004712300035E19000131
      0D00010F05000405040007070700090909000E0E0E0024242400383838002733
      2E000E20150002220D00002D0E00003A0F0001430F0001461000024C14000A6A
      36002D794C00337C500028805000188351000F8450000E834D0010804800197E
      46001B81490009773600046C240003681E0003691F00036B2000036A20000366
      1C0003631B0003651B00036B1F00036B1F0003671D0003631B0003611A00035F
      1900025D1700025A1600025D1700025A17000259160002571500025515000252
      1400014C1200014513000F512300689D8100EEF4F00000000000000000000000
      0000F4F4F400D8D8D800CBCBCB00000000000067330006B9770004B9770001AC
      6C0000A7680000A7680000A7680000A7680000A7680000A7680000A5670000A5
      660000A5660000A5660000A5660001AA6B0004BA780007C37F0000985C002B92
      6D00D1E7DF0000000000000000000000000000000000F4CFC700D42B0300FF67
      1500FD5C1000F6500C00F44D0B00F44D0B00F44D0B00F44D0B00F44D0B00F44D
      0B00F44D0B00F44D0B00F44C0B00F44C0B00F44C0B00F8530D00FD601200FA62
      1400E8430A00CD220100F9E6E20000000000000000000000000000000000AAAA
      F3000010E4000043FF00001FFF000009FC000006FC000006FC000006FC000006
      FC000006FC000006FC000006FC000006FC000006FC000006FC000006FC00000C
      FE000029FF00003EFF000022F7000000DD00FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EBEBEB00EDEDED00F0F0F000F1F1F100F1F1F100EDF2EF00DFF2E700AEC9
      BB0052756400AED8C600B4E6CF00B0E7D000B0EAD100ABE6CA00A8E3C600A5DD
      C100AAE3C6009AE1BD0085D7AD0076CBA10072C99F0071CDA20070CEA2006BCB
      9F006ACB9F006BCCA0006DCDA1006FCDA10072CDA10077CEA40076CCA2007CD0
      A8007BCBA50098E1BF0097D5B9005585700099B9AC00B4C6C000C1C8C7009396
      9600D4D4D400FEFEFE0000000000FEFEFE00000000000000000000000000DCE0
      F0005F78EA00104FF4001877FF001978FF00197AFF00197CFF001A7DFF00156D
      FF000F4FFD000526D300041FCB000931EB000932EB000933EC000934ED000A34
      EE000A35EE000A36EF000A36F0000A37F1000A38F2000A39F2000B39F2000B39
      F3000B3AF3000B3BF4000B3BF4000B3BF4000B3BF4000B3BF4000B3BF4000B3B
      F5000B3BF5000B3BF5000B3BF4000B3BF4000B3BF4000B3BF4000B3BF4000B3B
      F4000B3AF3000B39F3000B39F2000A39F2000A38F2000A37F1000A36F0000A36
      EF000A35EE000A34EE000934ED000933EC000932EB000931EB000930E9000624
      DA00041DD0000A34E6001464FF001978FF001878FF001876FF001774FF001772
      FF001874FF001E65E8005669C9000000000000000000BABABA00EEEEEE000000
      00000000000000000000D1E8DF005CAE840005762600035D1700025815000252
      1400012F0C00010F05000404040006060600070707000A0A0A001E201F00122F
      20000429110000300E00013B0F0001431000034D180010622F0031784A001E93
      6800469674004FA0830047A28300389C7A002F9773002D9771002B9972002B9B
      7500298D61000E834900087C39000677310005712800046E2200047023000473
      24000470230003681D00046D2100046F2100036A1F0003671D0003661D000362
      1B00035C170003551300036119000361190003601800035E1800025C1700025C
      1700025B1600025616000249140006522400C9D8D000F9FAFA00000000000000
      000000000000E4E4E400C1C1C100000000000069350007BC7A0004BC790001AE
      6E0000A96A0000A96A0000A96A0000A96A0000A96A0000A96A0000A76A0000A7
      690000A7690000A7680000A7680001AD6D0004BD7C0008C68100009A5E002B93
      6D00D1E7DF0000000000000000000000000000000000F5D0C800D72D0400FF69
      1600FE5D1100F8530D00F6500C00F6500C00F6500C00F6500C00F6500C00F650
      0C00F6500C00F6500C00F64E0C00F64E0C00F64E0C00FA550E00FE611200FB64
      1400EA440A00D1240100FAE6E20000000000000000000000000000000000AAAA
      F4000013E6000051FF000027FF00000BFE000007FE000007FE000007FE000007
      FE000007FE000007FE000007FE000007FE000007FE000007FE000007FE00000E
      FF000031FF00004BFF00002AF8000000DF00FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F3F3F300F1F1F100F5F5F500EFEFEF00EBEBEB00E7F0EC00D0F0E200608C
      7900B1E0CA00C4F1DD00B9EDD600AAE1C900ABE2C900AAE1C600A7DEC300A8DD
      C200A5DDBF009EE1BD0090DCB30083D2A9007CCEA40077CEA30076D0A50071CD
      A20071CDA20072CEA30074CFA40075CFA40079CCA50086D2AC008BD8B20089D9
      B20088D9B2007DCCA700A1E6C60088C3A80058847000B8D5C900B5C7C1008F97
      9400D2D4D400FEFEFE0000000000FEFEFE00000000000000000000000000DCE0
      F1005F7BED001054F600197BFF00197CFF001A7EFF001A7EFF001A81FF001670
      FF000F52FE000629D7000521CF000936EF000936F0000936F0000938F2000B38
      F2000B38F2000B39F3000B3AF4000B3AF5000B3BF6000B3DF6000B3DF6000B3D
      F7000B3DF7000B3EF7000B3FF7000B40F7000B40F7000B40F7000B40F8000B40
      FA000B40FA000B40FA000B40F8000B40F7000B40F7000B40F7000B3FF7000B3E
      F7000B3DF7000B3DF7000B3DF6000B3DF6000B3BF6000B3AF5000B3AF4000B39
      F3000B38F2000B38F2000938F2000936F0000936F0000936EF000934ED000728
      DE00051FD4000A37E9001467FF00197CFF00197AFF001978FF001878FF001876
      FF001978FF001F68E900576ACC000000000000000000BABABA00EEEEEE000000
      00000000000000000000B2DECD001291580004681D00025A1600025B1600025C
      17000257150001320D00010D0400030303000505050006070600040D09000123
      0C0000310E00013D0F00014310000C501E001B6E400032956D0071B08F00399C
      7A002A7F4E002D91650046A6800062B3950070B99E006EB89D005EB092003A9C
      750028723F00247B4700138A55000B874A00077E390005782B00047324000474
      2500057B290004782800036B2000046C1F00036A1F0003691F0003681E000364
      1B0003581400024A100003631A0003621A000361190003601900035F1800035F
      1800035D1700025C170002571500003B0E0087A99A00E8EFED00000000000000
      000000000000E5E5E500C2C2C20000000000006B370008BE7B0005BE7B0001B0
      700000AB6B0000AB6B0000AB6B0000AB6B0000AB6B0000AB6B0000AB6B0000AB
      6B0000AA6B0000AA6A0000AA690001B06E0005C17D0009C88400009E5F002B96
      6F00D1E7DF0000000000000000000000000000000000F6D0C800D92F0400FF6B
      1600FF5F1200F9540E00F7510D00F7510D00F7520D00F7510D00F7510D00F751
      0D00F7510D00F7510D00F7510D00F7510C00F7510C00FB570E00FF631300FB66
      1400EB460A00D4260200FAE6E20000000000000000000000000000000000AAAA
      F5000016E800005EFF000030FF00000CFE000008FE000008FE000008FE000008
      FE000008FE000008FE000008FE000008FE000008FE000008FE000008FE00000F
      FF000038FF000057FF000033F8000000E100FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EEEEEE00EAEAEA00F2F2F200EDEDED00F1F1F100DDE8E30062927F0080BB
      A400C9FFEA00B9EFD800C1F5DD00BDEED600BFF0D800BDEED400B5E6CC00B5E8
      CD00AFE6CA00A4E3C2009CE1BC0091DBB50085D1AB007ECFA8007DD1AA0078CF
      A70077D0A80078D0A80079D1A9007AD1A90086D1AD0096D6B40098DBB90095DF
      B90093E1BA0091E1BB008FDBB700AFF3D20074A98F00688D7C00B4CCC0008F9D
      9600D1D4D300FEFEFE0000000000FEFEFE00000000000000000000000000DDE0
      F100617DF0001258F9001A7DFF001A7EFF001A80FF001C82FF001C84FF001772
      FF001154FF00072BD9000523D3000B39F2000B3AF3000B3AF4000B3CF5000B3C
      F6000B3CF7000B3EF7000B3FF8000B3FF9000B3FF9000B3FFA000B40FB000B41
      FB000C41FB000C41FB000C41FB000C42FC000C43FC000C43FC000C43FC000C44
      FC000C44FC000C44FC000C43FC000C43FC000C43FC000C42FC000C41FB000C41
      FB000C41FB000B41FB000B40FB000B3FFA000B3FF9000B3FF9000B3FF8000B3E
      F7000B3CF7000B3CF6000B3CF5000B3AF4000B3AF3000B39F2000A38F100072B
      E2000622D8000B3AEC00156AFF001A80FF001A7DFF00197CFF00197AFF001978
      FF001A7CFF00206CEA00586ACE000000000000000000BABABA00EEEEEE000000
      00000000000000000000ADDAC20008853D00035F1800035C1700035F1800035F
      180003601900035B170002370E00010B040002030200040A0700001E0C00002F
      0E00013D0F00014310000B4F1A00367C54005AA78E003F9572002075440063B2
      970092D7AF009CDDB400A0DEB800A5E0BA00ABE2C000B1E4C500B0E4C500ACE5
      C200A1E1B7008DC9AC0037936D00156D3A000D7A3E0009884100057B2E000476
      2600047827000582300004752700036C2100046A2000046B2000046A20000365
      1C00035B15000351110003631B0003631C0003621A0003621A00036119000361
      190003601800035E1800035A16000148100055947E00DCE9E500000000000000
      000000000000E5E5E500C3C3C30000000000006E390009C07D0007C07D0002B2
      720000AD6D0000AD6D0000AD6D0000AD6D0000AD6D0000AD6D0000AD6D0000AD
      6D0000AC6D0000AB6C0000AB6B0002B2700007C37E000ACA860000A061002C97
      7200D1E8E00000000000000000000000000000000000F6D0C800DA310500FF6D
      1700FF611300FA550E00F8520D00F8530E00F8540E00F8530E00F8520D00F852
      0D00F8520D00F8520D00F8520D00F8520D00F8520D00FB590F00FF661400FC68
      1600ED480B00D6270200FAE7E20000000000000000000000000000000000AAAA
      F6000019E900006BFF000038FF00000DFF000008FF000008FF000008FF000008
      FF000008FF000008FF000008FF000008FF000008FF000008FF000008FF000011
      FF000040FF000065FF00003AF9000000E300FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F8F8F800F0F0F000ECECEC00F0F0F000EAEAEA008E9B9600437E67007DC3
      A9008DCDB3008FC8AF0093C6AE009BC9B1009DC9B000ACD9BF00BEEED400B2E5
      CA00ACE3C700A6E4C300A3E7C2009BE1BB008BD6B00083D0AA0081D3AC007ED2
      AA007CD3AB007DD3AB007ED4AC0080D3AC008FD3B100B1E5C80092CCAF008DD1
      AE007CC9A3007ACCA30084D5AE0080CAA60088C4A7005A8672007C9C8C00869A
      9100D0D5D300FEFEFE0000000000FEFEFE00000000000000000000000000DDE0
      F2006181F300125CFC001B80FF001C82FF001C84FF001D86FF001D86FF001875
      FF001158FF00072DDD000626D8000B3DF5000B3FF7000B3FF9000B3FF9000B40
      FB000B40FB000C40FC000C42FC000C43FC000C43FD000C43FE000C43FE000C45
      FE000C45FE000C45FF000C45FF000D45FF000E45FF000E45FF000E46FF000E48
      FF000E48FF000E48FF000E46FF000E45FF000E45FF000D45FF000C45FF000C45
      FF000C45FE000C45FE000C43FE000C43FE000C43FD000C43FC000C42FC000C40
      FC000B40FB000B40FB000B3FF9000B3FF9000B3FF7000B3DF5000B3CF500082F
      E6000625DC000C3EEF00166CFF001C81FF001C80FF001A80FF001A7EFF00197C
      FF001B80FF002170EB00586DCF000000000000000000BBBBBB00EEEEEE000000
      00000000000000000000ACD8BE0005813300035F180003601900036119000362
      1A0003631A0003631B00035F1900023E1000010704000010090000270D00013C
      0F00014110000144100058946A0061B08C0015865E00339D740097D8B10099DB
      B1009DDDB500B0E2C800D1EADE00E7EEEA00EEEEEE00ECEEEE00E0EDE800BEE9
      D400A7E4BE00A3E4B900A2E4BA007FC2A500337B520006682A0007843B00057D
      2C0005792A00057D2B000689380004722600046D2100046D2100046A1F00035C
      1800024A0F00034E1000024C100003631B0003661C0003641C0003621B000362
      1A0003611A0003601900035D1700014C110055967F00DCEAE600000000000000
      000000000000E5E5E500C3C3C3000000000000703B000AC3810007C3810002B4
      740000AE6F0000AE6F0000AE6F0000AE6F0000AE6F0000AE6F0000AE6F0000AE
      6F0000AE6E0000AE6D0000AE6D0002B4730007C581000BCD880000A164002C98
      7300D1E8E00000000000000000000000000000000000F7D1C800DD330500FF70
      1900FF641400FA590F00F9560E00F9560E00F9560E00F9560E00F9560E00F956
      0E00F9560E00F9560E00F9560E00F9560E00F9550E00FC5B1100FF691700FC6C
      1900EE4B0C00D92A0300FBE7E20000000000000000000000000000000000AAAA
      F700001CEB000077FF000040FF00000FFF000009FF000009FF000009FF000009
      FF000009FF000009FF000009FF000009FF000009FF000009FF000009FF000015
      FF000048FF000071FF000043FA000000E600FAFEFE00FBFEFE00FCFFFF00BBBB
      BB00E4E3E300F2EFF000F3F0F100F2F0F300F0F0F300EEEFF500ECF0F500F0F1
      F200F3F1F100F3F1F100F3F1F100F3F1F100F3F1F100F4F1F100F4F1F100F4F1
      F100F4F1F100F4F1F100F1F1F100F0F1F100F1F1F100F0F1F100EFF1F100F1F1
      F100EBEDEC00E9ECEC00F0F2F200EBECEC00E1E3E300919D9A00709B8E006193
      8500659184006790830075958800718E80005B7F6E00699B8700B6EBD400B2E1
      CA00B3E2CA00AEE5C800AAE9C800A3E4C20095D9B6008BD2AF0089D3AF0086D2
      AE0086D2AE0084D3AD0085D4AE0085D4AE0090D2B100B6EACF00528B71005387
      6D005E9278005290760046816A005C8F7A005A86730068897C00879C9200909A
      9500D3D6D500FEFEFE0000000000FEFEFE00000000000000000000000000DDE1
      F2006284F6001360FE001C84FF001D86FF001D86FF001D88FF001F8AFF001A79
      FF00135BFF00082FDE000629DC000B40FA000C41FB000C43FC000C43FC000C43
      FE000C44FE000C44FF000D45FF000E46FF000E47FF000E47FF000E47FF000E4A
      FF000E4AFF000E4AFF000E4AFF000E4AFF000E4AFF000E4AFF000E4AFF000E4B
      FF000E4BFF000E4BFF000E4AFF000E4AFF000E4AFF000E4AFF000E4AFF000E4A
      FF000E4AFF000E48FF000E47FF000E47FF000E47FF000E46FF000D45FF000C44
      FF000C44FE000C43FE000C43FC000C43FC000C41FB000B40FA000B3FF9000932
      EA000728E0000C41F3001670FF001D85FF001C84FF001C82FF001B80FF001A7E
      FF001C83FF002274EC00586ED2000000000000000000BCBCBC00EEEEEE000000
      00000000000000000000ACD9BF000583350003611A0003621A0003631C000365
      1C0003671D0003671D0003671D00035B1A00023D100000230C0000380F000140
      100001441000418462003F9676002B936F0051AE89008CD4AA009BDCB400AFE2
      C500D9EAE000E5EDE900EBEEEC00EBEEEC00D5EBE000B6E7CB00A9E4BC00A5E5
      BB00A3E4BA00A3E6BB00A4E6BB00A1E3B90088C6A50043805D00035C22000687
      3800057D2B00057E2C000684330007893D0005772C00046E220004641B000352
      12000348100002420E0002460F000358150003651D0003671E0003661C000365
      1C0003631B0003621A00035F1800024F120056977F00DCEAE600000000000000
      000000000000E6E6E600C4C4C4000000000000743D000BC6830008C4820003B7
      760001B2710001B2710001B2710001B2710001B2710001B2710001B2710001B2
      710001B1710001B0700001B06F0003B6740008C782000CCE890000A568002C9C
      7400D1E9E00000000000000000000000000000000000F7D1C800E0350600FF71
      1B00FF661500FC5A1000FB570F00FC570F00FC570F00FC570F00FB570F00FB57
      0F00FB570F00FB570F00FB570F00FB570F00FB570F00FD5E1200FF6C1900FC6F
      1C00F04D0D00DC2B0300FBE7E20000000000000000000000000000000000AAAA
      F800001FEE000083FF000047FF000011FF00000AFF00000AFF00000AFF00000A
      FF00000AFF00000AFF00000AFF00000AFF00000AFF00000AFF00000AFF000017
      FF000050FF00007DFF00004BFA000000E900F4FEFC00F6FEFE00FAFFFE00BABC
      BC00E4E0E100F5EFF100F2EBEF00F0ECF200ECECF400E9ECF500E4E8F200EDEE
      F300F3F1F000F3F1F000F3F1F000F3F1F000F3F1F000F4F2F100F4F2F100F4F2
      F100F4F2F100F4F2F100F2F2F100EFF2F200F0F2F200EFF2F200EFF2F200F0F2
      F200EFF1F100EEF1F100EEF1F100EFF1F100EEF1F100ECF1F100E1F0F200E3EF
      F300E5EFF200E0F0F200EBEFF100EEF2F200A8C5BE0047887900ADEDDA00B8E6
      D300BDE3CE00B7E5CD00AFE7CD00ABE6C900A5E0C4009BD9BC0094D3B50091D2
      B3008FD2B3008ED2B1008DD4B0008AD3AF0094D5B600B3ECD30048876F00A8CA
      BA00CAD8D000AFD1CA00BFD5D300BECDCD00B9C9CA00B9C6C700C4C7C9009692
      9400DBDADA00FEFEFE00FEFEFE00FDFDFD00000000000000000000000000DDE1
      F3006386F7001564FF001D87FF001D88FF001F8AFF001F8CFF001F8DFF001A7B
      FF00135EFF000931E000072BDF000C43FD000C44FE000E45FE000E47FE000E47
      FF000E49FF000E4AFF000E4AFF000E4AFF000E4AFF000E4BFF000E4BFF000E4C
      FF000E4CFF000E4DFF000E4EFF000E4EFF000E4EFF000E4EFF000E4EFF000E4E
      FF000E4EFF000E4EFF000E4EFF000E4EFF000E4EFF000E4EFF000E4EFF000E4D
      FF000E4CFF000E4BFF000E4BFF000E4BFF000E4AFF000E4AFF000E4AFF000E4A
      FF000E49FF000E47FF000E47FE000E45FE000C44FE000C43FD000C42FC000934
      EC00082AE2000D44F5001772FF001D88FF001D87FF001D85FF001C84FF001C81
      FF001E88FF002378ED005970D4000000000000000000BCBCBC00EEEEEE000000
      00000000000000000000ACDABF000585370003651C0003651C0003661D000367
      1E0003691F00046A1F00046B2000035D1A00003B0F00002C0D00013F10000143
      10000A6C3D00409677003496750046A87F008AD2A900A0DDB800BDE5D000E0EB
      E500EBEEEC00EEEEEE00E4EDE900C8E9D500AFE6C300A5E4BC00A2E4B900A3E6
      BA00A4E6BB00A5E8BD00A5E8BD00A6E9BE00A2E3BC0087C4A20046876100035F
      20000684350005802E000582310008914600078137000570250004621A000454
      1200034A100002460F0002450F000354120004661D0003691F0003681E000367
      1D0003661D0003641C0003611A000251140056988000DCEAE600000000000000
      000000000000E6E6E600C4C4C4000000000000773F000CC8840009C6840005B9
      780003B3730003B3730003B3730003B3730003B3730003B3730003B3730003B3
      730003B3730003B2720002B2710004B876000BC985000FD08E0000A86A002C9D
      7500D1E9E00000000000000000000000000000000000F8D1C800E2360700FF76
      1D00FF6A1700FE5C1200FD591000FE591000FE591000FE591000FD591000FD59
      1000FC591000FC591000FC591000FC591000FC591000FD601400FF6E1B00FD71
      1F00F24F0F00DE2D0400FBE7E30000000000000000000000000000000000AAAA
      F8000021EF00008EFF00004FFF000013FF00000BFF00000BFF00000BFF00000B
      FF00000BFF00000BFF00000BFF00000BFF00000BFF00000BFF00000BFF00001A
      FF000057FF000087FF000054FB000000EB00F5FDFC00F9FFFE00FAFFFF00BBBC
      BC00E2E1E100F5F0F100FAF5F600F6F0F200F1EDF100F6F4F900F5F4F800F2F6
      F500E8F1EE00E8F1EE00E9F1EE00E8F1EE00E8F1EE00E9F1EE00E9F2EE00E8F2
      EE00E9F1EE00E9F1EE00EBF1EE00EFF0EE00F0F0EE00F0F0EE00F0F0EE00F0F0
      EE00F0F0EE00F0F0EE00F0F0EE00F0F0EE00F0F0EE00F0EFEF00EDF1F000F2EF
      F000F5EFF000ECF1EF00F6EFEE00F6F3F000A8C2B8004A8D7A00B0F2DD00ADDC
      C900B1D8C300B1E0C900ACE3CA00AAE3C700A7E1C500A0DCBF009CDABC0094D4
      B60092D4B40090D3B3008ED4B0008BD3AF008FD0B100ADE7CD0049876E00AFC9
      B800DADAD100BED3CC00CFD6D400CDCCCF00C8CDD000CBD0D300D0CFD1009994
      9600DCDBDB00FEFEFE00FEFEFE00FDFDFD00000000000000000000000000DEE1
      F4006388F8001668FF001E8AFF001E8CFF001F8CFF00208EFF002090FF001B7F
      FF001461FF000A33E300082DE3000D47FF000D49FF000E49FF000E4AFF000E4B
      FF000E4BFF000E4DFF000E4EFF000E4EFF000F4EFF000F4FFF000F50FF000F50
      FF000F50FF000F51FF000F51FF000F52FF000F52FF000F52FF000F52FF000F52
      FF000F52FF000F52FF000F52FF000F52FF000F52FF000F52FF000F51FF000F51
      FF000F50FF000F50FF000F50FF000F4FFF000F4EFF000E4EFF000E4EFF000E4D
      FF000E4BFF000E4BFF000E4AFF000E49FF000D49FF000D47FF000D46FE000A38
      F000082DE6000E47F7001874FF001E8BFF001E8AFF001D88FF001D86FF001D84
      FF001F8BFF00247BED005A70D6000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ACDAC0000587380003671D0003681E0004681F00046A
      2000046B2000046D2100046B1F0002541800002E0E0000390E00014310000146
      1000559E77003A8C63004B9F750081CCA200A1DEB800BAE5CD00E0EBE600EEEE
      EE00EEEEEE00DAECE300BFE8CE00ABE5C000A3E5BA00A3E5BA00A3E5BB00A4E7
      BC00A5E7BD00A6E9BF00A6E9BF00A7EAC000A8EAC000A3E4BD0072BC95001578
      4600047427000582300005833100078D4100098E4900077A330005651B00045A
      1500034E1000034C1000034B10000457130004661D00046A200004691F000469
      1F0003681E0003671D0003641C000254150057998000DCEAE600000000000000
      000000000000E6E6E600C5C5C50000000000007940000ECA87000BC8860005BB
      790003B6740003B6740003B6740003B6740003B6740003B6740003B6740003B6
      740003B4740003B4730003B4720005BA79000FCC8B0015D3940002AA6E002D9F
      7800D1EAE10000000000000000000000000000000000F9D2C800E4370800FF79
      2300FF6D1900FF601300FF5C1100FF5C1100FF5C1100FF5C1100FF5C1100FF5C
      1100FE5C1100FE5C1100FD5B1000FD5B1000FD5B1000FE631500FF721F00FD75
      2300F5521000E12F0400FCE7E30000000000000000000000000000000000AAAA
      F9000023F0000099FF000058FF000016FF00000DFF00000DFF00000DFF00000D
      FF00000DFF00000DFF00000DFF00000DFF00000DFF00000CFF00000CFF00001E
      FF000060FF000092FF00005CFB000000EC00FCFDFD00FDFFFF00FCFEFE00BCBE
      BE00E0E2E100F0F1F000F3F1EF00F9F3F100FAF1F000FBF1F000F8ECEA00F6F3
      EE00EEF4EC00EFF3EC00F0F3EC00EFF4EC00EFF4EC00F1F4EC00F0F4EC00EFF4
      EC00F0F4EC00F1F4EC00F3F4EC00FAF2EC00FBF2EC00FBF2EC00FBF2EC00FBF2
      EC00FAF1EC00FAF1EC00FAF1EC00FAF1EC00FAF1EC00FAF2EB00FAF2E900FDF0
      E900FDF1E900F9F3E800FDF1E800FBF3EA00ADC0B2004B897300B1F3DB00B5E5
      CF00B9E2CD00B2E2CB00ABE1C800AAE1C600A7E1C500A6E1C400A4E1C30099D8
      BA0095D7B80093D6B6008FD5B1008CD3AF008FD0B000B1ECCF00528D7000B6C8
      B500E9DDD300D4D8CE00E1D7D200DBCDCC00D1CDCC00CED1CF00D0CFD0009995
      9600DCDBDB0000000000FEFEFE00FDFDFD00000000000000000000000000DEE1
      F400648BF800176BFF001F8DFF00208FFF002090FF002191FF002193FF001C81
      FF001564FF000933E0000522D5000932E8000932E8000934E8000934E9000A35
      E9000A35EA000A35EA000A36EA000A37EB000A37EB000A37EB000A39EB000B39
      EB000B39EB000B39EB000B39EC000B39ED000B3AED000B3AED000B3AED000B3A
      ED000B3AED000B39ED000B39ED000B39ED000B39ED000B39EC000B39EB000B39
      EB000B39EB000A38EB000A38EB000A37EB000A37EB000A36EA000A36EA000A35
      EA000934E9000934E9000934E8000932E7000932E7000931E6000931E5000728
      DB000628DC000E4AFA001977FF00208EFF00208DFF001E8BFF001E8AFF001E87
      FF00208FFF00267FEE005C72D8000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ADDBC10006893A00046A1F00046B2000046C2100046D
      2100046E2200046F220003671D0001491400002A0E0001401000014510000D6B
      3B0051A38000479875006EB890009DDDB400B4E2C600DCEBE300EEEEEE00EEEE
      EE00DFECE600BCE8CD00A7E4BD00A3E5BA00A3E6BB00A4E7BC00A5E7BC00A6E9
      BE00A6E9BF00A7EAC100A8EAC100A9EBC200B0EDC900BFF1D500AFE4C8005BA9
      8400025919000584320006853200068839000E9858000B854200066D23000563
      1C00035412000353110003521100055D170004691E00046C2100046C2100046B
      2100046A1F0004691E0003661D000256150057998100DCEAE600000000000000
      000000000000E6E6E600C5C5C50000000000007B420012CD8C000ECC8A0006BD
      7C0003B8770003B8770003B8770003B8770003B8770003B8770003B8770003B8
      770003B7770003B6750003B6740007BD7C0012CE8F001BD79A0005AD72002EA1
      7900D2EAE10000000000000000000000000000000000F9D2C800E5390800FF7D
      2800FF701B00FF621300FF5E1100FF5E1100FF5E1100FF5E1100FF5E1100FF5E
      1100FF5E1100FF5E1100FF5E1100FF5E1100FF5D1100FF651600FF762200FE79
      2800F6551100E2310400FCE8E30000000000000000000000000000000000AAAA
      FA000026F20000A4FF000061FF000019FF000010FF000010FF000010FF000010
      FF000010FF000010FF000010FF000010FF000010FF00000FFF00000FFF000023
      FF000069FF00009DFF000063FC000000EE00FFFBFE00FFFEFF00FCFCFC00BBC0
      BF00DCE3E000EDF3EE00F7F8F100FCF5EC00FFF4EB00FFEEE600FEE6DC00F9E3
      D800F6E7DA00F7E7DA00F7E7DA00F6E7DA00F6E7DA00F6E6D900F6E6D900F5E6
      D900F6E6D900F6E6D900F7E6D900FAE6D800FAE5D900FAE6D800FAE6D700FAE5
      D900FBE6D900FBE7D800FBE7D900FBE6DA00FBE7D900FDE7D800FFEDD900FFEC
      D900FFECD900FFEED900FFECD900FAEBD900ACB9A30055917500B2F2D600B2E3
      CC00B5E0CB00B3E3CC00ADE2C900A9E0C500A8DFC400A7E1C500A8E4C6009EDC
      BE009ADABB0095D8B80091D6B2008DD3AF0091D2B000B4EFD0005B927400B2BC
      A700EAD0C100E5D6C900ECD1C700EBCFC900E2D5D000D4D2CE00CDCECC009595
      9500DCDCDC000000000000000000FEFEFE00000000000000000000000000DEE1
      F500648DF800176FFF001F90FF002091FF002092FF002194FF002296FF001D84
      FF001567FF000934DC000217C500041ACD00041BCE00041CCE00041CCF00051D
      CF00051DD100051DD100051DD200051ED300051ED300051FD300051FD400061F
      D400061FD400061FD5000620D5000620D6000620D6000621D6000621D6000621
      D6000621D6000620D6000620D6000620D6000620D6000620D500061FD400061F
      D400051FD400051FD300051FD300051ED300051ED200051DD200051DD100051D
      D000041CCF00041CCF00041CCE00041ACC00031ACB00031ACA00031AC9000316
      C2000523D0000E4EFD00197BFF002091FF002090FF001F8EFF001F8DFF001E8A
      FF002092FF002783EF005C74D9000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ADDBC200068C3F00046C2000046E2100046F21000470
      2200047022000471230003601C00013F110000300E0001431000014710003C97
      74002B8861005CAC89008CD1AB00A8E0BE00CBE7D700EDEDED00EEEEEE00E8EE
      EB00C2E8D100A8E5BD00A2E4BA00A4E6BB00A4E7BC00A5E8BE00A6E8BE00A7E9
      BF00A8E9C000A8EBC100ADECC600BDF0D100D2F6E200E5FAF000E2F7EC009CD0
      B5000B663500057C2B0006853400068737000F9A5B000C8E4E0007793200076D
      2700045D1700035A14000359130006672000056F2200046F2200046E2100046D
      2100046C2000046B200003671E000258150057998100DCEAE600000000000000
      000000000000E6E6E600C5C5C50000000000007D440017D0920011CF8F0007C0
      7F0003BA780003BA780003BA780003BA780003BA780003BA780003BA780003BA
      780003BA780003B9770003B9760008BF7E0016D1930024DAA10007B0770030A2
      7900D2EAE10000000000000000000000000000000000F9D2C800E63B0900FF82
      2D00FF741E00FF641400FF601100FF601100FF601100FF601100FF601100FF60
      1100FF601100FF601100FF601100FF601100FF5F1100FF681700FF7A2500FE7D
      2E00F7581200E3320400FCE8E30000000000000000000000000000000000AAAA
      FA000028F30000ACFF000069FF00001DFF000013FF000013FF000013FF000013
      FF000013FF000013FF000013FF000013FF000013FF000012FF000012FF000029
      FF000071FF0000A4FF000068FC000000F000FFFBFE00FFFCFE00FBFAFC00BCC1
      C000DBE3E100EBF3EC00EDEFE500FAF5E700E8D6C700C09F8D00B2897600A779
      6500A77A6500A87A6500A97A6500A87A6500A87A6500A8796400A7796400A679
      6400A7796400A8796400A4796300A07B63009E7A63009E7B63009E7B62009E7A
      63009F7B64009F7C63009F7C64009F7B64009F7C64009F7C6300A17B5F00A77A
      5D00A67B5D009B7C5F00A07A6000997E6300727A5D005A937200B4F1D500AEE1
      C900B8E6D000B7E8D000B1E6CD00ACE1C600A8DEC300A6E0C400A7E2C500A1DE
      C0009CDBBC0097D9B90092D6B3008DD3AF0092D3B200B3EDCE00538768007F81
      68009D766300A0847000B68C7C00D0A79A00DFC8BF00D6D1C900CDCFCB00999B
      9900DCDCDC000000000000000000FEFEFE00000000000000000000000000DEE1
      F6006590F9001873FF002093FF002094FF002295FF002298FF00239AFF001E87
      FF00156BFF000A38DF000420CD00072AD600072BD700072BD700072DD800082D
      D800082DD900082DDA00082DDA00082DDA00082EDB00082FDC00092FDC00092F
      DC00092FDC000930DD000931DD000931DD000931DD000931DD000931DD000931
      DD000931DD000931DD000931DD000931DD000931DD000931DC000930DC000930
      DC00082FDC00082FDA00082FDA00082EDA00082DDA00082DDA00082DD900082D
      D800072DD800072CD700072CD700072AD600062AD500062AD5000629D4000523
      CC00062AD7001051FE001A7DFF002194FF002092FF002091FF001F8FFF001F8D
      FF002296FF002987EF005C75DB000000000000000000BEBEBE00EFEFEF000000
      00000000000000000000ADDCC400078F4400046F220004702200047223000473
      24000473240004742500035A1B0001370F0000370E0001461000014911006EAA
      9100247D53006AB78B009DDEB400B8E3CA00E0EBE600EDEDED00EBEEEC00D0EB
      DC00A9E5BE00A3E5BA00A4E6BB00A5E8BD00A5E8BE00A6E8BF00A7E9C000A8EA
      C100A9EBC100B0EFC900C5F3D900E2F9ED00F8FEFA0000000000F4FDF900BCE5
      D30035936E0003671E0006833400068939000B9855000C9556000A8645000977
      3400066B23000562190005641B0009742F00067328000471230004702200046F
      2200046E2100046E2100046A1F00025B1600589A8200DCEAE600000000000000
      000000000000E7E7E700C6C6C60000000000007F46001FD2980016D1930009C2
      810005BC7A0005BC7A0005BC7A0005BC7A0005BC7A0005BC7A0005BC7A0005BC
      7A0005BC790005BC780005BB78000AC281001CD4980030DDA7000AB47B0031A4
      7B00D2EAE10000000000000000000000000000000000F9D2C800E83B0A00FF86
      3200FF772100FF661500FF621200FF621200FF621200FF621200FF621200FF62
      1200FF621200FF621200FF621200FF621200FF621200FF6C1900FF7F2A00FE82
      3300FA5B1500E5320500FCE8E30000000000000000000000000000000000AAAB
      FA00012AF40003B2FF00006FFF000021FF000017FF000017FF000017FF000017
      FF000017FF000017FF000017FF000016FF000016FF000016FF000016FF000032
      FF00027BFF0002AAFF00006CFC000001F100FFFCFF00FFFAFD00FEFBFD00C0C6
      C400D7E0DD00EFF7F000F1F2E800FBF3E400AD947F009E765F00AE7B6200B87C
      6000BC7E5E00BB7D5D00BA7C5C00BA7B5C00B97B5B00BD7F5F00BD7F5F00BC7D
      5E00BB7D5D00BA7C5C00B67C5C00B1805D00B0805D00B0805D00AF805C00AF80
      5C00AF805C00AF805C00AF805C00AE7F5B00AE7F5B00AE7E5B00B07F5D00B57F
      5D00B37E5C00A8805C00AC7E5D00A3805F007779590060967200B5F2D300AEE0
      C800B4E2CC00B3E4CD00B1E4CC00AEE2C700ABE0C500A7DFC400A6E0C300A4E1
      C300A1E0C1009DDEBE0097DAB70090D4B10093D3B100B2ECCD00588A6900847F
      6500A6786000A6806700AE796400B5827100CEB2A400D3CBC200CECFCB00989D
      9B00E1E2E20000000000FAFAFA0000000000000000000000000000000000DEE2
      F6006593F9001977FF002195FF002198FF00239AFF00239CFF00239DFF001E8A
      FF00166EFF000C3FEA000A39E9001055FF001157FF001157FF001159FF00115A
      FF00115AFF00125BFF00125BFF00125BFF00125CFF00125EFF00125EFF00125E
      FF00125EFF001260FF001361FF001361FF001361FF001361FF001361FF001361
      FF001361FF001361FF001361FF001361FF001361FF001361FF001361FF001260
      FF00125EFF00125EFF00125EFF00125EFF00125CFF00125BFF00125BFF00125B
      FF00115AFF00115AFF001159FF001157FF001157FF001055FF001054FF000D45
      F6000B3AF2001155FF001B81FF002197FF002194FF002094FF002092FF002090
      FF00259BFF002D8BF0005D77DD000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000ADDDC500089047000471230004732300047425000476
      2500047626000477270002551B0000300E00003E0F0001481100025015006EAA
      90002C926D006EC19700A3E0BA00C7E7D300EDEDED00EDEEED00E2EDE600ABE8
      C100A4E6BB00A4E6BB00A5E7BC00A6E9BE00A6E9BF00A7E9C000A8EBC100AAEB
      C300AFEFC800CBF5E000F1FDF600FDFFFE000000000000000000F8FEFC00D6EF
      E40078B39700024F1400067D3100068A39000A964F00109C60000F9257000B82
      43000A7D3B0008712C0009752F000B7F3F0006772B0004732400047223000471
      230004702200046F2200046C2000035D1700599B8200DCEBE600000000000000
      000000000000E7E7E700C7C7C70000000000008248002AD59D001AD497000BC4
      830006BE7C0006BE7C0006BE7C0006BE7C0006BE7C0006BE7C0006BE7C0006BE
      7B0006BD7A0006BD790006BD79000CC4830022D69C003CDEAE000EB8800031A6
      7D00D2EBE20000000000000000000000000000000000FAD2C800E93C0A00FF8A
      3900FF7A2500FF681600FF631300FF631300FF631300FF631300FF631300FF63
      1300FF631300FF631300FF631300FF631300FF631200FF6E1A00FF822F00FF86
      3900FB5E1600E6330500FCE8E30000000000000000000000000000000000AAAB
      FB00032CF5000EBBFF000581FF000127FF00001CFF00001CFF00001CFF00001C
      FF00001CFF00001CFF00001CFF00001BFF00001BFF00001BFF00001AFF000246
      FF000890FF000AB1FF000270FC000002F300FFFCFF00FFFAFD00FFFCFE00C5CA
      C900D8DEDC00EFF4EF00F4F2E800FDEEDF00A3877100A97F6400B5806300BB81
      5E00BD805A00BD805A00BB7E5800BB7E5800BA7D5700BC805900BC805900BA7E
      5700B97D5600B87C5500B87C5400B6805500B77F5600B57F5400B47E5300B57D
      5400B8805600B7825700B8815700B87F5600B7805500B67F5600B27E5900B67C
      5A00B67C5800AA7E5800AF7C5800A77E5C007E7B570064967000B7F3D200AFE0
      C800B3E0CD00B3E1CC00B1E3CB00AFE2C700ACE1C600A9DFC400A6DFC200A6E0
      C300A3E1C200A0DFBF0099DBB80092D4B10094D3B200B2E9CB005B8969008880
      6300AB785E00AA7F6100B57B6200B37C6800CBAB9B00D6CDC400CCCFCB00959A
      9A00E6E7E70000000000F9F9F90000000000000000000000000000000000DEE2
      F7006697FA001A7DFF002299FF00239AFF00239CFF00249DFF0024A0FF001F8C
      FF001770FF000D41EC000B3BEB001159FF00115AFF00125BFF00125BFF00125D
      FF00125EFF00125EFF001360FF001361FF001361FF001361FF001363FF001363
      FF001363FF001363FF001363FF001364FF001365FF001365FF001365FF001465
      FF001465FF001465FF001365FF001365FF001365FF001364FF001363FF001363
      FF001363FF001363FF001363FF001361FF001361FF001361FF001360FF00125E
      FF00125EFF00125DFF00125BFF00125BFF00115AFF001159FF001157FF000D48
      F8000B3EF4001157FF001B83FF00239CFF002399FF002197FF002194FF002092
      FF00289FFF003291F1005D79DE000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000AEDEC70009924C000473250004752500047726000478
      2700057927000578290003521C00002C0D0001410F00024D13000766290056A3
      87003B9E7D0078C8A000ACE3C400D0E9DD00EDEDED00E8EEEA00CCECDB00A3E6
      BA00A4E6BB00A5E8BD00A6E9BE00A7E9BF00A8E9C000A9EBC100AAEDC300B0EF
      C900C8F6DF00F9FEFB0000000000000000000000000000000000FDFFFE00E8F9
      ED0095D3AC00013E100004782B00068A3A0009964F0018A06A00199965000D8B
      5000108F5600108D55000E8C51000A844200057A2C0004762600047425000473
      24000472230004712300046D2100036018005B9C8300DDEBE700000000000000
      000000000000E7E7E700C8C8C800000000000083490034D7A40020D69B000CC6
      860006C07E0006C07E0006C07E0006C07E0006C07E0006C07E0006C07E0006C0
      7C0006BF7B0006BF7B0006BF7B000DC6850027D8A10045E0B50010BA820032A8
      7F00D2EBE30000000000000000000000000000000000FAD2C800E93D0B00FF8E
      4000FF7D2A00FF6A1700FF651300FF651300FF651300FF651300FF651300FF65
      1300FF651300FF651300FF651300FF651300FF651300FF701C00FF863400FF8B
      3F00FC601700E6330500FCE8E30000000000000000000000000000000000AAAB
      FC00062EF7001CC5FF001EB4FF00053AFF000023FF000021FF000021FF000021
      FF000021FF000021FF000021FF000021FF000021FF000021FF000024FF000B64
      FF0018AEFF0017B6FF000770FD000003F500FFFEFF00FFFCFD00FFFEFE00CED0
      D100D8DCDC00EDEEEC00F7EFE900F3E2D400A2857100B8907600BD8D6E00BA8B
      6700B98C6400B88B6300B78A6200B6896100B5886000B3865E00B2865D00B185
      5C00B0845B00AF835A00B2825900B7815700B8805700B7805600B6805500B77F
      5600B9825800B8825700B9825800B8815700B8815700B6805800B37F5D00B77D
      5D00B77E5B00AD805A00B27E5900AB815D0083805B0067957000BAF2D300B2E2
      CA00B5E0CF00B4E1CC00B3E3CB00AFE2C700ADE1C600A9DFC400A7DFC200A4DE
      C100A4E0C100A1E0C0009BDDBA0095D7B40097D4B500B5EACD005C8868008981
      6300AE7B5E00AA805E00B57E5F00B17C6300C9AB9A00DAD3C900CCCFCD009297
      9900ECEDEE0000000000FCFCFC0000000000000000000000000000000000DEE3
      F700689BFA001C81FF00239CFF00239DFF00249DFF0024A0FF0026A3FF002190
      FF001874FF000D44ED000C3FED00125DFF00125EFF001260FF001360FF001360
      FF001362FF001363FF001364FF001365FF001465FF001465FF001465FF001467
      FF001467FF001467FF001467FF001467FF001467FF001467FF001467FF001467
      FF001467FF001467FF001467FF001467FF001467FF001467FF001467FF001467
      FF001467FF001467FF001465FF001465FF001465FF001365FF001364FF001363
      FF001362FF001360FF001360FF001260FF00125EFF00125DFF00125BFF000F4B
      FB000C40F800115AFF001D84FF00249DFF00239CFF00239AFF002297FF002194
      FF002CA3FF003797F2005F7AE1000000000000000000C0C0C000EFEFEF000000
      00000000000000000000AEDFC9000A955000047726000578270005792700057A
      2900057C2B0004732500024B1700002C0D0001431000025117000B7A45002091
      690055A88E008ACFAB00B6E5CA00DAEBE300EEEEEE00E1EDE600B0E9C900A4E6
      BD00A5E8BE00A6E9C000A7EAC100A9EAC200A9EBC200AAEDC200B0F0C800C8F6
      E000000000000000000000000000000000000000000000000000FDFFFE00EAFD
      F1009EE1BA000240100005792B00068B3B00089449002AA46F002A9D6A000D8C
      4D00169762001595600011915B00078034000579290004782700047726000476
      260004742500047325000470220003611A005B9C8600DDEBE700000000000000
      000000000000E8E8E800C9C9C9000000000000864C0040DAAA0026D89F000DC7
      880006C17F0006C17F0006C17F0006C17F0006C17F0006C17F0006C17E0006C1
      7E0006C17E0006C17E0006C17E000FC888002CDAA50050E2BA0013BD860032A9
      8200D2EBE30000000000000000000000000000000000FAD3C800EA400C00FF92
      4500FF822E00FF6C1900FF661400FF661400FF661400FF661400FF661400FF66
      1400FF661400FF661400FF661400FF661400FF661400FF722000FF8A3A00FF8F
      4400FC641900E6360500FCE8E30000000000000000000000000000000000AAAC
      FC00092CF9002EBFFF0051D7FF00168AFF00033BFF000027FF000027FF000027
      FF000027FF000027FF000027FF000027FF000026FF000026FF000148FF002D9E
      FF0049D5FF002CAFFF000551FD000004F700FFFFFE00FFFEFE0000000000D7D6
      D800D5D3D500F3EDEE00FAEFEA00EBD8CD00A4887500C9A68C00C99F8200C39D
      7B00BE9E7B00BD9D7A00BB9B7800BB9B7800BA9A7700B4947100B4947100B393
      7000B2926F00B1916E00B58F6D00BC8C6900BE8C6800BD8B6700BC8A6600BC8A
      6600B9876300B7856100B7856100B6846000B6846000B5846200B5876800B985
      6800BC856600B4876400BA856200B48A66008A84600067946F00BAF2D300B4E2
      CE00B7E0D100B4E1CC00B3E3CB00B0E2C700AEE1C600A9DFC400A7DFC200A3DD
      C000A3DEC000A1E0C0009EDEBB0097D9B6009AD7B800B8E9CF005D876A008D85
      6600B3846500AE876400B9856500B1806600CEB4A100DDD8CE00C8CDCC009498
      9C00F3F5F500FEFEFE000000000000000000000000000000000000000000DEE3
      F8006A9EFB001E84FF00249EFF0024A1FF0024A2FF0026A3FF0026A5FF002192
      FF001379F5000659CF000753D5001062FF001362FF001363FF001364FF001464
      FF001465FF001466FF001467FF001467FF001468FF001469FF001569FF001569
      FF00156BFF00156BFF00156BFF00156BFF00156BFF00156BFF00156BFF00156B
      FF00156BFF00156BFF00156BFF00156BFF00156BFF00156BFF00156BFF00156B
      FF00156BFF001569FF001569FF001469FF001468FF001467FF001467FF001466
      FF001465FF001464FF001364FF001363FF001362FF001361FF00135FFF000F50
      FC000D45FB00135EFF001E88FF0024A0FF00249DFF00239DFF00239BFF002299
      FF0031A8FF003F9BF300607DE2000000000000000000C2C2C200F0F0F0000000
      00000000000000000000AFE0CB000EA06200119D6300119D64000D9A5C000B97
      56000B96540007713000023E1000002E0D0001461000035318000A7A45001D8E
      650056A88E008DD0AC00BCE6CD00DEECE600EEEEEE00DEECE300A5E6BE00A5E8
      BE00A6E9C000A8EAC100A9EAC200AAECC300AAEDC300ADEEC600BFF2D500F5FD
      F800000000000000000000000000000000000000000000000000F9FFFB00DEFC
      EC009FE1BB000241100005782900068B3C00079446002EA570002E9E6A00088B
      40000A954D000B944E0007853B00057E2D00057B2A0005792A00057828000578
      270004762600047526000471240003631C005C9E8600DDEBE700000000000000
      000000000000E8E8E800C9C9C9000000000000874D0049DBAF002ADBA3000FCB
      890007C47F0007C47F0007C47F0007C47F0007C47F0007C47F0007C37F0007C3
      7F0007C37F0007C37F0007C37F0012CB8A0033DEA8005BE5BE0017C08B0033AC
      8200D2ECE30000000000000000000000000000000000FAD3C900EB420E00FF97
      4C00FF853200FF6F1A00FF691400FF691400FF691400FF691400FF691400FF69
      1400FF691400FF691400FF691400FF691400FF691400FF762200FF8E3F00FF94
      4A00FD681E00E9370600FDE8E30000000000000000000000000000000000BEC5
      FD00324FFB001360FF0076E0FF0080DCFF004CA6FF001459FF000033FF00002E
      FF00002DFF00002DFF00002DFF00002DFF00002DFF00176EFF005FBAFF007ADC
      FF0068D9FF003994FF00031CFD000C1DF800FEFEFA00FFFFFD0000000000E1DD
      E200CCC6CA00FCF3F500FEF0EF00EDD8D100AA8E7E00D9B8A000D8B49600D5B1
      9600D3B09900D2AF9800D1AE9700D0AD9600CFAC9500CBA79100CBA79100C9A5
      8F00C8A58E00C7A38D00C8A38A00C99F8500CA9F8500C99E8400C89D8300C89D
      8300C4997E00C1967B00C1967B00C0957A00C0957A00BF947A00BD947A00C493
      7900C6937600BF957400C6937300C09574008F88660068937000BCF0D500B8E3
      D100B8E0D200B4E1CC00B3E3CB00B1E1C700AEE1C600ABDFC400A8DFC200A2DC
      BF00A3DEC000A3DFC0009FDFBC009ADBB8009ED7BC00B8E9D2005E876C00938C
      7000BF927300B7967000C0927000B68A6E00DAC4B000DDD9D100C3C8C900999D
      A300FAFBFB00FDFDFD000000000000000000000000000000000000000000DEE3
      F9006BA0FB002088FF0025A0FF0026A3FF0026A5FF0028A7FF0029AAFF00118F
      DB00068A950001866E00018072000776AA001068FE001466FF001467FF001468
      FF001568FF00156AFF00156BFF00156BFF00156BFF00156BFF00156CFF00166C
      FF00166DFF00166DFF00166DFF00166EFF00166FFF00166FFF00166FFF00166F
      FF00166FFF00166FFF00166FFF00166FFF00166FFF00166EFF00166DFF00166D
      FF00166DFF00166CFF00156CFF00156BFF00156BFF00156BFF00156BFF00156A
      FF001568FF001468FF001467FF001466FF001465FF001464FF001363FF001054
      FE000E48FD001460FF001E8BFF0026A2FF0024A2FF0024A0FF00249EFF00239C
      FF0035ADFF0045A0F400607FE4000000000000000000C3C3C300F0F0F0000000
      00000000000000000000AFE0CD0014A36C0027AB7E0026AB7D0025A97B0023A8
      78001AA26F000E884C000551230000300D000148110003531700087337002293
      690043A2820084CEA700BDE7CD00DFECE600E8EEEB00D0ECDD00A5E8BE00A7E9
      C000A8EAC100A9EAC200AAECC300ABEEC500ABEEC500BCF1D200E3FAEE00FEFF
      FE00000000000000000000000000000000000000000000000000F6FEF900D8FA
      E900A0E3BC000243110005772900068C3C000A99530031A879002FA06C000790
      430008964A0008964C000892460005813100057D2C0004742500036B1E00046F
      200005782700057727000474250003661D005C9E8700DDEBE700000000000000
      000000000000E8E8E800CACACA0000000000008A4F0052DDB40031DDA90011CC
      8B0008C5810008C5810008C5810008C5810008C5810008C5810008C5810008C5
      810008C5810008C5810008C5810014CC8C003BDFAD0065E7C40019C28E0035AD
      8300D3ECE30000000000000000000000000000000000FAD4C900EC450E00FF9D
      5200FF883700FF701C00FF6A1600FF6A1600FF6A1600FF6A1600FF6A1600FF6A
      1600FF6A1600FF6A1600FF691600FF691600FF691600FF772400FF924500FF9A
      5100FD6D2200EA390600FDE9E30000000000000000000000000000000000EBEE
      FF0099A4FD000527FA002879FF00A2DEFF00B4E1FF00ABCEFF0091B9FF006FA2
      FF005A93FF005B94FF005C94FF0070A5FF00A0C0FF00ABD4FF00B0E5FF009CE6
      FF00569EFF000D33FD00232CFA00A1AAFC00F9FCFA00FEFFFE00FFFEFF00E6E2
      E500C3BDC000FFF9FB00FFF3F200EEDBD500AA938500DCC2AE00DBBFA600E0C0
      AC00E0BEB000DFBDAF00DEBBAD00DDBBAD00DCBAAC00D9B7A900D9B7A900D8B5
      A800D7B5A700D5B3A500D5B2A400D0AE9D00D0AE9D00D0AE9C00CFAD9B00CFAD
      9B00CCA99800CAA89700CAA79600C9A79600C9A69500C9A69500BF9E8A00C69D
      8900C99D8700C49E8500C99D8400C09E82008D8A6C006B917300BFEED600BBE3
      D200BBE0D300B4E0CC00B3E3C900B1E2C700AEE1C600ACDFC300AADFC200A2DB
      BE00A3DDBF00A3DFC000A2DFBD009EDBB900A0D8BD00B9EAD30061896D009792
      7600C49D7F00BEA07C00C59D7C00B6917600E4D1BF00DCDAD200C0C3C6009FA2
      A800FCFDFD00FBFBFB0000000000FEFEFE00000000000000000000000000DEE4
      F9006CA4FB00218DFF0026A4FF0026A7FF0028A9FF002BABFF0019A0F3000697
      9A00018F6000008B4E00008B500002886B00077CAF00116BFF00156AFF00156B
      FF00156CFF00166CFF00166DFF00166DFF00166FFF00166FFF00166FFF001670
      FF001670FF001670FF001770FF001770FF001771FF001771FF001771FF001771
      FF001771FF001771FF001771FF001771FF001771FF001770FF001770FF001670
      FF001670FF001670FF00166FFF00166FFF00166FFF00166DFF00166DFF00166C
      FF00156CFF00156BFF00156AFF00156AFF001568FF001467FF001466FF001158
      FF000F4CFE001564FF001F8DFF0027A6FF0025A4FF0025A2FF0025A0FF00249D
      FF003BAFFF004CA4F4006183E6000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B0E1CE0018A5710035AE850033AE850030AD840030AD
      830029A87E001E9B6A000D623A0000300E000148110002521500045E1F003E9C
      7900319976007ACAA000B9E7CC00DAECE400E3EEE900C3ECD700A6E9BF00A8EA
      C100A9EAC200AAEBC300ABEDC400ACEFC600B0F0CB00CBF5DE00F9FEFC000000
      0000000000000000000000000000000000000000000000000000F0FDF700C6F1
      DB0085C0A200024A1200057C2D00068D3E000C9C5A0025A67600229E69000893
      490009984E0009984F0009994F00068A3E0005812F0004681E00025614000361
      1B0004772700057928000576260003681E005D9F8800DDEBE700000000000000
      000000000000E9E9E900CBCBCB0000000000008C50005BDFB90039DFAD0014CD
      8D0008C6820008C6820009C6820009C6820008C6820008C6820008C6820008C6
      820008C6820008C6820008C6820017CD8E0043E0B1006EE8C8001DC4910035B0
      8500D3EDE40000000000000000000000000000000000FBD4C900ED470F00FFA3
      5800FF8B3B00FF711E00FF6A1600FF6A1600FF6A1600FF6A1600FF6A1600FF6A
      1600FF6A1600FF6A1600FF6A1600FF6A1600FF6A1600FF782600FF964900FFA0
      5800FD712800EB3B0700FDE9E30000000000000000000000000000000000FCFD
      FF00E1E4FE00848FFC000F35FC00385CFF0089AFFF00D5E3FF00E8EFFF00D9E7
      FF00D1E1FF00D1E2FF00D2E2FF00DAE7FF00EEF2FF00DAECFF0090C0FF004B7A
      FE001B3AFD00293CFC00949BFC00EEF0FE00F8FCFD00FBFEFF00FAF9FB00EDEB
      ED00B8B5B400F5F1EE00FBF3EE00FEF6EE009F938900E1D4C500E3D6C700DFD0
      C400DDCBC300D2BFB700C9B6AE00CFBCB400CFBCB400C7B4AC00C8B6AE00C8B5
      AD00C6B3AB00C6B3AB00C2AEA600C2ADA300C6AFA600C2ACA200C5AEA500C4AD
      A400C1AAA100C1AAA100C1AAA100C1AAA100C1AAA100C1AAA100BCA69A00C0A5
      9800C1A49700BEA39600BAA49600AEA59500858D7D00728E7D00C4E9D900B9DE
      D000B8DDCF00B3E1C900B2E4C700B0E3C600AFE1C500ADE2C400ABE1C300A6DD
      BF00A4DDBE00A3DCBD00A1DBBC009FDABB00A0DBBE00B8EED20063876B009D9F
      8300BCA38900CFAC9300C79F8800AC8C7A00E7D4C800D9D3CF00B5B6B800C6C9
      CE00FEFFFF00000000000000000000000000000000000000000000000000DEE4
      FA006EA7FC002492FF0028A8FF0029ABFF002AACFF001EA5FF00089FAB000199
      690000915300008E4F00008F500000935700019377000880C800146EFF00166E
      FF00166FFF00166FFF00176FFF001770FF001771FF001772FF001772FF001773
      FF001773FF001774FF001874FF001874FF001874FF001874FF001974FF001974
      FF001974FF001974FF001974FF001874FF001874FF001874FF001874FF001774
      FF001773FF001773FF001772FF001772FF001771FF001770FF00176FFF00166F
      FF00166FFF00166EFF00166EFF00166DFF00156CFF00156AFF00156AFF00125B
      FF000F50FF001567FF00208FFF0029AAFF0027A7FF0026A5FF0026A3FF0025A0
      FF003FB2FF0052A8F5006185E8000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B1E1D0001DA775003EB089003CB089003AAF88003AAF
      88003BAD880047AA87002D775400023D120001481100025314000256150048A2
      7F001F7B510072BC9000B2E7C900D4EBE000E0EEE700BDECD300A7EAC100A9EA
      C200AAECC300ABEDC400ACEFC600ADEFC800BDF3D400E0FAEC00000000000000
      00000000000000000000000000000000000000000000FEFFFE00E8FDF200ADE9
      CD005CA488000254150006833500079141001EA3680024A77800159E65000997
      51000A9A53000A9A53000A9B540008934B00067D2E00045D1800034C10000356
      1600046D2100057B2A0005772800046A20005DA08900DDEBE800000000000000
      000000000000E9E9E900CCCCCC0000000000008E520065E0BD0041E1B00017D0
      900009C8830009C8830009C8830009C8830009C8830009C8830009C8830009C8
      830009C8830009C8830009C883001AD091004AE3B40077E9CB0022C7950036B2
      8700D3EDE40000000000000000000000000000000000FBD5C900EE491100FFA8
      6000FF8E3F00FF731F00FF6C1700FF6C1700FF6C1700FF6C1700FF6C1700FF6C
      1700FF6A1600FF6A1600FF6A1600FF6A1600FF6A1600FF7A2800FF9A4E00FFA5
      5F00FD752C00EC3E0800FDE9E300000000000000000000000000000000000000
      0000FBFCFF00E5E7FF00959DFD006273FE004763FD00606AFD007987FE0093A6
      FF00B5BEFF00CDCEFF00C4C9FF0092A6FF007A8EFF006371FD003A59FD003953
      FD006470FD00A5ADFD00E7EAFE0000000000F8FBFE00FAFCFE00F8FAFB00F8F8
      F700B9B7B500ECE9E500F5F1EB00FFFBF300A1999000DCD3C800E9E0D300EEE3
      DA00BCB1AA00413630003B2E28003D322E005E534D006F635C0071665F007368
      610074696200786C65007469610070645D0072665F006E625B0072665F007266
      5F006C6059006A5E57006A5E57006A5E57006A5E57006A5F57006E6259006F60
      580072605700715F5700696056005F645800576B5E0073958500C2EBDB00B2DD
      CD00B7E2D100B0E2C900ADE3C500ABE2C400AAE1C300A8E0C200A7E0C200A3DE
      BF00A2DDBE00A1DCBE009EDBBD009DDABB009CDABC00B4EDD0005A7E6200969C
      8200C2B09600D3B39C00C7A59100B3988800F2E1D800DBD5D200ADADAF00EDF0
      F200FEFFFF00000000000000000000000000000000000000000000000000DEE4
      FB0070ABFC002697FF002AABFF002BADFF0024ADF8000BA5BE0001A36E00009A
      5B0000965800009657000096570000995900009E6500029885000B76BF000E50
      E2000E4AE8000E4AE9000F4AE9000F4BE900104BEA00104CEA00104DEA00104D
      EB00104DEB00104EEB00104EEB00104FEB00104FEB00104FEB00104FEB00104F
      EB00104FEB00104FEB00104FEB00104FEB00104EEB00104EEB00104EEA00104E
      EA00104DEA00104CEA000F4CE9000F4CE9000F4BE9000F4AE8000F4AE8000E49
      E7000E49E7000E48E7000E48E6000E46E6000D46E5000D45E4000D45E4000B3D
      E3000B41EC00156AFF002193FF002CAFFF002AAAFF0028A8FF0026A6FF0025A3
      FF0044B5FF0059ABF6006286EB000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B3E1D10023A97A0046B18D0044B18C0037AC84003FB0
      8A0046B08C006AB59B005093750009582A000147110002541400025715002D98
      6B00116D3B0068AF8500A6E1C000CCEBDA00E0EEE700BEECD400A8EAC100A9EB
      C200AAEDC400ACEEC600ACEFC700AEF0CA00CBF6DE00F4FDF900000000000000
      00000000000000000000000000000000000000000000F6FEFA00DAFCEA0099DF
      BB002A80540003621B00068B3D00079446003BAD7B002FA877000E9A5C000B9B
      58000B9C59000B9C59000B9C59000A9954000780370005621E00045414000357
      140004681D00057D2B0005792900046C20005DA08900DDEBE800000000000000
      000000000000E9E9E900CDCDCD0000000000008F54006DE1C20049E2B4001AD1
      920009CA850009CA850009CA850009CA850009CA850009CA850009CA850009CA
      850009CA850009C9850009C985001CD1930052E4B9007FE9CF0028CA990037B3
      8700D3EDE40000000000000000000000000000000000FBD5C900F04D1300FFAE
      6700FF924300FF741F00FF6D1700FF6D1700FF6D1700FF6D1700FF6D1700FF6D
      1700FF6B1600FF6B1600FF6B1600FF6B1600FF6B1600FF7D2B00FF9F5400FFAC
      6600FD793000ED3F0800FDE9E300000000000000000000000000000000000000
      0000000000000000000000000000D2D8FE008C96FD006D74FD006478FD006984
      FF007D8EFE00959EFE008C99FE005A78FE00516DFF005D68FD00717BFD009CA6
      FD00D5D9FE00FBFBFF000000000000000000F3F6F900FCFEFF00FBFDFD00FDFD
      FD00D4D3D200B6B3AF00F1EDE800F8F2EB00B8B1A800E0DED600E5DDD300F4EB
      E2009E959100150C0C0012090900241B1A00C3BBB700F6EDE900F9F0EC00FBF2
      EE00FBF3EF00FDF4F000FBF3EE00FBF7F200F9F6F100F1EEE900F2EFEA00F2EE
      E900F5F2ED00F8F5F000F9F5F000F9F5F000F8F5F000F8F5F000F8F6EE00F9F4
      EE00FCF5EE00FBF4ED00F5F6EC00ECFAEE00AAC8BA00648E7D00BAEBD900A9DE
      CA00A9DDC800ABE2C800AAE4C700A8E2C500A8E2C500A6E2C400A3E1C300A6E4
      C700A5E3C600A2E3C500A1E2C400A0E0C300A0E0C300BAF4D800587C630095A0
      8800CBBDA600D7BDA800BC9E8B00C8B1A200E7D9D000DCD5D200AEADAF00F9FA
      FB00FFFEFF00000000000000000000000000000000000000000000000000DFE5
      FB0072AEFC00299BFF002BAEFF0026AEF60014ACC80001AC6B0000A5640000A0
      6000009F5E00009F5E00009F5E00009F5E0000A1600000A4660001917100034A
      B3000834D6000932DE000933DE000933DE000A34DF000A34DF000A35DF000A35
      E0000A35E0000A35E0000A35E0000A36E0000A37E0000A37E1000A37E1000A37
      E1000A37E1000A37E0000A37E0000A36E0000A35E0000A35E0000A35E0000A35
      DF000A35DF000A34DF000934DE000933DE000933DE000932DD000932DC000930
      DC000830DC00082FDA00082EDA00082EDA00072DD800072CD700072CD6000628
      D4000938E100166EFF002296FF0031B4FF002FAFFF002CADFF0028AAFF0027A6
      FF0049B9FF0060AFF7006388ED000000000000000000C6C6C600F1F1F1000000
      00000000000000000000B5E2D30028AA7E004AB290003DAE8700249F6F0036AB
      820044B08C0068B89C0057A78C0016724C000141110002551500025A16000B7E
      41000F7F4A00479D760089CEA900C2EBD200DCEEE500C5EDD800A9EBC200AAED
      C400ACEEC600ADEFC800ADF0C800B2F2CF00D6F9E60000000000000000000000
      000000000000000000000000000000000000FDFFFE00E7FDF100BEF3D8007FC4
      9E00055A1D00057426000791430009984D0052B688003BA873000B9653000C9E
      5D000C9F5E000C9F5E000D9F5E000C9D5C000E9052000A78350006661F000565
      1F0006722900057F2D00057C2A00046E21005DA18900DDECE800000000000000
      000000000000EAEAEA00CECECE00000000000091560075E3C60050E4B7001CD3
      94000ACC87000ACC87000ACC87000ACC87000ACC87000ACC87000ACC87000ACC
      87000ACC87000ACB87000ACB87001FD3950059E6BD0088EBD3002FCC9C0038B6
      8800D3EEE40000000000000000000000000000000000FCD6C900F1501400FFB4
      6E00FF954800FF752100FF6D1700FF6D1700FF6D1700FF6D1700FF6D1700FF6D
      1700FF6D1700FF6D1700FF6D1700FF6D1700FF6D1700FF802E00FFA35A00FFB2
      6D00FD7D3500EE410800FDE9E300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F6FF00DEE2FE00BFC7
      FE00ABB4FE00ABB4FE00ABB4FE00ABB4FE00C0C7FE00DEE2FF00F7F8FF000000
      000000000000000000000000000000000000FBFDFE00FBFDFE00FAFCFD00FDFD
      FD00F7F7F600B6B3B100D7D5D000F8F2EC00E6E2DB00B9B2A900E5E1DA00F4EF
      E900EEE9E700C1BBB900B2ACAB00948E8D00C8C2C000F5EFEE00F6F0EE00F5EF
      ED00F1EBEA00F1EBEA00ECE9E700F1F3F100EAEDEA00DCDFDC00D9DDDA00D8DB
      D800D4D8D500D3D8D400D4D8D500D4D7D500D4D8D400D3D8D500D4DCD900D6DC
      D800D9DBD700D8DAD500D1DBD200CBDFD40092B5A7005A8C7800B8F0DA00A4DD
      C600ADE5CE00AEE7CD00AAE5C900A9E3C800A8E2C700A6E1C600A5E1C500A3DE
      C400A0DEC3009DDEC1009DDDC1009BDBC0009ADBC000B1EBD30062897100AFBD
      A600D2CAB500D3BFAC00B29B8A00EFDDD000E8DDD600A6A1A100DCDADC00FCFC
      FF00FFFEFF00000000000000000000000000000000000000000000000000DFE5
      FC0073B1FD002C9FFF0028B2F90016B0D50002AF7B0000AD690000A8660000A7
      650000A7650000A7650000A7650000A7650000A7650000A7660002B571000396
      96000D73DF001369FB001569FF001569FF00156AFF00156BFF00156BFF00156B
      FF00166BFF00166DFF00166DFF00166DFF00166DFF00166DFF00166DFF00166D
      FF00166DFF00166DFF00166DFF00166DFF00166DFF00166CFF00166BFF00166B
      FF00166BFF00156BFF00156BFF001569FF001569FF001569FF001568FF001566
      FF001566FF001466FF001463FF001463FF001462FF001361FF00135FFF001054
      FD000F50FD001770FF002398FF0036B8FF0033B4FF002FB1FF002CADFF002AAA
      FF004EBDFF0067B3F800648BEF000000000000000000C7C7C700F1F1F1000000
      00000000000000000000B6E2D4002EAC83004CB29000209D6C000F8C5200209D
      6C0040AD880050B3920047AE8D0026815D00003C100002561500025B16000464
      1D00158E5800118355005BAF8700ADE3C600CEEDDD00D3EEDF00AAEDC300ABEE
      C600ADEEC700ADEFC900AEF1C900BBF5D500DEFBEC0000000000000000000000
      0000000000000000000000000000FDFFFE00F0FEF600D0FAE30097D9B8004A8F
      6C00025A19000686360008954800179F610055B98C0038A971000B9956000DA0
      62000DA062000DA063000EA163000EA163001FA171001E905C00107A3C000A7A
      3A000B84420005802F00057D2C00047022005EA28A00DEECE800000000000000
      000000000000EAEAEA00CECECE0000000000009458007CE4C90055E5BB001ED4
      97000ACD89000ACD89000BCD89000BCD89000ACD89000ACD89000ACD89000ACD
      89000ACD89000ACD89000ACD880021D5970060E7C00091ECD70036CEA00038B7
      8B00D3EEE40000000000000000000000000000000000FCD6C900F2511500FFBA
      7500FF994E00FF772300FF6E1800FF6E1800FF6E1800FF6E1800FF6E1800FF6E
      1800FF6E1800FF6E1800FF6E1800FF6E1800FF6E1800FF823000FFA76000FFB7
      7400FD813800F0440900FDEAE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9FBFC00FDFEFE0000000000F6F6
      F600FAFAFA00F6F5F400A7A5A100E2DED900F9F5EF00F6F0E900C1BBB500C3BE
      BB00C7C5C500D3CFD000D4CFD100A5A2A300CBC8C900F6F1F300F7F3F400F6F3
      F300F5F1F200F7F3F400EFF0F000EFF5F400E9EEEE00DDE3E300DEE4E300E1E6
      E600E0E5E500E0E6E500E0E6E600E0E5E600E0E6E500DFE6E600DDE9E900DFE8
      E800E1E7E600E2E5E400DBE6E100D4EAE0009BC0B10060927E00C8F9E800D1FC
      F100C9F9E500C8FAE200CAFDE500C9FCE400C8FAE400C6FAE200C5F9E100C3F8
      E100C0F8E000BDF7DD00BDF6DE00BBF4DD00B9F4DC00B8F0D9005D846E009FB1
      9E00B2AF9D00C6BAAA00EDDCD000DFD3CA00B4ACA700BAB6B500FAF8FA00FFFE
      FF00FFFEFF00000000000000000000000000000000000000000000000000DFE6
      FC0075B4FD002BA3FB001DB4DD0006B79F0003BB750001B06C0001B06C0001B0
      6C0001B06C0001B06C0001B06C0001B06C0001AF6C0001AD6C0001AD690003BB
      7400059EAD001286E700197EFE001A7DFF001A7EFF001A80FF001A80FF001A80
      FF001C80FF001C80FF001C81FF001C81FF001C81FF001C82FF001C82FF001C82
      FF001C82FF001C82FF001C82FF001C82FF001C81FF001C81FF001C81FF001C80
      FF001C80FF001A80FF001A80FF001A80FF001A7EFF001A7DFF001A7DFF001A7C
      FF001A7BFF00197BFF001979FF001979FF001979FF001878FF001876FF001567
      FF00125CFF001773FF00249AFF003ABAFF0036B7FF0034B5FF0030B1FF002CAD
      FF0054C0FF006DB5F900648BF1000000000000000000C8C8C800F1F1F1000000
      00000000000000000000B8E3D50035AE860051B08E000B8141000D874C000E8B
      51003CA87F0054B5940052B5940037906C00034C190002541500035C17000360
      19000B8446000B7F46003D916B0083C3A600BCE9D100D9EFE300AFEEC900ACEE
      C600ADEFC700AEF1C900AFF2CA00C4F6DA00E7FCF10000000000000000000000
      00000000000000000000FEFFFE00F1FEF800D0FCE500ADECC80069B184000660
      21000471270008964A0009984E004AB2890033A87E0014A069000EA065000FA2
      67000FA267000FA267000FA269000FA2690039A9830053A98D00379A72001894
      5F000F92540005823100057E2E00047223005EA38A00DEECE800000000000000
      000000000000EAEAEA00CFCFCF000000000000955A0084E5CC005BE6BE0020D5
      99000BCE8A000BCE8A000BCE8A000BCE8A000BCE8A000BCE8A000BCE8A000BCE
      8A000BCE89000BCE89000BCE890023D69A0066E8C4009BEDDA003DD0A30039B9
      8D00D3EFE50000000000000000000000000000000000FCD7C900F3531500FFC0
      7C00FF9D5300FF792500FF701900FF701900FF701900FF701900FF701900FF70
      1900FF701900FF701900FF701900FF701900FF701900FF843300FFAC6600FFBD
      7B00FD843E00F1460900FDEAE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00FCFDFD00FBFBFB000000
      0000FAFAF900FFFFFE00F2F1EE00B1AEAB00C3BFBB00CCC8C300D6D3CF00D9D7
      D600D7D6D900D6D4D700D9D7DA00B2B1B400C2C1C400EAE8EB00ECEAED00F0EF
      F100F0EFF200F2F0F300F1F0F200EEEFF100E6E8EA00D5D7D900D0D2D400D2D4
      D600D1D3D500D1D3D500D1D3D500D1D3D500D1D3D500D0D3D700C4CED100CCD4
      D800DCDEE000E9E9EA00EFF5F200ECFCF500B1CDC1004D756400658F7D00608C
      770068917C006A907C006A8F7C006A8F7C00698D7C00678D7B00668D7A006C94
      82006993800068927E0067927F0066917F0063927F0064968300577A6900B4C3
      B600CACABC00D9D1C600C9C0B700B8B1AA00CDCAC600FFFEFF00F9F6F900FEFC
      FE00FFFEFF00000000000000000000000000000000000000000000000000DFE6
      FD0072B4FE0019A2DC0006B8A00004C17C0002B7700002B8700002B8730002B8
      730002B8730002B8730002B8730002B8720002B7700002B7700002B7700002B7
      700004C17C000AA1C7001587F6001C81FF001C81FF001C81FF001C81FF001C84
      FF001C84FF001C84FF001C84FF001D84FF001D85FF001D86FF001D86FF001D86
      FF001D86FF001D86FF001D86FF001D86FF001D85FF001D84FF001C84FF001C84
      FF001C84FF001C84FF001C81FF001C81FF001C81FF001C81FF001B81FF001A80
      FF001A7FFF001A7DFF001A7DFF001A7DFF00197BFF00197BFF00197AFF00166B
      FF001360FF001876FF00279DFF0043BEFF003EBAFF003AB8FF0034B5FF0030B1
      FF005BC4FF0075B9F900678FF2000000000000000000C8C8C800F1F1F1000000
      00000000000000000000BBE4D6003DAF8A0056B290000A7D3D000F8D57000D86
      4B0040A57D0059B6980059B6980041A985000E7F4F0001471100035F18000361
      190003631B000E8B4F000B753E003E83590097CEB600BBEED500BBEED500ADEF
      C700AEF2C900AFF2CA00B0F3CC00C4F7DB00E7FCF10000000000000000000000
      00000000000000000000F5FEFA00CDFBE500B9FAD9006AB98C00066225000365
      1F00068D420008984E000C9C5A0077C99D0037A467000D995A0011A46C0010A3
      6A0010A3690011A46B0011A46D0011A46D001FA7790074B8A00089B8A80048A5
      7E00098E48000583310005813000047325005FA38B00DEECE800000000000000
      000000000000EBEBEB00CFCFCF000000000000985B008CE6CF0062E8C20023D7
      9A000CD08A000CD08A000CD08A000CD08A000CD08A000CCF8A000CCF8A000CCF
      8A000CCF8A000CCF8A000CCF8A0025D79C006BE9C800A3EFDE0041D3A6003CB9
      8E00D3EFE50000000000000000000000000000000000FCD7CA00F3571800FFC5
      8400FFA25900FF7D2800FF741C00FF741C00FF741C00FF741C00FF741C00FF74
      1C00FF741C00FF741B00FF721B00FF711B00FF711B00FF863700FFB06E00FFC1
      8500FE884500F2480B00FEEAE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFE00FFFFFE00FFFFFE00FAFAF900EAE8E600DDDBD800E1DDDC00DBDA
      DA00D4D5D900D1D2D600D2D3D700B4B5B900C7C8CC00EDEEF200F2F3F700F2F3
      F700EDEEF200F0F0F400F0EEF200EDEAEE00F2EDF200E9E5EA00E8E5EA00F0EC
      F000EEEAEE00EBE8ED00ECE8ED00EDE8ED00ECE8ED00EAE9ED00DEE3E800E3E5
      EA00EDE8ED00F2EDEF00F5F2F200EFF6F200E1F3EA00CAE4D900C5DED300C8E1
      D400C7E0D000C9DFD000CADFD100CADFD100CADED200CADFD100C8DFD100C4DD
      D000C3DCCF00C2DCCD00C1DCCE00C1DCCF00AACBBD008FB5A600B9D4C900D1DE
      D200D1D1C800E1DCD600E7E2DE00F5F4F100FEFEFE00FFFEFF00FDFAFE00FFFD
      FE00FFFEFF00000000000000000000000000000000000000000000000000DFE6
      FD0063B2DD000AABAD0006C5880004BE790004BD780004BD780004BF780004BF
      780004BF780004BF780004BF780004BE780004BD780004BD780004BD780003BC
      760004BE790006BE86000BA4C9001689FC001D85FF001D85FF001D85FF001D86
      FF001D88FF001D88FF001D88FF001D88FF001D88FF001D88FF001D88FF001D88
      FF001D88FF001D88FF001D88FF001D88FF001D88FF001D88FF001D88FF001D88
      FF001D88FF001D86FF001D85FF001D85FF001D85FF001C84FF001C84FF001C83
      FF001C81FF001C81FF001C80FF001A80FF001A7FFF001A7EFF001A7DFF00166F
      FF001363FF00197AFF0027A1FF004AC2FF0046BEFF003EBCFF0039B9FF0034B5
      FF0061C8FF007DBDFB006790F6000000000000000000C9C9C900F1F1F1000000
      00000000000000000000BFE5D80047B28E005BB694000E8C520011905A001293
      5D0046AD86005FB99B005FB89B005BB69800439C7800044F1600035F18000362
      1A0003651C00057128000B894A00117E47003B81540097CEB300B2EFCE00AEEF
      C900AFF2CA00B0F3CC00B1F4CE00C5F8DD00E8FCF2000000000000000000FEFF
      FF00FBFFFB00DDFBEC00C4FADE00B3F0CF005CAB7C0010682D0003631F000683
      350008964B000999500057B78F0032AB7D0017A16B0012A36C0014A5700012A5
      6E0011A46D0011A36B0011A46D0015A5710017A6730020A776001DA069001091
      4D00068738000685330005833200047726005FA48B00DEECE800000000000000
      000000000000EBEBEB00D0D0D0000000000000995D0095E7D30067E8C70025D9
      9D000CD28C000CD28C000CD28C000CD28C000CD28C000CD28C000CD28C000CD0
      8C000CD08C000CD08C000CD08C0028D89E0072EACB00ADEFE20047D5AA003CBD
      8F00D3F0E50000000000000000000000000000000000FCD8CA00F45A1900FFCA
      8A00FFA65F00FF7F2B00FF751E00FF751E00FF751E00FF751E00FF751E00FF75
      1E00FF751E00FF751E00FF751E00FF751E00FF751D00FF8C3D00FFB87A00FFC5
      8D00FE8C4900F34C0B00FEEBE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00FAFAFA00FEFEFE00FFFFFE00FEFEFE00FAFC
      FC00FDFFFF00FCFEFF00FDFFFF00D2D4D500C0C2C300F1F3F400E0E2E300E4E6
      E700EBEDED00ECEEEF00F0EFF100F9F4F500FCF5F800F8F2F500F8F3F500F6F0
      F300F4EEF000F4EFF100F5EFF100F5EEF100F4EFF100F3EEF300F1F1F700F3F1
      F700F8F1F600FCF1F400F9F2F300F3F1F000E7EFEA00E2EFEA00E0F1E800E2F1
      E600E6F2E800EAF2E900ECF2E900EBF2EA00EBF1EB00EAF2EA00E8F3E900E1EB
      E300E3EEE600E5F2E800E5F3EA00E7F5ED00C6DAD100ADC7BD00EEFDF700F5FC
      F600FFFDF800FFFEFC00FEFEFC00FBFEFF00F8FDFD00FCFEFE00FDFBFE00FCF9
      FB00FFFEFF00000000000000000000000000000000000000000000000000ACE4
      DE003FCBB00007C38E0005C5800005C37E0005C37E0005C37F0005C37F0005C5
      7F0005C57F0005C57F0005C47F0005C37E0005C37E0005C37E0005C37E0005C2
      7D0005C17C0005C47F0007C192000EA8CA00188DFF001D88FF001F8AFF001F8A
      FF001F8AFF001F8AFF001F8AFF001F8BFF001F8CFF001F8CFF001F8CFF001F8C
      FF001F8CFF001F8CFF001F8CFF001F8CFF001F8CFF001F8BFF001F8AFF001F8A
      FF001F8AFF001F8AFF001F8AFF001D88FF001D87FF001D87FF001D86FF001D85
      FF001D85FF001D85FF001C83FF001C83FF001C82FF001C80FF001B7FFF001772
      FF001567FF001B7BFF0029A3FF004EC4FF004AC1FF0046BFFF003FBCFF003AB9
      FF0068CBFF0083BFFC006992F7000000000000000000CACACA00F2F2F2000000
      00000000000000000000C1E5D9004CB4900065BB9B003DA67F001A9967003CA8
      7E005BB7950065BB9D0064BA9D0062BA9C0056B191002A8B6100014211000364
      1C0003671D000469200006772F0009833E00107A3E002973450052B08C00A7E4
      BE00AFF1CB00B1F3CE00B2F4D000C0F8DB00DCFCEC00EDFEF400E5FDF000D4FB
      E800C5FBDD00BEFADB0087CAB100438A5F0013662A0004692300068135000894
      47000D9B540034AB7E0067B89B0023A16A0015A36C0018A6740017A7730015A6
      710014A56F0013A56D0011A46D0012A36C0014A56F0018A7730015A36E000C96
      540006883A0006863600068434000578270061A58C00DEECE800000000000000
      000000000000EBEBEB00D0D0D00000000000009B5F009EE8D7006EEAC90027DA
      9E000DD38D000DD38D000DD38D000DD38D000DD38D000DD38D000DD38D000DD2
      8D000DD28D000DD28D000DD28D002ADA9F0078ECCD00B3F1E5004DD7AE003EBD
      9000D4F0E50000000000000000000000000000000000FDD8CA00F65B1B00FFCE
      9300FFBD7E00FF873400FF782000FF782000FF782100FF782000FF782000FF78
      2000FF772000FF772000FF772000FF772000FF771F00FF9A5000FFCD9700FFCB
      9600FE8F4E00F54D0B00FEEBE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FBFCFD00FAFBFC00FCFDFE00FEFFFF00FDFE
      FE00FDFEFE00FDFEFE00FEFFFF00CFD0CF00C6C7C600F1F2F200C7C9C800DADC
      DA00EEEFEE00E8E9E900F2F2F100F7F4F400F9F6F700EDEAEA00EBE7E700EFEC
      ED00F0EDEE00F0EDED00F0EDEE00F0EDEE00F0EDED00EFEDEE00E8EBED00ECEA
      ED00F2EAEE00F7EBEF00F7ECEF00F3EDF000EBECEC00E8F0EE00EDF6F200EEF5
      F200EDEFEC00EAEAE700E9EAE500E9EAE500E9E9E600E7EAE500E5EBE500E7EA
      E600EDF2EE00EFF5F000EBF1EC00EBF1EE00CDD9D400B9C6C100F5FCF900FDFC
      FC00FEFBFB00FEFBFD00FAFBFB00F9FEFE00F7FDFE00F8FDFD00FCFAFD00FEFC
      FD00000000000000000000000000000000000000000000000000D4F1E9005FDD
      B90017CF950007C9860006C7830006C7840006C8840006C8850006C8850006C9
      850006C9850006C9850006C8850006C8850006C8840006C8840006C7840006C7
      820006C6820006C7820007C9850009C09E0010A8D2001B8FFF001F8CFF001F8C
      FF00208EFF00208EFF00208EFF00208EFF00208EFF00208EFF00208EFF00208E
      FF00208EFF00208EFF00208EFF00208EFF00208EFF00208EFF00208EFF00208E
      FF00208EFF001F8CFF001F8CFF001E8CFF001E8BFF001E8BFF001E8AFF001E89
      FF001D87FF001D87FF001D87FF001D85FF001D85FF001C84FF001C83FF001874
      FF00156AFF001B81FF002AA6FF0058C7FF0059C7FF004DC2FF0045C0FF003FBD
      FF0074D1FF0092C6FD006A95FA000000000000000000CBCBCB00F2F2F2000000
      00000000000000000000C3E6DA005AAA80008D8E50007C9E6A00689F6C0070AA
      820070B595006BBB9E0068BD9F0067BD9E0063BB9B0050AF8D000F774A000358
      1C0003681E00046B2000046F230005782C00067C330008783400168141003879
      4A0043A0780077BEA2009BD7B800B2EDCC00C0F9DA00C6FBDE00BCF1D60098CD
      B70072BFA100459163002A7445000E652800046F270006843800089246000B9A
      530022A871007BCAA40041A2720064A06C0069A4700051A6720041A671003FA4
      6F0040A26B004CA065005E9B5C006E94520073904B007B8A4300768A43006B85
      3900637928005E73210054711F00156D1D0063A48B00DEEDE800000000000000
      000000000000ECECEC00D1D1D10000000000009D6000A5E8DA0075EBCC002ADB
      A0000ED48E000ED48E000ED48E000ED48E000ED48E000ED48E000ED48E000ED3
      8E000ED38E000ED38D000ED38D002BDBA0007DECD100BCF2E90054D9B2003FBE
      9100D4F0E60000000000000000000000000000000000FDD9CA00F65E1C00FFD2
      9C00FFCF9A00FF994F00FF7F2B00FF7A2400FF7A2400FF7A2400FF7A2300FF7A
      2300FF792300FF792300FF792300FF792300FF853500FFB07200FFDAAE00FFCD
      9D00FE8D4C00F54E0C00FEEBE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFFFF00FCFEFF00FBFDFE00FBFDFE00F9FA
      F900FAFBF900FBFCFA00FCFDFB00D0D1CF00C2C3C100F3F4F200E7E8E600E8E9
      E700ECEDEB00EFF0EE00EFF0EE00EEF1EF00E8EBE900CCCFCD00BCBFBD00C0C3
      C100BEC1BF00BCBFBD00BCBFBD00BCBFBD00BCBFBD00BBBFBD00BDC3C200C0C1
      C200C5BEC100C8BCC000C9BBBF00C6BEC100C8C6C800BDC1C200B7BBBC00BBBD
      BE00C5C4C500C6C2C300C5C1C000C4C1C000C3C1C000C1C2C000C1C2C000D3D5
      D300E1E4E200EAEDEB00E7EBE900EBF0EE00D7DCDA00C8CBC900FFFEFE00FFFC
      FE00FFF9FC00FFFDFF00F8FAFD00F4FBFE00F3FCFF00FAFFFF00FEFEFF00FFFE
      FF000000000000000000000000000000000000000000D7F2EA006EE0BE0021D5
      9C0008CE8D0008CC890007CC8A0008CC8B0008CD8B0008CE8B0008CE8D0008CE
      8D0008CE8D0008CE8D0008CE8D0008CE8C0008CE8B0008CD8B0008CC8B0007CC
      8A0007CB880007CB880007CB890008CC8E000BC4A50012A9D2001D90FF002090
      FF002091FF002091FF002091FF002091FF002091FF002191FF002191FF002191
      FF002191FF002191FF002191FF002191FF002091FF002091FF002091FF002091
      FF002091FF002090FF002090FF00208FFF00208EFF00208EFF00208DFF001F8C
      FF001E8BFF001E8BFF001E8AFF001E89FF001D88FF001D87FF001C85FF001771
      FF001669FF002193FF002CA7FD00327AF2003174EB004AB0FB004CC1FF0048C1
      FF007BD3FF0093C6FE006A96FD000000000000000000CCCCCC00F2F2F2000000
      00000000000000000000C5E6DB0064A27800A6621900A27230009F7938009C7F
      410097864B00948C5100939156009394590094985C0091995C00738C4D001E56
      1A00065C1900046C2100047123000472240004782900057F3000057929000469
      270009793900297F4C00408356004B8B5F004F906500508F66004B8B63003A7E
      5200247A480008682600046A220005792D0006893C0007934600129B570033AB
      770060BF94004EAE7A00759E6C00B0A27200B6A26C00A4A16700979F6300949C
      5E00929859009A935000A58E4700AD863A00AE803000B2782600AD752300A772
      1F00A36A18009F631300916112003265160066A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D30000000000009F6300ACE9DD007CEDCF002EDD
      A30011D6920011D6920011D6920011D6920011D6920010D6910010D5910010D4
      910010D4900010D4900010D490002FDCA30084EDD400C3F3EC0059DBB60040C1
      9300D4F1E60000000000000000000000000000000000FDDBCC00F8642100FFC1
      8B00FFD6A600FFBD8400FF924600FF7E2900FF7C2700FF7C2700FF7C2700FF7C
      2700FF7C2700FF7C2700FF7C2600FF833200FFA66700FFCEA100FFE0BC00FFCA
      9E00FE773100F65E1D00FEEDE500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE00FFFFFE00000000000000
      00000000000000000000FCFEFE00FAFCFD00FAFDFE00FAFEFF00F9FBFE00FBFC
      FB00FEFDFA00FDFCF900FFFEFB00D5D4D000CECDC900F0EEEC00F4F2EF00F6F5
      F100F2F0ED00F3F2EF00F0F2EE00EDF3EE00EDF4EF00E2E9E400DEE5E000DFE6
      E200DEE5E000DEE5E000DEE5E000DEE5E100DEE5E000DDE5E200DAE4E200DEE2
      E200E4E0E100E7DFE000E7DDE000E3DEE100DDDDE100D5D9DC00D7DBDF00DCDD
      E100DDDBDF00DEDBDD00DEDCDC00DDDCDC00DCDCDC00DCDCDC00DADCDC00DBDE
      DE00EAEEEE00EEF3F200E5EBEA00E5EBEA00D3D5D500C8C4C500FEF8FB00FFFB
      FE00FFFCFF00FEFBFF00FBFDFF00F6FEFF00F1FCFE00F6FCFE00FDFEFF00FFFD
      FE0000000000000000000000000000000000F3FBF90079E2C4001FD79F0009D2
      920008D08F0008D08F0008D1900009D291000AD292000AD392000AD393000AD3
      93000AD393000AD393000AD393000AD393000AD392000AD2920009D1900008D0
      900008D08F0008CF8E0008CE8E0008CF8F0009D093000CC6AA0016A5E9001F8C
      FF001F8DFF001F8DFF001F8DFF001F8DFF001F8DFF001F8EFF001F8EFF001F8E
      FF001F8EFF001F8EFF001F8EFF001F8EFF001F8DFF001F8DFF001F8DFF001F8D
      FF001F8DFF001F8DFF001F8DFF001E8BFF001E8AFF001E8AFF001E89FF001E88
      FF001E88FF001E88FF001E86FF001D86FF001C84FF001B81FF001979FF001568
      FF00166CFF002497FF002A98F9000929CF000722CB003282F30049B6FF005DC8
      FF0084D4FF008CC3FE007EA7FE000000000000000000CCCCCC00F2F2F2000000
      00000000000000000000C7E6DC006A9F7900AB510D00AD550E00AD590F00AF5D
      1000B0611200B2671500B36E1B00B5732000B77A2600BA802D00BD843800726F
      2A00365F1C000F621D0004702300047727000476270004782700057C2B000682
      3200057C2A000470240003642000025E1E00025B1D00025A1D00025C1D000469
      220004712700057E30000587360006904000089549001FA15F0044AF7E0053B2
      8D005CB0800060996600BFA47B00D3A47300D2A16700CF9D5F00CB9A5900C796
      5200C3904B00C18B4400BE863C00BA813100B87B2800B6752200B4701C00B26A
      1700B1641400B05F1100A25C10004363150068A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D3000000000000A16400B3EBE00083EDD30033DE
      A70014D7960014D7960014D7960014D7960014D7960014D7950014D6950013D6
      950013D6950013D6940013D6940033DDA7008CEDD700C9F3EE005EDDB90041C3
      9400D4F1E60000000000000000000000000000000000FDE2D600FA7E4500FF9B
      5A00FFD6A900FFDAAE00FFB98000FF985000FF863400FF802B00FF802B00FF80
      2B00FF802900FF7F2900FF8B3B00FFA86A00FFCDA300FFE2C200FFDDBB00FEB7
      8600FB621C00F9865200FEF1EB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00FDFFFF00FFFEFF000000
      0000FDFEFC00FDFDFD00FEFEFD00D5D6D400C8C8C700EFEEEE00F1F0EF00F4F5
      F300EFEFEE00EEEEED00F4F5F300EEF1F000ECEFEF00D5D9D700D1D4D300CCD0
      CE00CED1D000CED1CF00CED1D000CED0D000CED1CF00CED0D000CED1D100CFD0
      D000D0CFCF00D2CFCF00D0CDCE00CFCDCD00CBCBCC00CBCDCF00CBCDCF00CAC9
      CB00C6C5C700C8C8C800C8C8C800C8C8C800C7C7C700C7C7C700C7C7C700CACC
      CC00DDDEDE00E2E5E400EAECEC00ECEEEE00D4D4D400C6C4C400FDFBFB00FFFD
      FD00FFFEFF00FFFEFF00FDFFFF00FCFFFF00FAFFFF00FDFFFF0000000000FFFE
      FF0000000000000000000000000000000000DDF4ED0027DBA8000DD89D000CD7
      9B000BD89A000BD89A000BD99B000BD99B000DD89C000BD798000BD798000BD7
      98000BD799000BD798000BD798000BD798000BD798000BD698000AD596000BD7
      9A000BD79A000BD799000BD698000BD597000BD598000CD5A1000DBFBE001C7F
      FF001C80FF001C80FF001C80FF001C81FF001C81FF001C82FF001C82FF001C82
      FF001C82FF001C82FF001C82FF001C82FF001C81FF001C81FF001C81FF001C81
      FF001C81FF001C81FF001C80FF001B7FFF001B7FFF001B7FFF001B7EFF001B7C
      FF001B7CFF001B7CFF001B7BFF00197BFF001979FF001978FF001874FF00166E
      FF001772FF001F85FF00268BF8000521C600041AC3002470F20048B1FF007ED4
      FF008CD1FF007CBCFF00A7C5FF000000000000000000CECECE00F3F3F3000000
      00000000000000000000CAE7DD006FA17B00AB500D00AD540E00AD580F00AF5B
      1000B0601200B2661500B36C1A00B5721F00B6782500B97F2C00BC833600BF88
      3F0089783100496523001966210005732600057C2C00057F2F00057D2E00057D
      2B00057F2D000582300005833100058332000583320005843200058433000689
      3800068E3E000690410007944700169B57002BA6690046B280005EB58F0063A6
      810062966500C9A98500D5A67D00D4A37000D1A06500CD9C5D00CA995700C694
      5000C38F4900C18A4200BD853900BA802F00B77A2700B6742100B46F1B00B269
      1600B0631300AF5F1100A25B10004463150069A58B00DFEDE900000000000000
      000000000000ECECEC00D4D4D4000000000000A46600B8ECE3008BEED60038E0
      AB0018D99A0019D99A0019D99A0019D99A0019D99A0018D99A0018D9990017D9
      990017D9990016D9980016D9980038DFAB0092EEDA00CEF4F10062DFBD0043C4
      9500D4F1E60000000000000000000000000000000000FEF0E900FCB18F00FE70
      2600FFBB8A00FFDCB600FFDEBA00FFC59700FFAB6E00FF9D5700FF974E00FF96
      4C00FF984D00FFA05C00FFB47E00FFD6B200FFE6CA00FFE4C800FFC9A100FD8C
      4E00F9642300FCC0A500FFF8F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400EFEFEF00F8F8F800E8E8E800E5E5E500E0E0
      E000E2E2E200E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2E200E1E1
      E100E1E1E100E1E1E100E0E0E000E0E0E000DCDCDC00DFDFDF00E0E0E000DEDE
      DE00DBDBDB00DADADA00DBDBDB00DADADA00DADADA00DADADA00D9D9D900DDDD
      DD00E5E5E500DCDCDC00DFDFDF00DFDFDF00CBCBCB00C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9F3EA0044DFB3002BE0AF002AE1
      B0001FDCB10015D9B60014DDBC0014E0B70010E0A8000CDB9D000CDB9E000CDB
      9E000CDBA0000CDB9F000CDB9E000CDB9E000CDB9D000CD99D000CD99D000FDF
      A80012DCB80011DABB0010D9BA0010D8B90010D8B80010D5B40012C6B3002485
      FF002486FF002586FF002586FF002687FF002688FF002688FF002688FF002788
      FF002788FF002788FF002788FF002688FF002688FF002688FF002688FF002688
      FF002688FF002588FF002485FF002485FF002485FF002485FF002384FF002382
      FF002282FF002182FF002081FF002080FF002080FF002085FF002694FF002A95
      FF002280FF001B76FF00278FFD001859F4001E50E70046A3FA005DC6FF009EE0
      FF008AC5FF0063A7FF00D1DEFF000000000000000000CFCFCF00F3F3F3000000
      00000000000000000000CBE8DE0073A37C00AB500D00AC540E00AD580F00AE5B
      1000AF5F1100B1651400B36B1900B4711D00B6762300B87D2A00BB823200BE86
      3D00C18C4400A8853F005E6B2C00226623000F7B2D0006833700068337000784
      3600078638000687390007883900078A3C00078C3F00078F4100079044000892
      47000E954F001B9A560020A0630034A97C005FB892005CB288004D9E700091A0
      7700DCAC8D00D8A88200D5A47600D2A36C00D1A06700CE9E6500CC9C6100C998
      5C00C7945600C5905000C28B4900BE873F00BB813700B7792B00B46F1E00B267
      1500B0621200AF5D1000A25B10004464150069A58C00DFEDE900000000000000
      000000000000EDEDED00D5D5D5000000000000A56800BDEDE60093EFDA003DE1
      AF001CDB9E001DDB9E001DDB9E001DDB9E001DDB9E001BDB9E001BDB9C001BDB
      9C001BDB9C001ADB9C001ADB9C003DE0AF0099EFDD00D4F5F30066E1C00043C6
      9500D4F2E60000000000000000000000000000000000FFFDFB00FEE5DA00FB71
      3400FE814000FFC19500FFDFBF00FFE6CB00FFE3C400FFD7B200FFC99D00FFC7
      9900FFCCA100FFE1C200FFE7D100FFE9D500FFE5CD00FFD1AE00FF9C6600FE65
      1E00FB895400FEF3EE00FFFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400F0F0F000F3F3F300DDDDDD00DADADA00D5D5
      D500D8D8D800D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D6D6D600D5D5
      D500D5D5D500D4D4D400D4D4D400D3D3D300D3D3D300D3D3D300D3D3D300D1D1
      D100CFCFCF00CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CCCCCC00D0D0
      D000DDDDDD00DBDBDB00DFDFDF00DEDEDE00C9C9C900C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1EDE0009DE7D50095E6
      D40065D0D50031BDE50027C6F7002FDDE60013E3AE000EDDA3000EDEA6000EDE
      A6000EDEA6000EDEA6000EDEA6000EDDA5000EDDA3000EDDA3000EDDA3000FDE
      A60023CDEB0028C7FF0028C8FF0029C8FF0029C8FF002CC8FF003AC8FF0056C6
      FF0056C8FF0059C8FF005AC8FF005AC8FF005AC8FF005AC8FF005BC8FF005EC8
      FF005EC8FF005EC8FF005EC8FF005BC8FF005AC8FF005AC8FF005AC8FF005AC8
      FF005AC8FF0059C8FF0056C6FF0056C6FF0055C6FF0053C5FF0051C4FF004FC3
      FF004CC2FF004BC1FF0046C1FF0046BEFF0043BEFF0042BDFF0040B7FF0049B6
      FE0046AAFE002284FF001A73FF0038AAFF0063C8FF0068CDFF0088D7FF00BAE8
      FF0084B3FF006595FF00F7F9FF000000000000000000CFCFCF00F3F3F3000000
      00000000000000000000CDE9DF0077A57E00AA4E0C00AC520D00AD560F00AE5A
      1000AF5E1100B1641300B26A1700B46F1B00B5742100B77A2700BA802F00BD84
      3900C08A4200C28F4900BC904D008C823E00426B270018682700138240000D97
      59000B9453000A9553000A9451000C9754000E9A59000E9C5C000E9C5E00119F
      640027A87D005AB6940068B69A0040A782003E9D72007EA28000C7AF9600DDAD
      9200DCAB8900D8A87F00D6A67700D6A77800D7A87F00D9AB8A00DAAD9200DAAE
      9300D9AD9200D7AB9000D6A98C00D3A78900CFA37F00C5935F00BB7C3900B56C
      2100B0631700AE5B1000A25A1000446615006AA58C00DFEDE900000000000000
      000000000000EDEDED00D6D6D6000000000000A66900C1EEE80099EFDC0043E2
      B10021DDA10021DDA10021DDA10021DDA10021DDA00021DDA00021DDA00021DD
      A00020DDA0001FDCA0001FDCA00043E2B200A1F0DF00D9F6F5006CE2C20044C7
      9700D4F2E7000000000000000000000000000000000000000000FFFBF800FDD4
      BC00FC713300FE864600FFBD9200FFDABE00FFE3CB00FFE7D200FFEAD700FFEA
      D800FFEAD900FFEAD700FFE7D400FFE2CC00FFCDA900FF965A00FE641B00FC7F
      4900FEDFD1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400F0F0F000F6F6F600E4E4E400E1E1E100DCDC
      DC00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DCDCDC00DCDC
      DC00DBDBDB00DBDBDB00DADADA00DBDBDB00D9D9D900D9D9D900D9D9D900DADA
      DA00DBDBDB00D7D7D700D5D5D500D4D4D400D4D4D400D4D4D400D3D3D300D4D4
      D400DEDEDE00D8D8D800DADADA00DADADA00C7C7C700C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6EDFF0082B1FF0051A1FF0097F1F00018E7B80010E1AB0010E3AB0010E3
      AB0010E3AB0010E3AB0010E2AB0010E1AB0010E1AA0010E1A80010E1A80014E3
      AF0080E1ED009FE2FF00A1E4FF00A5E4FF00A9E5FF00ABE6FF00ABE8FF00AFE8
      FF00AFE9FF00B2E9FF00B3E9FF00B3E9FF00B3E9FF00B3E9FF00B3E9FF00B3E9
      FF00B3E9FF00B3E9FF00B3E9FF00B3E9FF00B3E9FF00B1E9FF00AFE9FF00AFE9
      FF00AFE8FF00ABE6FF00A8E6FF00A8E5FF00A5E4FF00A1E3FF009DE2FF0099E1
      FF0095E0FF0092DEFF008EDCFF008ADBFF0087DAFF008BDBFF004B97FF001250
      F8002467F40048B1FF001E81FF00156CFF0038AAFF006DCCFF00C8EEFF00B2DD
      FF0078B4FF009DC0FF00000000000000000000000000D0D0D000F3F3F3000000
      00000000000000000000CFEAE0007BA78000AA4E0C00AB500D00AD540E00AD59
      0F00AE5D1000B0611200B1671600B36D1A00B5731E00B6792400B87E2B00BB82
      3600BF883F00C18D4600C4914C00C7965300C4995900AD996200738D64001677
      4F00086527000A7D41000C884E001A98660029A57C0029A47A001B9D6D001899
      68000D8C5400108A5A00449B7C009FBFB500E0D9DD00F2DCDE00EBCBC300E3B7
      A700E1B4A100E4BAA900E8C1B300EAC6B900EAC8BB00EAC9BB00EAC9BC00EAC9
      BD00EACABD00EAC9BD00EAC9BD00EAC9BB00EAC7BA00EAC7B900E6BEB000D4A5
      8700BA7D4200AE5A1000A2581000446615006AA68C00DFEDE900000000000000
      000000000000EDEDED00D6D6D6000000000000AA6B00C7EFE8009FF0DE004BE5
      B5002AE0A5002AE0A6002AE0A6002AE0A6002AE0A4002AE0A4002AE0A40028E0
      A40027DFA40026DEA40025DEA4004AE4B500A7F1E200DDF7F80070E3C50045C8
      9A00D4F2E7000000000000000000000000000000000000000000000000000000
      0000FED4BC00FC7C4000FE651B00FF874600FFB88900FFDBBD00FFEBDC00FFEB
      DD00FFEBDF00FFE4CE00FFCBA400FF9B6100FE6E2800FD5E1700FC8B5600FEE1
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F0F0F000F3F3F300DEDEDE00DBDBDB00D7D7
      D700D9D9D900D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D6D6D600D5D5
      D500D5D5D500D5D5D500D4D4D400D6D6D600DBDBDB00D6D6D600D2D2D200D0D0
      D000D1D1D100D0D0D000CFCFCF00CECECE00CECECE00CECECE00CDCDCD00D0D0
      D000DDDDDD00DBDBDB00E0E0E000DFDFDF00CBCBCB00C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFF00ABCBFF00449DFF0036C8F2001DEBC00012E5AF0012E6AF0012E6
      AF0012E6AF0012E6AF0012E6AF0012E5AF0012E5AF0012E5AF0011E5AD001AE6
      B80097EBF000BCEEFF00BFF0FF00C2F1FF00C4F2FF00C6F3FF00C6F4FF00C6F4
      FF00C6F4FF00C6F4FF00C7F4FF00C7F4FF00C8F4FF00C8F4FF00C8F4FF00C8F4
      FF00C8F4FF00C8F4FF00C8F4FF00C7F4FF00C7F4FF00C6F4FF00C6F4FF00C6F4
      FF00C6F4FF00C6F3FF00C3F2FF00C1F1FF00BFF0FF00BCEFFF00B9EDFF00B6EC
      FF00B2EBFF00AFE9FF00ABE7FF00A6E5FF00A1E3FF0085D3FF003B76F1000933
      E9001654F2003DA3FF006AC4FF001F83FF001B76FF008AC0FF00D4E9FF0077A0
      FF006B96FE00DEE7FE00000000000000000000000000D3D3D300F4F4F4000000
      00000000000000000000D1EBE0007FA88100A94C0C00AB4F0D00AC530E00AD58
      0F00AE5B1000B26C2100BA834300C4946400CFA07C00D7A99200DBAE9900DDAF
      9C00E6C4B600EACCC000EACEC300EBD0C700EBD2CA00EAD4CE00E4D3D000DBD2
      D100D9D2CF00ACBBB20099B2A70097B2A9008FB0A50089AEA30098B5AB009DB6
      AC00C4C9C000D7D2CF00DFD5D400E7D4D200EDD5D100EFD5D000EED2CC00ECCC
      C300E9C5B500E9C7B900EAC9BC00ECCABD00EDCCBF00EDCDC000EDCDC000E9C5
      B900DFB5A300D6A99000D4A88C00D3A68900D1A58600CEA48400CA9F7A00C08C
      5500B36F2600AD590F00A2570F00446615006AA78C00DFEDE900000000000000
      000000000000EEEEEE00D8D8D8000000000000AB6B00CBEFEB00A7F1E20053E6
      B90031E2A90031E2AA0031E2AA0031E2AA0031E1A90031E1A90031E1A90031E1
      A9002FE1A8002EE1A8002EE1A80052E6B900ACF2E400E1F8F90075E5C60047CA
      9B00D5F3E7000000000000000000000000000000000000000000000000000000
      0000FFFAF800FEE7DC00FEB28E00FF7C3E00FF671E00FF6B2400FF6D2700FF6D
      2700FF6D2800FF6C2600FF692100FD692100FD834900FEB99900FEEAE100FFFC
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F0F0F000F0F0F000D8D8D800D4D4D400D0D0
      D000D2D2D200D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100CFCFCF00CECE
      CE00CECECE00CECECE00CDCDCD00CBCBCB00C2C2C200C3C3C300CBCBCB00D5D5
      D500DFDFDF00E3E3E300E3E3E300E3E3E300E2E2E200E2E2E200E1E1E100DADA
      DA00E6E6E600E0E0E000E0E0E000D9D9D900C5C5C500C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6EFFF008EC2FC0020A7ED0026F0C60014EAB60015EBB80015EB
      B80015EBB80017EBBA0017ECBB0017ECBA0017ECB90015EAB80014E9B60020EB
      C0009FF0F200C4F2FF00C7F4FF00C8F5FF00C9F5FF00C9F5FF00C9F5FF00CBF5
      FF00CBF5FF00CBF6FF00CBF6FF00CCF6FF00CDF6FF00CDF6FF00CDF6FF00CDF6
      FF00CDF6FF00CDF6FF00CDF6FF00CCF6FF00CBF6FF00CBF6FF00CBF5FF00CBF5
      FF00C9F5FF00C9F5FF00C8F5FF00C8F4FF00C6F3FF00C4F2FF00C1F0FF00BEEF
      FF00BBEEFF00B8ECFF00B2EAFF00AEE8FF00AAE6FF00AAE5FF0063AAFC002375
      FA003387FC0069C5FF0088D8FF008DCBFF003E98FF003789FF00428AFF005792
      FF00A4C2FF00FAFBFF00000000000000000000000000D3D3D300F4F4F4000000
      00000000000000000000D3ECE10083AA8300A94A0C00AA4E0C00AC520D00B26B
      2700C48B5F00D09D7F00D4A58B00D6AA9600DAAE9C00DDB1A300DFB3A500E1B5
      A800E3BBAF00E5BDB300E6BFB500E3BCB000E0B7A800E1B9AA00E2BBAD00E7C0
      B700EECFC700E7D7D900E4D9DF00E4DAE100E1DAE100DDD1D100DABDB000D7B6
      A600E1BBAD00E6BDB000E4BBAC00E3B9A900E2B8A600E0B69E00DFB39800E0B4
      9C00E1B5A100E5BCAD00ECCBBF00EDCEC200EECFC400ECCCC100DFB99E00CC9C
      6900C38D4C00C0874000BC823A00BB7E3600B9793100B7752D00B5702800B268
      1F00AF5F1400AD580F00A1560F00446615006CA78D00DFEDE900000000000000
      000000000000EFEFEF00DADADA000000000000AD6D00CEF1ED00ADF2E4005BE7
      BD003AE2AE003AE2AE003AE2AE003AE2AE003AE2AE003AE2AD003AE2AD0038E2
      AD0037E2AD0037E2AD0036E2AC0059E7BC00B3F2E600E5F9F9007AE6C90048CB
      9B00D5F3E7000000000000000000000000000000000000000000000000000000
      000000000000FFFDFC00FFF0E900FFDFD000FFCBB300FFB69100FFA67700FFA6
      7700FFA67700FFA67700FFB89500FFD0B800FFE2D500FFF2EC00FFFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F4F4F400EEEEEE00DFDFDF00DBDBDB00DCDC
      DC00DBDBDB00DCDCDC00DBDBDB00DBDBDB00DADADA00DADADA00D7D7D700D7D7
      D700D6D6D600D5D5D500D4D4D400D3D3D300D4D4D400D3D3D300D7D7D700DDDD
      DD00E4E4E400E5E5E500E2E2E200E6E6E600E7E7E700DFDFDF00DEDEDE00DEDE
      DE00DBDBDB00E0E0E000DBDBDB00D1D1D100C7C7C700C3C3C300FDFDFD00FBFB
      FB0000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFDFF00D3EAF9007BD5E8003BF6CF0022F3C50023F3C70025F3
      C70025F4C80026F5C90026F5C90026F4C80024F4C80022F3C60020F2C50028EF
      C700A4F2F300C8F4FF00C9F5FF00C9F5FF00CAF5FF00CAF5FF00CAF6FF00CCF6
      FF00CCF6FF00CCF6FF00CDF6FF00CEF7FF00CEF7FF00CFF7FF00D0F7FF00D0F7
      FF00D0F7FF00CEF7FF00CEF7FF00CEF7FF00CEF6FF00CDF6FF00CCF6FF00CCF6
      FF00CAF6FF00CAF5FF00CAF5FF00C9F5FF00C8F5FF00C8F4FF00C6F4FF00C3F2
      FF00C1F0FF00BCEEFF00B8ECFF00B4EAFF00AFE8FF00AFE8FF0098D8FF0081C7
      FF008BCCFF00B3E4FF00D9F3FF00E3F4FF00BBD6FF003A86FF001D6FFF007FAB
      FE00E2EBFE0000000000000000000000000000000000D4D4D400F4F4F4000000
      00000000000000000000D4EDE10087AC8400A9490B00AA4D0C00AB510D00AF5D
      1900B76D3100BC763D00BE793F00BE7C4100BF804400C1844800C3884C00C48C
      5000C6905400C7935900CA966000CA976200CA986200CC9B6600CE9F6B00D2A3
      7200D5AB7B00DBB48E00DFBAA200E3BDAB00E2BDA900DFB79A00DBAC8400DAA9
      8100DAAA8300DAA98200D8A87F00D8A77C00D6A77900D5A57300D4A26E00D3A2
      6F00D3A27000D2A37200D3A87600D7AC8400D8AF8A00D3A67900C8965A00BF87
      3F00BA803000B87B2700B5762200B4711E00B26B1800B1661500B0621200AE5E
      1000AD590F00AD550E00A1550E00446615006CA88D00DFEDE900000000000000
      000000000000EFEFEF00DADADA000000000001AF6E00D1F2EF00B3F3E70062E8
      C10041E3B20041E3B20041E3B20041E3B20041E3B20041E3B20041E3B20041E3
      B1003FE3B1003EE3B1003DE3B00060E8C000BAF3E800E9F9FA007EE6CC0048CC
      9C00D5F3E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEFD00FFF8F500FFEFE600FFE8DB00FFE8
      DB00FFE8DB00FFE8DB00FFF0E800FFF9F600FFFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F6F6F600F5F5F500F4F4F400F9F9F900F5F5
      F500F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEEEE00ECECEC00EBEB
      EB00EBEBEB00EAEAEA00E8E8E800E8E8E800E7E7E700E3E3E300E1E1E100E1E1
      E100E3E3E300E1E1E100DDDDDD00DFDFDF00E2E2E200E0E0E000E5E5E500DDDD
      DD00DBDBDB00DEDEDE00DEDEDE00DFDFDF00C6C6C600C6C6C600FEFEFE00FDFD
      FD00FDFDFD00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDFBF800B2F4E70055FBD8003CFAD3003FFAD40040FA
      D40040FBD50040FBD50040FBD50040FAD4003EFAD4003CFAD30038F9D20036F3
      CE00C0F9F400E7FBFF00E7FBFF00E7FBFF00E8FBFF00E8FBFF00E8FBFF00E9FB
      FF00E9FBFF00E9FBFF00E9FBFF00EAFBFF00EAFBFF00EAFBFF00EBFBFF00EBFB
      FF00EBFBFF00EAFBFF00EAFBFF00EAFBFF00EAFBFF00E9FBFF00E9FBFF00E9FB
      FF00E8FBFF00E8FBFF00E8FBFF00E7FBFF00E7FBFF00E7FBFF00E7FBFF00E5FA
      FF00E5F9FF00E2F8FF00E1F7FF00DFF6FF00DDF5FF00DAF4FF00DBF4FF00DAF4
      FF00DDF4FF00EBF8FF00F9FCFF00C9DEFF007FA8FF002C6EFF006393FD00C8D8
      FC00FCFCFE0000000000000000000000000000000000D5D5D500F5F5F5000000
      00000000000000000000D9EFE30091B68B00A65C1600A94B0C00AA4F0C00AC52
      0D00AD560E00AE590F00AE5D0F00B0611100B1661500B26B1800B4701D00B574
      2200B77A2700B97E2D00BB833400BD863B00C08A4200C28F4800C4924D00C796
      5100C8985500CC9B5C00CF9F6900D2A26F00D3A26F00D2A16B00D1A06700D2A1
      6900D2A16900D2A16900D2A06700D19F6500D09F6300CF9E6100CE9C5D00CC9B
      5A00CA995600C7965200C5934E00C6945300C6925400C28B4700BD843900BA80
      3000B87B2900B6772300B4731F00B36E1A00B1681600B0631300AF5F1000AE5B
      1000AD560F00AC530E009E530F002A6B19007BAF9500E4EFEB00000000000000
      000000000000EFEFEF00DADADA000000000001B17000D5F2EF00B9F4E9006AE9
      C50049E5B60049E5B60049E5B60049E5B60049E5B60049E5B60047E5B60047E5
      B50046E4B50046E4B40045E4B40067E9C400BFF4EB00EDFAFA0082E8CF0048CD
      9E00D5F3E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400EFEFEF00EEEEEE00EAEAEA00EDEDED00ECEC
      EC00EAEAEA00EBEBEB00EBEBEB00EAEAEA00E9E9E900E9E9E900E7E7E700E6E6
      E600E6E6E600E5E5E500E3E3E300E4E4E400E7E7E700E4E4E400E2E2E200DEDE
      DE00DDDDDD00DFDFDF00DDDDDD00E1E1E100E3E3E300DBDBDB00DCDCDC00E3E3
      E300DADADA00DFDFDF00DADADA00E4E4E400CECECE00C6C6C600FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFFCF800BCF8E8006FFEE0005CFDDC005EFEDD005FFE
      DD0060FEDD0060FEDD0060FEDD0060FEDD005FFEDD005CFDDC0058FDDA0049F8
      D400D6FDF5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCF9FF00F3F1
      FF00D7E5FF00ADD0FF0092BAFF006095FF001D61FE005A86FE00C1CFFC00F6F7
      FD000000000000000000000000000000000000000000D4D4D400F5F5F5000000
      00000000000000000000DFF3E7009EC8A0009E814300A9490C00AA4D0C00AC50
      0D00AD540E00AE570F00AE5A0F00AF5F1100B0631300B2671500B36C1900B570
      1E00B6752300B77A2700B97F2C00BB823300BE863B00C08A4100C18D4600C491
      4A00C5934E00C7965100C9985500CA9A5700CC9A5A00CC9B5C00CD9C5D00CD9D
      5E00CD9D5E00CD9D5E00CD9C5D00CC9B5C00CC9A5B00CB9A5900CA985500C796
      5200C5944F00C4914B00C28E4700C08B4200BE873D00BC833700BB803000B87B
      2900B6772400B5731F00B46E1B00B26A1700B1651400B0601100AE5C1000AE58
      1000AD540F00A9530E008F5711000F7724009DC7B100EEF5F200000000000000
      000000000000EFEFEF00DADADA000000000002B37200D9F2EF00C4F4ED0072EA
      C90050E6BA0050E6BA0050E6BA0050E6BA0050E6BA0050E6BA004EE6B9004EE5
      B9004EE5B9004DE5B8004DE5B80073EACA00D0F6F200F0FAFA0086E9D00049CE
      9F00D5F3E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400F3F3F300ECECEC00D9D9D900D3D3D300D6D6
      D600D5D5D500D4D4D400D4D4D400D3D3D300D3D3D300D2D2D200D1D1D100D0D0
      D000D0D0D000CFCFCF00CDCDCD00CDCDCD00CCCCCC00CDCDCD00CECECE00CDCD
      CD00CCCCCC00C8C8C800CDCDCD00E2E2E200F0F0F000EDEDED00ECECEC00E8E8
      E800E6E6E600E1E1E100E5E5E500E2E2E200C8C8C800E1E1E100FEFEFE00FEFE
      FE00FDFDFD00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFFCF800C1F9EA0088FFE8007DFFE6007DFFE70080FF
      E70081FFE70081FFE70081FFE70081FFE7007FFFE7007DFFE60078FFE3005DFB
      D9009EDAF600B1D0FF00B1D1FF00B1D1FF00B2D2FF00B2D2FF00B2D2FF00B2D3
      FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3
      FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D3
      FF00B2D3FF00B2D3FF00B2D3FF00B2D3FF00B2D2FF00B2D2FF00B2D2FF00B2D1
      FF00B1D1FF00B1D0FF00B1D0FF00B1CFFF00B1CFFF00B1CFFF00ACC6FF009EB8
      FF0074A2FF003480FF001461FF001358FF004F7CFC00C7D4FD00F7F8FE000000
      00000000000000000000000000000000000000000000D5D5D500F4F4F4000000
      00000000000000000000EAF8F000B6DEC30097AD8200A65B1D00A94D0E00AB4D
      0D00AC510E00AD540F00AD570F00AE5C1000AF5F1100B0631300B2671600B36C
      1A00B5701E00B6752200B77A2600B87E2C00BB813200BD843800BF883E00C08B
      4200C28D4600C4914A00C5934D00C6944F00C7955200C7975400C9975600C998
      5600C9985700C9985600C9985600C8975400C7955200C6955100C5934E00C491
      4B00C28E4800C18C4400BF894000BD863A00BB823500B97F2E00B87B2800B677
      2300B5731F00B46E1B00B26A1700B1651400AF601100AE5D1000AD590F00AD56
      0F00AB530E0099550F005C691D00248F5100CAE5D800F8FCFA00000000000000
      0000FEFEFE00EFEFEF00DCDCDC000000000003B57400DCF3EF00D7F6F5007EEB
      D00056E7BE0056E7BE0056E7BE0056E7BE0056E7BE0056E7BE0056E7BD0056E7
      BD0055E7BD0054E6BD0053E6BD0084ECD100EBF9FC00F2FBFA008BEAD2004BCF
      A000D5F4E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F5F5F500EFEFEF00E0E0E000DCDCDC00DADA
      DA00DBDBDB00DCDCDC00DCDCDC00DBDBDB00DBDBDB00DADADA00DADADA00D9D9
      D900D8D8D800D7D7D700D6D6D600D5D5D500D2D2D200D5D5D500D6D6D600D4D4
      D400D0D0D000CECECE00D4D4D400E6E6E600F2F2F200EFEFEF00EFEFEF00F5F5
      F500F1F1F100E8E8E800E0E0E000CFCFCF00D6D6D600FCFCFC0000000000FDFD
      FD00FBFBFB00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0FDF900C7FAED00A0FFF1009DFFF0009EFFF200A1FF
      F200A2FFF200A2FFF200A2FFF200A1FFF2009EFFF2009DFFF00096FFED006FFD
      E000298DF700166EFF001770FF001771FF001873FF001874FF001875FF001877
      FF001977FF001977FF001979FF001979FF00197AFF00197AFF00197AFF001A7A
      FF001A7AFF001A7BFF001A7BFF001A7BFF001A7BFF001A7BFF001A7BFF001A7B
      FF001A7AFF001A79FF001879FF001879FF001878FF001877FF001876FF001874
      FF001773FF001771FF001771FF00176EFF00156DFF00156CFF00146AFF001464
      FF00125EFF001156FF001856FF004073FF00D0DDFD00F9FAFF00000000000000
      00000000000000000000000000000000000000000000DEDEDE00F0F0F000FCFC
      FC000000000000000000FAFDFC00DFF4E900A5D5B2009F975A00A4662E00A75D
      2100A8602000A9622100AA652100AA682200AA6A2300AB6D2400AD702600AE74
      2900AF782C00B07B3000B0803300B1833700B3863B00B4883F00B58B4500B68C
      4900B8904B00B8914E00B9935100B9935300B9945400BA965500BB975600BA98
      5600BA985600BA985500B9975500B9955400B6935200B5935000B4914D00B290
      4900B18E4700AF8B4400AD893F00AB863900A8833300A67F2E00A47B2A00A378
      2500A17421009F701C009D6C19009B6715009963140098611200975D1100955A
      11008C5A12006A661E00298C4A0082BFAD00F1F8F60000000000000000000000
      0000FAFAFA00EBEBEB00E2E2E2000000000003B77600E0F3EF00EFFAFD0090EE
      D70060E9C3005EE8C1005EE8C1005EE8C1005EE8C1005DE8C1005DE8C1005DE8
      C1005CE8C1005BE7C1005FE7C30098EFD900FEFCFF00F3FCFA008AEAD2004BD0
      A100D5F4E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800F0F0F000DFDFDF00EAEA
      EA00F1F1F100EDEDED00F5F5F500F2F2F200EAEAEA00DEDEDE00DBDBDB00D3D3
      D300D0D0D000D1D1D100D1D1D100D0D0D000D0D0D000CFCFCF00CECECE00CDCD
      CD00CDCDCD00CCCCCC00CACACA00CACACA00CCCCCC00CECECE00CECECE00CCCC
      CC00C8C8C800CBCBCB00CECECE00E3E3E300F3F3F300F0F0F000F2F2F200EFEF
      EF00E7E7E700EAEAEA00D1D1D100E0E0E000FCFCFC0000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0FDF900CCFBEE00B9FFF700BAFFFA00BDFFFB00BFFF
      FB00C0FFFB00C0FFFB00C0FFFB00BFFFFB00BCFFFB00BAFFFA00B6FFF70083FF
      E6002A7CF9001159FF00125BFF00125EFF001362FF001364FF001466FF001468
      FF00156AFF00156CFF00156DFF00166EFF00166FFF001671FF001672FF001872
      FF001872FF001875FF001875FF001875FF001875FF001875FF001875FF001874
      FF001872FF001872FF001672FF001671FF001671FF00166FFF00166EFF00156C
      FF00156AFF001468FF001466FF001364FF001362FF00125FFF00125CFF001259
      FF001458FF002062FF004C85FF00DEE7FF00FBFCFF0000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00E3E3E300F5F5
      F500000000000000000000000000FAFDFB00DFF5EB00A7DFBC00A1BC9D00A4A8
      7800A5A47000A5A47100A5A47100A5A57300A4A57500A4A67500A4A77500A4A8
      7600A3A87700A3A97A00A3AA7A00A3AA7A00A2AB7B00A2AB7C00A1AB7E00A1AB
      7D00A1AB7D00A0AB7D009FAB7D009EAB7D009DAB7C009CAB7B009AAA7B0097AA
      7A0096AA790094AA750092A9750091A874008DA771008BA66E0089A46C0086A3
      680084A2660080A063007C9E5F007A9B5C0076985800729653006F944E006B90
      4800688E4200638C3D005F8938005C8534005A823200597F3100577E2E004E7D
      2E003884370033995A0081BFAC00FEFFFF000000000000000000000000000000
      0000F2F2F200E5E5E500F0F0F0000000000006B97A00E0F4F000FEFCFF00AFF2
      E30074ECCB0065EAC40065EAC40065EAC40065EAC40065EAC40065EAC30063E9
      C30062E9C30062E9C3007DEDD000BFF5EA00FFFEFF00F0FCFA0078E6C90051D4
      A400D8F4EA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F2F2F200CECECE00E0E0
      E000F2F2F200EEEEEE00F2F2F200EFEFEF00E9E9E900E0E0E000E2E2E200E5E5
      E500E6E6E600E7E7E700E6E6E600E6E6E600E5E5E500E5E5E500DFDFDF00DEDE
      DE00DEDEDE00DDDDDD00DBDBDB00DBDBDB00D8D8D800DADADA00DCDCDC00DADA
      DA00D8D8D800D3D3D300DADADA00EBEBEB00F1F1F100EFEFEF00E7E7E700EDED
      ED00E9E9E900CACACA00E3E3E300EBEBEB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0FDF900D0FBF000CAFFFF00CFFFFF00D2FFFF00D2FF
      FF00D2FFFF00D2FFFF00D2FFFF00D2FFFF00D1FFFF00CFFFFF00CDFFFF0095FF
      EB002E7FFA00135EFF001362FF001364FF001466FF00146AFF00156CFF00156D
      FF001670FF001671FF001771FF001873FF001875FF001877FF001977FF001979
      FF001979FF00197BFF00197BFF00197BFF00197BFF00197BFF00197BFF00197B
      FF001979FF001979FF001979FF001977FF001875FF001874FF001773FF001671
      FF00166FFF00166DFF00156CFF001569FF001467FF001366FF001362FF00135F
      FF002B71FF007CADFF00F4F7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00ECEC
      EC00FDFDFD000000000000000000000000000000000000000000E7F8F000DDF5
      E900D9F5E800D8F4E800D8F3E700D8F3E600D7F3E600D7F3E600D7F3E600D5F2
      E400D5F2E400D4F2E400D2F2E300D1F1E300D1EFE200D0EFE100D0EFE100CFEE
      DF00CDEEDF00CBEEDD00CAEDDD00C9EDDC00C8EDDC00C7ECDC00C5EADB00C3EA
      DB00C3E9D800C2E9D700C1E8D700C0E8D600BFE7D400BEE6D400BCE5D300BBE4
      D100BAE4D000B8E3D000B7E3CF00B5E1CD00B5E1CB00B4E0CA00B4DFCA00B3DE
      C800B2DDC700B1DCC600B0DCC300AFDBC200AFDBC200AFD9C200AED8C100AED8
      C100C1E2D000EDF7F3000000000000000000000000000000000000000000FCFC
      FC00E9E9E900E3E3E30000000000000000001FC48B00CCF1ED00F9FCFE00EDFA
      FC00A0F0DF006AEAC9006BEAC9006BEAC9006AEAC9006AEAC9006AEAC6006AEA
      C60069EAC60068EAC600A4F1DF00F4FBFF00FFFEFF00EAFAF60042DAAA0084E0
      C300E5F8F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F2F2F200E3E3E300E9E9
      E900EFEFEF00F0F0F000F0F0F000F2F2F200EBEBEB00DEDEDE00DCDCDC00DBDB
      DB00D4D4D400D2D2D200D2D2D200D1D1D100D1D1D100D0D0D000D3D3D300D2D2
      D200D1D1D100D0D0D000CFCFCF00D2D2D200DCDCDC00DFDFDF00E0E0E000DFDF
      DF00DCDCDC00D9D9D900D6D6D600E1E1E100EEEEEE00F0F0F000E6E6E600E7E7
      E700D2D2D200C7C7C700FBFBFB00FCFCFC00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0FEF900D3FCF100D5FFFF00DEFFFF00E1FFFF00E1FF
      FF00E2FFFF00E3FFFF00E2FFFF00E1FFFF00E0FFFF00DEFFFF00DCFFFF00A4FF
      F0003285FB001463FF001466FF001469FF00156BFF00166EFF001670FF001871
      FF001874FF001975FF001977FF001979FF00197BFF001A7CFF001A7DFF001A7F
      FF001A7FFF001C7FFF001C7FFF001C80FF001C80FF001C80FF001C7FFF001C7F
      FF001A7FFF001A7FFF001A7DFF001A7CFF001A7BFF00197AFF001979FF001977
      FF001875FF001873FF001670FF00166FFF00156DFF00156AFF001F72FF00649D
      FF00C6D8FF00F1F6FF00FEFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400DFDF
      DF00EAEAEA00FDFDFD0000000000000000000000000000000000FCFEFD00FBFE
      FD00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FAFE
      FC00FAFEFC00FAFEFC00FAFEFC00FAFDFC00FAFDFC00FAFDFC00FAFDFC00FAFD
      FC00FAFDFC00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F8FD
      FB00F8FDFB00F8FDFB00F8FCFB00F8FCFB00F8FCFA00F8FCFA00F8FCFA00F8FC
      FA00F7FCFA00F7FCFA00F7FCFA00F7FCFA00F7FCF900F7FCF900F7FCF900F7FB
      F900F7FBF900F6FBF900F6FBF800F6FBF800F6FBF800F6FBF800F6FBF800F6FB
      F800F8FCFA00FDFEFE0000000000000000000000000000000000FCFCFC00E7E7
      E700E2E2E200F6F6F600000000000000000062D8AF00A3EDDB00EDFAF900FDFE
      FF00D3F6F10096EEDB0072EBCC0072EBCC0072EBCC006FEBCC006FEBCB006FEB
      CB006FEBCA00A0F0DE00E0F9F600FEFFFF0000000000E5F6F1000CC07F00BDEC
      DD00F5FCFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F1F1F100F2F2F200F0F0
      F000ECECEC00F0F0F000EFEFEF00F1F1F100ECECEC00E0E0E000DDDDDD00D9D9
      D900D9D9D900DADADA00DADADA00D9D9D900D8D8D800D8D8D800D8D8D800D7D7
      D700D6D6D600D6D6D600D4D4D400D6D6D600DADADA00DCDCDC00DEDEDE00DCDC
      DC00DADADA00DCDCDC00D7D7D700E9E9E900EEEEEE00E6E6E600F1F1F100D7D7
      D700D5D5D500F7F7F700FDFDFD00FEFEFE00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1FEFA00D7FCF300E3FFFF00F0FFFF00F2FFFF00F2FF
      FF00F4FFFF00F5FFFF00F4FFFF00F2FFFF00F2FFFF00F0FFFF00EEFFFF00B3FF
      F6003688FD001569FF00166CFF00166EFF001771FF001873FF001875FF001977
      FF001979FF001A7BFF001A7DFF001B7FFF001B80FF001C81FF001C83FF001C83
      FF001C85FF001D85FF001D85FF001D85FF001D85FF001D85FF001D85FF001D85
      FF001C85FF001C83FF001C82FF001C81FF001C80FF001B7FFF001A7EFF001A7B
      FF001A7AFF001979FF001877FF001874FF00227FFF0067A5FF00ABCCFF00DAE8
      FF00F7F9FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00EDED
      ED00E1E1E100EAEAEA00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00E7E7E700E2E2
      E200F0F0F000FDFDFD000000000000000000BAECDB0047D8AB00D3F5EB000000
      0000F7FDFC00DBF8F400A8F1E20078ECCE0078ECCE0077ECCE0077ECCE007EED
      D100AFF2E600E1FAF600FAFEFE0000000000EFFCF900A2ECD9001AC68800DFF7
      EE00FDFFFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F1F1F100F5F5F500F3F3
      F300ECECEC00EEEEEE00ECECEC00E8E8E800EAEAEA00E8E8E800EDEDED00EEEE
      EE00E7E7E700E4E4E400E4E4E400E3E3E300E3E3E300E2E2E200E1E1E100E0E0
      E000DFDFDF00DEDEDE00DDDDDD00DCDCDC00DADADA00DDDDDD00DEDEDE00DDDD
      DD00DADADA00D8D8D800D9D9D900E2E2E200EAEAEA00ECECEC00DEDEDE00D0D0
      D000F6F6F600FEFEFE00FBFBFB00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1FEFA00DBFDF400F4FFFF00FCFFFF00FCFFFF00FCFF
      FF00FDFFFF00FDFFFF00FDFFFF00FCFFFF00FCFFFF00FCFFFF00FBFFFF00C5FF
      FC00A2CCFE007CAFFF00599FFF004595FF004093FF004194FF004196FF004199
      FF00429CFF00429CFF00429DFF00449FFF0045A1FF0045A2FF0046A3FF0048A3
      FF0048A3FF0048A3FF0048A3FF0048A4FF0048A5FF0048A5FF0048A4FF0048A3
      FF0048A3FF0048A3FF0045A3FF0045A2FF0045A1FF00459FFF00439DFF00429C
      FF00459DFF0051A2FF006FAFFF0097C0FF00B2D3FF00D4E7FF00F0F6FF00FDFE
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00F0F0F000E5E5E500E7E7E700F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400E5E5E500E7E7E700F2F2
      F200FBFBFB00000000000000000000000000F0FAF70058D9AD00A1ECD800E8FB
      F70000000000F9FEFE00E7FBF700CFF7EE00C0F4EC00BBF3EA00C4F5ED00D3F8
      F000EAFBF900FAFEFE0000000000FCFEFF00CFF3EB0047D6A8008CE2C400F2FC
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900EFEFEF00EEEEEE00F3F3
      F300EDEDED00EAEAEA00EDEDED00EDEDED00EEEEEE00E8E8E800E9E9E900E6E6
      E600E6E6E600E8E8E800E7E7E700E7E7E700E6E6E600E6E6E600E2E2E200E1E1
      E100E0E0E000E0E0E000DEDEDE00DEDEDE00DDDDDD00DFDFDF00E0E0E000DFDF
      DF00DDDDDD00DCDCDC00D9D9D900E5E5E500E9E9E900DADADA00CCCCCC00EFEF
      EF0000000000F9F9F900F9F9F900FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FFFD00E6FEF800D3FFF60000000000000000000000
      00000000000000000000000000000000000000000000FEFFFF00FAFFFF00C8FF
      F800E6F7FD00DCEBFF00C5E0FF00B7D9FF00B4D6FF00B4D7FF00B4D8FF00B4D9
      FF00B4DAFF00B4DAFF00B4DAFF00B5DBFF00B6DDFF00B6DDFF00B7DDFF00B7DD
      FF00B7DDFF00B7DDFF00B7DDFF00B7DDFF00B7DEFF00B7DEFF00B7DDFF00B7DD
      FF00B7DDFF00B7DDFF00B6DDFF00B6DDFF00B6DDFF00B6DBFF00B5DAFF00B4DA
      FF00B6DBFF00BFDFFF00D2E8FF00EDF4FF00FCFDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F2F2F200EAEAEA00E9E9E900EAEAEA00ECECEC00F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100ECECEC00EAEAEA00EBEBEB00EAEAEA00F5F5F500FDFD
      FD000000000000000000000000000000000000000000BAEEDB0065DCB500AFED
      DD00F1FCFB000000000000000000FCFEFF00F3FCFD00F0FBFC00F5FCFE00FDFF
      FF00000000000000000000000000D8F7EE0079E3C40055D8AC00E3F7F100FCFE
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800FEFEFE00D5D5D500C7C7C700F0F0F000EFEFEF00EDED
      ED00EBEBEB00E9E9E900E8E8E800E7E7E700E7E7E700E6E6E600E5E5E500E5E5
      E500E6E6E600E5E5E500E5E5E500E4E4E400E4E4E400E3E3E300E1E1E100E1E1
      E100E0E0E000E0E0E000DFDFDF00DEDEDE00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DCDCDC00DADADA00E7E7E700DBDBDB00CECECE00F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5FFFD00D4FFF600EFFFFB00EFFFFB00EFFF
      FB00EFFFFB00EFFFFB00EFFFFB00EFFFFA00EFFEFA00EFFEFA00EEFFFB00DDFF
      F800F7FFFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F9F9F900F1F1F100EAEAEA00EAEAEA00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EAEAEA00EAEAEA00F2F2F200FBFBFB00FEFEFE000000
      00000000000000000000000000000000000000000000FAFDFC008DE2C40075DD
      BC00ADEDDB00E9FBF70000000000000000000000000000000000000000000000
      000000000000FBFDFF00CEF5EB0082E6C50063DEB700B7EEDC00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD0000000000FBFBFB0000000000D8D8D800C7C7C700F0F0F000F1F1F100F0F0
      F000F0F0F000EFEFEF00EEEEEE00EBEBEB00EBEBEB00EAEAEA00EAEAEA00E9E9
      E900E7E7E700E6E6E600E5E5E500E5E5E500E4E4E400E4E4E400E2E2E200E1E1
      E100E1E1E100E1E1E100E0E0E000DFDFDF00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00E0E0E000D6D6D600D3D3D300ECECEC00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFFFE00E7FEF800E7FEF800E7FE
      F800E7FEF800E7FEF800E7FEF800E7FEF800E7FEF700E8FEF700ECFEF800FDFF
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F8F8F800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F8F8F800FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEFAF6008EE3
      C50079E1BF009EECD500C1F3E400E1FAF500F9FDFF00F9FDFF00FAFDFF00EEFB
      FA00D2F7ED00B3EEDD007AE2C20062DEB600B4EDDA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000FDFDFD00FEFEFE00DCDCDC00B0B0B000BBBBBB00BDBDBD00BDBD
      BD00BFBFBF00C1C1C100C1C1C100BBBBBB00BBBBBB00BABABA00BABABA00B9B9
      B900B8B8B800B6B6B600B6B6B600B5B5B500B5B5B500B4B4B400B4B4B400B3B3
      B300B3B3B300B3B3B300B2B2B200B2B2B200B0B0B000B0B0B000B0B0B000B0B0
      B000B0B0B000B3B3B300ABABAB00BBBBBB00EAEAEA00FEFEFE00F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFD
      FD00B6EFDA0068E0B70060E0BA009CECD800C9F1EA00C9F1EA00CAF1EA00B2EE
      E0007CE6C80054DBAD0072DEB800C5F2E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FCFCFC00FCFCFC00FEFEFE00F3F3F300D3D3D300CCCCCC00CDCDCD00CFCF
      CF00D0D0D000D2D2D200D2D2D200CECECE00CECECE00CDCDCD00CCCCCC00CCCC
      CC00CECECE00CFCFCF00CFCFCF00CECECE00CECECE00CDCDCD00CECECE00CDCD
      CD00CDCDCD00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CDCDCD00D0D0D000F0F0F000FEFEFE00FBFBFB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2FBF800C6F1E40084E3C4005FDBB0005FDBB0005FDBB0006CDE
      B60095E7CD00D4F5EB00FAFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00FEFEFE00FEFEFE00FBFBFB00FEFEFE000000000000000000FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FEFEFE0000000000000000000000000000000000FEFEFE00000000000000
      00000000000000000000FEFEFE00FEFEFE000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FCFCFC00FCFCFC00FAFAFA00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900EDEDED000000000000000000FCFCFC00FAFAFA0000000000000000000000
      0000FDFDFD00FBFBFB00FBFBFB0000000000FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FEFEFE00FDFD
      FD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD0000000000FDFDFD000000000000000000FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
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
      00000000000000000000000000000000800000000000000000FFFFE03FFF0000
      1FFE000000000000000000000000000000000000000000000000000000FFFFE0
      0FFE000007FE0000000000000000000000000000000000000000000000000000
      00E0FFC003F8000003FE00000000000000000000000000000000000000000000
      0000000000C00F8000F0000000FE000000000000000000000000000000000000
      00000000000000000080030000600000003E0000000000000000000000000000
      0000000000000000000000000080010000000000000E00000000000000000000
      0000000000000000000000000000000000000100000000000002000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      0000000000000000000000000000000000000000000000000000000000800000
      0000000000000000000000000000000000000000000000000000000000000000
      0780000000000000000000000000000000000000000000000000000000000000
      000000001F800000000000000000000000000000000000000000000000000000
      00000000000000001F8000000000000000000000000000000000000000000000
      0000000000000000000000007F80000000000000000000000000000000000000
      00000000000000000000000000C000007F000000000000000000000000000000
      0000000000000000000000000000000000C00001FF0000000000000000000000
      000000000000000000000000000000000000000000C00001FF00000000000000
      00000000000000000000000000000000000000000000000000FF801FFF000000
      0000000000000000000000000000000000000000000000000000000000FF803F
      FF00000000000000000000000000000000000000000000000000000000000000
      00FFC03FFF000000000000000000000000000000000000000000000000000000
      0000000000FFC03FFF0000000000000000000000000000000000000000000000
      000000000000000000FFC1FFFF00000000000000000000000000000000000000
      00000000000000000000000000FFE7FFFF000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFF0000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFF00000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFF000000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFF000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFF0000000002000000000000000000000000000000000000
      000000000000000000FFFFFFFF000000000E0000000000000000000000000000
      00000000000000000000000000FFFFFFFF000000000E00000000000000000000
      0000000000000000000000000000000000FFFFFFFF000000000E000000000000
      000000000000000000000000000000000000000000FFFFFFFE000000000E0000
      00000000000000000000000000000000000000000000000000FFFFFFFE000000
      000E000000000000000000000000000000000000000000000000000000FFFFFF
      FE00000000060000000000000000000000000000000000000000000000000000
      00FFFFFFFE000000000600000000000000000000000000000000000000000000
      0000000000FFFFFFFE0000000006000000000000000000000000000000000000
      000000000000000000FFFFFFFE00000000060000000000000000000000000000
      00000000000000000000000000FFFFFFFE000000000600000000000000000000
      0000000000000000000000000000000000FFFFFFFE0000000006000000000000
      000000000000000000000000000000000000000000FFFFFFFC00000000060000
      00000000000000000000000000000000000000000000000000FFFFFFFC000000
      0006000000000000000000000000000000000000000000000000000000FFFFFF
      FC00000000060000000000000000000000000000000000000000000000000000
      00FFFFFFFC000000000600000000000000000000000000000000000000000000
      0000000000FFFFFFFC0000000002000000000000000000000000000000000000
      000000000000000000FFFFFFFC00000000020000000000000000000000000000
      00000000000000000000000000FFFFFFFC000000000200000000000000000000
      0000000000000000000000000000000000FFFFFFFC0000000002000000000000
      000000000000000000000000000000000000000000FFFFFFFC00000000020000
      00000000000000000000000000000000000000000000000000FFFFFFF8000000
      0002000000000000000000000000000000000000000000000000000000FFFFFF
      F800000000020000000000000000000000000000000000000000000000000000
      00FFFFFFF0000000000200000000000000000000000000000000000000000000
      0000000000FFFFFFF00000000002000000000000000000000000000000000000
      000000000000000000FFFFFFF000000000020000000000000000000000000000
      00000000000000000000000000FFFFFFF0000000000200000000000000000000
      0000000000000000000000000000000000FFFFFFF00000000002000000000000
      000000000000000000000000000000000000000000FFFFFFF000000000020000
      00000000000000000000000000000000000000000000000000FFFFFFF0000000
      0002000000000000000000000000000000000000000000000000000000FFFFFF
      F000000000020000000000000000000000000000000000000000000000000000
      00FFFFFFF0000000000200000000000000000000000000000000000000000000
      0000000000FFFFFFF00000000002000000000000000000000000000000000000
      000000000000000000FFFFFFF000000000020000000000000000000000000000
      00000000000000000000000000FFFFFFE0000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFE00000000000000000000000
      000000000000000000000000000000000000000000FFFFFFE000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFE0000000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      E000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFE0000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFF00000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFC00000000020000000000000000000000000000
      00000000000000000000000000FFFFFFFF000000000E00000000000000000000
      0000000000000000000000000000000000FFFFFFFFE00000007E000000000000
      000000000000000000000000000000000000000000FFFFFFFFFF80001FFE0000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFC00000000000000F1FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFE07FFFF81FFFFE07FFC0000000000000010FFF8000000000003
      FFFFFFFFFFFFFFFFFFFFF001FFFC003FFE0007FC0000000000000000FFC00000
      000000007FFFFFFFFFFFFFFFFFFFE0007FF0000FF80001FC0000000000000000
      FE000000000000001FFFFFFFFFFFFFFFFFFFC0003FC00007F00000FF80000000
      0000000FFC000000000000000FFFFFFFFFFFFFFFFFFF80001F800007E00000FF
      800000000000000FF80000000000000007FF07FFFFFFFFFFFFFF80000F800001
      E00000FE000000000000008FF80000000000000003FE01FFFFFFFFFFFFFF0000
      0F800001E00000FE000000000000000FF80000000000000003FE01FFFFFFFFFF
      FFFF000007800001E00000FC000000000000000FF00000000000000003FC00FF
      FFFFFFFFFFFF000007800001E00000E80000000000000009F000000000000000
      03F8007FFFFFFFFFFFFF000007800001E00000000000000000000009F0000000
      0000000001F0003FFFFFFFFFFFFF000007800001E00000000000000000000009
      E00000000000000001F0000FFFFFFFFFFFFF000007800001E000002000000000
      00000003E00000000000000001F00007FFFFFFFFFFFF000007800001E0000000
      0000000000000002E00000000000000001F0000000000000007F000007800001
      E00000800000000000000002E00000000000000001F0000000000000001F0000
      07800001E00000000000000000000002E00000000000000001F00000FFFFFFFF
      F00F000007800001E00000200000000000000006E00000000000000001F00000
      E003FFFFFF0F000007800001E00000200000000000000006E000000000000000
      01E000000000FFFFFF07000007800001E00000200000000000000000E0000000
      0000000001C0000000003FFFFFC3000007800001E00000200000000000000000
      E000000000000000018600000000000001E1000007800001E000002000000000
      00000000E000000000000000018E0000000000000071000007800001E0000020
      0000000000000002E000000000000000018C0000000000000071000007800001
      E00000200000000000000002E000000000000000019C00000000000000390000
      07800001E00000200000000000000002E000000000000000019C000000000000
      0039000007800001E00000200000000000000002E000000000000000019C0000
      000000000039000007800001E00000200000000000000002E000000000000000
      019C0000000000000039000007800001E00000000000000000000002E0000000
      00000000019C0000000000000039000007800001E00000000000000000000000
      E000000000000000019C0000000000000039000007800001E000000000000000
      00000000E000000000000000019C0000000000000039000007800001E0000000
      0000000000000004E000000000000000019C0000000000000039000007800001
      E00000000000000000000006E000000000000000019C00000000000000390000
      07800001E00000000000000000000006E000000000000000019C000000004000
      0039000007800001E00000000000000000000005E000000000000000019C0000
      0000C0000039000007800001E00000000000000000000005E000000000000000
      019C00000003C0000039000007800001E00000000000000000000005E0000000
      00000000019C0000000FC0000039000007800001E00000200000000000000003
      E000000000000000019C0000000FC0000039000007800001E000002000000000
      00000003E000000000000000019C0000000FC0000039000007800001E0000000
      0000000000000002E000000000000000019C0000001FC0000039000007800001
      E00000000000000000000007E000000000000000019C0000003F800000390000
      07800001F00001000000000000000007E000000000000000019C0000003F8000
      0039000007800001FE0003000000000000000007E000000000000000019C0000
      007F00000039000007800001FF801F000000000000000007E000000000000000
      019C0000007E00000039000007800001FFFFFF200000000000000007E0000000
      00000000019C0000007C00000039000007800001FFFFFF100000000000000007
      E000000000000000019C0000007C00000039000007800001FFFFFFF000000000
      00000007E000000000000000019C0000006000000039000007800001FFFFFFFC
      0000000000000007E000000000000000019C0000000000000039000007800001
      FFFFFFFC000000000000000FC000000000000000019C00000000000000390000
      07800001FFFFFFFE000000000000000F8000000000000000019C000000000000
      0039000007800001FFFFFF3C000000000000000F0000000000000000019C0000
      000000000039000007800001FFFFFFFF100000000000002F0000000000000000
      019C0000000000000039000007800001FFFFFFFFF000000000000FFF00000000
      00000000019C0000000000000039000007800001FFFFFFFFF000000000000FFF
      8000000000000000019C0000000000000039000007C00007FFFFFFFFF0000000
      00000FFFF000000000000000039C0000000000000039000007F0000FFFFFFFFF
      F000000000000FFFF000000000000000039C0000000000000039000007F0000F
      FFFFFFFFF000000000000FFFF800000000000000039C00000000000000390000
      07F8001FFFFFFFFFF000000000000BFFF800000000000000079C000000000000
      0039000007FE007FFFFFFFFFF0000000000003FFFC00000000000000079C0000
      000000000039000007FFFFFFFFFFFFFFF000000000000FFFFC0007FFFFFFFFC0
      0F9C0000000000000039000007FFFFFFFFFFFFFFF0000000000003FFFC000000
      000000001F9C0000000000000031000007FFFFFFFFFFFFFFF0000000000023FF
      FC000000000000003F8C0000000000000071000007FFFFFFFFFFFFFFF0000000
      000043FFFC000000000000007F8E00000000000000F1000007FFFFFFFFFFFFFF
      F000000000007FFFFC00000000000001FFC7C0000000000003E3000007FFFFFF
      FFFFFFFFF000000000007FFFFC00000000000001FFC3C0000000000003C30000
      87FFFFFFFFFFFFFFF000000000007FFFFC00000000000007FFC1FFFFFFFFFFFF
      FF83100107FFFFFFFFFFFFFFF00000000000FFFFFC0000000000000FFFE0FFFF
      FFFFFFFFFF0708020FFFFFFFFFFFFFFFF000000000087FFFFC7F80000000007F
      FFF0000000000000000F860E0FFFFFFFFFFFFFFFF0000000001FFFFFFE0007FF
      FFFFFFFFFFF8000000000000001F83F81FFFFFFFFFFFFFFFEA000000001FFFFF
      FF000FFFFFFFFFFFFFFF80000000000001FFC0007FFFFFFFFFFFFFFFE8000000
      001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFFFFFF
      E0000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFFFFFFF
      FFFFFFFFE06007BCF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE6710000059FFFFF00000000000000000000000000000000
      000000000000}
  end
  object ibTRA: TIBTransaction
    DefaultDatabase = dmDADOS.ibDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 488
    Top = 72
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = ibTRA
    Left = 488
    Top = 8
  end
  object imageOPC3: TImageList
    Height = 36
    ShareImages = True
    Width = 36
    Left = 616
    Top = 56
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
  object rom_001: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    ForcedRefresh = True
    AfterCancel = rom_001AfterCancel
    AfterDelete = rom_001AfterDelete
    AfterEdit = rom_001AfterEdit
    AfterInsert = rom_001AfterEdit
    AfterOpen = rom_001AfterOpen
    AfterPost = rom_001AfterPost
    BeforeCancel = rom_001BeforeCancel
    BeforePost = rom_001BeforePost
    OnCalcFields = rom_001CalcFields
    OnNewRecord = rom_001NewRecord
    DeleteSQL.Strings = (
      'delete from CAD_PRO_ETI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_ETI'
      
        '  (ID, PRO_CART, PRO_CBAR, PRO_CCAT, PRO_CCOL, PRO_CCOR, PRO_CDE' +
        'T, PRO_CDNF, '
      
        '   PRO_CDRO, PRO_CFOR, PRO_CGRP, PRO_COMP, PRO_CPR2, PRO_CPRO, P' +
        'RO_DCAT, '
      
        '   PRO_DCOL, PRO_DCOR, PRO_DGRP, PRO_DORI, PRO_DPRO, PRO_DUNI, P' +
        'RO_FLAG, '
      
        '   PRO_FOTO, PRO_GRAM, PRO_INST, PRO_IPR2, PRO_IPRO, PRO_ITEM, P' +
        'RO_LARG, '
      
        '   PRO_METR, PRO_OBSE, PRO_PESO, PRO_PREC, PRO_PRN1, PRO_PRN2, P' +
        'RO_PRN3, '
      
        '   PRO_PRN4, PRO_PRN5, PRO_PRN6, PRO_PRN7, PRO_PRN8, PRO_QDIS, P' +
        'RO_QEST, '
      
        '   PRO_QPRG, PRO_QTDE, PRO_QTRL, PRO_RCAT, PRO_RCOR, PRO_RDIS, P' +
        'RO_REND, '
      '   PRO_REST, PRO_RGRP, PRO_RPRG, PRO_SEQU, PRO_STLN, PRO_UTIL)'
      'values'
      
        '  (:ID, :PRO_CART, :PRO_CBAR, :PRO_CCAT, :PRO_CCOL, :PRO_CCOR, :' +
        'PRO_CDET, '
      
        '   :PRO_CDNF, :PRO_CDRO, :PRO_CFOR, :PRO_CGRP, :PRO_COMP, :PRO_C' +
        'PR2, :PRO_CPRO, '
      
        '   :PRO_DCAT, :PRO_DCOL, :PRO_DCOR, :PRO_DGRP, :PRO_DORI, :PRO_D' +
        'PRO, :PRO_DUNI, '
      
        '   :PRO_FLAG, :PRO_FOTO, :PRO_GRAM, :PRO_INST, :PRO_IPR2, :PRO_I' +
        'PRO, :PRO_ITEM, '
      
        '   :PRO_LARG, :PRO_METR, :PRO_OBSE, :PRO_PESO, :PRO_PREC, :PRO_P' +
        'RN1, :PRO_PRN2, '
      
        '   :PRO_PRN3, :PRO_PRN4, :PRO_PRN5, :PRO_PRN6, :PRO_PRN7, :PRO_P' +
        'RN8, :PRO_QDIS, '
      
        '   :PRO_QEST, :PRO_QPRG, :PRO_QTDE, :PRO_QTRL, :PRO_RCAT, :PRO_R' +
        'COR, :PRO_RDIS, '
      
        '   :PRO_REND, :PRO_REST, :PRO_RGRP, :PRO_RPRG, :PRO_SEQU, :PRO_S' +
        'TLN, :PRO_UTIL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRO_CDRO,'
      '  PRO_IPRO,'
      '  PRO_IPR2,'
      '  PRO_CDNF,'
      '  PRO_ITEM,'
      '  PRO_CART,'
      '  PRO_CPRO,'
      '  PRO_CPR2,'
      '  PRO_CFOR,'
      '  PRO_CDET,'
      '  PRO_CBAR,'
      '  PRO_DPRO,'
      '  PRO_COMP,'
      '  PRO_DUNI,'
      '  PRO_CCOR,'
      '  PRO_RCOR,'
      '  PRO_DCOR,'
      '  PRO_CCOL,'
      '  PRO_DCOL,'
      '  PRO_CGRP,'
      '  PRO_RGRP,'
      '  PRO_DGRP,'
      '  PRO_CCAT,'
      '  PRO_RCAT,'
      '  PRO_DCAT,'
      '  PRO_REST,'
      '  PRO_RPRG,'
      '  PRO_RDIS,'
      '  PRO_QTRL,'
      '  PRO_QEST,'
      '  PRO_QPRG,'
      '  PRO_QDIS,'
      '  PRO_QTDE,'
      '  PRO_GRAM,'
      '  PRO_LARG,'
      '  PRO_METR,'
      '  PRO_REND,'
      '  PRO_DORI,'
      '  PRO_INST,'
      '  PRO_STLN,'
      '  PRO_PRN1,'
      '  PRO_PRN2,'
      '  PRO_PRN3,'
      '  PRO_PRN4,'
      '  PRO_PRN5,'
      '  PRO_PRN6,'
      '  PRO_PRN7,'
      '  PRO_PRN8,'
      '  PRO_FOTO,'
      '  PRO_OBSE,'
      '  PRO_FLAG,'
      '  PRO_PREC,'
      '  PRO_PESO,'
      '  PRO_SEQU,'
      '  PRO_UTIL'
      'from CAD_PRO_ETI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_PRO_ETI'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update CAD_PRO_ETI'
      'set'
      '  ID = :ID,'
      '  PRO_CART = :PRO_CART,'
      '  PRO_CBAR = :PRO_CBAR,'
      '  PRO_CCAT = :PRO_CCAT,'
      '  PRO_CCOL = :PRO_CCOL,'
      '  PRO_CCOR = :PRO_CCOR,'
      '  PRO_CDET = :PRO_CDET,'
      '  PRO_CDNF = :PRO_CDNF,'
      '  PRO_CDRO = :PRO_CDRO,'
      '  PRO_CFOR = :PRO_CFOR,'
      '  PRO_CGRP = :PRO_CGRP,'
      '  PRO_COMP = :PRO_COMP,'
      '  PRO_CPR2 = :PRO_CPR2,'
      '  PRO_CPRO = :PRO_CPRO,'
      '  PRO_DCAT = :PRO_DCAT,'
      '  PRO_DCOL = :PRO_DCOL,'
      '  PRO_DCOR = :PRO_DCOR,'
      '  PRO_DGRP = :PRO_DGRP,'
      '  PRO_DORI = :PRO_DORI,'
      '  PRO_DPRO = :PRO_DPRO,'
      '  PRO_DUNI = :PRO_DUNI,'
      '  PRO_FLAG = :PRO_FLAG,'
      '  PRO_FOTO = :PRO_FOTO,'
      '  PRO_GRAM = :PRO_GRAM,'
      '  PRO_INST = :PRO_INST,'
      '  PRO_IPR2 = :PRO_IPR2,'
      '  PRO_IPRO = :PRO_IPRO,'
      '  PRO_ITEM = :PRO_ITEM,'
      '  PRO_LARG = :PRO_LARG,'
      '  PRO_METR = :PRO_METR,'
      '  PRO_OBSE = :PRO_OBSE,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_PREC = :PRO_PREC,'
      '  PRO_PRN1 = :PRO_PRN1,'
      '  PRO_PRN2 = :PRO_PRN2,'
      '  PRO_PRN3 = :PRO_PRN3,'
      '  PRO_PRN4 = :PRO_PRN4,'
      '  PRO_PRN5 = :PRO_PRN5,'
      '  PRO_PRN6 = :PRO_PRN6,'
      '  PRO_PRN7 = :PRO_PRN7,'
      '  PRO_PRN8 = :PRO_PRN8,'
      '  PRO_QDIS = :PRO_QDIS,'
      '  PRO_QEST = :PRO_QEST,'
      '  PRO_QPRG = :PRO_QPRG,'
      '  PRO_QTDE = :PRO_QTDE,'
      '  PRO_QTRL = :PRO_QTRL,'
      '  PRO_RCAT = :PRO_RCAT,'
      '  PRO_RCOR = :PRO_RCOR,'
      '  PRO_RDIS = :PRO_RDIS,'
      '  PRO_REND = :PRO_REND,'
      '  PRO_REST = :PRO_REST,'
      '  PRO_RGRP = :PRO_RGRP,'
      '  PRO_RPRG = :PRO_RPRG,'
      '  PRO_SEQU = :PRO_SEQU,'
      '  PRO_STLN = :PRO_STLN,'
      '  PRO_UTIL = :PRO_UTIL'
      'where'
      '  ID = :OLD_ID')
    Left = 488
    Top = 40
    object rom_001ID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_ETI_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_001PRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO_ETI_001"."PRO_CART"'
    end
    object rom_001PRO_CPRO: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO_ETI_001"."PRO_CPRO"'
    end
    object rom_001PRO_CFOR: TIBStringField
      FieldName = 'PRO_CFOR'
      Origin = '"CAD_PRO_ETI_001"."PRO_CFOR"'
    end
    object rom_001PRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO_ETI_001"."PRO_CBAR"'
    end
    object rom_001PRO_CDET: TIBStringField
      FieldName = 'PRO_CDET'
      Origin = '"CAD_PRO_ETI_001"."PRO_CDET"'
      Size = 10
    end
    object rom_001PRO_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO_ETI_001"."PRO_DPRO"'
      Size = 120
    end
    object rom_001PRO_COMP: TIBStringField
      FieldName = 'PRO_COMP'
      Origin = '"CAD_PRO_ETI_001"."PRO_COMP"'
      Size = 120
    end
    object rom_001PRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO_ETI_001"."PRO_CCOR"'
    end
    object rom_001PRO_RCOR: TIBStringField
      FieldName = 'PRO_RCOR'
      Origin = '"CAD_PRO_ETI_001"."PRO_RCOR"'
      Size = 3
    end
    object rom_001PRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO_ETI_001"."PRO_DCOR"'
      Size = 30
    end
    object rom_001PRO_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO_ETI_001"."PRO_DUNI"'
      Size = 3
    end
    object rom_001PRO_PRN1: TBlobField
      FieldName = 'PRO_PRN1'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN2: TBlobField
      FieldName = 'PRO_PRN2'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN3: TBlobField
      FieldName = 'PRO_PRN3'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN4: TBlobField
      FieldName = 'PRO_PRN4'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN5: TBlobField
      FieldName = 'PRO_PRN5'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN6: TBlobField
      FieldName = 'PRO_PRN6'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN7: TBlobField
      FieldName = 'PRO_PRN7'
      Origin = '"CAD_PRO_ETI_001"."PRO_PRN7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_PRN8: TBlobField
      FieldName = 'PRO_PRN8'
      Origin = '"CAD_PRO_ETI"."PRO_PRN8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_ETI_001"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_001PRO_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO_ETI_001"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object rom_001PRO_INST: TIBStringField
      FieldName = 'PRO_INST'
      Origin = '"CAD_PRO_ETI_001"."PRO_INST"'
      Size = 10
    end
    object rom_001PRO_LARG: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'PRO_LARG'
      Origin = '"CAD_PRO_ETI_001"."PRO_LARG"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object rom_001PRO_METR: TIBBCDField
      DisplayLabel = 'Metragem'
      FieldName = 'PRO_METR'
      Origin = '"CAD_PRO_ETI_001"."PRO_METR"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object rom_001PRO_REND: TIBBCDField
      DisplayLabel = 'Rendimento'
      FieldName = 'PRO_REND'
      Origin = '"CAD_PRO_ETI_001"."PRO_REND"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object rom_001PRO_STLN: TIBStringField
      FieldName = 'PRO_STLN'
      Origin = '"CAD_PRO_ETI_001"."PRO_STLN"'
      FixedChar = True
      Size = 1
    end
    object rom_001PRO_GRAM: TIBBCDField
      DisplayLabel = 'Gramatura'
      FieldName = 'PRO_GRAM'
      Origin = '"CAD_PRO_ETI_001"."PRO_GRAM"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object rom_001PRO_CDRO: TIntegerField
      FieldName = 'PRO_CDRO'
      Origin = '"LAN_ETI_001"."PRO_CDRO"'
    end
    object rom_001PRO_IPRO: TIntegerField
      FieldName = 'PRO_IPRO'
      Origin = '"LAN_ETI_001"."PRO_IPRO"'
    end
    object rom_001PRO_IPR2: TIntegerField
      FieldName = 'PRO_IPR2'
      Origin = '"LAN_ETI_001"."PRO_IPR2"'
    end
    object rom_001PRO_ITEM: TIBStringField
      FieldName = 'PRO_ITEM'
      Origin = '"LAN_ETI_001"."PRO_ITEM"'
      Size = 4
    end
    object rom_001PRO_CPR2: TIBStringField
      FieldName = 'PRO_CPR2'
      Origin = '"LAN_ETI_001"."PRO_CPR2"'
    end
    object rom_001PRO_CCOL: TIntegerField
      FieldName = 'PRO_CCOL'
      Origin = '"LAN_ETI_001"."PRO_CCOL"'
    end
    object rom_001PRO_DCOL: TIBStringField
      FieldName = 'PRO_DCOL'
      Origin = '"LAN_ETI_001"."PRO_DCOL"'
      Size = 30
    end
    object rom_001PRO_CGRP: TIntegerField
      FieldName = 'PRO_CGRP'
      Origin = '"LAN_ETI_001"."PRO_CGRP"'
    end
    object rom_001PRO_RGRP: TIBStringField
      FieldName = 'PRO_RGRP'
      Origin = '"LAN_ETI_001"."PRO_RGRP"'
      Size = 5
    end
    object rom_001PRO_DGRP: TIBStringField
      FieldName = 'PRO_DGRP'
      Origin = '"LAN_ETI_001"."PRO_DGRP"'
      Size = 30
    end
    object rom_001PRO_REST: TSmallintField
      FieldName = 'PRO_REST'
      Origin = '"LAN_ETI_001"."PRO_REST"'
    end
    object rom_001PRO_RPRG: TSmallintField
      FieldName = 'PRO_RPRG'
      Origin = '"LAN_ETI_001"."PRO_RPRG"'
    end
    object rom_001PRO_RDIS: TSmallintField
      FieldName = 'PRO_RDIS'
      Origin = '"LAN_ETI_001"."PRO_RDIS"'
    end
    object rom_001PRO_QTRL: TSmallintField
      FieldName = 'PRO_QTRL'
      Origin = '"LAN_ETI_001"."PRO_QTRL"'
    end
    object rom_001PRO_QEST: TIBBCDField
      FieldName = 'PRO_QEST'
      Origin = '"LAN_ETI_001"."PRO_QEST"'
      Precision = 18
      Size = 4
    end
    object rom_001PRO_QPRG: TIBBCDField
      FieldName = 'PRO_QPRG'
      Origin = '"LAN_ETI_001"."PRO_QPRG"'
      Precision = 18
      Size = 4
    end
    object rom_001PRO_QDIS: TIBBCDField
      FieldName = 'PRO_QDIS'
      Origin = '"LAN_ETI_001"."PRO_QDIS"'
      Precision = 18
      Size = 4
    end
    object rom_001PRO_DORI: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'PRO_DORI'
      Origin = '"LAN_ETI_001"."PRO_DORI"'
    end
    object rom_001PRO_FLAG: TSmallintField
      FieldName = 'PRO_FLAG'
      Origin = '"LAN_ETI_001"."PRO_FLAG"'
    end
    object rom_001PRO_CDNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'PRO_CDNF'
      Origin = '"LAN_ETI_001"."PRO_CDNF"'
    end
    object rom_001PRO_QTDE: TIBBCDField
      FieldName = 'PRO_QTDE'
      Origin = '"LAN_ETI_001"."PRO_QTDE"'
      Precision = 18
      Size = 4
    end
    object rom_001PRO_CCAT: TIntegerField
      FieldName = 'PRO_CCAT'
      Origin = '"CAD_PRO_ETI"."PRO_CCAT"'
    end
    object rom_001PRO_RCAT: TIBStringField
      FieldName = 'PRO_RCAT'
      Origin = '"CAD_PRO_ETI"."PRO_RCAT"'
      Size = 5
    end
    object rom_001PRO_DCAT: TIBStringField
      FieldName = 'PRO_DCAT'
      Origin = '"CAD_PRO_ETI"."PRO_DCAT"'
      Size = 30
    end
    object rom_001PRO_STAT: TStringField
      DisplayLabel = 'Status'
      FieldKind = fkCalculated
      FieldName = 'PRO_STAT'
      Size = 15
      Calculated = True
    end
    object rom_001PRO_PESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PRO_PESO'
      Origin = '"CAD_PRO_ETI"."PRO_PESO"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object rom_001PRO_SEQU: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'PRO_SEQU'
      Origin = '"CAD_PRO_ETI"."PRO_SEQU"'
    end
    object rom_001PRO_UTIL: TIBBCDField
      FieldName = 'PRO_UTIL'
      Origin = '"CAD_PRO_ETI"."PRO_UTIL"'
      Precision = 9
      Size = 2
    end
    object rom_001PRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO_ETI"."PRO_PREC"'
    end
  end
  object dtsrom_001: TDataSource
    DataSet = rom_001
    Left = 520
    Top = 40
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 520
    Top = 72
  end
  object consulta_s: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 520
    Top = 8
  end
  object rom_002: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from CAD_PRO_ETI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_ETI'
      
        '  (ID, PRO_CART, PRO_CBAR, PRO_CCAT, PRO_CCOL, PRO_CCOR, PRO_CDE' +
        'T, PRO_CDNF, '
      
        '   PRO_CDRO, PRO_CFOR, PRO_CGRP, PRO_COMP, PRO_CPR2, PRO_CPRO, P' +
        'RO_DCAT, '
      
        '   PRO_DCOL, PRO_DCOR, PRO_DGRP, PRO_DORI, PRO_DPRO, PRO_DUNI, P' +
        'RO_FLAG, '
      
        '   PRO_FOTO, PRO_GRAM, PRO_INST, PRO_IPR2, PRO_IPRO, PRO_ITEM, P' +
        'RO_LARG, '
      
        '   PRO_METR, PRO_OBSE, PRO_PESO, PRO_PREC, PRO_PRN1, PRO_PRN2, P' +
        'RO_PRN3, '
      
        '   PRO_PRN4, PRO_PRN5, PRO_PRN6, PRO_PRN7, PRO_PRN8, PRO_QDIS, P' +
        'RO_QEST, '
      
        '   PRO_QPRG, PRO_QTDE, PRO_QTRL, PRO_RCAT, PRO_RCOR, PRO_RDIS, P' +
        'RO_REND, '
      '   PRO_REST, PRO_RGRP, PRO_RPRG, PRO_SEQU, PRO_STLN, PRO_UTIL)'
      'values'
      
        '  (:ID, :PRO_CART, :PRO_CBAR, :PRO_CCAT, :PRO_CCOL, :PRO_CCOR, :' +
        'PRO_CDET, '
      
        '   :PRO_CDNF, :PRO_CDRO, :PRO_CFOR, :PRO_CGRP, :PRO_COMP, :PRO_C' +
        'PR2, :PRO_CPRO, '
      
        '   :PRO_DCAT, :PRO_DCOL, :PRO_DCOR, :PRO_DGRP, :PRO_DORI, :PRO_D' +
        'PRO, :PRO_DUNI, '
      
        '   :PRO_FLAG, :PRO_FOTO, :PRO_GRAM, :PRO_INST, :PRO_IPR2, :PRO_I' +
        'PRO, :PRO_ITEM, '
      
        '   :PRO_LARG, :PRO_METR, :PRO_OBSE, :PRO_PESO, :PRO_PREC, :PRO_P' +
        'RN1, :PRO_PRN2, '
      
        '   :PRO_PRN3, :PRO_PRN4, :PRO_PRN5, :PRO_PRN6, :PRO_PRN7, :PRO_P' +
        'RN8, :PRO_QDIS, '
      
        '   :PRO_QEST, :PRO_QPRG, :PRO_QTDE, :PRO_QTRL, :PRO_RCAT, :PRO_R' +
        'COR, :PRO_RDIS, '
      
        '   :PRO_REND, :PRO_REST, :PRO_RGRP, :PRO_RPRG, :PRO_SEQU, :PRO_S' +
        'TLN, :PRO_UTIL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRO_CDRO,'
      '  PRO_IPRO,'
      '  PRO_IPR2,'
      '  PRO_CDNF,'
      '  PRO_ITEM,'
      '  PRO_CART,'
      '  PRO_CPRO,'
      '  PRO_CPR2,'
      '  PRO_CFOR,'
      '  PRO_CDET,'
      '  PRO_CBAR,'
      '  PRO_DPRO,'
      '  PRO_COMP,'
      '  PRO_DUNI,'
      '  PRO_CCOR,'
      '  PRO_RCOR,'
      '  PRO_DCOR,'
      '  PRO_CCOL,'
      '  PRO_DCOL,'
      '  PRO_CGRP,'
      '  PRO_RGRP,'
      '  PRO_DGRP,'
      '  PRO_CCAT,'
      '  PRO_RCAT,'
      '  PRO_DCAT,'
      '  PRO_REST,'
      '  PRO_RPRG,'
      '  PRO_RDIS,'
      '  PRO_QTRL,'
      '  PRO_QEST,'
      '  PRO_QPRG,'
      '  PRO_QDIS,'
      '  PRO_QTDE,'
      '  PRO_GRAM,'
      '  PRO_LARG,'
      '  PRO_METR,'
      '  PRO_REND,'
      '  PRO_DORI,'
      '  PRO_INST,'
      '  PRO_STLN,'
      '  PRO_PRN1,'
      '  PRO_PRN2,'
      '  PRO_PRN3,'
      '  PRO_PRN4,'
      '  PRO_PRN5,'
      '  PRO_PRN6,'
      '  PRO_PRN7,'
      '  PRO_PRN8,'
      '  PRO_FOTO,'
      '  PRO_OBSE,'
      '  PRO_FLAG,'
      '  PRO_PREC,'
      '  PRO_PESO,'
      '  PRO_SEQU,'
      '  PRO_UTIL'
      'from CAD_PRO_ETI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_PRO_ETI'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update CAD_PRO_ETI'
      'set'
      '  ID = :ID,'
      '  PRO_CART = :PRO_CART,'
      '  PRO_CBAR = :PRO_CBAR,'
      '  PRO_CCAT = :PRO_CCAT,'
      '  PRO_CCOL = :PRO_CCOL,'
      '  PRO_CCOR = :PRO_CCOR,'
      '  PRO_CDET = :PRO_CDET,'
      '  PRO_CDNF = :PRO_CDNF,'
      '  PRO_CDRO = :PRO_CDRO,'
      '  PRO_CFOR = :PRO_CFOR,'
      '  PRO_CGRP = :PRO_CGRP,'
      '  PRO_COMP = :PRO_COMP,'
      '  PRO_CPR2 = :PRO_CPR2,'
      '  PRO_CPRO = :PRO_CPRO,'
      '  PRO_DCAT = :PRO_DCAT,'
      '  PRO_DCOL = :PRO_DCOL,'
      '  PRO_DCOR = :PRO_DCOR,'
      '  PRO_DGRP = :PRO_DGRP,'
      '  PRO_DORI = :PRO_DORI,'
      '  PRO_DPRO = :PRO_DPRO,'
      '  PRO_DUNI = :PRO_DUNI,'
      '  PRO_FLAG = :PRO_FLAG,'
      '  PRO_FOTO = :PRO_FOTO,'
      '  PRO_GRAM = :PRO_GRAM,'
      '  PRO_INST = :PRO_INST,'
      '  PRO_IPR2 = :PRO_IPR2,'
      '  PRO_IPRO = :PRO_IPRO,'
      '  PRO_ITEM = :PRO_ITEM,'
      '  PRO_LARG = :PRO_LARG,'
      '  PRO_METR = :PRO_METR,'
      '  PRO_OBSE = :PRO_OBSE,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_PREC = :PRO_PREC,'
      '  PRO_PRN1 = :PRO_PRN1,'
      '  PRO_PRN2 = :PRO_PRN2,'
      '  PRO_PRN3 = :PRO_PRN3,'
      '  PRO_PRN4 = :PRO_PRN4,'
      '  PRO_PRN5 = :PRO_PRN5,'
      '  PRO_PRN6 = :PRO_PRN6,'
      '  PRO_PRN7 = :PRO_PRN7,'
      '  PRO_PRN8 = :PRO_PRN8,'
      '  PRO_QDIS = :PRO_QDIS,'
      '  PRO_QEST = :PRO_QEST,'
      '  PRO_QPRG = :PRO_QPRG,'
      '  PRO_QTDE = :PRO_QTDE,'
      '  PRO_QTRL = :PRO_QTRL,'
      '  PRO_RCAT = :PRO_RCAT,'
      '  PRO_RCOR = :PRO_RCOR,'
      '  PRO_RDIS = :PRO_RDIS,'
      '  PRO_REND = :PRO_REND,'
      '  PRO_REST = :PRO_REST,'
      '  PRO_RGRP = :PRO_RGRP,'
      '  PRO_RPRG = :PRO_RPRG,'
      '  PRO_SEQU = :PRO_SEQU,'
      '  PRO_STLN = :PRO_STLN,'
      '  PRO_UTIL = :PRO_UTIL'
      'where'
      '  ID = :OLD_ID')
    Left = 456
    Top = 40
    object rom_002ID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_ETI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_002PRO_CDRO: TIntegerField
      FieldName = 'PRO_CDRO'
      Origin = '"CAD_PRO_ETI"."PRO_CDRO"'
    end
    object rom_002PRO_IPRO: TIntegerField
      FieldName = 'PRO_IPRO'
      Origin = '"CAD_PRO_ETI"."PRO_IPRO"'
    end
    object rom_002PRO_IPR2: TIntegerField
      FieldName = 'PRO_IPR2'
      Origin = '"CAD_PRO_ETI"."PRO_IPR2"'
    end
    object rom_002PRO_CDNF: TIntegerField
      FieldName = 'PRO_CDNF'
      Origin = '"CAD_PRO_ETI"."PRO_CDNF"'
    end
    object rom_002PRO_ITEM: TIBStringField
      FieldName = 'PRO_ITEM'
      Origin = '"CAD_PRO_ETI"."PRO_ITEM"'
      Size = 4
    end
    object rom_002PRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO_ETI"."PRO_CART"'
    end
    object rom_002PRO_CPRO: TIBStringField
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO_ETI"."PRO_CPRO"'
    end
    object rom_002PRO_CPR2: TIBStringField
      FieldName = 'PRO_CPR2'
      Origin = '"CAD_PRO_ETI"."PRO_CPR2"'
    end
    object rom_002PRO_CFOR: TIBStringField
      FieldName = 'PRO_CFOR'
      Origin = '"CAD_PRO_ETI"."PRO_CFOR"'
    end
    object rom_002PRO_CDET: TIBStringField
      FieldName = 'PRO_CDET'
      Origin = '"CAD_PRO_ETI"."PRO_CDET"'
      Size = 10
    end
    object rom_002PRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO_ETI"."PRO_CBAR"'
    end
    object rom_002PRO_DPRO: TIBStringField
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO_ETI"."PRO_DPRO"'
      Size = 120
    end
    object rom_002PRO_COMP: TIBStringField
      FieldName = 'PRO_COMP'
      Origin = '"CAD_PRO_ETI"."PRO_COMP"'
      Size = 120
    end
    object rom_002PRO_DUNI: TIBStringField
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO_ETI"."PRO_DUNI"'
      Size = 3
    end
    object rom_002PRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO_ETI"."PRO_CCOR"'
    end
    object rom_002PRO_RCOR: TIBStringField
      FieldName = 'PRO_RCOR'
      Origin = '"CAD_PRO_ETI"."PRO_RCOR"'
      Size = 3
    end
    object rom_002PRO_DCOR: TIBStringField
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO_ETI"."PRO_DCOR"'
      Size = 30
    end
    object rom_002PRO_CCOL: TIntegerField
      FieldName = 'PRO_CCOL'
      Origin = '"CAD_PRO_ETI"."PRO_CCOL"'
    end
    object rom_002PRO_DCOL: TIBStringField
      FieldName = 'PRO_DCOL'
      Origin = '"CAD_PRO_ETI"."PRO_DCOL"'
      Size = 30
    end
    object rom_002PRO_CGRP: TIntegerField
      FieldName = 'PRO_CGRP'
      Origin = '"CAD_PRO_ETI"."PRO_CGRP"'
    end
    object rom_002PRO_RGRP: TIBStringField
      FieldName = 'PRO_RGRP'
      Origin = '"CAD_PRO_ETI"."PRO_RGRP"'
      Size = 5
    end
    object rom_002PRO_DGRP: TIBStringField
      FieldName = 'PRO_DGRP'
      Origin = '"CAD_PRO_ETI"."PRO_DGRP"'
      Size = 30
    end
    object rom_002PRO_CCAT: TIntegerField
      FieldName = 'PRO_CCAT'
      Origin = '"CAD_PRO_ETI"."PRO_CCAT"'
    end
    object rom_002PRO_RCAT: TIBStringField
      FieldName = 'PRO_RCAT'
      Origin = '"CAD_PRO_ETI"."PRO_RCAT"'
      Size = 5
    end
    object rom_002PRO_DCAT: TIBStringField
      FieldName = 'PRO_DCAT'
      Origin = '"CAD_PRO_ETI"."PRO_DCAT"'
      Size = 30
    end
    object rom_002PRO_REST: TSmallintField
      FieldName = 'PRO_REST'
      Origin = '"CAD_PRO_ETI"."PRO_REST"'
    end
    object rom_002PRO_RPRG: TSmallintField
      FieldName = 'PRO_RPRG'
      Origin = '"CAD_PRO_ETI"."PRO_RPRG"'
    end
    object rom_002PRO_RDIS: TSmallintField
      FieldName = 'PRO_RDIS'
      Origin = '"CAD_PRO_ETI"."PRO_RDIS"'
    end
    object rom_002PRO_QTRL: TSmallintField
      FieldName = 'PRO_QTRL'
      Origin = '"CAD_PRO_ETI"."PRO_QTRL"'
    end
    object rom_002PRO_QEST: TIBBCDField
      FieldName = 'PRO_QEST'
      Origin = '"CAD_PRO_ETI"."PRO_QEST"'
      Precision = 18
      Size = 4
    end
    object rom_002PRO_QPRG: TIBBCDField
      FieldName = 'PRO_QPRG'
      Origin = '"CAD_PRO_ETI"."PRO_QPRG"'
      Precision = 18
      Size = 4
    end
    object rom_002PRO_QDIS: TIBBCDField
      FieldName = 'PRO_QDIS'
      Origin = '"CAD_PRO_ETI"."PRO_QDIS"'
      Precision = 18
      Size = 4
    end
    object rom_002PRO_QTDE: TIBBCDField
      FieldName = 'PRO_QTDE'
      Origin = '"CAD_PRO_ETI"."PRO_QTDE"'
      Precision = 18
      Size = 4
    end
    object rom_002PRO_GRAM: TIBBCDField
      FieldName = 'PRO_GRAM'
      Origin = '"CAD_PRO_ETI"."PRO_GRAM"'
      Precision = 9
      Size = 2
    end
    object rom_002PRO_LARG: TIBBCDField
      FieldName = 'PRO_LARG'
      Origin = '"CAD_PRO_ETI"."PRO_LARG"'
      Precision = 9
      Size = 2
    end
    object rom_002PRO_METR: TIBBCDField
      FieldName = 'PRO_METR'
      Origin = '"CAD_PRO_ETI"."PRO_METR"'
      Precision = 9
      Size = 2
    end
    object rom_002PRO_REND: TIBBCDField
      FieldName = 'PRO_REND'
      Origin = '"CAD_PRO_ETI"."PRO_REND"'
      Precision = 9
      Size = 2
    end
    object rom_002PRO_DORI: TIBStringField
      FieldName = 'PRO_DORI'
      Origin = '"CAD_PRO_ETI"."PRO_DORI"'
    end
    object rom_002PRO_INST: TIBStringField
      FieldName = 'PRO_INST'
      Origin = '"CAD_PRO_ETI"."PRO_INST"'
      Size = 10
    end
    object rom_002PRO_STLN: TIBStringField
      FieldName = 'PRO_STLN'
      Origin = '"CAD_PRO_ETI"."PRO_STLN"'
      FixedChar = True
      Size = 1
    end
    object rom_002PRO_PRN1: TBlobField
      FieldName = 'PRO_PRN1'
      Origin = '"CAD_PRO_ETI"."PRO_PRN1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN2: TBlobField
      FieldName = 'PRO_PRN2'
      Origin = '"CAD_PRO_ETI"."PRO_PRN2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN3: TBlobField
      FieldName = 'PRO_PRN3'
      Origin = '"CAD_PRO_ETI"."PRO_PRN3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN4: TBlobField
      FieldName = 'PRO_PRN4'
      Origin = '"CAD_PRO_ETI"."PRO_PRN4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN5: TBlobField
      FieldName = 'PRO_PRN5'
      Origin = '"CAD_PRO_ETI"."PRO_PRN5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN6: TBlobField
      FieldName = 'PRO_PRN6'
      Origin = '"CAD_PRO_ETI"."PRO_PRN6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN7: TBlobField
      FieldName = 'PRO_PRN7'
      Origin = '"CAD_PRO_ETI"."PRO_PRN7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_PRN8: TBlobField
      FieldName = 'PRO_PRN8'
      Origin = '"CAD_PRO_ETI"."PRO_PRN8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_ETI"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_002PRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO_ETI"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object rom_002PRO_FLAG: TSmallintField
      FieldName = 'PRO_FLAG'
      Origin = '"CAD_PRO_ETI"."PRO_FLAG"'
    end
    object rom_002PRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO_ETI"."PRO_PREC"'
    end
    object rom_002PRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"CAD_PRO_ETI"."PRO_PESO"'
      Precision = 9
      Size = 2
    end
    object rom_002PRO_SEQU: TSmallintField
      FieldName = 'PRO_SEQU'
      Origin = '"CAD_PRO_ETI"."PRO_SEQU"'
    end
    object rom_002PRO_UTIL: TIBBCDField
      FieldName = 'PRO_UTIL'
      Origin = '"CAD_PRO_ETI"."PRO_UTIL"'
      Precision = 9
      Size = 2
    end
  end
  object psq_pro: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = ibTRA
    OnCalcFields = psq_proCalcFields
    SQL.Strings = (
      
        'SELECT   CAD_PRO.ID      ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_' +
        'PRO.PRO_DPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_DCOR,'
      
        '         CAD_PRO.PRO_DUNI,CAD_PRO_IMG.PRO_FOTO,CAD_PRO.PRO_CBAR,' +
        'CAD_PRO.PRO_STA,CAD_PRO.PRO_OBSE,CAD_PRO.PRO_UTIL,FOR_FANT,'
      
        '         CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_CCLF,CAD_' +
        'PRO.PRO_CCST,CAD_PRO.PRO_DCAT,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_APRC,' +
        'CAD_PRO.PRO_LDSC,'
      '         CAD_PRO.PRO_CFOR,CAD_PRO.PRO_DORI,CAD_PRO.PRO_STAV,'
      '         CAD_PRO.PRO_PREC,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_PDSC,'
      '         CAD_PRO.PRO_VPRC,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,'
      '         CAD_PRO.PRO_RPRC,CAD_PRO.PRO_RPRO,CAD_PRO.PRO_RDSC,'
      '         CAD_PRO.PRO_PCOM,CAD_PRO.PRO_CUST,CAD_PRO.PRO_PCOR,'
      '         CAD_PRO.PRO_SPRC,'
      
        '         CAD_PRO.PRO_METR,CAD_PRO.PRO_REND,CAD_PRO.PRO_PESO,CAD_' +
        'PRO.PRO_PSCN,CAD_PRO.PRO_PSMR,CAD_PRO.PRO_STLN,'
      
        '         CAD_PRO.PRO_LARG,CAD_PRO.PRO_GRAM,CAD_PRO.PRO_COMP,CAD_' +
        'PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,'
      
        '         CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.P' +
        'RO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,'
      
        '         CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.P' +
        'RO_INS8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST2,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST2,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST3,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST3,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST4,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST4,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST5,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST5,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST6,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST6,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST7,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST7,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST8,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST9,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST9,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES2,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES2,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES3,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES3,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES4,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES4,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES5,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES5,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES6,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES6,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES7,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES7,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES8,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES9,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES9,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP2,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP2,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP3,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP3,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP4,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP4,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP5,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP5,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP6,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP6,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP7,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP7,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP8,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP9,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP9,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM cad_pro_prg_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,'
      
        '         (SELECT COUNT(*)               FROM cad_pro_prg_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,'
      
        '         (SELECT SUM(EST_CRED)          FROM cad_pro_prc_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRC,'
      
        '         (SELECT SUM(EST_DEBI)          FROM cad_pro_prc_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,'
      
        '         (SELECT COUNT(*)               FROM cad_pro_prc_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRC,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM cad_pro_def_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,'
      
        '         (SELECT COUNT(*)               FROM cad_pro_def_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF'
      ''
      'FROM     CAD_PRO,CAD_PRO_IMG,CAD_FOR'
      'WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART'
      'AND      CAD_PRO.PRO_CDFO = CAD_FOR.ID'
      ''
      'AND CAD_PRO.ID = 0'
      
        'GROUP BY CAD_PRO.ID      ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_' +
        'PRO.PRO_DPRO,CAD_PRO.PRO_CCOR,CAD_PRO.PRO_DCOR,'
      
        '         CAD_PRO.PRO_DUNI,CAD_PRO_IMG.PRO_FOTO,CAD_PRO.PRO_CBAR,' +
        'CAD_PRO.PRO_STA,CAD_PRO.PRO_OBSE,CAD_PRO.PRO_UTIL,FOR_FANT,'
      
        '         CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_CCLF,CAD_' +
        'PRO.PRO_CCST,CAD_PRO.PRO_DCAT,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_APRC,' +
        'CAD_PRO.PRO_LDSC,'
      '         CAD_PRO.PRO_CFOR,CAD_PRO.PRO_DORI,CAD_PRO.PRO_STAV,'
      '         CAD_PRO.PRO_PREC,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_PDSC,'
      '         CAD_PRO.PRO_VPRC,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,'
      '         CAD_PRO.PRO_RPRC,CAD_PRO.PRO_RPRO,CAD_PRO.PRO_RDSC,'
      '         CAD_PRO.PRO_PCOM,CAD_PRO.PRO_CUST,CAD_PRO.PRO_PCOR,'
      '         CAD_PRO.PRO_SPRC,'
      
        '         CAD_PRO.PRO_METR,CAD_PRO.PRO_REND,CAD_PRO.PRO_PESO,CAD_' +
        'PRO.PRO_PSCN,CAD_PRO.PRO_PSMR,CAD_PRO.PRO_STLN,'
      
        '         CAD_PRO.PRO_LARG,CAD_PRO.PRO_GRAM,CAD_PRO.PRO_COMP,CAD_' +
        'PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO,'
      
        '         CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.P' +
        'RO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,'
      
        '         CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.P' +
        'RO_INS8'
      'ORDER BY CAD_PRO.PRO_CART')
    Left = 456
    Top = 72
    object psq_proID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object psq_proPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object psq_proPRO_CPRO: TIBStringField
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object psq_proPRO_DPRO: TIBStringField
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
    object psq_proPRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO"."PRO_CCOR"'
    end
    object psq_proPRO_DCOR: TIBStringField
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object psq_proPRO_DUNI: TIBStringField
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object psq_proPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object psq_proPRO_STA: TIBStringField
      FieldName = 'PRO_STA'
      Origin = '"CAD_PRO"."PRO_STA"'
      FixedChar = True
      Size = 1
    end
    object psq_proPRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object psq_proPRO_UTIL: TIBBCDField
      FieldName = 'PRO_UTIL'
      Origin = '"CAD_PRO"."PRO_UTIL"'
      Precision = 9
      Size = 2
    end
    object psq_proFOR_FANT: TIBStringField
      FieldName = 'FOR_FANT'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 40
    end
    object psq_proPRO_CEMB: TIntegerField
      FieldName = 'PRO_CEMB'
      Origin = '"CAD_PRO"."PRO_CEMB"'
    end
    object psq_proPRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object psq_proPRO_CCLF: TIBStringField
      FieldName = 'PRO_CCLF'
      Origin = '"CAD_PRO"."PRO_CCLF"'
      Size = 10
    end
    object psq_proPRO_CCST: TIBStringField
      FieldName = 'PRO_CCST'
      Origin = '"CAD_PRO"."PRO_CCST"'
      FixedChar = True
      Size = 1
    end
    object psq_proPRO_DCAT: TIBStringField
      FieldName = 'PRO_DCAT'
      Origin = '"CAD_PRO"."PRO_DCAT"'
      Size = 30
    end
    object psq_proPRO_DGRP: TIBStringField
      FieldName = 'PRO_DGRP'
      Origin = '"CAD_PRO"."PRO_DGRP"'
      Size = 30
    end
    object psq_proPRO_APRC: TIBStringField
      FieldName = 'PRO_APRC'
      Origin = '"CAD_PRO"."PRO_APRC"'
      FixedChar = True
      Size = 1
    end
    object psq_proPRO_LDSC: TIBBCDField
      FieldName = 'PRO_LDSC'
      Origin = '"CAD_PRO"."PRO_LDSC"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_CFOR: TIBStringField
      FieldName = 'PRO_CFOR'
      Origin = '"CAD_PRO"."PRO_CFOR"'
    end
    object psq_proPRO_DORI: TIBStringField
      FieldName = 'PRO_DORI'
      Origin = '"CAD_PRO"."PRO_DORI"'
      Size = 30
    end
    object psq_proPRO_STAV: TIBStringField
      FieldName = 'PRO_STAV'
      Origin = '"CAD_PRO"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object psq_proPRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO"."PRO_PREC"'
    end
    object psq_proPRO_PPRO: TFloatField
      FieldName = 'PRO_PPRO'
      Origin = '"CAD_PRO"."PRO_PPRO"'
    end
    object psq_proPRO_PDSC: TIBBCDField
      FieldName = 'PRO_PDSC'
      Origin = '"CAD_PRO"."PRO_PDSC"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_VPRC: TFloatField
      FieldName = 'PRO_VPRC'
      Origin = '"CAD_PRO"."PRO_VPRC"'
    end
    object psq_proPRO_VPRO: TFloatField
      FieldName = 'PRO_VPRO'
      Origin = '"CAD_PRO"."PRO_VPRO"'
    end
    object psq_proPRO_VDSC: TIBBCDField
      FieldName = 'PRO_VDSC'
      Origin = '"CAD_PRO"."PRO_VDSC"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_RPRC: TFloatField
      FieldName = 'PRO_RPRC'
      Origin = '"CAD_PRO"."PRO_RPRC"'
    end
    object psq_proPRO_RPRO: TFloatField
      FieldName = 'PRO_RPRO'
      Origin = '"CAD_PRO"."PRO_RPRO"'
    end
    object psq_proPRO_RDSC: TIBBCDField
      FieldName = 'PRO_RDSC'
      Origin = '"CAD_PRO"."PRO_RDSC"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_PCOM: TFloatField
      FieldName = 'PRO_PCOM'
      Origin = '"CAD_PRO"."PRO_PCOM"'
    end
    object psq_proPRO_CUST: TFloatField
      FieldName = 'PRO_CUST'
      Origin = '"CAD_PRO"."PRO_CUST"'
    end
    object psq_proPRO_PCOR: TIBStringField
      FieldName = 'PRO_PCOR'
      Origin = '"CAD_PRO"."PRO_PCOR"'
      Size = 30
    end
    object psq_proPRO_SPRC: TFloatField
      FieldName = 'PRO_SPRC'
      Origin = '"CAD_PRO"."PRO_SPRC"'
    end
    object psq_proPRO_METR: TIBBCDField
      FieldName = 'PRO_METR'
      Origin = '"CAD_PRO"."PRO_METR"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_REND: TIBBCDField
      FieldName = 'PRO_REND'
      Origin = '"CAD_PRO"."PRO_REND"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"CAD_PRO"."PRO_PESO"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_PSCN: TIBBCDField
      FieldName = 'PRO_PSCN'
      Origin = '"CAD_PRO"."PRO_PSCN"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_PSMR: TIBBCDField
      FieldName = 'PRO_PSMR'
      Origin = '"CAD_PRO"."PRO_PSMR"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_STLN: TIBStringField
      FieldName = 'PRO_STLN'
      Origin = '"CAD_PRO"."PRO_STLN"'
      FixedChar = True
      Size = 1
    end
    object psq_proPRO_LARG: TIBBCDField
      FieldName = 'PRO_LARG'
      Origin = '"CAD_PRO"."PRO_LARG"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_GRAM: TIBBCDField
      FieldName = 'PRO_GRAM'
      Origin = '"CAD_PRO"."PRO_GRAM"'
      Precision = 9
      Size = 2
    end
    object psq_proPRO_COMP: TIBStringField
      FieldName = 'PRO_COMP'
      Origin = '"CAD_PRO"."PRO_COMP"'
      Size = 120
    end
    object psq_proPRO_PIPI: TSmallintField
      FieldName = 'PRO_PIPI'
      Origin = '"CAD_PRO"."PRO_PIPI"'
    end
    object psq_proPRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object psq_proPRO_APRO: TMemoField
      FieldName = 'PRO_APRO'
      Origin = '"CAD_PRO"."PRO_APRO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object psq_proPRO_INS1: TBlobField
      FieldName = 'PRO_INS1'
      Origin = '"CAD_PRO_IMG"."PRO_INS1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS2: TBlobField
      FieldName = 'PRO_INS2'
      Origin = '"CAD_PRO_IMG"."PRO_INS2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS3: TBlobField
      FieldName = 'PRO_INS3'
      Origin = '"CAD_PRO_IMG"."PRO_INS3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS4: TBlobField
      FieldName = 'PRO_INS4'
      Origin = '"CAD_PRO_IMG"."PRO_INS4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS5: TBlobField
      FieldName = 'PRO_INS5'
      Origin = '"CAD_PRO_IMG"."PRO_INS5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS6: TBlobField
      FieldName = 'PRO_INS6'
      Origin = '"CAD_PRO_IMG"."PRO_INS6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS7: TBlobField
      FieldName = 'PRO_INS7'
      Origin = '"CAD_PRO_IMG"."PRO_INS7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_INS8: TBlobField
      FieldName = 'PRO_INS8'
      Origin = '"CAD_PRO_IMG"."PRO_INS8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object psq_proPRO_QEST: TIBBCDField
      FieldName = 'PRO_QEST'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST: TLargeintField
      FieldName = 'PRO_REST'
      ProviderFlags = []
    end
    object psq_proPRO_QEST2: TIBBCDField
      FieldName = 'PRO_QEST2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST2: TLargeintField
      FieldName = 'PRO_REST2'
      ProviderFlags = []
    end
    object psq_proPRO_QEST3: TIBBCDField
      FieldName = 'PRO_QEST3'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST3: TLargeintField
      FieldName = 'PRO_REST3'
      ProviderFlags = []
    end
    object psq_proPRO_QEST4: TIBBCDField
      FieldName = 'PRO_QEST4'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST4: TLargeintField
      FieldName = 'PRO_REST4'
      ProviderFlags = []
    end
    object psq_proPRO_QEST5: TIBBCDField
      FieldName = 'PRO_QEST5'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST5: TLargeintField
      FieldName = 'PRO_REST5'
      ProviderFlags = []
    end
    object psq_proPRO_QEST6: TIBBCDField
      FieldName = 'PRO_QEST6'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST6: TLargeintField
      FieldName = 'PRO_REST6'
      ProviderFlags = []
    end
    object psq_proPRO_QEST7: TIBBCDField
      FieldName = 'PRO_QEST7'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST7: TLargeintField
      FieldName = 'PRO_REST7'
      ProviderFlags = []
    end
    object psq_proPRO_QEST8: TIBBCDField
      FieldName = 'PRO_QEST8'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST8: TLargeintField
      FieldName = 'PRO_REST8'
      ProviderFlags = []
    end
    object psq_proPRO_QEST9: TIBBCDField
      FieldName = 'PRO_QEST9'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_REST9: TLargeintField
      FieldName = 'PRO_REST9'
      ProviderFlags = []
    end
    object psq_proPRO_QRES: TIBBCDField
      FieldName = 'PRO_QRES'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES: TLargeintField
      FieldName = 'PRO_RRES'
      ProviderFlags = []
    end
    object psq_proPRO_QRES2: TIBBCDField
      FieldName = 'PRO_QRES2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES2: TLargeintField
      FieldName = 'PRO_RRES2'
      ProviderFlags = []
    end
    object psq_proPRO_QRES3: TIBBCDField
      FieldName = 'PRO_QRES3'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES3: TLargeintField
      FieldName = 'PRO_RRES3'
      ProviderFlags = []
    end
    object psq_proPRO_QRES4: TIBBCDField
      FieldName = 'PRO_QRES4'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES4: TLargeintField
      FieldName = 'PRO_RRES4'
      ProviderFlags = []
    end
    object psq_proPRO_QRES5: TIBBCDField
      FieldName = 'PRO_QRES5'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES5: TLargeintField
      FieldName = 'PRO_RRES5'
      ProviderFlags = []
    end
    object psq_proPRO_QRES6: TIBBCDField
      FieldName = 'PRO_QRES6'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES6: TLargeintField
      FieldName = 'PRO_RRES6'
      ProviderFlags = []
    end
    object psq_proPRO_QRES7: TIBBCDField
      FieldName = 'PRO_QRES7'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES7: TLargeintField
      FieldName = 'PRO_RRES7'
      ProviderFlags = []
    end
    object psq_proPRO_QRES8: TIBBCDField
      FieldName = 'PRO_QRES8'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES8: TLargeintField
      FieldName = 'PRO_RRES8'
      ProviderFlags = []
    end
    object psq_proPRO_QRES9: TIBBCDField
      FieldName = 'PRO_QRES9'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RRES9: TLargeintField
      FieldName = 'PRO_RRES9'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP: TIBBCDField
      FieldName = 'PRO_QSEP'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP: TLargeintField
      FieldName = 'PRO_RSEP'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP2: TIBBCDField
      FieldName = 'PRO_QSEP2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP2: TLargeintField
      FieldName = 'PRO_RSEP2'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP3: TIBBCDField
      FieldName = 'PRO_QSEP3'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP3: TLargeintField
      FieldName = 'PRO_RSEP3'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP4: TIBBCDField
      FieldName = 'PRO_QSEP4'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP4: TLargeintField
      FieldName = 'PRO_RSEP4'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP5: TIBBCDField
      FieldName = 'PRO_QSEP5'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP5: TLargeintField
      FieldName = 'PRO_RSEP5'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP6: TIBBCDField
      FieldName = 'PRO_QSEP6'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP6: TLargeintField
      FieldName = 'PRO_RSEP6'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP7: TIBBCDField
      FieldName = 'PRO_QSEP7'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP7: TLargeintField
      FieldName = 'PRO_RSEP7'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP8: TIBBCDField
      FieldName = 'PRO_QSEP8'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP8: TLargeintField
      FieldName = 'PRO_RSEP8'
      ProviderFlags = []
    end
    object psq_proPRO_QSEP9: TIBBCDField
      FieldName = 'PRO_QSEP9'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RSEP9: TLargeintField
      FieldName = 'PRO_RSEP9'
      ProviderFlags = []
    end
    object psq_proPRO_QPRG: TIBBCDField
      FieldName = 'PRO_QPRG'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RPRG: TLargeintField
      FieldName = 'PRO_RPRG'
      ProviderFlags = []
    end
    object psq_proPRO_QPRC: TIBBCDField
      FieldName = 'PRO_QPRC'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_QPRD: TIBBCDField
      FieldName = 'PRO_QPRD'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RPRC1: TLargeintField
      FieldName = 'PRO_RPRC1'
      ProviderFlags = []
    end
    object psq_proPRO_QDEF: TIBBCDField
      FieldName = 'PRO_QDEF'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object psq_proPRO_RDEF: TLargeintField
      FieldName = 'PRO_RDEF'
      ProviderFlags = []
    end
    object psq_proQFIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QFIS'
      Calculated = True
    end
    object psq_proRFIS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RFIS'
      Calculated = True
    end
    object psq_proQRES: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QRES'
      Calculated = True
    end
    object psq_proRRES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RRES'
      Calculated = True
    end
    object psq_proQSEP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QSEP'
      Calculated = True
    end
    object psq_proRSEP: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RSEP'
      Calculated = True
    end
    object psq_proQDIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QDIS'
      Calculated = True
    end
    object psq_proRDIS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RDIS'
      Calculated = True
    end
    object psq_proPDIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PDIS'
      Calculated = True
    end
    object psq_proPPRC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PPRC'
      Calculated = True
    end
  end
end
