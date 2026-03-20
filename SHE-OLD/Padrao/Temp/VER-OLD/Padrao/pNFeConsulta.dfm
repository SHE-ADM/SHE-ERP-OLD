inherited FrmNFeConsulta: TFrmNFeConsulta
  Left = 848
  Top = 151
  ActiveControl = EDNotaFiscal
  AlphaBlendValue = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Geral de Nota Fiscal'
  ClientHeight = 565
  ClientWidth = 682
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Top = 0
    Width = 682
    Height = 545
    inherited PaintBox: TPaintBox
      Left = 305
      Top = 277
      Width = 377
      Height = 268
    end
    object GBFavorecido: TGroupBox
      Left = 0
      Top = 97
      Width = 682
      Height = 65
      Align = alTop
      Caption = '  Favorecido  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      object LACliente: TLabel
        Left = 4
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
        Left = 4
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
        Left = 285
        Top = 43
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
      object DBCliente: TdxDBEdit
        Left = 58
        Top = 16
        Width = 619
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'Favorecido'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBVendedor: TdxDBEdit
        Left = 58
        Top = 40
        Width = 200
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'Vendedor'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBRepresentante: TdxDBEdit
        Left = 365
        Top = 40
        Width = 312
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'Representante'
        DataSource = DTSConsulta
        Height = 22
      end
    end
    object GBNotaFiscal: TGroupBox
      Left = 0
      Top = 0
      Width = 682
      Height = 97
      Align = alTop
      Caption = '  Nota Fiscal  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      object LANotaFiscal: TLabel
        Left = 4
        Top = 27
        Width = 48
        Height = 17
        Cursor = crHandPoint
        Hint = 'Clique para visualizar PDF'
        Caption = 'N'#250'mero'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object LADTEmissao: TLabel
        Left = 4
        Top = 51
        Width = 64
        Height = 17
        Caption = 'Dt. Emiss'#227'o'
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
      object LAChave: TLabel
        Left = 177
        Top = 51
        Width = 34
        Height = 17
        Caption = 'Chave'
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
      object LAProtocolo: TLabel
        Left = 177
        Top = 75
        Width = 53
        Height = 17
        Caption = 'Protocolo'
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
      object LADTSaida: TLabel
        Left = 4
        Top = 75
        Width = 50
        Height = 17
        Caption = 'Dt. Sa'#237'da'
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
      object LAFinalidade: TLabel
        Left = 177
        Top = 27
        Width = 56
        Height = 17
        Caption = 'Finalidade'
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
      object EDNotaFiscal: TdxMaskEdit
        Left = 69
        Top = 24
        Width = 85
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
        TabOrder = 0
        Alignment = taRightJustify
        AutoSize = False
        CharCase = ecUpperCase
        IgnoreMaskBlank = False
        Text = '0'
        OnValidate = EDNotaFiscalValidate
        Height = 22
        StoredValues = 1
      end
      object DBDTEmissao: TdxDBEdit
        Left = 69
        Top = 48
        Width = 85
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'DTEmissao'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBDTSaida: TdxDBEdit
        Left = 69
        Top = 72
        Width = 85
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'DTSaida'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBCFOP: TdxDBEdit
        Left = 236
        Top = 24
        Width = 120
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'Finalidade'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBNatureza: TdxDBEdit
        Left = 351
        Top = 24
        Width = 326
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'CFOP'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBChave: TdxDBEdit
        Left = 236
        Top = 48
        Width = 441
        Font.Charset = ANSI_CHARSET
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
        DataField = 'Chave'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBAutorizado: TdxDBEdit
        Left = 236
        Top = 72
        Width = 222
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'PROTAutoricado'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBCancelado: TdxDBEdit
        Left = 455
        Top = 72
        Width = 222
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'PROTCancelado'
        DataSource = DTSConsulta
        Height = 22
      end
    end
    object PNLOutros: TPanel
      Left = 0
      Top = 162
      Width = 682
      Height = 115
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object GBTransporte: TGroupBox
        Left = 0
        Top = 0
        Width = 305
        Height = 115
        Align = alLeft
        Caption = '  Transportadora  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object LAFrete: TLabel
          Left = 4
          Top = 19
          Width = 27
          Height = 17
          Caption = 'Frete'
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
        object LAVolume: TLabel
          Left = 4
          Top = 43
          Width = 42
          Height = 17
          Caption = 'Volume'
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
        object LAPesoB: TLabel
          Left = 4
          Top = 67
          Width = 59
          Height = 17
          Caption = 'Peso Bruto'
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
        object LAPesoL: TLabel
          Left = 4
          Top = 91
          Width = 69
          Height = 17
          Caption = 'Peso L'#237'quido'
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
        object DBFrete: TdxDBEdit
          Left = 49
          Top = 16
          Width = 252
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'Transportadora'
          DataSource = DTSConsulta
          Height = 22
        end
        object DBVolume: TdxDBEdit
          Left = 49
          Top = 40
          Width = 252
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'Volume'
          DataSource = DTSConsulta
          Height = 22
        end
        object DBPesoB: TdxDBEdit
          Left = 74
          Top = 64
          Width = 90
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'PesoB'
          DataSource = DTSConsulta
          Height = 22
        end
        object DBPesoL: TdxDBEdit
          Left = 74
          Top = 88
          Width = 90
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'PesoL'
          DataSource = DTSConsulta
          Height = 22
        end
      end
      object GBInfoNFe: TGroupBox
        Left = 305
        Top = 0
        Width = 377
        Height = 115
        Align = alClient
        Caption = '  Informa'#231#245'es Adicionais da Nota Fiscal  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object DBInfoNFe: TdxDBMemo
          Left = 2
          Top = 19
          Width = 373
          Align = alClient
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          DataField = 'InfoNFe'
          DataSource = DTSConsulta
          Height = 94
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 305
      Top = 277
      Width = 377
      Height = 268
      Align = alClient
      Caption = '  Financeiro  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
      object LACobranca: TLabel
        Left = 4
        Top = 19
        Width = 54
        Height = 17
        Caption = 'Cobran'#231'a'
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
      object LABanco: TLabel
        Left = 4
        Top = 43
        Width = 34
        Height = 17
        Caption = 'Banco'
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
      object DBCobranca: TdxDBEdit
        Left = 60
        Top = 16
        Width = 30
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'Cobranca'
        DataSource = DTSConsulta
        Height = 22
      end
      object DBBanco: TdxDBEdit
        Left = 60
        Top = 40
        Width = 312
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'EnvBan'
        DataSource = DTSConsulta
        Height = 22
      end
      object GBRecebimentos: TGroupBox
        Left = 2
        Top = 69
        Width = 373
        Height = 197
        Align = alBottom
        Caption = '  Recebimentos  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        object DBGRecebimentos: TdxDBGrid
          Left = 2
          Top = 19
          Width = 369
          Height = 176
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelMaxRowCount = 1
          HeaderPanelRowCount = 1
          KeyField = 'NotaFiscal'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Color = 16644596
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
          CustomizingRowCount = 2
          DataSource = DTSConsulta
          Filter.DropDownCount = 1
          Filter.MaxDropDownCount = 1
          Filter.Criteria = {00000000}
          GroupPanelColor = clNone
          GroupPanelFontColor = clNone
          GroupNodeColor = clNone
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsItalic]
          HideFocusRect = True
          HideSelection = True
          HideSelectionColor = 14789952
          HighlightColor = 14789952
          IndentDesc = 10
          LookAndFeel = lfUltraFlat
          MaxRowLineCount = 1
          OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlack
          PreviewFont.Height = -12
          PreviewFont.Name = 'Segoe UI Semibold'
          PreviewFont.Style = [fsBold, fsItalic]
          PreviewLines = 1
          ScrollBars = ssNone
          ShowGrid = False
          object DBGRecebimentosTitulo: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Titulo'
            SummaryFooterType = cstCount
            SummaryFooterField = 'NotaFiscal'
            SummaryFooterFormat = '0'
          end
          object DBGRecebimentosDTVencto: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DTVencto'
          end
          object DBGRecebimentosVLTitulo: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VLTitulo'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VLTitulo'
            SummaryFooterFormat = '0.00'
            Nullable = False
          end
          object DBGRecebimentosSTTitulo: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STTitulo'
          end
        end
      end
      object DBDuplicata: TdxDBEdit
        Left = 87
        Top = 16
        Width = 285
        Enabled = False
        Font.Charset = ANSI_CHARSET
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
        DataField = 'EnvDup'
        DataSource = DTSConsulta
        Height = 22
      end
    end
    object PNLPedidos: TPanel
      Left = 0
      Top = 277
      Width = 305
      Height = 268
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object GBPedido: TGroupBox
        Left = 0
        Top = 0
        Width = 305
        Height = 203
        Align = alClient
        Caption = '  Pedido  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object LAPedido: TLabel
          Left = 4
          Top = 19
          Width = 46
          Height = 17
          Caption = 'N'#250'mero'
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
        object LAPrazo: TLabel
          Left = 4
          Top = 43
          Width = 32
          Height = 17
          Caption = 'Prazo'
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
        object LADTPedido: TLabel
          Left = 140
          Top = 19
          Width = 64
          Height = 17
          Caption = 'Dt. Emiss'#227'o'
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
        object LASTPedido: TLabel
          Left = 4
          Top = 91
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
        object Label1: TLabel
          Left = 4
          Top = 67
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
        object DBPedido: TdxDBEdit
          Left = 51
          Top = 16
          Width = 85
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'Pedido'
          DataSource = DTSConsulta
          Height = 22
        end
        object DBPrazo: TdxDBEdit
          Left = 51
          Top = 40
          Width = 251
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'Prazo'
          DataSource = DTSConsulta
          Height = 22
        end
        object DBDTPedido: TdxDBEdit
          Left = 205
          Top = 16
          Width = 97
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'DTPedido'
          DataSource = DTSConsulta
          Height = 22
        end
        object DBSTPedido: TdxDBEdit
          Left = 51
          Top = 88
          Width = 251
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'TPCobranca'
          DataSource = DTSConsulta
          Height = 22
        end
        object GBInfoPed: TGroupBox
          Left = 2
          Top = 117
          Width = 301
          Height = 84
          Align = alBottom
          Caption = '  Informa'#231#245'es Adicionais do Pedido  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 4
          object DBInfoPed: TdxDBMemo
            Left = 2
            Top = 19
            Width = 297
            Align = alClient
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            DataField = 'InfoPed'
            DataSource = DTSConsulta
            Height = 63
          end
        end
        object DBTPPedido: TdxDBEdit
          Left = 51
          Top = 64
          Width = 251
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'TPPedido'
          DataSource = DTSConsulta
          Height = 22
        end
      end
      object GBRomaneio: TGroupBox
        Left = 0
        Top = 203
        Width = 305
        Height = 65
        Align = alBottom
        Caption = '  Romaneio  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 4
          Top = 19
          Width = 46
          Height = 17
          Caption = 'N'#250'mero'
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
        object Label3: TLabel
          Left = 4
          Top = 43
          Width = 40
          Height = 17
          Caption = 'Revisor'
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
        object Label4: TLabel
          Left = 140
          Top = 19
          Width = 64
          Height = 17
          Caption = 'Dt. Emiss'#227'o'
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
        object dxDBEdit2: TdxDBEdit
          Left = 51
          Top = 16
          Width = 85
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'Romaneio'
          DataSource = DTSConsulta
          Height = 22
        end
        object dxDBEdit3: TdxDBEdit
          Left = 51
          Top = 40
          Width = 251
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'Revisor'
          DataSource = DTSConsulta
          Height = 22
        end
        object dxDBEdit4: TdxDBEdit
          Left = 205
          Top = 16
          Width = 97
          Enabled = False
          Font.Charset = ANSI_CHARSET
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
          DataField = 'DTRomaneio'
          DataSource = DTSConsulta
          Height = 22
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 545
    Width = 682
    Height = 0
    Visible = False
  end
  inherited PNLMenu: TPanel
    Width = 682
    Height = 0
    Visible = False
    inherited SpeedBar2: TSpeedBar
      Width = 682
      Height = 0
      inherited siVAL: TSpeedItem [4]
      end
      inherited siSAIR: TSpeedItem [5]
        Left = 4
        Visible = False
      end
      inherited siSAV: TSpeedItem [6]
        Visible = False
      end
      inherited siCAN: TSpeedItem [7]
        Visible = False
      end
    end
  end
  object SBRodape: TdxStatusBar [3]
    Tag = 1
    Left = 0
    Top = 545
    Width = 682
    Height = 20
    Cursor = crHandPoint
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Consulta'
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 470
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        MinWidth = 137
        Width = 137
      end>
    PaintStyle = stpsOffice11
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
  end
  inherited Consulta: TIBQuery
    SQL.Strings = (
      
        'SELECT NFe.NFE_CDNF "NotaFiscal",NFe.NFE_DEMI "DTEmissao",NFe.NF' +
        'E_DSAI "DTSaida",'
      
        '       NFe.NFE_CHAV "Chave",NFe.NFE_PROT "PROTAutoricado",NFe.NF' +
        'E_PROC "PROTCancelado",NFe.NFE_OBSE "InfoNFe",'
      
        '       CFOP.NAT_TIPO "Finalidade",'#39'( '#39'||CFOP.NAT_CNAT||'#39' ) '#39'||CF' +
        'OP.NAT_DNAT "CFOP",'
      '       NFe.NFE_DTRA||'#39' ('#39'||'
      '       CASE T.NFE_MODFRETE'
      '            WHEN '#39'0'#39' THEN '#39'REMETENTE (CIF)'#39
      '            WHEN '#39'1'#39' THEN '#39'DESTINAT'#193'RIO (FOB)'#39
      '            WHEN '#39'2'#39' THEN '#39'TERCEIROS'#39
      '            WHEN '#39'3'#39' THEN '#39'REMETENTE (PR'#211'PRIO)'#39
      '            WHEN '#39'4'#39' THEN '#39'DESTINAT'#193'RIO (PR'#211'PRIO)'#39
      '            WHEN '#39'4'#39' THEN '#39'DESTINAT'#193'RIO (PR'#211'PRIO)'#39
      
        '            ELSE '#39'Desconhecido ! Favor entrar em contato com o a' +
        'dministrador do sistema.'#39
      '       END||'#39' )'#39' "Transportadora",'
      
        '       T.NFE_QVOL||'#39' '#39'||T.NFE_ESP "Volume",T.NFE_PSBR "PesoB",T.' +
        'NFE_PSLQ "PesoL",'
      
        '       '#39'( '#39'||C.Id||'#39' ) '#39'||C.CLI_FANT||'#39' - '#39'||C.CLI_RAZA "Favorec' +
        'ido",'
      '       '#39'( '#39'||VEN.USU_CUSU||'#39' ) '#39'||VEN.USU_DUSU "Vendedor",'
      '       '#39'( '#39'||REP.Id||'#39' ) '#39'||REP.REP_FANT "Representante",'
      
        '       P.ROM_DERO "Pedido",P.ROM_DROM "DTPedido",P.ROM_STPD "TPP' +
        'edido",P.ROM_STCO "TPCobranca",P.ROM_OBSE "InfoPed",P.ROM_DSEP "' +
        'Revisor",'
      
        '       Prz.PAG_PARC||'#39' Parcelas '#39'||'#39'( '#39'||Prz.PAG_DPAG||'#39' )'#39' "Pra' +
        'zo",'
      '       R.ID "Romaneio",R.ROM_DROM "DTRomaneio",'
      '       '#39'( '#39'||FB.FIN_CDDP||'#39' ) '#39'||FB.FIN_DTDP "EnvDup",'
      '       '#39'( '#39'||FB.FIN_CDBC||'#39' ) '#39'||FB.FIN_DTBC "EnvBan",'
      
        '       FB.FIN_STDO "Cobranca",FB.FIN_DOCT "Titulo",FB.FIN_DVEN "' +
        'DTVencto",FB.FIN_VALO "VLTitulo",FB.FIN_STFI "STTitulo"'
      'FROM   NFE_CAB AS NFe'
      'JOIN   NFE_TRA AS T    ON (T.NFE_CCAB    = NFe.Id)'
      'JOIN   TAB_NAT AS CFOP ON (CFOP.NAT_CNAT = NFe.NFE_CNAT)'
      'JOIN   CAD_CLI AS C    ON (C.Id = NFe.NFE_CFAV)'
      
        'LEFT   OUTER JOIN PED_VEN_CAB     AS P   ON (P.ROM_CDNF   = NFe.' +
        'NFE_CDNF)'
      
        'LEFT   OUTER JOIN CAD_USU         AS VEN ON (VEN.USU_CUSU = P.RO' +
        'M_CVEN)'
      
        'LEFT   OUTER JOIN CAD_REP         AS REP ON (REP.Id       = P.RO' +
        'M_CREP)'
      
        'LEFT   OUTER JOIN ROM_CAB         AS R   ON (R.ROM_CDNF   = NFe.' +
        'NFE_CDNF)'
      
        'LEFT   OUTER JOIN FIN_REC_BAN_BAI AS FB  ON (FB.FIN_CDBX  = P.RO' +
        'M_CDBX)'
      
        'JOIN   TAB_PAG                    AS Prz ON (Prz.Id       = P.RO' +
        'M_CPAG)'
      'WHERE  NFe.NFE_CDNF = :NotaFiscal'
      'AND    NOT FEmpty(NFe.NFE_CHAV)')
    Left = 832
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'NotaFiscal'
        ParamType = ptInput
        Size = 10
        Value = '87849'
      end>
    object ConsultaNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
      Origin = '"NFE_CAB"."NFE_CDNF"'
    end
    object ConsultaDTEmissao: TDateField
      FieldName = 'DTEmissao'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object ConsultaDTSaida: TDateField
      FieldName = 'DTSaida'
      Origin = '"NFE_CAB"."NFE_DSAI"'
    end
    object ConsultaChave: TIBStringField
      FieldName = 'Chave'
      Origin = '"NFE_CAB"."NFE_CHAV"'
      Size = 44
    end
    object ConsultaPROTAutoricado: TIBStringField
      FieldName = 'PROTAutoricado'
      Origin = '"NFE_CAB"."NFE_PROT"'
      Size = 30
    end
    object ConsultaPROTCancelado: TIBStringField
      FieldName = 'PROTCancelado'
      Origin = '"NFE_CAB"."NFE_PROC"'
      Size = 30
    end
    object ConsultaInfoNFe: TMemoField
      FieldName = 'InfoNFe'
      Origin = '"NFE_CAB"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ConsultaFinalidade: TIBStringField
      FieldName = 'Finalidade'
      Origin = '"TAB_NAT"."NAT_TIPO"'
      Size = 30
    end
    object ConsultaCFOP: TIBStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      Size = 75
    end
    object ConsultaTransportadora: TIBStringField
      FieldName = 'Transportadora'
      ProviderFlags = []
      Size = 134
    end
    object ConsultaVolume: TIBStringField
      FieldName = 'Volume'
      ProviderFlags = []
      Size = 67
    end
    object ConsultaPesoB: TIBBCDField
      FieldName = 'PesoB'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      Precision = 18
      Size = 3
    end
    object ConsultaPesoL: TIBBCDField
      FieldName = 'PesoL'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      Precision = 18
      Size = 3
    end
    object ConsultaFavorecido: TIBStringField
      FieldName = 'Favorecido'
      ProviderFlags = []
      Size = 139
    end
    object ConsultaVendedor: TIBStringField
      FieldName = 'Vendedor'
      ProviderFlags = []
      Size = 56
    end
    object ConsultaRepresentante: TIBStringField
      FieldName = 'Representante'
      ProviderFlags = []
      Size = 76
    end
    object ConsultaPedido: TIBStringField
      FieldName = 'Pedido'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
      Size = 30
    end
    object ConsultaDTPedido: TDateField
      FieldName = 'DTPedido'
      Origin = '"PED_VEN_CAB"."ROM_DROM"'
    end
    object ConsultaTPPedido: TIBStringField
      FieldName = 'TPPedido'
      Origin = '"PED_VEN_CAB"."ROM_STPD"'
      Size = 30
    end
    object ConsultaTPCobranca: TIBStringField
      FieldName = 'TPCobranca'
      Origin = '"PED_VEN_CAB"."ROM_STCO"'
      Size = 30
    end
    object ConsultaInfoPed: TMemoField
      FieldName = 'InfoPed'
      Origin = '"PED_VEN_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ConsultaRevisor: TIBStringField
      FieldName = 'Revisor'
      Origin = '"PED_VEN_CAB"."ROM_DSEP"'
      Size = 40
    end
    object ConsultaPrazo: TIBStringField
      FieldName = 'Prazo'
      ProviderFlags = []
      Size = 70
    end
    object ConsultaRomaneio: TIntegerField
      FieldName = 'Romaneio'
      Origin = '"ROM_CAB"."ID"'
    end
    object ConsultaDTRomaneio: TDateField
      FieldName = 'DTRomaneio'
      Origin = '"ROM_CAB"."ROM_DROM"'
    end
    object ConsultaCobranca: TIBStringField
      FieldName = 'Cobranca'
      Origin = '"FIN_REC_BAN_BAI"."FIN_STDO"'
      Size = 3
    end
    object ConsultaTitulo: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'Titulo'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DOCT"'
      Size = 30
    end
    object ConsultaDTVencto: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DTVencto'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DVEN"'
    end
    object ConsultaVLTitulo: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VLTitulo'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VALO"'
      DisplayFormat = 'R$ #,0.00'
      Precision = 18
      Size = 2
    end
    object ConsultaSTTitulo: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STTitulo'
      Origin = '"FIN_REC_BAN_BAI"."FIN_STFI"'
      Size = 60
    end
    object ConsultaEnvDup: TIBStringField
      FieldName = 'EnvDup'
      ProviderFlags = []
      Size = 35
    end
    object ConsultaEnvBan: TIBStringField
      FieldName = 'EnvBan'
      ProviderFlags = []
      Size = 35
    end
  end
  inherited IBTra: TIBTransaction
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    Left = 832
    Top = 16
  end
  inherited ibSP: TIBStoredProc
    Left = 864
    Top = 16
  end
  inherited imageOPC: TImageList
    Left = 896
    Top = 48
  end
  inherited imageITEM: TImageList
    Left = 928
    Top = 48
  end
  inherited TEvent: TIBTransaction
    Left = 896
    Top = 16
  end
  inherited SPEvent: TIBStoredProc
    Left = 928
    Top = 16
  end
  inherited EEvent: TIBEvents
    Left = 960
    Top = 16
  end
  inherited SQLEvent: TIBSQL
    Left = 408
  end
  object DTSConsulta: TDataSource
    DataSet = Consulta
    Left = 864
    Top = 48
  end
end
