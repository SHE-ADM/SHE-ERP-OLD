inherited frmctr_nfe: Tfrmctr_nfe
  Left = -5
  Top = 1
  HelpType = htKeyword
  HelpKeyword = '3'
  AlphaBlendValue = 0
  Caption = 'Controle de Notas Fiscais'
  ClientHeight = 981
  ClientWidth = 1904
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    Width = 1904
    object siCON: TSpeedItem [6]
      BtnCaption = 'Consultar'
      Cursor = crHandPoint
      Hint = 'Consulta Sefaz'
      ImageIndex = 2
      Spacing = 0
      Left = 165
      Top = 5
      Visible = True
      OnClick = siCONClick
      SectionName = 'Movimento'
    end
    object siVIS: TSpeedItem [7]
      BtnCaption = 'Visualizar'
      Cursor = crHandPoint
      Hint = 'Visualiza Nota Fiscal'
      ImageIndex = 3
      Spacing = 0
      Left = 245
      Top = 5
      Visible = True
      OnClick = siVISClick
      SectionName = 'Movimento'
    end
    object siCCE: TSpeedItem [8]
      BtnCaption = 'CCe'
      Cursor = crHandPoint
      Hint = 'Carta de Corre'#231#227'o Eletr'#244'nica'
      ImageIndex = 4
      Spacing = 0
      Left = 325
      Top = 5
      Visible = True
      OnClick = siCCEClick
      SectionName = 'Movimento'
    end
    object siCNF: TSpeedItem [9]
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelar Nota Fiscal'
      ImageIndex = 5
      Spacing = 0
      Left = 405
      Top = 5
      Visible = True
      OnClick = siCNFClick
      SectionName = 'Movimento'
    end
    object SINovo: TSpeedItem [10]
      BtnCaption = 'Incluir'
      Cursor = crHandPoint
      Hint = 'Gerar uma nova nota fiscal'
      ImageIndex = 6
      Spacing = 0
      Left = 425
      Top = 5
      OnClick = SINovoClick
      SectionName = 'Movimento'
    end
    object siTRI: TSpeedItem [11]
      BtnCaption = 'Copiar'
      Cursor = crHandPoint
      Hint = 'Cria uma C'#243'pia Exata da Nota Fiscal'
      ImageIndex = 7
      Spacing = 0
      Left = 485
      Top = 5
      Visible = True
      OnClick = siTRIClick
      SectionName = 'Movimento'
    end
    object SIMNFT: TSpeedItem [12]
      BtnCaption = 'Triangular'
      Cursor = crHandPoint
      Hint = 'Triangula'#231#227'o de Nota Fiscal'
      ImageIndex = 8
      Spacing = 0
      Left = 565
      Top = 5
      Visible = True
      OnClick = SIMNFTClick
      SectionName = 'Movimento'
    end
    object siENV: TSpeedItem [13]
      BtnCaption = 'Email'
      Cursor = crHandPoint
      Hint = 'Enviar Email'
      ImageIndex = 9
      Spacing = 0
      Left = 645
      Top = 5
      Visible = True
      OnClick = siENVClick
      SectionName = 'Movimento'
    end
    inherited siREL: TSpeedItem
      ImageIndex = 10
      Left = 623
      Visible = False
    end
    inherited siSAIR: TSpeedItem
      ImageIndex = 11
      Left = 725
    end
  end
  inherited pnlbot: TPanel
    Top = 601
    Width = 1904
    Height = 355
    Visible = True
    object PCRodape: TdxPageControl
      Left = 0
      Top = 0
      Width = 1904
      Height = 355
      ActivePage = TSProdutos
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
      object TSProdutos: TdxTabSheet
        Caption = 'Produtos'
        object DBGItem: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1904
          Height = 331
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
          BorderStyle = bsNone
          Color = 14789952
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
          BandFont.Height = -13
          BandFont.Name = 'Segoe UI'
          BandFont.Style = [fsItalic]
          DataSource = dtsnfe_ite
          Filter.Active = True
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsItalic]
          HideSelectionColor = 16382457
          HideSelectionTextColor = 14789952
          HighlightColor = 16382457
          HighlightTextColor = 14789952
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlack
          PreviewFont.Height = -11
          PreviewFont.Name = 'Segoe UI Semibold'
          PreviewFont.Style = [fsBold, fsItalic]
          object DBGItemNFE_ITEMPED: TdxDBGridMaskColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_ITEMPED'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGItemNFE_CPROD: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_CPROD'
            DisableFilter = True
          end
          object DBGItemNFE_NCM: TdxDBGridMaskColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_NCM'
          end
          object DBGItemNFE_CEST: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_CEST'
          end
          object DBGItemNFE_CFOP: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_CFOP'
          end
          object DBGItemC_CST: TdxDBGridColumn
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'C_CST'
          end
          object DBGItemNFE_XPROD: TdxDBGridMaskColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_XPROD'
          end
          object DBGItemNFE_UCOM: TdxDBGridMaskColumn
            Caption = 'Unidade'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_UCOM'
            DisableFilter = True
          end
          object DBGItemNFE_QCOM: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_QCOM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_QCOM'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemNFE_VUNCOM: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VUNCOM'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'NFE_VUNCOM'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemNFE_VPROD: TdxDBGridMaskColumn
            Color = clMedGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VPROD'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VPROD'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemNFE_VNF: TdxDBGridMaskColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VNF'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VNF'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemNFE_PICMS: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_PICMS'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'NFE_PICMS'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_VICMS: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VICMS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VICMS'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_PICMSST: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_PICMSST'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'NFE_PICMSST'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_VICMSST: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VICMSST'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VICMSST'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_PIPI: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_PIPI'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'NFE_PIPI'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_VIPI: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VIPI'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VIPI'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemNFE_PPIS: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_PPIS'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'NFE_PPIS'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_VPIS: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VPIS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VPIS'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemNFE_PCOFINS: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_PCOFINS'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'NFE_PCOFINS'
            SummaryFooterFormat = '#,0.00'
            DisplayFormat = '#,0.00'
            Nullable = False
            DisableFilter = True
          end
          object DBGItemNFE_VCOFINS: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VCOFINS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VCOFINS'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
        end
      end
      object TSSaidas: TdxTabSheet
        Caption = 'Sa'#237'das'
        object DBGSaidas: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1107
          Height = 226
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -13
          BandFont.Name = 'Segoe UI'
          BandFont.Style = [fsItalic]
          DataSource = DTSnfe_log
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsItalic]
          HideFocusRect = True
          HideSelectionColor = 14789952
          HighlightColor = 14789952
          IndentDesc = 10
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
          PreviewFieldName = 'INFAD'
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = 12092957
          PreviewFont.Height = -11
          PreviewFont.Name = 'Segoe UI Semibold'
          PreviewFont.Style = [fsBold, fsItalic]
          ShowGrid = False
          ShowRowFooter = True
          object DBGSaidasDTSA: TdxDBGridDateColumn
            Width = 96
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DTSA'
          end
          object DBGSaidasTRANSPORTADORA: TdxDBGridMaskColumn
            Width = 212
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSPORTADORA'
          end
          object DBGSaidasMOTORISTA: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MOTORISTA'
          end
          object DBGSaidasPLACA: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLACA'
          end
          object DBGSaidasVOLUME: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VOLUME'
          end
          object DBGSaidasPESOB: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PESOB'
          end
          object DBGSaidasPESOL: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PESOL'
          end
        end
      end
    end
    object PNLInfAdBol: TPanel
      Left = 0
      Top = 355
      Width = 1904
      Height = 0
      Align = alBottom
      TabOrder = 1
      object EDInfAdBol: TdxMemo
        Left = 1
        Top = 1
        Width = 1902
        Align = alClient
        Color = 16644596
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsFlat
        Style.Shadow = False
        TabOrder = 0
        Height = 93
      end
    end
  end
  inherited pnldbg: TPanel
    Width = 1904
    Height = 536
    inherited DSConsulta: TdxDockSite
      Width = 1904
      Height = 536
      DockType = 0
      OriginalWidth = 768
      OriginalHeight = 448
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 1904
        Height = 536
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 430
      end
      inherited DPConsulta: TdxDockPanel
        Width = 1904
        Height = 536
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 430
        inherited gbDET: TGroupBox
          Width = 1900
          Height = 532
          inherited DBGConsulta: TdxDBGrid
            Width = 1896
            Height = 511
            KeyField = 'ID'
            ShowSummaryFooter = True
            Filter.Active = True
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
            ShowRowFooter = True
            object DBGConsultaNFE_CDNF: TdxDBGridMaskColumn
              Alignment = taRightJustify
              DisableEditor = True
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CDNF'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGConsultaNFE_DEMI: TdxDBGridDateColumn
              DisableEditor = True
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_DEMI'
            end
            object DBGConsultaDTSA: TdxDBGridDateColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTSA'
            end
            object DBGConsultaNFE_CNAT: TdxDBGridMaskColumn
              Alignment = taLeftJustify
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CNAT'
            end
            object DBGConsultaTIPO_NF: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIPO_NF'
            end
            object DBGConsultaDERO: TdxDBGridMaskColumn
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DERO'
            end
            object DBGConsultaNFE_DFAV: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_DFAV'
            end
            object DBGConsultaNFE_DVEN: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_DVEN'
            end
            object DBGConsultaNFE_DREP: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_DREP'
            end
            object DBGConsultaTIPO_OP: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIPO_OP'
            end
            object DBGConsultaEMISSOR: TdxDBGridMaskColumn
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMISSOR'
            end
            object DBGConsultaNFE_DTRA: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 160
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_DTRA'
            end
            object DBGConsultaMODFRETE_DESC: TdxDBGridMaskColumn
              DisableEditor = True
              Width = 125
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MODFRETE_DESC'
            end
            object DBGConsultaVOLUME: TdxDBGridMaskColumn
              Alignment = taRightJustify
              DisableEditor = True
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VOLUME'
              DisableFilter = True
            end
            object DBGConsultaPESOB: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PESOB'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PESOB'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaPESOL: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PESOL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PESOL'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VNF: TdxDBGridMaskColumn
              DisableEditor = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VNF'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VNF'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VICMS: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VICMS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VICMS'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VIPI: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VIPI'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VIPI'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VST: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VST'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VST'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VPROD: TdxDBGridMaskColumn
              DisableEditor = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VPROD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VPROD'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VDESC: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VDESC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VDESC'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VPIS: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VPIS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VPIS'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VCOFINS: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VCOFINS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VCOFINS'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaNFE_VFRETE: TdxDBGridMaskColumn
              DisableEditor = True
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VFRETE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VFRETE'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaCFRT: TdxDBGridMaskColumn
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CFRT'
            end
            object DBGConsultaNFE_CHAV: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CHAV'
              DisableFilter = True
            end
            object DBGConsultaNFE_PROT: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_PROT'
              DisableFilter = True
            end
            object DBGConsultaNFE_PROC: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_PROC'
              DisableFilter = True
            end
            object DBGConsultaNFE_STA: TdxDBGridMaskColumn
              Visible = False
              Width = 39
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_STA'
            end
            object DBGConsultaEMPRESA: TdxDBGridMaskColumn
              DisableEditor = True
              Visible = False
              Width = 103
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPRESA'
            end
            object DBGConsultaREST: TdxDBGridMaskColumn
              DisableEditor = True
              Visible = False
              Width = 41
              BandIndex = 0
              RowIndex = 0
              FieldName = 'REST'
            end
          end
          object PNLINFADCAD: TPanel
            Left = 2
            Top = 530
            Width = 1896
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais da nota fiscal ...'
            Align = alBottom
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Locked = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object DBINFADCAD: TdxDBMemo
              Left = 2
              Top = 2
              Width = 1892
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais da nota fiscal ...'
              Align = alClient
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 0
              DataField = 'NFE_OBSE'
              DataSource = DTSCadastro
              ReadOnly = True
              ScrollBars = ssBoth
              Height = 46
              StoredValues = 64
            end
          end
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 956
    Width = 1904
    inherited PNLSBRodapeSyncEvent: TPanel
      Width = 1894
      inherited GFASyncEvent: TRxGIFAnimator
        Image.Data = {
          251F0000474946383961DC00DB00F7F900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FF0015
          1515535353818180B1B1B1E6E6E4FEFEFC21FF0B4E45545343415045322E3003
          0100000021F904050A00F9002C00000000DC00DB000008FF0001081C48B0A0C1
          8308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C
          49B2A4C9932853AA5CC9B2A5CB973063CA9C49B3A6CD9B3873EADCC9B3A7CF9F
          40830A1D4AB4A8D1A348932A5DCAB4A9D3A750A34A9D4AB5AAD5AB58B36ADDCA
          B5ABD7AF60C38A1D4BB6ACD9B368D3AA5DCBB6ADDBB770E3CA9D4BB7AEDDBB78
          F3EADDCBB7AFDFBF80030B1E4CB8B0E1C388132B5ECCB8B1E3C790234B9E4CB9
          B2E5CB98336BDECCB9B3E7CFA0438B1E4DBAB4E9D3A853AB5ECDBAB5EBD7B063
          CB9E4DBBB6EDDBB5F5F1EBC7AFB7EFDFC07F57D4CD3BB8F1DFFB36EFFBC7BCB9
          F3E7D0F551E407BD7A757FCAAD6B772E7D22F5EDDAB16BFF5E0E5E7B7789DFCB
          43179F39BDFAE7E723BA7FCF9C3DE6F9F4FFC58788FFBDFDCBFDBDB7DF430196
          F79F65059637A043096E7760650D6EB76043115AF72065155A37214319AEB759
          87D14D979F73174E06227C228E58DF872A36B7E142273657A26431BA98A28A33
          465623732F2AB4638E90EDA8DF8D2302F998903D26F4238B2D0EE95D93463A86
          2491F945D9D89413F50325932D2689D092E3F923E698649659663F15ED63E69A
          6BA289DB9B70C629E79C74D669E79D78E6A9E79E7CF6E9E79F80062AE8A08416
          2A953EFD24AAE8A28A8AC9A89B13EDF3E8A493F2935D935E1E04667B4D3A89DE
          969A61F9698B563226AA7CA0728A2995F495BAD8A9FCA5B67A5FA7991AB4E9AC
          AB3E492A972AD65AD0AD00D2CAAA7FBC8EE82B41C02228ACAE38169BDFB10325
          0BE1B2A3361B2AB5A8EE7A6DAED516E92C7DD00A242D86D8C6AAADAA5D0EAB9E
          AB8AC14AA0AC97214AE9BC895A4A91A4F4CE6BAFA1FCF6EBEFBF00072CF0C004
          176CF0C10827ACF0C20C37ECF0C310472CF1C414576CF1C51867ACF1C61C77EC
          F1C720872CF2C824976CF2C928A7ACF2CA2CB7ECF2CB30C72CF3CC34D76CF3CD
          38E7ACF3CE3CF7ECF3CF40A714100021F904050A00F9002C4C004C0043004300
          0008FF00F3091C48B0A0C1830813EA5BC8B0A1438703014804F070E1BE8B1709
          EA4BC851A0BF8F20438A1C29505FBF91FE3A0ADC0740E5417DFF5C1EE4976F5F
          4C990559E2D47873A7409A367D0ED42914A6D09FF98C1EE5D7B2684F9F34950A
          657A542AD4A44F7752757A345FD4AC38B7FAB4AA156B57B13BC986F5D8B55FD3
          B16065D2CC97F2A8DBAA715DCEAD2BF42ED7A56CEDBE4D9B57E5DEB68371AA95
          2BB01F62BC671B77F59758E662BD928F52860C389F63CD955D5E36DC75E0E6BF
          534B7B0CAD7274C7B9AA59ABE47BD5EBBFDBB873EB2E3C959FEFDFC08303DF58
          B39F71E3C0315E84A8BAB9F3E7D0A34B9F4EBDBAF5EBD8B36BDFCEBDBBF7EFE0
          C38BC01F4FBEBCF9F3E8D3AB5FCFBEBDFBA40E95EF038E5C2000F9F8F363243E
          39E4EEFFFFD4A50F6D6579F7CF46FCA5662082A5C1C6DD814935D8D53E5D4198
          606D425178948504AE75948642FD43E180917D58E188129AB8E1881D32A66288
          2C9658D48949B5885955154695E28C1B4665236938F658A38C63E538646745FD
          C8D13F8E9188A44F0028991093472A2854941B362965420EEE8465885A12E9E5
          960751E9A4955092E911485EE513258070E2D6254EF705875F45FABC85E79E0D
          8917100021F904050A00F9002C49004B00490045000008FF00F3091C48B0A0C1
          830813EEE3C79061BF8710234ADC97B0A2C58B08F5F9FBC7B1A3C78F1FFB01C0
          980F80C993284DEA434992A0469030618A1C6930A54D00FAF62DECE7CFDFBE93
          2D07BE0C3A70E6419BFA72F2E3E9CF203FA0448712CD67D460CE9D3C2FCEA419
          542AD17E2B0BEE63FA7525D7965E83823DFBF2DF547F66A7A66DB996E0BE8D6E
          89FA342977E3D47C70D9F6E3F8F7E759927349062E38382FD1A7873126C6B898
          20BF8E53AB76F5FB36AC5DCC7A3D6F761CB4B250BC9D23631CFCD7B4C0B68555
          6B25DDD2B5C0C67F9FFE659DDA29E1A9BA33D3562C7AE0BEDF5F655BE41D3AF2
          E48B70770FA75CFC3567B9D25B57BF3D1D2345E1DA555FFFFE9B8F5FEEA63DD3
          AB5FAFBEAEC1E3E4FB914F4ABFBEFDFB71AD7647E891BCC09B00DE84105E317D
          E44F3FFCECA38F7F0C26D4184C3D21A8E0820D5688D0651D4598A082167658D1
          581272E8E188165148E28928A6A8E28A2CB6E8E28B30C628E38C34D668E38D38
          E6A8E38E3CF698E2554B99E763463A2DD5538626FA98D44E47C6F49D8E4B1A59
          20484F1614E09550F5F51149FF0869A54AF88559DF7CFEC957130063B1A7267B
          604D054053DA9DE965501C55491200664EF58F9D250130674B75BA9927517BCA
          F957A044F9495E9767F28911A241A1B9E8A0FF49AA67A1896A7468740499E4E8
          4590B684139C84623A90A7879A2A2A9EA9FE89EAA59F569264D29F5C32DAA9A5
          A5C69AD0ABA5B6792AAE74AA7A279AA402FA0FA795EA9A1047B45EA452B1B5FA
          74ABB2FCD91A294E943ECAECB4ADBA6952B6A0724429B0C636EBACA2A55AFB1F
          B5076DEBED5DA545986449EC1AE46EA2C442F7D086F3AEDBADB79A16A4E18429
          21446EADE65AA4927C07F28BA5C1F51674EFB5382585255FB21E37E59409CBA8
          8F4420870C51C42406040021F904050A00F9002C4400470054004D000008FF00
          F3091C48B0A0C183081322D4C7B061C37D10F5299C48B1A24581FAF8F1EBC7B1
          A3C77EFE428A0CC94FE2C5932827EEEBF7AFA5CB973061FADB97B2A6CD812B63
          EAD4E98FDFCD9F2873EE1CDAB22780A300802A4D28D4E545A34897564C7AB269
          CBA7FC9052954A50ABD6AA2C5F62FDBAD4ABD9A817F585756A11EA519B6791EE
          E3B7EFEC49B530C7A23D19F7E84A7FFD4ADAB588576CDBAC7B2DF6553B10705D
          B369411AAEE876AB62B319FD11042CD86B647F93295646E935F341CE90094B66
          4B1971E2A90032F65308589F67D5A0598B76FDF6EEDF89A8C956549BFB6ADB7E
          B65F2BD4F79B32F2DB14338706FE5CF941E61B41EBB57E9D5FF17F4FABF7FF5E
          9E5D37F5E4E3274A374F5BBC6584FB424E07CEFBA2F7F9096B0B5FB89AFDC47E
          8FBDA7D07DFE25E49E4AFD19B79D7DDF85879E8005FD15134A33A587E048188E
          F411479D5968906CDF81875275694164E23E0EA5D8505C14CDB596824F3D5653
          5F34EEC7548235F5E3216C35F645D846F85554175C3D0E669184309EA423574C
          0A64D5452EF9D46493EB8978904E004EA925920411D5939660E6131F51302117
          2698550E35D3996716B6534F26B119E698313926E79DFCC814589C77B6995B48
          59F6D9677C9CF1296874406D84E2A184AD44D34D0C317A6476664A1A2688B949
          69E9947F7DB7E6A65C8188A5A1A0DA84244F9A965A539A3B05AA6A502F7AFF59
          E9ABC311B8D3402E7D496B8B2126D9654BAEEE5A50526B41595449C20EAB8F66
          29BDB4279145C2C558B3B906AB509134CE181FB52E3D4B11B63EA674D46CDCFE
          53E8B78BA9A8EEA217F9C5EC497A3E7AAD5C1B6DD8518623A53A1152DEA1A427
          B2F3BA0B6FB7F2EEEB17B9C6BE549BC10227FC8FB50969D5AFC3C7A27BF0C045
          15CC707316293C6BC472215C91C21A076C9AB180EA8B90562B616C6EC9201F45
          1C949CB1CB30002D3BFC298F476547593E74911A33CE22534472BB5ACD4C1DCC
          37E7DC71AE4C1F549ACF0839961C6921BBAC2BCF324F6C10800F627DB1CE2A07
          1CF2BB02C1991AD232173D91C2650FDD3548697708DD656D6B1DF7CA667555EA
          DEDA78C7E6B64270F38599460F02CEB6E07A1B1EAD5249D3FD74C58BDFCD55E4
          8D1B7E67E468BF9DEBDEAA269D4FAF641E2B74B2C495CED3C7C90E94BAEA7A9E
          9E6CA7F8026A6F60AD27C4DC8928AA1B29AD01010021F904050A00F9002C4200
          4300580055000008FF00F3091C48B0A0C18308131ED4C750A1C38710234264A8
          6F9F457E18FBF5F3C7D19FC67DFA248A1C19B162C68D1DFFA95CC952A5477EFB
          48CA9C49501F3F8DFE5AEADCF93226CD9F236DE2DC4974654F0048932605CAD4
          E0BEA14589FA13B84FA955A44DB33EDD18F5DF418FFD405E559AB5E9BE9B39A3
          7ED5C84FDFD8A565819EE5AAD620C77E6DDF628DFB736EDAA25F5FBAD5CBB72F
          DAAE81F10E7E5B98A65FC47605EB05D078A6508E750BDECD4BB87241B8082FFF
          DD89F06867CFF9AE26144A976869BC554F37661CFA666BD776614FAE3C99F2C2
          ADA349E786B99B6FEFBD078143D6FCB178D6E3649343059C3BAC73A0D0AD227C
          9C992058B1B26566FF1F9BFC70F7819B17939F399E7641EED4354B0E2FB13DFD
          CB6A3B82C50B3336FD88F6B93790492869C4567F2051A41E74E229555182F691
          14A06A122A751646162D781D8013463792830662D49F860242D4A1872229659B
          81FCC1C4506F1546881D00FBE8C7E281196E88DA4F21E5A35F47376248A26F3B
          3255A357DEFDB8DF881416F9133F2B29F4235BE021C7D78309FED44F9412DDE5
          1F9157AE28A24519F6E8903E5B7219914783A186264AFBB58860994E05D7253F
          6056F6D46877052922860541D952973EEDB8A74E36FAC94F4D690EEA904AFD38
          99CF4D5125CAA29947EAA4104B8B3AC94F705201F991403681AAD2412DF963A6
          9BB77565A34F67C5FF27D04E913A89665752E14555A3C215D56991FA988AEB3F
          FE2C2AD4B044156AA8B0B8166B12B3AEAE8A9AA0C8B6A4D8A1D5B2D48FB49EF1
          9AED3F61E58326B451D5EA24B3B34A0593B89F92CBD3AF3BEA835BBAEFF6D86E
          4AC8FAA3ECB49A1A4454B802ADA85FB30017C96B42FF627A239CCCB2E964A60F
          EDA4AC4D27B1886FAADB7A3A154488AE6AD29F15C36994623B0280A648D61AC4
          109964FE69F16625D3686E449C9EA920CB2286E85952A24964D4BE12DD0C126F
          0ECEC5F0C608B904B4A4295AF5F1CB1DF93810A4DC325DDF580F867C74475559
          4D935E2BE77C23906D96955D8C605FA4B57556367D22DA607F7C129E285E7D62
          9E0F8DB7F2859C81F6E6F6DB2A2BD4DEDE5FE2CDA1DE14593469C540AEFB997D
          2F6AD7E05B4FE3347051E9197477DB7F5FE557D2980BA6F9E65F838D16E8A192
          3CFA8433527E3AAAA1ABFEB88CAD638D16D204B92AFBEC0C3E673A4AB0630E1B
          4267C735196BB84F5DE9F0C4EBD8D4F1B6254F6FAE8E1FF49FEF9403177CAE05
          5B2FF9CE69E3B43D4FA3265437D17A7DEEEFF2DD7BBDFA5BEA17E4AAE8EE7B9F
          FEEBF2574A7FFDBC8F157FEEFADB1DFF04D29BFF292F766D1960FFAED2B3FC21
          B06AF5EB4D0301B8BC042A9020D08B94BB10C5BC0B0E8430D1FB16B13AE84185
          204F843D29E1434EA8BF3E6168682A7488D1FAD4223251248640B9610C030200
          21F904050A00F9002C42004300580055000008FF00F3091C48B0A0C18308131E
          04C050A1C3871023466448B1A2C58A12336A9C68519F477D174352DC4892E447
          7DFB52F25BD9AF654B7E20455E2C4933E13E962DFDE9D4F9AF674F82FE60CA9C
          59B3A8407DFDFCF95CCAD42750A143311A2DBA2F69D3AB3F07FAEBB72FAAD4A9
          34AB2AC5DA142857AF5FC16E144BB6ACD6B3681BAA25C9B6ED52B35DE302986B
          D2AA5DA76FF3C6E5BB11E9D8BFFFF0EADD4B38A33E7E8711BFE5B7B8B163C888
          01E7DB4A59AF65898FFB65CEBAB91F54B49F25F2133D7A724CD4081FEF4B2D70
          7564BB044DBFF61A1BA7BED4B65B6B3DCDDB60E8A43A675BAE2BF9EDEEA8C657
          23EFE94F3961E67FCD3E1F5AF0384F9FFE7E5FFFF7DB5CE056C1B0F379BFFDAF
          9FF8B9D87107AEACBE2AF9A6EEF9C66FAB7870FDE96DE5A7D67E88F9930F7A69
          1184128076C1C4D148071996D94E3A399811815805F59E42214547E14E2EADC4
          4F4A297DB4D67D055A9810770491B8CF49E3B197E28606A547DB81328EA61B42
          F4A5B64F8EA3B5A7E2408B41D8D88F4192C5598D45263815924966C80F934D3A
          491590416E45659572C18765815B6DC8A5454746B9944E2D5997CF984612C68F
          5B02B585A6696AB2D965636FDE55D0553A0DF4229176DEC85A62096936625E80
          B279A33E6341F4D28B10EA85D2768CD186A4435BD1B99B4071D98760A5B40100
          99429C414AE69A512D58EAA93702F098810795FF4A29AA43BD6A9E6E5636C690
          6106714669A7A34E962B61148985D7AF5EA9DA2B5CA0A65691B1A5992A13AD1D
          D9865098CD3A4B516815228BD14528599B908637726AD14D5C792B5545E12605
          D194E586246D71B4A2DB0F44D4A9F9999D95BA7A93797A1E041E8DC406DA623E
          F7CA28B04F025AC6EF408FD9F6E540F8ED6BF051129BE913BC052B4A10645F22
          C6F15C0F7F1C7266238355B29F836A0C5ECA2A8F5910864906657191D1A11825
          B9DA7A96F3C952127C338B11AEA631CF7C9D54224144F70634783B6AF4918B22
          BAF4E1795B0E0B316613461D91AA1416C8158F5A17C4B55DBE920DEE666662CD
          A146792A9936B5A9BA4B71D7301B157753688EC59868B2C1C689379E7C3ECA74
          5CB6DE2DF6906AB53CA7DF87A3151A41A3CD9D346B8FEB4B77ADE20A8E98D797
          67BE905E9DE75339E3731D37A2D08B957EBAD0F0ADAE365AD07AFE17D29FC16E
          6EA776DB8EF6D8E572C83BACBECB097CF0B34755BBE95D6B8EFCDFCAF7CEBCD8
          CE3FBFB94CBC2A7EFBF1D6479EACF49573DFFDEE80133FFDF6795B2F69E0E7FF
          65DAF805AD6F7EFB01A6FF7CEBE06726FEF8F89BCFD48721FA13FCBCE715B164
          CA34F02A918906B822499D84280C7C90CF22389536513020000021F904050A00
          F9002C42004400570052000008FF00F3091C48B0A0C18308090248C8B0A1C387
          10230A044051A2C58B18F351DCC8B1E3C68C20436AF448B2E4429128219A5CE9
          31A5CB862C37EA9B59F2A5CD8133F7EDCBA7731FBF9F3FFB091DEAAF9F3E9237
          6DF2F3E7EF9F53A70FFDED439AD465BFA758A34E6D5935E555AC501D4AA5DA55
          E457B05AC93EE427749FBEB203CF6615BBB563447DFD9A3AEDE7B62C3FB0611B
          8EE5FA709FDCA7FDF8BDBDF91730C4BA76D7EA05FCAF28BF9D2E1BA35D5BD321
          5ECA802DF70DA97973437E9D1B7E064DB928DFC5174BCF3D9D9AE1BEC9AC5B1B
          C5B80F3467B50965FBCE171AB3C5DB947F134EB83A3741B0FEF8F1C6FD547964
          DBD41D17C4CA777A7287FD6A23FF143EDBA0D3A2B02522D7DE303C7083CDD923
          AC2CDDBBFC8446DF175C7F1F613F90FC9587DF51D705F7DD5A47D9971B68F97D
          14557F090D769244FA64B72062E93DA40F840372645185173298A143A5C5B69C
          67163EC5D48A2BB675D1591749E8614440FDD4D38D33E538E25DD5BD48608170
          1DD7A345A8E917A4864B0506913F3F0279E471F545E49E784F7E68983F85AD54
          654814E97365844D9EB8A5451CE9C31696051569D2985C96E9535E6842E6249B
          6492E4255B538AF9908374AE44939130F1D9674C335EA4E793840A1AD19A748E
          C452465A36EA28957BC624E9A485D649A8A480329468A663CEE950497F761A64
          45189564D86B945E3AAA49FFE5FF235A9813BA5A29A9065916A6ADB7961465AE
          ACD6CA2B422CA1C95051A30D9B9049C645D59DB207C17A117D3BF24AAAB11121
          06AD4224359BAD53BF62A4638E37F6F453B5D17A84D7B44F79EB199E42B1C862
          6BE1065A26B60F6185EF5A218256AFBD142D251158FF9ED62F65057BDA65ACF9
          02E62EB11B91D76FC20ADF06516BE84EE4D1C3E6217C24830073647143FE66F4
          19C9AC713C90AAFB760C18C3C7E995506E4C86BCD1C80C817C9199931DB420CC
          106FDCF2769401FDD861CF2D18DDAB423B24E2CE87FD23508852F57AF3D04483
          B55B6C4C1DCC5DC62BAB8B75D25A839DD09B2982B6B4D55D8E3D50D166337467
          5E213ECBF4BD0D979DD2DC69FF64B3F5DD32B93D75687153C816BD8B8A9DB7BE
          85EF7C25622A1B64A7D13E131EA49779FD0DF8C28BABD8384A9F4FDEF9799F87
          4A12E52EEB1BB9AB25A19EF5D7DB72EBD1522D0E25548D97E1187B41768EFBE8
          EE417F7A28F0C29B1A7BF1C0278EEA9301010021F904050A00F9002C47004900
          4D0049000008FF00F3091C48B0A0C183F9000040C8B0A1C38706154A9C48B1A2
          428818333EB4C891A3C68F20F3E9DB47B2A4C97DFC52AA4CD96F9FC4903021F6
          FBF70F64BF972051F22BA94F5F4C82FE68DAC4A9515F509A48FD29EDD72F25CF
          9E108F0EBDF8D12852A102AF6A55EA6F9FC399353FDEA45AF428D6825AAFF6FB
          7A36A33FA219F7696598F61F3FB66135BE251BF72AC4AB771B8205B977E147B9
          4835FE73C997E0E08F8541F2F3AB917163818FF5C2C538B92D46CB860B82CD8B
          31B2D8C455271E1C0D79B34CD46EF5A936C85AAFECD06E3D47A5B81A76E9DB84
          753F1C7B19B3EFA8C03F1E9739DB6067D2C85D37D427FC213FE9029F83BC8DFB
          2175E89CB1E7FFD39EBA3843B9302D33245F54FC41F4211937647FB0EEBFE419
          27C3C47FF0B9FDFFF785145848B239E4DF7F5C25B856480B1266DE40239DB44F
          4F145658614CFBACA59466DDFDE4A1411492C4523F5CD1D6E1872812C4514F25
          F1C3944B29C6C8504715C9682342349E78E38E0959C4E38F113507E490033D48
          E4914826A9E4924C36E9E493504619A591526AC45B953F7984E547396E99518E
          EE7929924A2451A8A5982A7A5510574CED542654680A04809AA5F9934F531F5A
          A8A785133AA4D080CAF9945382842658979D0DFD091378188D06E0A182E20840
          839071791180F5D1E44FA4414E1AD23F887EA910A51869CA69411285AA18A91B
          8D0A92A9922ACFA46A46FFB0EAA7A2CA817A6A910AEDFA975D96020068A9BAC6
          EAEB43340DDBAAB0AF16DBE99C9F2E16ACB2C8D2E4EB4474D24A53B6104944AD
          4348ED4AD1B70D21C5EDB2E4D265EDB39E2A16EEB4CD0688EA44B6960BAB95B8
          BA2BEFBCAEEA3B6BB7F96ABBEFBCC7AAAB2948129D5BEDC00799F52B4DF526AA
          90C2E06E3B5D5DF6428CF0C4F1522C1062181BA455BAB17A6CB0C9FA90F8E840
          236F0C6DAED27AD7A28B242A659FC92577EC61883A3155B0C438671A3396BD32
          6574532B9169523E412F096697623EDD519C357E18100021F904050A00F9002C
          4B004C00450043000008FF00F3090440B0A0C1830801085CC8B0A1C38710230A
          D4C7AFA2C58BFD326ADCC84FA1C48814F909BC48B224BF7D0CF9FDFB08922544
          952B1BFE9B49B3264D7D0B55BA7C88736743983E05CED4E75167D0853D8FE603
          AA94E8C8984D953E959ACFE952A847931E35DAB428D6A05A8372CDEA956A589F
          63C196957A76675A9F56F77D854BF5AD4B7F0405CA355B77EE5D8FF9F6B2052C
          D62F4BBC0B0577956AF73060C564195345ACD7304BAB5B273FB6FC11B358CD89
          394BF48C167465B3844B4BA51C5834C8D4547DB286AC566A3FD3AD5DDA1C1ABB
          37527FC0830B17BE51636F7F0B872B1F7EDBB7F38505F5499F4EBDFAF3EB1113
          E6C5CEBDBBF7EFE0C38BEC1F4FBEBCF9F3E8D3AB5FCFBEBDFBF7F0E3CB9F4FBF
          BE7DF5DA61DB07505D7A7EFDED2DA75C71023527D53EC525A860462225961E00
          FDECB6DB43FF20F75C5B2C412855852951F50F861F69A81487397908A244221E
          45E248264A9562502B2ED5A2522FFAB422000D8E78627606C268613E387A4855
          8D3BDD98A38A43F618D48F416E98E464D01D09E393AB4529A48B4ACA66E588AE
          4144E44E4C4A5964970F7D79D7962AFE789499870DD4649A438A09A69B72B214
          63506F1E652141757E74A74F792E49E7866AE2D9E7476AC224E14C10FDB953A0
          5A2265124604E6D3CFA12822B8E0A60CBAF7DFA78005040021F904050A00F900
          2C4D004D00430041000008C900F3091C485020BF830811165CC8B0A1C3871023
          4A9C48D11F008A183366B4A8B1A3C7861C3F8AFC1872A4498C254FAA84E86FA5
          4B962F63CA9C49B3A6C48B3673EA3CC96FA7CB9E3E55020D6A72285191468F7A
          4CAA5423D3A6189FDA944A71DF447F58B342DD7A138057AF5CC38A1D4BB6ACD9
          B368D3AA5DCBB6ADDBB770E3CA9D4BB7EE4DB9FDF2EADD6B372655B57FD30646
          3BF86C61B387CB268EA96F29D4C61D17BF84ECF4B1E3A694334A769939AAE5B8
          FF3AB70D2D973468D16C4DC3557D74AFEBBC6803020021F904050A00F9002CDB
          00DA000100010000080400F305040021F904050A00F9002CDB00DA0001000100
          00080400F30504003B}
      end
      inherited PNLSyncEvent: TPanel
        Width = 1864
      end
    end
    inherited SBRodape: TdxStatusBar
      Width = 1894
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 100
          Text = 'Consulta'
          Width = 150
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 0
          Width = 1265
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 0
          Width = 320
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
  end
  inherited imageOPC: TImageList
    Left = 456
    Bitmap = {
      494C01010C000E0004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F800000080000000010020000000000000F0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006283FA006183FA006082F9005F81F9005D80
      F9005A7FFA00597EFA00567CF800567CF800537BF800517AF9004D79F800698B
      F8004D78F5004172F3004977F5004D79F4004D78F3004C79F3004F7AF600527C
      F900517CF9004F7BF8004C79F6004977F4004876F4004977F5004877F5004977
      F5004776F4004274F2004374F3004174F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFC00FAF4EB00F5E7
      D400F1DEC900E5C6A200D69D5D00E3BE8E00FDFCF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100EFEFEF00DCDCDC00CFCFCF00D0D0D000D1D1D100D3D3
      D300D4D4D400D6D6D600D7D7D700D7D7D700D9D9D900DADADA00DADADA00DADA
      DA00DADADA00D9D9D900D8D8D800D7D7D700D6D6D600D4D4D400D3D3D300D1D1
      D100CFCFCF00D0D0D000DFDFDF0000000000F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000335912003554
      1800355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      19003354190037571B00455E20005E682C006A6E350000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006384FA006183FA005F82F9005F82FA005E81F9005B80
      F900587EF900587DF900577DF900547CF900527BF9004D79F8006D8CF800869A
      FA007E96F9005E83F4003A6FEE004374F1004776F2004776F2004A78F2004D7A
      F6004D7AF7004B79F6004776F3004876F3004776F3004575F3004576F3004475
      F3004374F2004174F1003F73F1003D71F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFC
      F800FBF7F100F9F0E800F1DEC500E8C89F00E1B88C00D9A77200D08F4300C779
      1600C16C0100BF660100BF630200DBAB7200FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500E1E1E100E0E0E000E2E2E200E4E4
      E400E6E6E600E8E8E800EAEAEA00EBEBEB00EDEDED00EEEEEE00EFEFEF00EFEF
      EF00EEEEEE00EDEDED00ECECEC00EAEAEA00E8E8E800E6E6E600E5E5E500E2E2
      E200E0E0E000E0E0E000E4E4E400EEEEEE00F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000766B3000005400000051
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000520000004F00000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006283FA005F83FA005E81F9005E81F9005A7F
      F900577DF900567DF900557DF900557CFA004C77F9005F84F8008499FA007E95
      FA008096F9008799FB00517BEF002F6AEA004374F0004175EF004677F0004978
      F4004878F4004776F3004776F3004776F3004575F2004576F3004576F2004274
      F1004173F0004072F0003D72EF003B71EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFDFB00F9F2E800F6EAD900F2E0CD00E8CCA600DDB2
      7600D69D6000D08E4C00C87E2700C26F0500BF640000BF630000C1680000C36D
      0000C4710000C36E0000C0680100DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F100E9E9E900E3E3E300E1E1E100E3E3E300E6E6
      E600E8E8E800EAEAEA00EDEDED00EFEFEF00F1F1F100F2F2F200F3F3F300F3F3
      F300F2F2F200F1F1F100EFEFEF00EDEDED00EBEBEB00E9E9E900E7E7E700E3E3
      E300E2E2E200E3E3E300E9E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B633800025D0700469C
      4F0053A455004BA156004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA1550053A55C00308A3A000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006384FA006083FA005F82FA005E81F9005C80F900597E
      F900577DFA00567EF900557DFA00507AF900527CF9007993F9007F96F9007C93
      FA007B92F9007F94FA007890F8004072EB00326BE9004174EE004375EF004677
      F1004877F3004776F2004374F2003B6EF000366AED00366BEC00396EEE003D71
      EF003E72EF003E72EF003C71EF00376DEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EED9BE00DEB48000D59A5000CC883600C77A2700C3701100C169
      0000BF630000BF630000C1690000C46E0000C6730000C6740000C6740000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200F3F3F300F5F5F500EBEBEB00DEDEDE00DADADA00DDDDDD00E0E0
      E000E3E3E300E6E6E600E9E9E900EBEBEB00EDEDED00EEEEEE00EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00ECECEC00EAEAEA00E7E7E700E4E4E400E1E1E100DDDD
      DD00DBDBDB00DEDEDE00EBEBEB00F5F5F500F3F3F300F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007660330010781C004595
      4B002A7D2E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028802E00348B3F0070BB8A000059000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006284FA006083F9006083F9005F81F9005B80F900597E
      FA00577DF900567DF900507AFA004F7AF900758FF9008094FA007D93F9007B91
      F9007A91FA007C92FA008195FB007B91F9004374EB002C68E6003C71ED004175
      ED004474F1003A6DF0003C70EE00709EF00078A4EB005E8AE0004374DB002D65
      DB003069E3002C67E5002A65E8003B73EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8D3C00C1670200C1680000C0670000C1680000C36B0000C570
      0000C7740000C7750000C6740000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700F8F8F800F4F4F400F4F5F50000000000D8D8D800CACACA00CCCCCC00CFCF
      CF00D3D3D300D6D6D600D7D7D700DADADA00DCDCDC00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DCDCDC00DBDBDB00D9D9D900D6D6D600D3D3D300CFCFCF00CDCD
      CD00CACACA00D4D4D400EDEDED00F5F6F600F4F5F500F8F8F800F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108214001770
      1600004D00000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      00000052000000500000005C00004FB16400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006485FA006183FA006083FA005F81F9005C80F9005A7F
      FA00597EF900557CF900507AF900718EF9008094F9007A90FA007C92F9007D93
      FA007B91FA007B92FA007B92F9008095FA008094FB004977EB002B69E5003B71
      EC003B70EE005486EC0074A0EB0090B7E8008FB8E80096BDEC0086ADE500618B
      D50073A0E2005C8BDC004275D9007DABEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8D3900C46B0000C5720000C7740000C7750000C6740000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EC00C5C5C500A7A7A600A2A2A200A5A4A400A7A7A700ACADAD00AEAEAE00AFAF
      AF00B2B2B200B5B5B500B6B6B600B8B8B800BABABA00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00B9B9B900B8B8B800B7B7B700B5B5B500B3B3B300B1B1B100AFAF
      AF00ACACAC00A8A8A800A4A5A500A3A4A400A7A7A700C2C2C200E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005800000059000000590000005900000059
      00000059000000570000066308004DB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006484FA006183FA006082FA006082F9005C80F9005A7F
      FA00587EFA004E79FA006184F9008195F9007B91F9007A8FF9007A8FF9007A90
      FA00798FFA007B91FA007B91F9007B92F9007F94FB008195FA00326BE5002966
      E800437AED009BC4EF009AC2ED007AA2E2005984CE007FA9E30091BCEE008CB3
      E80097C2EB0080A8E100789EDC0096C1ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1934200C5700000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFEFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1C0
      C0007F7D7C006B6866005E5C5A00403F3F0054545400797A7A00808080008080
      800082828200878787008A8A8A008E8E8E009191910092929200939393009393
      930092929200909090008E8E8E008B8B8B008787870084848400808080008080
      80007B7B7B00595959003E3D3D00585755006B6967007B787700B0AFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000056000000540000005400000054000000540000005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000570000005000000058000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006484FA006384FA006182FA005F82F9005E81F9005B80
      FA00537CFA005980F9007990F9007A91F9007890FA00788EFA00778FFA007990
      FA007990F900788FFA00788FFB00798FFA00798FF9007A8EFC006F8AF6002E69
      E5003471E60099C3F1009EC8F1008FB9EC00749CDF004878C1005A88C90077A2
      DB008DB9E8008BB5E80086AFE50095C3EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAE7600FCF8F400F8EDE000F6EAD800F6EB
      DB00F6EBDB00F6EBDB00F6EBDB00F6EBDB00F6EBDB00F6EBDB00F5E9D800F9F3
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A5
      A30073706D00767270005C5957001715150016161600363535003A3A3A003939
      39003B3B3B003E3E3D0040404000444343004645450047464600474747004747
      4700474646004645450044434300414140003F3E3E003C3C3C00393938003A3A
      3A0037363600191919000F0E0D004D4A480077747100716C69008D8B89000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D0000520000096307000D6B10000C690E000C690E000C6A100009670B00015B
      0000005800000059000000590000005900000059000000590000005900000059
      00000059000000550000146B18005BAD70000E66120000550000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006484FA006385FA006284FA006082F9005E81F900577D
      FA00587FF9007790F900788EFB00768DFA00778FFA00768DFA00778DFA00778E
      FA00778EFA00778EF900778DFA00758DFA00778DFA00889DF5008395FA007690
      F800306BE4001F65DE0074A5E700A2CCF30097C0F1006B93D90077A0DB00739E
      DA005784C80078A4DB009AC7F00095C6EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C6730000C5710000C5700000C5710000C6730000C6730000C6730000C673
      0000C6740000C4700000C1690100E1B68300F3E2CD00D1904C00CC843500CF8C
      3B00CF8B3B00CF8B3B00CF8B3B00CF8B3B00CF8B3B00CF8B3B00CD873700D090
      4A00EFDEC8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A6
      A500817F7C008683810062605F00191717000908080012121100121111001111
      1000111110001211100011101000111110001111100011111000111110001111
      1000111110001111100011111000111110001211100011111000111110001211
      1100131211000A0A0A00111010004F4D4C0087848100817E7B00908E8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004C000078BB8800D2F6EE00C0F2E600C0F2E600C7F3EC00A0E0B6000E6A
      0500005400000059000000590000005900000059000000590000005900000059
      000000590000004F0000367E3B00E2FFFF0021782A0000510000004F0000004F
      0000004E000000520000066409004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006385FA006183FA006183F9006083F9005B80F900597F
      F9007790F9007A8FFA008096F6007B90F800748BFB00788EF900778DFA00778D
      F900758DFA00768DFA00768DF9007088FB0096ABF300D2E5E500B8CDE9008092
      FB00738BFB004477E4006C9AE40082AFE6007EACE10099C2F0009AC5F00089B3
      E700719BDA008ABAE70099C9F00091C3ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C26B0000C0680000C16A0000BF670000C16B0000C6720000C6730000C673
      0000C6740000C4700000C1690100E2B98900EFDABA00C36D1000BE600000C269
      0000C2680000C2680000C2680000C2680000C2680000C2680000C1680000BE62
      0000D8A564000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEAC
      AB00868482008A888500626160001F1E1E00100F0F0017161500161514001615
      1400161514001514140015141400151414001514140015141400151414001514
      1400151414001514140015141400151414001515140016151400161514001615
      14001716150012111000181717004F4D4D0086838100827F7D00999796000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007DC6A000E9FFFF00D9FFFF00D9FFFF00E1FFFF00BEEED000146B
      0900005300000059000000590000005900000059000000590000005900000059
      00000059000000500000307D3900D5FFFF001F712400025F0600349154003F98
      6000479961001C742600035E04004EB16400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006385FA006183FA006082F9005E82F900567DFA006989
      F9007E93FB007E93F800B3C6EA00A3B7ED00748AFA00748AFA007088FB006F87
      FB006F86FB006F86FB007087FB006880FD009EB3F200D4E7E400CFE2E50090A5
      F2008093FB00869DF90096BEF1008AB6E9005B89D00070A0D90087B4E50086B0
      E7008EB9EB009BCAF20094C4EE008FC1EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6710000C16A
      0000C67A1C00D7A25F00DEB27700D6A15E00C6791D00C1690000C5710000C673
      0000C6740000C4700000C1690100E1B98800F0DCBE00C7781600C26B0000C675
      0000C6740000C6740000C6740000C6740000C6740000C6740000C6730000C46F
      0000D79D51000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B0
      AF008B898800908E8B00666362001E1D1C00100E0E0019181800181717001816
      1700181617001816170018161700181617001816170018161700181617001816
      1700181617001816170018161700181617001816170018161700181616001816
      16001918180012101000151514005351500098959300959291009E9C9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005400000059000000590000005900000059000000590000005900000059
      00000059000000500000307E3C00D8FFFF00116315000B6F0D00CAFCEA00EAFF
      FF00F8FFFF0062A66E00005200004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006485FA006283FA005F82F900587EF9006386F9007F96
      F9007086FC0092A7F200D6E7E500D2E3E5009BB0EF008096F8008CA0F50091A5
      F30098ACF1009DB1F100A5B9EE00ACC0EB00A3B8EC00C0D3EA00CCDFE800AEC3
      EB00BCD0EA007C91F90086A2F8009DC6F20088B0E7004E7BC9005F8DCB008EBA
      EA0093C1ED0094C5EE0092C3EE008BBDEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C5730000C1690000CA84
      2B00EBD3B300000000000000000000000000EBD4B500CB842D00BF680000C572
      0000C7730000C5700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B5
      B400918E8C0094918F00696765001E1E1D001010100019191900181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      180019191900121212001515140057555300ABA9A700ABA9A800A3A19F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005400000059000000590000005900000059000000590000005900000059
      0000005900000051000026782D00DCFFFD0069B17F00157E1E00ABE2C3005CAD
      68004FA252001E751F00035C04004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006385FA006183F9005B7FF9006285F9007E95F9007E93
      F900B2C5F000A9BDEE00BACDE900D3E5E500AFC2E900C4D6E800D2E3E500CEE1
      E500CEE1E500CFE0E600CEDFE500CDE0E300C1D5E500A6BBEC00A6BBEB00BCD0
      EA00D2E4E6008AA1F400758AFD00809AF8008CB1ED0091B7E9009AC4F00097C5
      EE0087B7E60089BAE9008EC0EE0078ABE0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6740000C36E0000C4720F00E9D1
      AF0000000000F3E5D400E5C29C00F2E2CF0000000000EACFAD00C4721500C26B
      0000C7740000C4700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0BF
      BE00A29F9D00A6A4A200777675002B2A2A001D1D1D0028282800282829002A2A
      2A002C2C2B002D2D2C002E2E2E002F2F2F003030300031303000313030003231
      31003130300030303000303030002F2F2F002E2E2D002E2D2D002D2C2C002B2B
      2B002A2A2A00212122002524250066656400AEABAA00A9A7A600B2B1AF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005300000055000000580000005800000058000000580000005800000058
      0000005800000056000002580000469B5600D9FFFE00BAE6CB009CDCC2000063
      0F00004C000000540000066409004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006384FA005B7FFA005C80F9007F97FA008095F900778D
      FA00C1D3EC00D3E4E700A3B6EE0092A6F000B1C6EA00D1E3E700CADBE800C7DA
      E700C7DAE700C6D9E600C7D9E600C5D8E600C6D9E400C8DBE500CADCE700CEDF
      E700D5E6E5009FB3EF006F86FB00738AFA008CB2F10099C2EE00A0C9F00097C6
      EF008ABBE90093C3EF007DB0E4004E81C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C2680000D3984E00FBF9
      F300F6EADB00CD8A3D00BD600C00CA843500F2E2CC00FDFBF800D4995400C168
      0000C5720000C5710000C1690100E1B98800F0DCBE00C7771700C1690000C572
      0000C5720000C6730000C6730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3D2
      D100BBB9B800C1C0BE0092918F003C3C3C002C2C2C003A3A3A003B3A3B003E3D
      3D0040403F004141410044444300454445004646460047474700484848004847
      4700474646004646470045454500444445004242410040403F003E3F3D003C3C
      3C003A3A3A002F2E2F00343435007E7D7C00C3C0BF00B8B6B600C8C7C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      080000530000086F100000540000005300000053000000530000005300000053
      0000005500000053000000500000004800006AC18700EEFFFF00B4EFE4000A68
      17000053000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006082FA006183F9007390F9008399FA007E94F9007389
      FB00A5B9F000DBECE600C4D7E900A9BCED00C8DAE800CCDEE700CADBE700C7DA
      E700C7DAE700C6D9E600C6D9E600C5D8E500C5D7E400C3D7E400C5D8E700C5D7
      E800C5D8E800ABC0EC006C83FB007B99F8009BC6F0009EC7F000A3CCF00099C8
      F10093C3EF0085B6E7006093D2006E99DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6710000C1680000E0B988000000
      0000E3BF9400BF640000C0650000BE610000DFB4800000000000E1BB8F00C069
      0800C46E0000C5710000C1690100E1B98800F0DBBB00C4701100BD600000C069
      0000C26A0000C46F0000C5730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D5
      D500B5B4B300B7B5B400939290003F3F3E002828280033323200323030003130
      3000303030002F2F2F002E2E2E002E2D2D002D2D2D002D2C2C002C2C2C002C2B
      2B002B2A2A002A2A2A0029292900292929002828280027272700272625002726
      2600262626001C1C1C00282727007B7A7900BAB9B700B3B2B000CBCAC9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA000C64
      0200297F3900A3D8B20071BA6A0070BA6A0070BA6A0070BA6A0071BA6B0075BA
      6C002B8835005BAF620072B969005BA858007DC49200E5FFFF00A9E5D200035E
      08000056000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006284F9007E99F900869DFA008096F9007B92FA006E85
      FC007C92F700BACDEB00C5D7E900D7E9E700CCDEE800CADCE700CADBE700C7DA
      E700C6D9E600C6D9E600C5D8E500C4D8E500C9DBE400B4C9E4007D95F500728B
      FA008AA0F3009CB2EF00687FFB0084A2F700AAD7F2009DCAF200A0CAF2009BC7
      F10086B6E900739FDC0082AFE40098C4F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C5700000C26B0000E6C69C000000
      0000DBAD7800C1670000C6710000C0660000DAA6690000000000E7C9A400C26D
      0E00C46D0000C5710000C1690100E1B88600EED8BE00CD883D00DFB48700E8CB
      AA00D2944B00C1690300C26A0000C5710000C6740000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D8
      D800ADABA900AAA8A600979694005151500039393800403F3F003F3F3E003E3E
      3C003D3D3C003C3C3B003B3A3A003A3939003938380038373700373636003535
      34003434330033333200323232003232310031313000302F2F002F2E2E002F2D
      2E002E2E2D00242423003433320081807E00AEACAB00AAA9A700CAC9C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA000B63
      02002A872E00ACEECE0096DFCB0096DEC80096DEC80096DEC80096DEC9009CDE
      CC003E9B610077CDB200B0ECDF00E2FFFF00DCFFFF00E6FFFF006CB377000049
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B96F900879EFA008098FA007C93FA00849AF800A5B8
      F3009DB0F300A0B3F100ABBEED00C6D8E800CEE0E800CADCE700C9DBE700C9DB
      E700C6D9E700C6D9E600C5D8E400C4D8E500C5D9E500C3D6E200778FF7006A83
      FB00A9BEEB007D94F800758AFB00748BF9007EA0F6008FB9EF0087B3E900507F
      C5004272BD00608ECD0082AFE20085B2E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C5710000C26B0000E6C59C000000
      0000DCAD7800C1670000C5700000C1660000DAA66A0000000000E7CAA500C26D
      0E00C46D0000C5710000C1690200DDAF7700F9F3EC00F7EDE300FFFFFE000000
      0000FBF6F000E0B68500C5771E00BF660000C46D0000C6730000C6730000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFDF
      DF00B1AFAD00AAA8A600A1A09E00666564004B4B4B00504F4F0050504F004F4E
      4E004E4D4D004D4C4C004B4B4B004A4A4A004949480048484700474747004746
      46004545450044444400434343004242420041404000404040003F4040003F3F
      3E003E3E3D00343434004848480092908F00AEACAB00AEAEAC00D3D3D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA001568
      0800005D00001D8C280002691B00036819000369190003691900036919000469
      190001610600005D120033954E00D4FFF900D4FFFB00C8F5EC002D8833000C6A
      0A00005A000000560000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006989F900829BFA00849CFA007D94FA008097F800A2B5
      F300C1D2ED00BCCDED00AEC1ED00AEC0ED00C5D7E900CCDEE700CADCE700C9DB
      E700C6D9E600C6D9E600C5D9E600C4D8E500C4D7E500C8DBE200A7BCEA00A3B8
      ED0097ACF0007187FB007B91F9007D90FA0087A4F60094BEEE0079A3E300709B
      DD0080A7E5004B78C3005484C30096C1F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6720000C1680000E0B58300FFFF
      FE00E2BE9200BF640000C0660000BE610000DEB27D0000000000E3C09600C06A
      0900C46F0000C5710000C1690200DCAB72000000000000000000EFDABF00EAD1
      B000FEFBF80000000000ECD7BB00D1934A00C0680500C1680000C5710000C470
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E500BAB8B700AEACAB00ABAAA8007A7A79005F5E5E006161600062616100615F
      60005F5F5E005E5D5D005D5C5C005C5B5B005A5A5A005A595900585858005857
      5700565656005554550054545400535353005251520050515000505151005050
      4F004E4E4D00464646005E5E5E00A2A09F00B1AFAE00B4B2B100DEDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005100000054000000540000005400000054000000540000005400000054
      000000560000004C00002B832F00D7FFFF00E4FFFF0078B98E000E670F00A7EA
      C60016711A0000510000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005D80F900708FF900829BFA008298F900768DFA007E93
      F800C7D8ED00C3D4ED00B6C8ED00A1B5F000B5C8EB00CEE0E700CBDDE800CADC
      E700C7DAE600C6D9E600C6D9E600C4D8E500C4D8E400C8DCE300BACEE6009AB0
      F000788DF900768DF9007E93FA007690F7008EBBF000AAD3F30093BDED0094BE
      EF0093BCEE00719ADE007AA8DF00A5CEF5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C2680000D3944800FAF7
      F000F4E9D700CB853500BB5D0400C77B2900EFDCC400FEFDFB00D8A26300C167
      0000C5720000C5710000C1690200DEB07900FCF9F400E5C29900C6782000C26D
      0F00DBAA7000F7ECDF0000000000FAF4EB00DEB38000C5771E00BF640000C16B
      0000D8A259000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EB00C4C3C200B0AEAE00B1B0AE008E8D8C007575740076767500777776007574
      7400747473007372720072717100717070006F6F6E006E6D6D006D6C6C006B6B
      6A006A6969006967670067676600666665006564640064636300636161006161
      61005F5E5E005A59590074727200ACAAA900B4B2B000BBB9B700E6E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      090000530000005A000000590000005900000059000000590000005900000059
      000000590000004E000024802900BBF1DB00D6FFFE0097D9C30088CFB5008AD3
      B600095C0B0000540000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006184FA005C80F9006183F9007A94F9007D92FA008BA0
      F600A9BBF000A3B6F100A1B4F000B2C4EC00D1E2E800D0E2E800D1E3E800D1E3
      E700D1E1E700D0E1E600CFE1E600CEE1E400CBDFE400CCDFE400A4B9EC006C82
      FD00798FFA007D91FA008095FA003A73EA003574EA00689CEF0089B8F100A5CF
      F2009FCAF0008BB7E90090B9EC00A8D0F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6740000C46E0000C4710E00E9CF
      AD0000000000F1E0CB00DEB68700EDD7BD0000000000EEDBBF00C7791F00C26A
      0000C7740000C5700000C1690100E1B88700F0DFC600C4731900BD600000C26B
      0000BF650000CE8A3C00EAD0AE00FEFEFC0000000000ECD5B700D0904600BD63
      0000D5984B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300CCCCCA00B4B2B100B5B3B2009D9C9B008787870086868600878787008586
      8600858686008585850084848400838383008282810080808000807F7F007E7E
      7E007D7D7D007C7B7C007A7A7A00797978007878780077777700767575007575
      7500727272006E6D6D0087868600B4B2B000B5B3B100C5C3C300EBEBEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39C00E3FFFF00D4FFFF00D4FFFF00DCFFFF00BBEBCB00156A
      0900005400000059000000590000005900000059000000590000005900000059
      000000570000025A02006AB57900A3E0B200BCE9CF00DCFDF800C7F7EB00207A
      23000050000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006184F9006183FA005D80F9005C81F800728EF9008094
      F900A8BAF100B2C4F000ADC0EF00C3D5EA00C9DCEA00C1D4EA00BBCEEB00B1C5
      ED00A8BCEE00A4B9EE009BB0F1008FA6F200889EF400849AF6007C92F800798F
      FA007B91F9008194FB004B7BEE00296AE9003971F000326CF2003A73F1006195
      F1008DBCF1009DC9EF009AC5EF00A0CCF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C1690000CA83
      2B00ECD5B600000000000000000000000000F2E2CD00CF8E4000C0680000C570
      0000C7730000C4700000C1690100E1B98900EFD9B900C5731200C26B0000C776
      0000C46F0000BE640000C4721500DBAB7300F6EDE10000000000F8EFE300DCAF
      7C00D8A260000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400D8D8D600BAB8B600B6B4B300A5A4A3009493930091919100909190009090
      8F008F8F8F008E8D8D008C8C8C008B8B8A008A8A8A0089888800888888008787
      8600868585008685850085858500848483008384830083838300828282008282
      8100808080007E7F7F0095949400B6B4B300B7B4B400CFCDCD00F2F3F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E000081C89F00EEFFFF00DEFFFF00DEFFFF00E6FFFF00C2F1D100166B
      0900005400000059000000590000005900000059000000590000005900000059
      00000055000001610700B6F1E600E7FFFF002C833100116511000C670F000055
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006184FA006184FA006183FA005A7FFA00547DFA00728E
      F9008398F8007F96F9007C92F900869CF7008096F800778EF9007288FA007187
      FB007188FA007189FA007088FA006F87FB007088FA007288FA00788EFA007A91
      FA008597FB005E85F200276AE8003B73EE004477F3004678F5004176F5003870
      F4003B73F2005E93EF0095C3EE0089BAEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6710000C168
      0000C87B1E00DAA86A00E2BB8A00DCAF7400CB842C00C1690000C5700000C673
      0000C6740000C4700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6740000C5720000C36A0000C0660000CE8C3D00ECD0AF0000000000FFFE
      FE00F5E7D8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200EAE9E900CCCCCA00C0BFBE00AFAEAD009595940091909100959595009595
      9400959494009594940094949300949493009494940094939300939393009292
      92009191900091909000908F90008E8E8E008D8D8D008C8C8C008B8B8B008B8B
      8A008484840086858500A4A3A200C0BFBE00C7C5C400E1E1E100F3F4F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00004F0000479646007FBF8B0074B8820074B8820078BC880061AC63000762
      0200005600000059000000590000005900000059000000590000005900000059
      0000005700000159020081C28E00AADFB7000B650D00004F0000005400000058
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006184FA006184FA006082F9005C80FA00567DFA005B83
      F900758EFA007A90FA00798FFA00738AFB00758BFB00778DFA00768DFA00768D
      F900768EF900768EFA00768DF900758DF900768DF900778EF900798FF9007E92
      FA007E94F9003B75EC00326FEC003F75F1004477F3004679F4004579F5004579
      F5003E73F5003C72F300578CF1005086ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C672
      0000C26B0000C1690000C36C0400C16A0000C1690000C5710000C6740000C673
      0000C6740000C4700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6730000C6740000C7740000C46F0000C0660000C6731500DDAF7800F8F0
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F2F2F200E9E9E900E8E8E700D1D0CF009A99980097969600ACACAD00ADAD
      AD00B0B0B000B4B4B400B7B8B800BBBBBC00C0BFC000C2C2C100C3C3C300C3C3
      C300C1C1C100BFBFBF00BBBABB00B7B7B700B3B3B300AFAFAF00ABABAB00A9AA
      AA0096959600918F8E00C4C4C200E8E8E800E7E7E60000000000F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005500000056000000520000005200000052000000520000005200000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000055000003600100086901000058000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006284FA006082FA005C80F9005B80FA005B80FA00547C
      FA005A81F9007791F9008094FA007B92FA007A91F9007A90F900798FFA00788E
      F900778DFA00778DFA00768DF900778DFA00788EF900778EF9007B91F9008094
      FA00487AEF00306EEC004176F1004578F4004578F4004578F4004778F5004679
      F5004679F6004577F6003D71F5003D71F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C5730000C5700000C56E0000C46F0000C5720000C6730000C6730000C673
      0000C6740000C4700000C1690100E1B98900F0DBBC00C4721100C0650000C36E
      0000C36D0000C36D0000C36D0000C36E0000C36D0000C0650000BE630000CD88
      3D00EDD8C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100F3F3F300FBFBFB00E5E4E300AAA9A800B0B0AF00CDCDCD00CECE
      CE00D3D3D300D8D8D800DDDDDE00E2E2E200E7E7E700E9E9EA00EBEBEB00ECEC
      EC00EAEAEA00E7E8E800E3E3E300DEDEDE00D9D9D900D4D4D400CFD0D000CECE
      CE00B3B3B400A5A3A100D7D7D500FCFCFC00F4F4F400F1F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000580000005800000058000000580000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000560000005500000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006184FA006283FA006083F9005B80FA005A80FA005980
      FA00537CFA00567FF9007490F9007E94FA007C93FA007B91F9007A90F9007C91
      F9007A90F900788FF900778EF900778EFA00788EFA007A8FF9008094FA005581
      F200306EED004075F2004578F4004778F5004879F6004979F6004979F5004778
      F5004778F6004779F6004779F6004779F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C4700000C1690100E1B88700F0DCBF00C7772400C1691000C572
      1100C5721100C5721100C5721100C5721100C5721100C5731100C26C0D00C06A
      1200E5C8A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400E2E2E200B9B8B700C8C9C800E2E3E300E2E2
      E200E6E6E600EAEAEA00EDEDED00F1F1F100F3F3F300F5F5F500F6F6F600F6F6
      F600F5F5F500F3F3F300F2F2F200EEEEEE00EAEAEA00E7E7E700E3E3E300E3E2
      E200C9C9C900B3B2B100D7D6D500F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006284FA006284FA006283FA005F82F9005B80FA005A80
      FA00587FFA00517CF900517FF9007B94F9007F94FA007B92FA007B92F9007C92
      F9007B92F900798FF9007A90F900788FF900768EFA008193FA00708DF700326E
      EE003F74F3004577F4004779F5004878F6004A7AF7004B7AF700497AF6004879
      F6004979F7004979F700497AF7004879F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1934200C5700000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DEB07900FAF4EA00EDD6BC00EBCFB000ECD3
      B300ECD3B300ECD3B300ECD3B300ECD3B300ECD3B300ECD3B300ECD1B000EED8
      BD00FCF9F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300E8E8E800D0CFCE00DAD9D800E9E9E900EAEA
      EA00EDEDED0000000000F3F3F300F6F6F600F8F8F800FAFAFA00FBFBFB00FBFB
      FB00FAFAFA00F8F8F800F7F7F700F4F4F400F1F1F100EEEEEE00EBEBEB00E9E9
      E900D8D8D800CACACA00E0E0E000F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078623600108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006284FA006183FA006183FA006182F9005E81F9005B7F
      FA005B7FFA00567EF900507DFA005E84F9007D93F9007E93FA007B91FA007B91
      F9007990FA007A90FA007A90F9007A91F9007C91F9007E93F9004A7AF2003972
      F1004577F5004979F6004979F6004C79F7004D7BF7004C7AF7004A7AF600497A
      F6004979F6004C79F7004A79F6004879F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8E3900C36B0000C5720000C7740000C7750000C6740000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7300FEFEFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00EBEBEB00E6E5E600E5E5E500EAEA
      EA00EEEEEE0000000000F3F3F300F6F6F600F8F8F800F9F9F900FBFBFB00FBFB
      FB00F9F9F900F8F8F800F6F6F600F4F4F400F1F1F100EEEEEE00EBEBEB00E6E6
      E600E5E5E500EAEAEA00EEEEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000776135000F8114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004CB36300005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006285F9006183FA006183FA006183F9006183F9005F82
      F9005C80FA00597FFA00567EF9004F7BF9005982F9007992F9008094F9007A91
      F9007990F9007A90F9007B91F9007C91F9008195FA005782F5003972F2004778
      F6004A7AF7004B7AF7004E7BF800517BF8004F7BF8004F7BF8004C7AF7004A79
      F7004A79F6004B7AF7004C7AF7004B7AF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8D3C00C1670000C0680000C0660000C1680000C36C0000C570
      0000C7740000C7750000C6740000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F1F1F100E8E8E800E3E3E300E7E7
      E700EBEBEB00EEEEEE00F1F1F100F3F3F300F5F5F500F6F6F600F8F8F800F8F8
      F800F6F6F600F5F5F500F4F4F400F2F2F200EFEFEF00ECECEC00E8E8E800E4E4
      E400E9E9E900F1F1F100F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F653800128215001A6E
      1500004B00000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      00000052000000500000005B000055AC6800005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006485FA006284FA006183FA006082F9006183FA006183
      F9005E82F900597FFA00567FFA00557FFA00507BF900567FF9007690F8007D92
      F9007990F9007990F9007990F9007E92FA006286F7003E74F5004779F6004C7B
      F8004E7CF900507CF900527CF800527CF8004F7CF9004F7CF8004D7BF8004D7A
      F7004D7AF7004C7AF7004E7BF8004B7AF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDD5B800DCB07700D49A4E00CC873600C6772400C36F0E00C069
      0000BF630000BF640000C16A0000C36E0000C6730000C6740000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00E5E5E500E2E2E200E5E5
      E500E8E8E800EBEBEB00EEEEEE00EFEFEF00F1F1F100F3F3F300F3F3F300F3F3
      F300F3F3F300F2F2F200F1F1F100EFEFEF00ECECEC00E9E9E900E5E5E500E2E2
      E200E5E5E500EEEEEE00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F7141000F771B00439C
      5C002D873C002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002D893E003D96520083BA8A000056010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006586FA006285FA006184FA006082FA006082FA006082
      F9005F82F9005A80FA00587FFA00587FFA00557EF9004E7AFA005A82F9007D93
      F9007A8FF9007890F9007C92F9007990F9004678F6004678F7004C7BF8004F7B
      F900507BF900527CF800537DF800517DF900507CF800507CF9004E7BF8004E7B
      F8004E7BF8004E7AF7004F7BF8004B7AF6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCF800F9F2E700F6E9D900EFDDC700E7C7A100DEB0
      7500D59C5E00CF8B4600C87C2300C26F0400BF630000BF640000C2690000C36D
      0000C4710000C46F0000C1680100DCAC7300FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00E3E3E300DFDFDF00E4E4
      E400E6E6E600E8E8E800EBEBEB00EDEDED00EEEEEE00EFEFEF00000000000000
      000000000000EFEFEF00EEEEEE00EBEBEB00E8E8E800E6E6E600E4E4E400E1E1
      E100E3E3E300ECECEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0885700005A0500308D
      3F003D983F003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003B963F003F9948002E7E2B000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006585FA006385FA006284FA006183FA006082F9006082
      FA005F82F9005E81F9005B7FFA00577FFA00567EF900537EF9004E7CFA005D84
      F900778FFA007A8FFA007C91F9005C82F8004878F8004E7CF800517CF900547D
      F800537DF900547EF900557EF900537DF800527DF800527CF700527CF800517C
      F8004F7BF8004E7BF8004F7BF8004E7BF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFB
      F800FBF7F000F9EFE500F1DCC100E8C89F00E1B68800D8A36C00CF8E4200C679
      1500C16B0100C0670100BF640300DBAB7200FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00E5E5E500E3E3E300E6E6
      E600E7E7E700E9E9E900EBEBEB00EDEDED00EEEEEE0000000000000000000000
      000000000000EEEEEE00EDEDED00ECECEC00E9E9E900E7E7E700E6E6E600E3E3
      E300E5E5E500ECECEC00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8C5600004E00000050
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000500000005000000057000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006586F9006384FA006384FA006083F9005F82F9006082
      F9005F82F9005F82F9005F81F9005B80F900587FFA00557FFA00557EF900527C
      F900557FF9006B8AF8006586F9004C79F900527CF800557EF900547DF900567E
      FA00587FFA00577EFA00557EFA00547EF900537EF800537DF800537DF800537D
      F700507CF8004F7BF9004E7BF8004D7AF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFB00F9F4EC00F4E7
      D400F0DCC700E4C19C00D59D5C00E2BC8F00FDFBF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00EAEAEA00E8E8E800E9E9
      E900EAEAEA00EBEBEB00EBEBEB00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00ECECEC00EBEBEB00EBEBEB00EAEAEA00E9E9E900E8E8
      E800E9E9E900EDEDED00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7AE980076673C00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766D3E00766D3E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFFFF00FEFFFF0000000000F0EAD900F6F6EE00FDFFFF00FFFEFF00FDFF
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFCFC00FCFDF900FDFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFD
      F900F0D07700FCF6E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8947C00B6937600B7937600B7937600B7937600B7937600B793
      7600B7937600B7937600B7937600B7937600B8957A00D1BAA600F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAF400E9D7AF00E6D8B100FCF9F30000000000FFFF
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FF0000000000F6E0CF00ECC1A400FAF3ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F0D300F6DC
      9C00F1B83100EEB62900FCF5E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A67A5700874D2200A87D5C00A67A5900A6795800A6795800A6795800A679
      5800A6795800A6795800A67A5A00A87C5B008E57290074300000B9957600F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFBFA00F0E7D400E4D2A800E8D0A200E5CC9C00E9DBB800FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFF00FEFE
      FF00F7E8E200F3D0A700DD915900F2CEB900FEFFFF00FEFFFF00FFFEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFC00F9EECE00F5D68700F6D2
      7B00FADC9700EFAF1E00F3D28400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4785200B9977700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD9C7D00874C1B0084470F00BC9B
      7E00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBF800E4D4AD00EACC9C00E8D1A500E9D2A300E4CD9B00F0EAD8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFCFC00F4DD
      CE00F2C9A200FCD7A300E4A76E00DE8C5B00F6DCCA00FEFFFF00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2EED500BDD8B300BED9B300E2EB
      D000000000000000000000000000FEFFFF00F9F3DC00F6D48200F8D68600F8D9
      8F00F8DC9A00F6CC6B00EDB01300F5DFA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7947500FFFFFF00F8F5F200DCCABB00DAC7B700F6F1ED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B48E7000AB806000D6C2B1008446
      1400C5A78D00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFF000000
      000000000000F6F2E300E6CFA200E9D09E00E6D0A600E7D2A500E7D2A600FAF6
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEF700FFE0
      AB00FFDD9400FFDF9B00FFE0A600E7A97000E0946300F7E9DD00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBE1BE003E900600599F39007EB05E006AAE
      42008BBC6700D4E2BD000000000000000000FFFBF400F8E6B700F7D48400F8D7
      8A00F8D88E00F8DA9300F4C75A00EDAF2500FBF6E80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00E4D7CA008F5827008A4F1C00E0D0C200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B18A6B0099653F00F0E9E300B895
      76007B390100CCB39E00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFFFF000000
      00000000000000000000F7F6EA00EEDAB800E9D1A900E8D2A900E5CEA000FAF6
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFF00DBDDFF00BDB0
      D700B497B100B8A0B400D5BBAD00F0DEA800E6A25D00F1BE9800FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F9EF0061A33A0086B96D00F7F9ED00BBF0E6002DC5
      930038B9730063B14D0076BA5F00C2EDDB000000000000000000FAE9C100F7D6
      8600F8D88B00F8D88F00F9DB9700EFB92900F8E9BC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00FBF9F600E9DFD400E8DCD000F3EDE800F8F4
      F100F8F4F100F8F4EF00FDFCFB00FFFFFF00C0A187007E3E14008F572900935D
      2D007C3A040097643800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF000000000000000000E2EA
      F3008EC9D70078C1CE008ACCDA00D3D2B800F2D6A400EED4A900E4D2A200EFE8
      D4000000000000000000FEFFFF00FFFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F1FF00B6AEFD00756EEF008580F400B4B6
      FB00CCC2EC00B5A0C6008377C9007871D800A1799D00E2A98B00FFFFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBEACC0065A52C00EDF2DE00E7FCFF003ECEAA009EE8
      DC00ECFFFF00E3F4E600B8D69D0055AD48006ACD9A00DFFAFA0000000000F9E3
      B000F7D58300F8D88E00F8DA9300F1BA3200F1C65A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00E8DCD1009F704F009968430099663D009764
      3A0096633A0091593700CBB19A00FFFFFF00F4EFEA00DBC9B900D8C5B400DBCA
      BA00B38C6C0099663E00E0D1C200C9AE9600C9AE9700E2D4C700F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFD00FFFCFE00B4C0B0003880
      6A00337D61005D806B0072827A008D826900BAA58000DDC69D00ECD5AC00E6CE
      A600EEE5D100F9FBF400FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFDBFF00516CCD002E528500667F6B007E8A71009794
      9000C2B7B400EBD19F00FFE6A000F1D8A8009E87B5007348A200CDBDD700FFFF
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4E6C30082B64F00FDF8ED00B6EDE30060D6B800FDFE
      FE00000000000000000000000000E9EED40072B7580048BE7900D0F3EA00FFE3
      AE00F7D58600F8D88D00F9DA9300F7D38100EDAB1100F2D17A00FDFFFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00F4EEEA00CBB1A100C7AC9800CAAF9A00CAAF
      9A00C9AF9900C6AA9A00E7DCD200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C9AD98009B6A4600C9AF9600925C2C0081420900A2734900F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000096B395002D7D5900ADCA
      B900E7EEE100D1E3D4009AB0860067835300666C4B0092806700C6B18F00E8D1
      A600EAD2A200E6D5B100ECE2CA00EFE4CD00F4EDDE00FEFFFE00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDFF003A68B400599784008ED8A5005BC2A9005CB49C004484
      66004A5F4B00A1826300D2AA8000FCD99F00FFEEA200D1A283007E52A000C39F
      AD00FFDCBB00F5DFD300FDF5F200FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3EFD9008EBD6100F5F4E300AEECE00085DFC7000000
      000000000000000000000000000000000000FFFEF700A5D28D0091C26000FFDF
      9300FEDC9000F7D88D00F8D78D00F8DB9600F6CF7500EEB21C00EEBC4B00F1C7
      6100F3D47D00FDFCF60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00F5F0EC00CFB7A700CCB39F00CEB5A000CEB5
      A000CDB5A000CEB6A000C9AE9800C3A58B00C09F8C00E2D3C900FFFFFF00FFFF
      FF00C4A68E00945F3800F4EEE700F8F4F100B79474009B693D00F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D9C400457858007EC0CC000000
      0000F8F0E600F7E7CF00F7DAB000E3D4A1009EB37F00627C4F007C715200B19C
      7E00E7D1A400EBD5AB00E8D1A300E9CF9E00E6CCA100F3ECDB00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBE9FF004C71BB005A826700BAEBDF0093E0EF00CEF6FD00EEFDFE00DBD8
      BC0092BB88005A865C008C7B5B00BF997700F0CE9C00FFE8A200ECCE9E008D6E
      B600D09F8C00E7A56800E9B59400FCFAF700FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFDFC008FBE6700DEE8C600C0F2EC008FE1CD000000
      000000000000000000000000000000000000F5F5F700DCDAD400929C36009FAC
      4400ECD39100FFE69600FBDB8E00F7D78C00F8DB9500F8D68800F6CB6C00F3C8
      6000EEB21A00EFBF4300FDFBF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00E6DACF0098643F00935B3200966135009661
      3500966135009661350095603400956034008E553000C9AF9A00FFFFFF00FFFF
      FF00C4A68F00945E3700F8F5EF00FFFFFF00BD9D80009D6B3F00F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000087A27F00638E8F00B0E4EC000000
      0000EFDBBC00E7C99800E8CFA400EED0A600F7DBAE00CACC96006F895B00706B
      5100A7967900E2CDA000ECD4A600E7D0A300EAD3A600E4D1AF00FBF9F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0A6F400457F6B009FB6AA0083CDD900C0C8C50000000000FFE4CA00FEC7
      9400FFDEA400C5D49F00669D6E0087825B00BA916900EECB9700FFEAA800DDC5
      AC00978DCC00F6D59200E0894D00F5D2BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000097C27600C9DCB100E1FAFA0092E3CF00F0FC
      F900000000000000000000000000F3F3F300C4C4C400918E8F007D7A85006D8E
      5E00556B2800AB926700FFE69400FCDC8F00F8D78C00F8D99200F8DB9400F9DB
      9700F8D88C00ECAE1100F4D48400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00FFFFFF00FDFCFA00F6F2ED00F7F2EE00F9F6
      F200FDFDFB00FAF7F500FDFCFA00F8F4F000F6F2EC00FCFAF900FFFFFF00FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BC9B7D009F6F4300F5F0EC00E8DC
      D300E9DDD400F8F4F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3FAF300758D72007CA3AC00BDECF0000000
      0000EFDFC100E6CDA000E8D0A400E6D1A400E8D0A400F5DAB100E1D5A7007A93
      62006D6B4E00A8947700E4D0A300EAD4A400E8D2A500E6CEA000F4ECDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFF00EEEEFF00EEEEFF00EEEEFF00EEEEFF00F5F5FF00D1CD
      FF0095A9E7006B90700087B1BE0089AFB600DED6DF00F1F1FF00ECD5B700F0D0
      9D00F2D0A100FAD7A600DEDAAF006AA37E0086816400B18E7600E7C89F00F8DC
      A000AE9AB800BFAEC200E6B17300DB987300EFEBF000EEF0FF00EDEDFF00F5F5
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7E8C600A4CA7F00FDFDFC008DE2CE00D1F3
      EA000000000000000000FEFEFE00F1F1F100F5F6F70000000000000000000000
      00009FC48A0019320A008A785F00FEE79400FBDA8D00F7D88D00F8D88D00F8D8
      8D00F9DD9900F3C45A00F0C26000FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6927300FFFFFF00EFE7DF00EBE0D700FFFFFF00FFFFFF00FCFC
      FA00E3D6C900F2ECE600E5D8CC00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BD9D7F00A4784E00C4A68D00874B
      160083440F00B996780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFE0000000000E7F2E7007689720085ACB200B9EAEF000000
      0000EDE0C400E7CE9E00E9D2A400EAD3A600ECD4A700E7D3A700EFD8AD00E3D8
      A90078926200756D4F00B2A07E00E8D3A700E9D2A500ECD3A300EDE0C200FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00A3A3FF009090FF00A6A6FF00ABABFF00ABABFF00AAAAFF00A09E
      FF008C9DE600506A9A005B76C600707FC600A19DEF00AEB0FF00AB9FCB00A690
      B000A28EAF008C78A0009275A3009A8DAE006384A70060608E0083679B00A995
      B600AD9EBA009F93C100A89ABC009C618100A497D700A9ACFF00A7A7FF008484
      FF00DDDDFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089B95B00F9F8EB00A6E9DB00BEEE
      E2000000000000000000FDFDFD0000000000E8E1D100F2D79700F8DB9400F9E3
      B200FFFFFE00AAD18F0022341B00A68D6900FFE29300F8D88D00F8D88D00F8D8
      8D00F8DA9400F7D37D00ECAC1700F8E7C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00BB997A009F6F4400FFFFFF00FFFFFF00B692
      7500884D1C00C1A38800935D2E00EEE6DF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BC9B7D009F704400EFE7E000DDCC
      BC00A67A5400A376500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFE0000000000E9F2E900788B73008DAAB2009FE5EF00FFFD
      FA00EAD5AE00EAD3A500EBD4A700EFD6A600E1CA9B00D8C29600E1CA9B00F7DB
      AB00DDD4A300708757007E715700C4AF8D00EDD6A700E9D2A400E7D1A500F9F6
      F000FDFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00AEAEFF00DBDBFF00FCFCFF00D5D5FF00D6D6FF00E6E6FF00FAFA
      FF00E2F2E40062867B007EA4A80097AAAF00EDE8E400D5D3FB00D8C7BE00EDD6
      B500B6AED000B1AFD200B4AFAF00785E7700817976006D9F6E00A8965C00BD9C
      8100CAC0AA00D7C5A900F2DBAC00E8A46600F2BE8800DEE0FF00F6F6FF00A4A4
      FF00D2D2FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4DCAC00B1CF8F00F2FEFF008CE0
      CB00FAFEFD00FFFEFF0000000000CCCED700B8A57A00FDDA8300F9D68500F8D3
      8000FBDEA300FFFFFB007EAA6C005E5C3800FFE09500F9D98D00F8D88D00F8D8
      8D00F8D88C00F9DE9D00F2BB4000F3D58D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00B99575009B693B00FFFFFF00D7C4B2007937
      00008B521E00BE9E8100925C2C00F3EDE900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BC9B7D009D6B3F00FFFFFF00FFFF
      FF00BA997B00A578520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5FBF6007D957B009CA3A900C3DBC800F1DA
      B800E4CDA300E8D2A500E1CA9D00D3C6A700D1C9B800C9C4B800BCB19E00B5A4
      8500F2D6AF00C4C8980063795000917F6400DCC69B00ECD6AA00E5CE9F00F1EA
      D900FEFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00B3B3FF00F0F0FF00D7D7FF007D7DFF008282FF00A7A7FF00807E
      FF00767BEF00305885004A6BB200455AD300A9A2D9008576D200867DDA00ABAE
      FF007B7DFF00C7C9FF00B6BBFF00777AFE009489C0003F54BD003F57A6007758
      9E006356CA008C7DC900B5A6C000785CB7007549A500ADB2FF0000000000B0B0
      FF00D4D4FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F6EA0096C16F00F1F5E800A1E7
      D900D2F3EA000000000000000000A1A1A9009C925B00FFF69B00FFE19000FFE1
      8E00FFE18A00FFEEB600E7ECA500B0C74D00FEDC9000FAD88F00F8D88D00F8D8
      8D00F8D88C00F9DD9D00F3BF4900F5DC9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00BB987900A5774D00F2ECE50091592E009D6C
      40009B693B00BF9F8200925C2B00CFB7A300DCCABB00D9C5B600EDE3DC00FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008DA88E0091979200E3C9A200EAD0
      9E00E7D1A500E4CC9F00E3DBC600F8FAFA00000000000000000000000000D6D7
      D600A69B8700EFD7AD009BAE79006B6F5000B09C7D00E9D4A800E8CD9C00F2E9
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00B3B3FF00F0F0FF00AAAAFF008888FF00CBCBFF00B7B7FF005C59
      FF006569F00050829E001A27DD001D2AE0005B53C700918AC100CECCE2009B9C
      FF003435FB009D94DB009B91D900BDBFFF00000000005853E2000D15BA005A62
      99006E5CB8009C8FAF008982D1007257B9004124C000BEC4FF0000000000ADAD
      FF00D4D4FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BED9A600B5D19400E9FD
      FF008FE4D600F8FBF600FFFEFD00B8B7BA005252480074746100756F5F00756F
      5F00756F5F00746C5600776B5C0052683800A1B24E00FEE19A00F9D88D00F8D8
      8D00F8D88C00F9DD9C00F0BB4300F7E1AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00BD9B7C00A5784D00AC83640097633D00DFCF
      C00099653600C2A38900894F19008A4E19008C531F0085461A00C0A08600FFFF
      FF00C4A69000945E3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE00FEFFFF0000000000A7C2A100717C6500C0AF8B00ECD6
      A700E8CEA100E8D9BA00FEFFFF00FCFDFE00E9E0C800EEDFBE00F8F3E9000000
      0000DBDDDA00C7B69300E7D8A700728A5A0083775B00D2BD9500ECD2A400EBDB
      BD00FCFBF800FFFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00B2B2FF00EEEEFF00CBCBFF006D6DFF00787BFF00ECF0FF008081
      FF00B4B7FA0096B6D700313CAA004E4FA6009A83AB007A6FD8008786F300ACAE
      FF003A35C6009B86A400BDA0BF00CBBED200FFFFF000BCB7F000756DD40078A9
      89002C2FB5005C49BA00D2B9B100BFAAB6006945B000F3D4B90000000000ADAD
      FF00D4D4FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F9F2009EC67C00E4EE
      D500BDE4C100CFD59300FFFAEC00F8F9FA00ECECEE00E7E7ED00E3E5EC00E3E5
      ED00E3E6ED00E4E6ED00E5E6EE00BAB9C6003F5F1700E2DB7800FFDB9500F8D8
      8D00F8D88D00F9DC9900F1BE4500F0C55E00FCF8EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00C3A4880080420F0083461100E3D5C900ECE3
      D900945F2E00BD9D7F00935E2D00DDCCBC00EDE4DB00EADFD600F6F2EE00FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F4ED00F0DCBE00C6C594006A764A00A4907300E5D1
      A500E7CE9F00F4EBDA0000000000D2CDC400C4AD7F00DFC39100D7C6A000DBD0
      B100E0CBA900DFCDA200F6D8AC00ACB7840068724E00AC987800E5D5A700E8CD
      9D00EFE1C700FDFFFF00FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00B2B2FF00E5E5FE0000000000DBDEFF00D7CCE600F8E1CE00EAE0
      E800FBFAFD00BFCFB90074855900B68F7200FFE0A100DBC0AC00DFDDF300FEFF
      FF008982A3007E636000CBA87900C6A67800CBB07C00C4A77A00C6A78000C0BE
      87005D838200A6827B00F1CD8A00F7DEAE00DFAA8100E6925800FFF1D900AFB3
      FF00D4D4FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1E6C400AAC2
      6600FBD37A00F6D48600FFFAED00FBFCFF0099999600EADEAD00FFF1BE00FEE8
      B900FEE9B800FDE8B600FFFFF600D3D1E1006A6D4A00AFC94E00F2D68B00FCD9
      9000F8D88D00F8D99000F7D58100EEB01E00F1C9670000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00C1A185006F270000B7927200FFFFFF00E5D8
      CC00915A2700BA987900915B2900E1D2C500F0EAE500EEE6DF00F9F5F200FFFF
      FF00C4A68F00945E3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF8F400EDDDC000EFE0
      C400FAF9F40000000000E7D8B700ECCB9900EBD7A7007D95640084755F00CCBB
      9100E8D3A300F6F0E40000000000E0DDDA00CBC7BC00CFCCC400CFCCC100CDC8
      BA00CEC6B900B7AF9A00E6CDA300E6D5A6006E8A5B00897C6000D9C39800EAD5
      A800E5D0A900F2E7D400FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00AEAEFF00DBDDFF00F5F6F500FAE1C500F7D09D00E7AE7C00E99F
      6A00F8D0A800E0DDA8007EA67500A1875B00E3C09000FDE29D00FBF4E100F7F7
      FF00E3E1DE00CDC5BA00D5CBC800D1C9C800CFC5C500D2C8C300D4C9C200A18D
      80007DA16500908D5900CEA77D00F6DA9E00F9E4AC00DE9B6200F0AD6900A6A6
      EA00D3D5FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFBF300F0CC7900EFBF4900F7EABE00FFF2D600ABB8
      4600C9C86B00FFDA8D00F9E9C300000000006A6B720076683900FFE68B00FFE1
      8A00FFDA8200F9D48000FFFCE800CED1DA009D8A6600C8D36700B5BF5A00FFDC
      9600F8D88C00F8D88C00F9DC9900F6D37B00EBAA0B00F7E2A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B7937400FFFFFF00C0A08400915A2B00F5F0EC00FFFFFF00E6D9
      CD0097643500C7AB9200894F1D008A5026008E562D00864A2900C1A28800FFFF
      FF00C4A69000945E3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFCF900ECDFC300E8D9BA00E5CEA000E6CE
      9A00E9D8B200F1EBD900E8D5AE00E8CFA000F1D8AC00B5B98C0064714D00A794
      7300E7CFA200F8F1E10000000000FAFAFA00F9FAF400FFFFF700FEFDF5000000
      000000000000CFCEC400D5C19700F8DEB2009FAF7F0070705100C0AB8900ECD8
      AA00E9D3AD00E2CEA000F5EFE100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00B8B9FF00A4A4FE00B2A1D100AB8BAB00B194B400B79FB9009D76
      A4009C79A800C2A6C0006F88AB005C6590008A6F9900B79AB400B2A5D900B3B5
      FF00B9BAFF00BBBCFF00C0C2FF00BBC0FF00BBBEFF00BBBEFF00BEC1FF009F99
      DB00484E8F004C65A2007D648C00AD93B500B5A1C300B29DBF00A36F8400906A
      AC00E6E7FD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EBC300F4D68900F6D27D00F2C14700EDB12B00F7C96600EAD8
      90009AB54300ECD38000FDDB9600FDFBF300F3F5FA00555355007A6F4700C1B6
      6F00D3B76B00EED9A600FDFFFF00C5C3BF00D8BB7600FBDF910099B54100EAD4
      8200FBDA9100F8D88D00F8D88D00F8DB9900F4C45400ECB02400FCF7EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5785300B6937400FFFFFF00F2EBE500EEE5DC00FFFFFF00FFFFFF00FBF9
      F700E9DDD400F6F2EF00DFCFC300D5C1B000D6C1AF00D4BEAE00ECE3DB00FFFF
      FF00C5A79000945E3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECDFC100E5CD9900E8D1A200EAD7A900E7D7
      AA00EBD0A200E9CC9F00E9D2A700E9D2A500E7D4A900EADAAD007C9665007F76
      5C00C8B38B00F4E9D20000000000E9E8E600B09D8300EFD4A600E8CF9D00F1E8
      D50000000000D5D0C300DBC49800EED6AA00CDC69900677A5100A5947800EAD5
      AA00EAD4A700E9D1A300EBD9B400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDF1E600FDD69F00FDD89E00FFDAA400FFDBA100F3D8
      A500B7A6BD00FDD9A200E5E0A800719A6D00AB8D6700DDBB8A00FFE2B100FEFA
      F60000000000D3D1CD00B6A38C00FFE9C500FEE2BB00F9E8CA0000000000F2F1
      F40072629900759A7800948C6200D9B58900FFE0AA00FDE2AF00F2C89300E399
      5F00FEF4EB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF4E200F3CC6800F5CE6D00F8DA9300F9DB9800F8D78B00F7D38000FFDD
      9800D5CC72009FB84800F4D78A00FBDFA500FFFFF900F5F7FC007A7D8400726F
      6B00A09A8E00E4E5E700FDFBF700DDC69100FDDC8A00FFDB9500CAC86900A5BA
      4C00FFDE9B00F7D88C00F8D88D00F8D99000F9DC9800F0B42B00F3D589000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3775100B9967800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6A99300925D3600F7F2EC00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7D6B100EBD2A600E0C89E00D1BC9100CDB9
      8E00E2CB9B00EED5A700E8D0A300EAD3A600E5CF9E00E0C39800A3A778005D6A
      44009A866900DDCDA100FEFDF60000000000C7C0BA00AD9F7D00CCBFA000F6F4
      EE0000000000D4C9B300E6CE9E00ECD3A800E6D4A600758A5B008D836800E0CC
      A400EBD6AB00ECD4A500EAD5AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FEFEFE00FDEFDF00FDD39D00FBD19A00FCD39D00FFD6A000FFD8
      9500D8B8A700BFA7B600FFE5A300A4C391007E896200BE997400F4D09800FEEB
      CD0000000000EAEAE9007E6D5800C9A06C00FED89900FFDDA700FFFFFE00B3B6
      FC008F759000A1B4770084946F00B5937000FFDBA800FCDDAC00F7CC9500E29E
      6F00F9ECE5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFB
      F300FADD9500FAD88A00F8D99200F8D88C00F9D98E00FADB9000F8D99000FAD9
      8D00FFDF9900BCC35E00B3C05800FED88D00F8DD9E00FDF4DB00000000000000
      000000000000FEF8E900F7DEA400FCD98700F7D88C00FBDA9000F2D78B00A1B8
      4700DECF7A00FDDB9300F8D88D00F8D88C00F9DD9C00F5C95E00EFC654000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A77A5500874C1700A6795100A4774E00A5774E00A4774E00A4774E00A477
      4E00A4774E00A4774E00A4774E00A4774E00A4774E00A4774E00A4774E00A679
      50008C521F00935D3100F7F3EE00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4EBD700DEC39900D7CFBE00DEDCD700D0CC
      C800B0A49200C8B38B00F0D8A900E4CC9E00D7CAB200DDDAD400D9D7D2008F9C
      8B0064574500A6946D00ECDDBC00FEFEF90000000000EBEFF300F3F4FB000000
      0000F1EEEA00DAC69F00EAD2A400EBD2A700F1DAAE0086996A007B775B00DBC2
      9D00EBD5A800E7CEA000EBDAB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00A6A7A800EEEAE400FFDEAD00E1C6A5009D876B00E5C39400E3CB
      AB00A58B6400AF98A600C0A9B600F4E3A20080AB76009F886700CEA87E00FED9
      A100FBF1E30000000000DBDAD90087786300BB9D6A00F1D7AE00B9BBFF00ABAD
      FA00B1A08900D0C1920072956B00A78A6700F5D2A300FFE1AD00F4C99100E7B6
      9200FDF8F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FB00FAE3A900FFDC8900F9D88E00F9D88C00FBD98A00FEDD8F00FDDB8E00F6D5
      8700FFDD9000FFDF9500A6B94D00C9C76900FFDA8F00F7D78B00F7DA9600F8DD
      9F00F7DB9800F7D78D00F8D68500F7D88C00F8D88D00F8D88C00FFDF9C00B2BF
      5700B7C05900FFDC9600F8D88E00F7D88B00F8D88E00F4C65600F5DFA0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DAC7B700AF886500AF886400B0896500B6927100B48F6D00B0896400B089
      6400B0896400B0896400B0896400B0896400B0896400B0896400B0896400AF88
      6400AE866200CDB49D00FDFCFB00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F7F000EBE7D900FEFFFF00F2EBDD00FCF9
      EB00F9FBFF00AFA9A000CFB98E00E8D9BB00FEFFFF00F3F1EB00F9F1E1000000
      0000BBBBBC006A5A4D00B8A57C00EADAB400F3EADA00FAF7EC00FAF6EB00F0EA
      D800E1D1AF00E9D0A100E9D1A400E8D2A400F5DBB10092A5730073725200D5BC
      8B00ECDCBC00F5F1E400F7F8F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD0097979800CBC9C700FFF6E600FEFFFF00A8A19A00B99F7A00FEFF
      FC0099918700CDAD7800C5ADBA00BE9EBE00BBC4A20081A16300B3916700E3BB
      8400FFE0AA00FFF7E60000000000F9F9F100BDBAC2009B9BE900B5B6FF00EFF1
      F900B3A18600F9D6A0006E9F7100A3886800D9B88900D0B08900E3C9B300FAEF
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFE
      FF0092908D00A9925F00FDDC8A00FEE09100B5A173007F6F5100E7CD8800D4BD
      8400786B5000DCC08300EFE0910098B54300D9CC7300FFDC9400F8D68700F8D6
      8700F8D68800F8D78900F8D88D00F8D88D00F8D88D00F8D88D00FCDA9100ECD4
      850095B43F00ECD58800FFD98D00FAD58600F7DC9A00F7E4B100FDFCF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000CEB7A200E4D7CB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFEFE0000000000DEE0DC00DAC7A500E4CD
      9B00F4EBD700EBE6D900CDBB9400F8F4E500EAEAE700D0B99400E9CD9D00EDE0
      C200FCFAF2007D886A00756D5100BEA58300E9D1A200E9D1A400E5CFA200E4CD
      9F00E8D1A400E9D2A800E8D0A300E5CE9D00F2D7AB0096A775006E715600BFC5
      AF00FEFDF90000000000FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A2A1A100BABABA000000000000000000CDCBC800A0866200FFFC
      EA00BDBAB900AA8D6300FFE19A00CEB2A700B79CC3005F7EAA006F767900AB88
      7600E2BF9300EED1AE00D1CCE300A8ACFF00A9AEFF00CCCDFF0000000000E9E1
      D500DAB58800FFDEA60089B7870095805F0090927B009C9C9200DDD9D9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999BA300504E4800F1DA9000FFEBB200CFD0D0004D4F5A00A49A6F00ECEA
      E00054596B008D815200FFF1A200E7D4870094B33E00DACE7700FFDC9700F8D8
      8D00F8D88D00F8D88D00F8D88D00F8D88D00F8D88D00F8D88E00F8D78C00FFDE
      98008DB03600D9CB6F00EED68F00F0EAC700FCFAF10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000945F2D00C0A08400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE9E80009D6C4000FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000CFD2D100ECE0C600E7CD
      9E00E6CEA100E7D1A400E8D0A400FFFBEE00D4D1CD00D1B98F00EBD5A600E6CF
      A000ECD3A700C3C79400687E50007A705700BBA68100E8D2A200EBD4A800E8D2
      A300EACFA500E6D19F00E3CFA000EDE3C800FBF2E60099AF8B005A87810099DD
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B9B900ABABAB00F6F6F600E5E5E600E1E2E2008D725200FEED
      D200E2E3E60099877400B8A38700BCAA8200A98E7200CCACA1007495AB004F58
      8D007F609E009F86B100BCA4B800CFB8B300ECDCCA00FFF1CB00F6DFBD00EEC9
      9800EFBF9500FEDFCB009EC7A400878977008AB4BC00A0BCC000DDD7D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4004A4B4D00E2E0D200FFFCF1000000000095969C007C6E43000000
      00009EA2AC0075663E00FFF8A000FFEEA000FAE68E009CBB4200D8CC7400FFDD
      9700F8D88D00F8D88D00F8D88D00F8D88E00F8D88B00F8D58500F6D48300FFDC
      9800B5C25F00BFCD7F009EE2CB00BAEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F00097633200B9967800F6F2EE00F3ED
      E600F3EDE600F3EDE600F3EDE600F3EDE600F3EDE600F3EDE600F3EDE600F3ED
      E600F3EDE600F3EDE600F3EDE600F7F3EE00B6916F009B6A3D00FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000CBCDCF00E2D4BA00EBD0
      A200E9D1A300E7CD9D00E8CEA200FDF8EC00D9D9D800C5B18D00F0D7A700E9D2
      A500EACFA000F4D8A900C7C7950067845300746E5300AA967800D8C49600E1D9
      B500DCD7B200F9E0C000FFF8EB0000000000000000006A906E0044999E00DFF6
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D4D400BABABA00DADADA00BBBBBB00F2F2F30091796000EAD2
      B20000000000E7E5E300F6F1EB00F8F4EF00C8BCA900E5BD8400F2E4AB0075A8
      77008A855B00C39A7100E1C19100C7895500E3BA9900FFE9C400FAD6AB00F4D5
      BB00F8E6DD00FFFEFF00A0D0B4008690840098CCD30098B6B900E4DCDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000051515200C8C8CC0000000000F2F3F500A4A6AF0063523100FFFD
      EE00C0C2C900413A2D00928453009A8B5A009E8C6100BCB5710094B83F00CBC8
      6A00FFDE9A00FAD98F00FCD78900F9D37F00F7D58700F8DC9C00F9E5B600FFF8
      EC00D8E9CC0095BF6500A9EADE00A5E7D800FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F0009F6F440082441700935D2E00925B
      2B009865350095603000915B2B00915B2B00915B2B00915B2B00915B2B00915B
      2B00915B2B00915B2B00915B2B00935E2E0081431600A3754D00FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDDDE00B2A58700F0D5
      A200E4D0A400CABFA500BDAC8600F0E5D000F5F7FA00A79D8500E4CE9F00EED5
      A500D1C7A700BCAF9300E8CEA400D8D09E007B976400636C4B0095846F00B7B9
      B80085D1D900A2E2E900C9F1F900D4EFF80091B59B002B7A6800B8DCE3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400F3F3F300C6C6C600CBCBCB0000000000A3948500CFB5
      8D00FEFDF8009F948800DBBB9000FFDFAE00FFD9AA00FFDCA900FFD89F00E3D8
      A30071A576007E815C00B48E6B00AA764E00AC7A5C00E2DBD800FFFAF700FFFD
      FD00000000000000000083BA99008E908A0097D1D40091ACAE00F9F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000072717400A09FA100E0E0E300C4C0B800C9CBCF005D544400E8DF
      B900F6F6F600A7A9AD0085889500878A940061626C008C775B00EADD8B0097B6
      4100AFBE5600FEDC9400ECDDA100F9EBC400FFF1D600FDFCF600000000000000
      0000E2EED90079AD4F00C3F0E6008DE1CE00F8FDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000E3D4C700CCB29A00CBB29900CCB2
      9A00B0886500C0A08200CCB29B00CCB29A00CCB29A00CCB29A00CCB29A00CCB2
      9A00CCB29A00CCB29A00CCB29A00CBB29900CCB29B00E4D6CA00FFFFFF00FFFF
      FF00B6927300A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00C0BEB200AFA2
      8300DAD0BA00FCFEFF00CEC9B900E4D0AA00FFFDF800D5D6D700ABA08800CFC1
      A700F8FCFA00D3D2C500D7C28F00F1D4A500EAD4A600A2B27C00718D68007184
      7400828E8600729A99005B9497002C846C004F876200CFD2D400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400AAAAAA00F8F8F80000000000B8B1AA00A787
      6D00FFFCF600B5B1AD009A866C00B7A38400AA957700AB8C6E00F3D1AA00FFDE
      AC00EBD9A70079AD7F006C845A009A805E007D675500A4A09D00CFCCCC00F6F5
      F50000000000F4FEF800588D62009AAFAA007FC9D000B8BCBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4B4B500E1E2E400A19D9700C8BA8B00FAFAF60059565500C6BB
      8B0000000000D0D0D300FFF6D500FFFFFE00FFFFE600F9DF9600FFDC8F00F2D5
      8800A6BD54009AAA260096C46E00A5F2F400F6FFFF0000000000000000000000
      0000C9E0B60074A94400BFEFE50077DCC300F7FDFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0009B6A4A00CEB6A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B7947500A578530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFD0000000000F1F3
      F300FAFAFD00F6F3F600F9F8F700EBDBBA00E9D5AD00FFFBF100F6F9F900F7F8
      FA00F9F9FA00EBE8E000F1E7CE00EEE8D500EDDBB700F3DAB700EEF5E800BDD7
      BF0093B3940087A17F0088A48200ACC1A600EDEFEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F0F000CBCBCB000000000000000000DEDEDE00C0BC
      BB0000000000FCF8F200F3ECDD00F5EDE100E4DDD300AD8B7500EADDD500FEF9
      F300FFEADC00FBF2E3009BC9A200587C4B004A6E5B004F757A007E8C95009491
      9B00ADA8AB006AAA7D00468169007DCFDD00A7D1D400FBF1F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE0000000000E9EAEE00A29B8E00EAE1C8000000000063636600A993
      5E000000000068686A005F460200A1A09500A2A19700B5B08D00EDD8A200FEDF
      9A00FCDC9800C8BD4A0086A720006ABF770067D0A400C4F4EE0000000000FAFB
      F20078AD400098BA57007DE0CB007ADDC4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000905A3200C5A79000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BA977800A478520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FCFDFE00F9F8F000E5D8B700E8D5AA00E4CB9900F4ECDD000000
      0000FBFBFB00000000000000000000000000F6F6EB00EEE8D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE000000000000000000FEFEFE00000000000000
      0000FDFEFE00F9ECDE00FAE3CA00FCE2C000F7CE9E00EDB99800FBF2EE000000
      0000FEFFFF0000000000FFFAF300D7E6CF008EC3A30063A382002A7D5F00226C
      4A003483500053B08C008EDADE00C4F4FA00FFFAF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD0000000000C3C2C300AEAEB000000000000000000087888E008877
      5200FFFCF200CBCBCD007C7D82007A7A7F0078787D0044455000AFB1B200FFFE
      F000F8E0A600FFDB9300F1E6B700AECB85006CB145002A9F3A006AB56D006BA5
      410036910A0058CB990033CDAB00C9F0E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F7F2
      EE00935C33008D552F00A97F5F00A77C5B00A77C5B00A77C5B00A77C5B00A77C
      5B00A77C5B00A77C5B00A77C5B00A77C5B00A77C5B00A77C5B00A87C5B00A980
      5F00884D2400A67A570000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00FAF9F700FCFCFA00FAFFFE00F1E7D200F3E9D9000000
      00000000000000000000FEFFFF00FEFFFE0000000000FDFCFE00FEFEFC00FEFF
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFE00FCFCFB00FDFBFD00FCF9F500F8E9D900F9EDE600FDFFFF000000
      000000000000FEFFFF00FFFEFF000000000000000000EBFBEF00D6EAD800D0EC
      D800DCF5E600F6FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00F6F6F600F4F4F40000000000FDFDFD00F3F2F300EAE8
      E400FDFEF900FFFFFD00000000000000000000000000F4F4F400ECECED000000
      0000FEFCF500FCFCF8000000000000000000F5F6E900D7E3C100AECD9500A7CE
      990094DFC20083E2D100CEF2E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000D2BCAB00B48F7600B4907300B4907300B4907400B4907400B4907400B490
      7400B4907400B4907400B4907400B4907400B4907400B4907400B4907300B490
      7300B5917800DECFC30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E8E800E4E4E400E1E1E100DEDEDE00D5D5D500CDCDCD00C6C6C600C4C4
      C400DDDDDD00F2F2F200F2F2F200000000000000000000000000F1F1F1000000
      0000E8E8E800D2D2D200CBCACB00C9C7C900C5C4C500C5C5C500DDDDDD00EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00F7F7F700FFFFFF00FFFFFF00FCFFFC00EFF3EF00F0EF
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFAE0000EFAE0000EFAB0000EFAC0000EFAE0000F0AB0000EFB21E00F7E5
      B300F8EBC600F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9
      C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9
      C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C000F8ECC900F4DC98000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C4C4C3002C2C2B001C1C1B00121110000A0A
      08000A0A08000A090800030202000B0A0900090807000B0B0A00131212001E1E
      1E0049494900EBEBEB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100DCDCDC00BCBCBC00B5B5B500B6B6B600B6B6B600B7B7B700B8B8B800B7B7
      B700B8B8B800D2D2D200EFEFEF00F6F6F600F6F7F700F9F9F900FBFCFC00D6D6
      D600ACABAC00B7B0B900BAB3BB00B0ADB100B1ABB100B0A8B100A09DA000B3B4
      B300E9E9E900F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F2F2F200FAFAFA00FAFAFA009D9D9C0071717100D9CADA00FFE9FF00EFF3
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0100EFAF0000EDA30000EFB42300EFB31C00EDA70000F0AC0000EFB32800FCF6
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EDC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E800DBDBDB009C9C
      9C002F2B29004946460070717100302B2A00524F4F00D4D4D400DCDDDD00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F1F1F100E2E2E200C8C8C800BCBBBC00BFBEBF00C1C1C100C2C3C300C3C4
      C400C1C2C200BBBCBD00C5C6C700DBDDDE00D9DADB00CACBCC00AEAEAD00AFAB
      AF00C3BEC300729B6E002F8D250023931A002A8F21005E925900B7B9B500CCC6
      CD00E8E8E800F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F2F2
      F200FCFCFC00F2F2F200C4C4C400323131000000000012031200AA9AAA00FAFF
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0100EDA40000F6D48B00F9F1D600FAF2D700F5D27C00EEA50000EFB32400FBF3
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009697
      9600151313009796960000000000292828003232320000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F2F500FBF6FA00FDF5
      FD00FFF5FF00FFF6FF00F2E5F100C7BFC700A9A6A9009F989E008C8B8C007E7C
      7B00726E6C0066615E005D5550005E534D0062554C005B4B3F006E5E5900A3A2
      A400368030000A8800004EA7400072AC68005AA94E00149D02001D7D16009CA9
      9C00DAD5DB00F3F4F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F3F3F300FBFB
      FB00E9E9E900C8C8C800757474001917170027262500080B07009C779C00FFFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AC
      0000EFB42100F9EBC600EB9A0000ECA10000F9EABF00EEAA0100EFB32300FBF3
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F4F4F400EDED
      ED00E4E4E400CECECE00A5A5A5008888880088888800888888008B8B8B009797
      9700BABABA00D7D7D700E3E3E300EBEBEB00F4F4F400FDFFFF00F9EBC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00E8E9E900E8E8E900E9E9E900E9E9E900E8E8E800E9E9E9004748
      4700000000005B5B5B00808080001B1B1B0000000000BBBCBC00EAEAEA00E9E9
      E900E8E8E800E8E8E800E7E7E700EAEAEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0F000F6F5F600E8E8E900BBC8BC00A2C4
      A4008FC6940073BA780055AB5B0037A041001C8B28003C593300684D4B006551
      490069574E00736055007C685C007F6B6000877164009A827500A3989C00417E
      3E00117F0300A1B59800C3B1C200AAA9AA0075BC720030CB1B000E9600002373
      1800A2A2A100E4E1E400F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00F8F8F800FBFBFB00E4E4
      E400BEBEBE009E9E9E003B3A3900272424002220200045454500F7E7F700F6F5
      F600EFF0EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEAB0300F9EFD500EEAB0000F1BB3C00F7E7B800EDA70000F0B32300FBF3
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F9F9F900F4F4
      F400FAFAFA00ABABAB007D7D7D009A9A9A009C9C9C0003030300BCBCBC008585
      850079797900D0D0D000F3F3F300F2F2F200F7F7F700FEFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F6F700FDFDFD0000000000000000000000
      0000CCCCCC001B181700191414001A1716001A1716001B1818001D1B1D00120F
      13000F0D11001413180040434700100E1300100D130017161B001E1C21001E1C
      2200242328002221260026272B002A2A2A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBF4FA00B4DCB90029B1370016BC230011CA
      1C000BCB160008C4130006B7120006A712000497120005831000628B5600BA9B
      9100A58A7E00927E6F008C786A00957F7000AB928100AB8E8200818C81000060
      00008FB18300C9C6C70050BD430038DC340030E1260030BE1A00799F68001670
      08005B7F5800CBC4CC00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00F7F7F700FAFAFA00E0E0E000BABA
      BA00A9A9A90072717000242322003C3B39001B1A1A00B1B1B100FFFFFF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0100EEAA0000EDAD1500F0BE3D00F2C14A00EDAC1400EEAA0000F0B32500FBF3
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00F5F5F500EBEBEB00EAEAEA00BABABA002F2F2F00E8E8E800E8E8
      E800F1F1F100FAFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3B2B20066636500908E8F00C4C3C400F6F6
      F600C6C5C4002E2B2A008381810084828200858282007E7B7500716C59006E67
      4C006B6446006D674A007B785D006D674E006D674F0069624B00676149006760
      4800676149006660470067614A001F1D1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF5FE008FD0980000B3080016DB24001DDE
      290021D72E0024CC310020BD2E0018AD2700109B1D00057F1200006607004072
      3400D2CCC200EDE0E300E5DDDF00F3EEF000FFFBFC00BEABA900617F5F004C88
      4400E6E1E500A1C198002DB616002BCA150028C0100073AC6400CAB0C900758E
      6C0040723B00BAB6BB00F6F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300F4F4F400F6F6F600F1F1F100EFEFEF000000
      00000000000000000000EFEFEF00F6F6F600F9F9F900DEDEDE00BBBBBB00A9AA
      AA009E9D9D003E3C3C003936360034333100504F4F00F7F7F700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0000EEA40000F7E3B100F8EED100F9EFD900F7DE9E00EEA60000EFB32400FBF3
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F900636363000F0F0F000505
      0500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000017191B0036373B00A9ABB100FFF4CA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900F3F3F300DADADA00A3A1A20077757600716E
      6F00545152005654540000000000000000000000000000000000FFFFFE00FBF8
      E600EBE7C800DBD4A600CBC08600C5BA7600C0B46C00C0B46C00C2B67000C4B9
      7500C5BA7700C9BD7900C4B97800272521000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF4FD00A3D9AA0001A90F0011B21E001FBB
      2D002AC0390024B7330018AA25000FA31B000BA116000B981600046F10000048
      00002C693700A2BEAA009CB5A200819B88006D816E0069706200607E5D008EAA
      8900FFFFFF00D4DACF00349B190023A70400299F090085A37400CABFC9008092
      7A004B744600B9B7B900F6F5F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400DFDFE000CDCDCD00D2D1D100F0F1F200F9F9FA00F1F1
      F100EFEFEF00EFEFEF00F7F7F700F8F8F800DEDEDE00BFBFBF00AEAEAE00B1B2
      B200797878002D2A2A00534F4E0028262600B1B0B000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AC
      0000EFB52400F9ECC400E98D0000EB970000F9E9BE00EEA90100EFB32300FCF4
      DF00FEFFFF00F9F9F900FAFAFA00FEFEFE00E7E7E7005F5F5F009A9A9A00ACAC
      AC00ADADAD00AFAFB000B1B1B100B2B1B000B3B2AE00B3B0AB00B4AFA200B6B2
      A100B5AE9A00B2A68E00AB9E7F00CAB69500B1A48800ACAEB400FFF4CB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400FCFCFB00000000000000000000000000F4F4
      F4008A888700504F530000000000000000000000000000000000000000000000
      00000000000000000000FEFDFD00F3F1E700E5E1C900D4CEA800C6BE8A00BCB2
      7400B6AA6800BCB17000BAAF7400272522000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F300F4EEF0006BA65F0001950C00038C
      0F0005950F00069D0F0008A0110009A113000AA314000AA615000FA51A000B74
      16000032000000260000001A0000000F00000006000010271500778A78002369
      1B00D0DBCB006FAB5C00218B00002A930300278E03008DB57C00DCD6D9001967
      0C00547A5300CFC9D000F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100ECECEC00D7D7D700D6D6D600A79B9100AEA7A000D4D3D200F0F1
      F300F8F8F900FCFCFC00F6F6F600DEDEDE00C5C5C500B7B7B700B6B6B600B4B4
      B300444140004B474600434140005C5C5B00F7F7F700F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEA80000F9ECCA00F5D89900F6DDA400F8E7B600EDA60000F0B32300FDF5
      E000F0F2F600FDFDFD00F0F0F000FCFCFC00EBEBEB007F7F7F00F6F9FC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF2
      DD00FFEFCC00FFE9C000FFE4B500FFDEA800D4B98C00A8ABB200FFF4CB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FAFA00E7E7E70047444500DEDEDE0000000000E5E5
      E500B6B8BE004C3E2300F8DD9700FEFEFA000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F5
      ED00E8E5D100C6BC8400B8AD6F00282522000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100FFEAF70092BE7D000DD41B000FB3
      1A00089B12000CA2150011B21A0011B01A0011B01A0010AF1A000FB0180018BD
      24001B8D2A000A410E000B3F1100094410000049060000540A0081978900437A
      3E003F862D003E8B23005C9E41009FC18F00CADBC100FEF6FF0088B17D00216D
      1500959E9600E9E6E900F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300DBDBDB00EBEDEE00D1CCC600D5BEAB00C0AC9C00A9998C00AFA7
      A000D5D4D400F2F4F500E4E4E400CBCBCB00BFBFBF00BCBCBC00D0D0D0008C8B
      8A003633310065605F0033313000BCBCBB00FDFDFD00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0000EEAC0000EDA70700F2C75900F2C95D00EEAB1800EEAA0000F0B32500FFF7
      E300DFE0E400C4C4C400FFFFFF00E3E3E300BBBBBB007E828800EAD3BA00FDFD
      F700FEFFFF00FEFFFF00FFFFFF00FFFFFF00F4E6D300E8BF8300F7F5F100EDE2
      D100F2D9B100EFD3A800EECE9C00EFCC9200D0B18300AAACB200FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD0000000000BCBABB001B171900FDFDFD0082808100130E
      1000696C7700553D0500EDB11800FEFEFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5BB8200B8AD6F00292623000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200FDEBF60085BB730003D718001CDD
      320025CA38001DB02C0016AD220019B324001BB626001DB726001EBA28001CC8
      320023D9420033CE4D002BC8480012C1310025B8330084BF7700C4BAB100868C
      82003A79340056974700A9C5A100E6E8E700DFE6DE0098BD9000387C2E00748C
      7300E0DBE100F5F5F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200E6E6E600DCDDDD00E1E2E200CEBDAD00DAC2AF00CDB7A500C0AB9800AB97
      86009C8C7F009D958E00B0AFAF00C6C8C900CACBCB00D4D4D400D9D9D8004946
      45005C5755004E4A490065646400F6F7F700F2F2F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEAC0600F8ECC700F9F6E400F6DB9600F6DE9E00EEA90000F0B32400FFFA
      E600CBCDD10010101000FFFFFF0000000000000000007D8E9F00C3510000FBF1
      D800FFFFFF00FAF2E400F5E1C300F3E0C300D37D0700E4B26D00DEA14E00ECE0
      CA00F0D4A900EFCE9D00ECC99200EFC68700CFAF7F00A8ABB100FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F90000000000807D7F00555253008E8C8D00030000002520
      23008D8F9A0052380000F7D26D00000000000000000000000000000000000000
      00000000000000000000FAF2DB00F4DEA900F7E8C300FFFFFD00000000000000
      0000EFEEDF00BBAF6D00BAAF72002A2623000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F200F3EDEF00B9B99A006A9242004A89
      2D004CB24B003EBD4E0028AC3A001FA7310020AA320024B4390028C446002CCD
      4F002ACB4C0019C43D0023C5460073CB7E00C7BCA800D5ACA400D9C5BB00D8D1
      D2009EA5A1005F835E0060905C00699A64005F925B00548455008C9D9000E4DE
      E300F3F3F300F0F1F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100D6D6D600E9EAEC00C2BBB600B9A59500B29F9000AF9B8B00AF9A8A00AC96
      8600A5907F00917D6B0078685A00867E7800B7B6B500F5F7F700969493003D39
      3800716D6B003B393800C0BFBF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0100EFAB0000EEAD1F00F6D58700F4DA9600EEAD0B00EDAA0000F0B32500FFFA
      E500D2D4D7002E2E2E008F8F8F00535353000E0E0D007C8C9E00D0781300E5B0
      6500E9BE8B00ECD0A500E0A85900EBC99800D8871300ECCA8F00DC9B5200E8D7
      BA00EFCF9D00ECC99200EAC48700EDC17D00CDAD7B00A8AAB000FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F60000000000545152001F1A1B0025212200686466004642
      4300B4B7C2004C330300F0BB3500F4DC9F00FBF4E100F6E6B600E4AC2400EBC5
      6300FAF3DD00F3DEA500DE9C0600DC960000DE9A0000E4AF3200F9F0D6000000
      0000E1DCC100B8AC6800BAAF73002C2724000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EDEDEB00DABDB400CD826B009F47
      200099512A00864F2600A3A37E00A9E0B9007BD5910059D17A0040CA670033C7
      5C0031C65A006ED48900D0E9D700FDF2FC00F3EFF400DBD3CC00F2F7FA00EEF1
      F300F0EFF300D8D9DD00B2BBB8009EA79D00A4A9A100BAACA200CBA89300F1EF
      ED00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300E2E2
      E200E3E4E400D7D7D700A5988E00AF9D8F00B4A19200B8A49400BBA49300BAA3
      9000B59E8A00AA9380009A836F008B74610098857500A9A19900434141006B65
      6300514D4C006C6B6B00FAFAFA00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEB00C00F5DDA100F8E5B100FAF8EE00FCFAF100EDA60000F0B32300FFFA
      E500D6D7DB001616160022222200E0E0E000000000007D8CA000CD731000EBC4
      8400EFD3AA00FBF6EF00FDFBF900FDFFFF00DC9A3B00D1780700E3B37500EBDB
      BF00ECC68C00EAC38500E7BE7D00ECBB7200CCAC7A00A7A9AF00FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900EDECEC001B17190008040500C5C4C5007A777800635F
      6100A7A9B30048340900EDB52E00DE9C0300E9BC4600F9EDC800E7B64300E0A1
      0C00F0D38700E1A21100E0A01100F8EECD00FAEFD300E09F0E00E3AC1F00FFFF
      FC00D3CCA600B8AC6900BAB074002D2825000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEEEC00DAC4B500B67959007E26
      01008129080075130000CAA09200FFFFFF00FDF9FF00F0F4F500DAEEE200B4D4
      B100BAE2C700F4F1F400F9F1F700ECEAE900E7E2DE00D7C6BA00E5DDD800E1D7
      D000DED2CA00DCCFC800DDCDC600C9AA9900E6CCC100CBA58700B4855F00EFED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100EFEFEF00DADA
      DA00ECEDEE00B2ACA800BCAA9D00CFBBAC00D9C4B100DDC3B100DDC2AC00DEC0
      A900DDC0A800DBBBA400CBAD9600BA9E8700C2A38A007263560045424300807A
      78003E3D3D00CACBCC00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0000EFA90000F0B82A00EFBA3500EFAF1900EEB42300EEA80000F0B32500FFFA
      E500D7D9DC000000000045454500FDFDFD000000000077869700CE721100E7BF
      7F00EAC59300F9F2E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6CD
      A600E9BE7B00E7BC7800E8B87200EAB66800CEAC7B00A7A8AF00FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F6F6F600F5F5F500B0AFAF00C2C2C20000000000413E3F009F9C
      9E0069686C004B422D00FEFFFF00F5F4F100F1E9D500F7FAFF00FBFFFF00FCFB
      F700EFCF7900DC920000E2A61600F3D99B00FAF1DB00F7E9C100F6E6BA00FCFD
      FA00C4BB8700BBAF6D00BAB074002D2825000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEDEC00DDC7B800BD805F008C39
      110093431C008D3B1500C8A18900F0E5DD00E9D8CC00E8D4CA00E8D1C700E5BF
      B200E8CBC200E0CBC000DFCEC100DDCCC000DBC6B800CEB3A000D7C4B600D7C3
      B700D8C7BA00D9CAC000DCD1CB00C7AC9B00DEC5B800C9A58900B4886400EEED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400DEDEDD00E3E4
      E400CBCBCB00C4B7AB00E4D1C200E9D5C400EAD4C100E9CEB900EFD0B800E9CA
      B200CBB09A00AD978400947F6F00816D5E008D7663009C8D8400AFABAA006765
      650061585000CCBFB400E1E0E000F4F6F900F4F5F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEAD0B00F7DDA200F8EBC300F2C45900F8E5B200EDA70000F0B32300FFF8
      E300DFE1E4008D8D8D00DADADA00FAFAFA0092929200797F8600E2C79D00EEC3
      8E00E8BA7F00FAF1E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00E4C8
      9D00E6B97100E8B87100E7B66D00EAB46400CBAC7A00A4A7AC00FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00F5F5F50000000000000000000000000000000000E6E5E600F4F4
      F4007A7B83004E3C1900F2C96900F5E1B200FCF9F000F8F8F900F7F7F800F7FA
      FF00E8C15E00DD960000E3B13800E1A82000E0A00A00E4AC2E00F1D18400F4F5
      EF00BBB17300BCB17100BBB074002D2826000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEEED00DCC7B700CC926F00A85A
      2E00A85D32009D4E2200CFA68C00F4E9DF00F0E4DC00EFE6E000E9E2DC00E3D1
      C300E9E3DE00EDEAE700F1EFED00F1F2F200EFEFEE00E1D7CE00F2F4F600F0F3
      F500EFF2F500EEF2F400F1F8FC00D4C0B300DEC5B700C9A48900B2856100EEEC
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100ECECEC00D8D8D800DEDF
      E000C2BCB600ECDCCE00EEDDCF00ECD9C800F1DBC800EBD0BA00B19C8C006F66
      5F0056535000605F610063666800545759004B4D500097959500F3F5F600A29A
      9200D0AE9100C8A88C00B29A8400BEB3A500E0DFDE00F4F6F900F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AC
      0000EFB52500F9EAC900F3CA6400F5D07400F7E2A900EDAB0200F0B32300FFF7
      E200E2E3E700EDEDED00ECECEC00EEEEEE00EEEEEE0075757500EDF1F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5C3
      8E00E8AE5900E8AF5C00E5AD5900E7AC5000CDAA7500A4A7AD00FFF4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F6F600F8F8F800FDFDFD00000000000000000000000000000000000000
      0000BFC1C80052432900EEB93900DF9A0500EECE7E00FEFFFF00000000000000
      0000EED08100DB8E0000F1E1B600FAFFFF00EBCD8000D98A0000EDC05300E8E9
      DE00B7AB6900BCB17200BAB074002E2826000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100EFEEED00E3CCBD00BF825F008630
      050089360E007E240000C8A69400FBFFFF00F3F7FB00F3F7FA00F3F6F900EBE0
      D600F5F7F900F7FBFD00F4F8FA00F2F5F700EFF0EE00E1D7CD00EFEFF000ECEA
      E900EBE7E400E8E4E100E8E5E100D1B9A900E1C8BB00C8A48900B1825E00EEEC
      EB00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400D9D9D900E2E2E200C4C3
      C300E1D5CB00F4E6D900EDDED000F6E4D300DDCBBB00716760004A4849008281
      8200B5B0AD00D9CABF00E2CEBF00E4CFBF00E4D0C000DACABE00CDC8C4008182
      820092827300DEB89900D5AF9200BF9C7800B3966F00CABCAB00F0F1F200F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0000EEA30000F5D38200EEAE0900FAEECE00F3CD7300EDA50000F0B32400FFF7
      E200E0E1E500E0E0E000E0E0E000D9D9D900DBDBDB006E6E6E00BFBFBF00D5D5
      D500D3D3D300D3D3D300D3D3D300D3D3D300D2D2D200D5D5D400E2E3E400D9C8
      AA00DDC29700DEC29700DBC19300E1C49500B1A17900A09EA000FFF5CD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300FBFBFB00FDFDFD00000000000000000000000000FDFDFD000000
      0000B6B5B40058565B0000000000FCF7E800FAF3E300FDFDFD00000000000000
      0000FBF5E400E2A61E00E2A41400EECA6E00E1A41200DF9D0900FCF3D900D9D6
      BA00B6AA6700BDB27300B9AF73002F2928000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100EFEEED00E5CEC000C4876400913C
      0F0096471B00903C1200CEA89000F3F0ED00EEE4DD00F1E7DE00EFE1D800E7CD
      BC00EAD9CD00E9D7C900E6D4C500E5D0C200E1CCBC00D9BCA800DECABB00DDC7
      B800DCC4B500DAC3B400DAC6B800CDAE9800E4CDC000C8A58A00B0815B00EEEC
      EB00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200E8E8E800D9D9D900D5D6D700C6C2
      BE00F8EBE200F0E3D900F9E9DB00D3C6B90055504E0065626400C7C3C100E8D3
      C100E2BFA400DAB39500D7B09100D7AE8F00D8B09000DBB29200DDB99B00E4CF
      BE00A8AAAC0099887B00DFB69500D8B39400CFA27000C79B7300EEEEF000F1F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EFAE0800F4D07500F7DB9800F4D27F00F2BF5000ECA80000F0B32400FFF7
      E200E2E4E700E3E3E300EBEBEB00E1E1E100F1F1F100AFAFAF008A8A8A008A8A
      8A008B8B8B008C8C8C008C8C8C008B8B8B0089898A0092929200BBBABA00C2C6
      CB00C5CCD500B9BEC900A9AFBA00A2A9B300A0A3AC00D6D8DF00FEEFC5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F3F3F300FDFDFD00FEFEFE00000000000000000000000000FCFCFC000000
      0000B6B5B500585556000000000000000000FDFFFF00FDFDFD00000000000000
      000000000000FBF5E200EBC35E00E4AC2600E8BA5100F8EDC90000000000C8C0
      8E00B8AC6B00BDB17200BBB07400312B2A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00E5CEC000D49A7600B061
      3300AF643800A6592D00D4AA9000F0E4D900EDDCD000ECDED200EBDDD200E9D2
      C200EBE0D800F0E7DF00F0E9E300F1EAE700EFE9E500E4D7CB00F1F0ED00F0F0
      EF00F0F1F200F0F1F200F2F7F900DCC7B800E2CCBD00C8A48A00AE7E5A00EEEC
      EB00F1F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D9D9D900E1E1E200BCBBBA00E8E1
      D900F6ECE300F8ECE100E4D9CE005C5856007D797900EAE2DE00F5E3D300DAB6
      9A00D2AC8D00D6B09200D5B09200D6AF9200D5AF9100D5AF9100D4AD8D00D5A9
      8600E6C9B400AEB0B300B0957E00DEB48D00D8A86B00E6D3C000F2F5F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      000000000000F0B62D00F0B53300F1B52C00F9E8BA00EDAA0000F0B32300FFF7
      E200E3E5E800D5D5D500E6E6E600EAEAEA00ECECEC00EDEDED00EEEEEE00F8F8
      F800FBFBFB00F1F1F100EBEBEB00FBFBFB00F7F7F700EDEDED00EAEAEA00F2F2
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00F5F5F5000000000000000000000000000000000000000000FBFBFB000000
      0000B6B4B5005A57580000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFD00C6BC
      7B00C2B67200C6BB7700C3B87800312B2A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00EAD4C600C88B6600973E
      0D00984115008B310500CEAC9900FAFFFF00F4F8FA00F4F8FC00F5F9FB00F0E7
      DE00F3F6F800F6FAFD00F5F8FC00F4F8FB00F3F4F500E9E0D900F4F6F800F2F3
      F300F1F1F200EFEFEF00F1F2F300DDC5B500E5CDBF00C6A38900AB7A5700EEEC
      EB00F1F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300E1E1E100DEDEDE00CBCBCC00C6C2BF00FBF3
      EC00F5ECE400FBF1E800847E7B0074706F00F2EDE900F6E7D900EBD9C900DFC2
      AC00D2AB8D00D4AE9000D4AE9000D4AD8F00D3AD8F00D3AC8E00D2AB8C00D1A9
      8A00C6997600DCCDC100B3ABA800D1A06A00DBB58B00F0F1F400F0F1F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EFAD0300F3C55500F2C75E00F3CB6900FAEDCC00EDA80000F0B32300FFF7
      E200DDDEE200D8D8D800E8E8E800E2E2E200E4E4E400E5E5E500EBEBEB00DEDE
      DE00E3E3E300EBEBEB00E4E4E400D9D9D900E0E0E000CCCCCC00D1D1D100E5E5
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600F8F8F800EDEDED00F5F5F5000000000000000000FEFEFE00FEFEFE000000
      0000B6B4B50039353600B8B7B700B5B4B400B3B2B200B7B5B600B8B6B700B8B7
      B800B9B7B900BCBABB00BCBABC00B9B7BA00B7B5B700B8B6B800ACA89F00857B
      4E00857C5100877D5200857C53001D1618000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EFEE00ECD6C700CD906B00A14C
      1A00A65326009F491C00D5AE9600F6F0EC00F0E5DD00EFE3DB00EDE1D800EDD7
      C500ECDDD200EADDD200EADACF00E8D9CD00E6D6CA00E5CDBA00EAD8CD00E8D4
      C800E6D0C200E2CDBE00E1CCBD00D8B69F00EAD7CB00C5A28800A8765100EEEC
      EB00F2F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200E8E8E800D9D9D900B1B0B000E5DFDB00FAF2
      EC00FCF3ED00CDC6C100635F5D00DAD6D500FBF1E900F0E1D500ECDDCF00E4CB
      B800D1AA8B00D2AC8D00D2AB8C00D1AB8C00D2AB8C00D2AA8B00D0A88800CAA2
      8200B48D6B00BB9D8500CDCDCE00BA936700ECDBCD00F3F5F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EFAD0500F3D07500F3D58500F5D68800EFB82B00EDA70000F0B32500FFF7
      E200E1E2E600D3D3D300E2E2E200E8E8E800F3F3F300EFEFEF00EFEFEF00EEEE
      EE00F2F2F200E2E2E200DDDDDD00E7E7E700E5E5E500E2E2E200E4E4E400ECEC
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400FDFDFD00EBEAEA00E9E8E800F8F8F800FAFAFA00FBFBFB00EFEFEF00F9F8
      F800DDDCDD007A75770074707200757173007570730076717400787376007974
      77007A757900746F73006E6A6D007C777A007873750076717400757175007772
      7A0075707800726E7600736F7700747074000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00EBD5C600DAA17D00BF70
      3F00BE744500B7693800E0B49800F7EBE000F5E6DA00F1E4D900EBDFD500EDD8
      C600ECE0D600ECE2DA00ECE3DC00EDE5DF00EDE6DF00E8DACD00EDE8E500F1EE
      EC00F2EFED00F0EFED00F2F3F400E3CDBD00EAD8CD00C29F8600A4714C00EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400D2D2D200B6B4B100EDE8E300F8F1
      EC00FFFCF5009993900099949300FEF9F600F5ECE400F1E4DA00ECDED000EAD7
      C700D5B29600CFA68700D0A88A00D0A88A00D1A88800CEA58400C79E7E00B792
      7000A07B5A009E7B6000E1DBD900D1C2B400F1F1F100F0F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEAC0200F6DC9A00F7E4B600F6E4B300F8E6B800EDA70000F0B32300FFF7
      E200DEDFE300CECECE00DCDCDC00DFDFDF00E9E9E900E5E5E500E4E4E400EBEB
      EB00EDEDED00EEEEEE00DDDDDD00E6E6E600EAEAEA00EEEEEE00E7E7E700EAEA
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300FCFCFC00EBEBEB00EEEEEE00EFEFEF00F4F4F400F5F5F500E1E0E000DEDD
      DD00F2F1F100EDEDED0000000000000000000000000000000000000000000000
      000000000000E1E1E100E4E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EFEE00F0DACB00CE916B00A34A
      1400A44E1C00993E0B00D3B09C00F9FFFF00F4F8FB00F4F8FB00F4F8FA00F3E9
      E100F3F7F900F4FAFE00F4F9FD00F3F9FE00F5F8FB00ECE8E100F5FBFF00F9FE
      FF00F8FEFF00F8FEFF00FAFFFF00E8D5C800EBD8CE00BF9C8400A06D4700EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200EBEBEB00CECBC700DFDBD600F8F2
      ED00F6F0EA008A838000CFCCCA00FDF9F500F7EFE800F2E7DE00EEE0D400EBDB
      CC00E0C5B000CCA38300CEA68700CEA48600C8A08000C0987700B18B6900A07C
      5B00936D4D00A17D6000E8E1DE00E2E3E400F0F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0000EEAD0000EEA90000EDAB0400EDA90000F8E4B000EDA80000F0B32300FEF6
      E200E2E4E700F8F8F800F9F9F900F9F9F900F9F9F900F9F9F900FEFEFE00E0E0
      E000D1D1D100E3E3E300E6E6E600D3D3D300D3D3D300E1E1E100E4E4E400E9E9
      E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00F7F7
      F700F5F6F600D1D0D000DDDDDD00DEDEDE00F0EFEF00F6F6F600F9F9F900F8F8
      F800F2F2F200EAEAEA00ECECEC00D9D8D800F4F4F400FCFCFC00FEFEFE000000
      000000000000CACACA00F0EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1EFEE00F1DBCC00D2967000AD55
      2000AF5C2A00A84F1D00DDB8A300FFFFFF00FBFAF800F9F8F600F9F7F300F6E6
      D800F8F1EA00F7F0E900F5EDE400F3E8DD00EFE0D300EAD3BF00ECDBCD00EBD5
      C500E8CFC000E3CAB900DFC1AF00DDB59D00EFE0D700BE9B80009D684100EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F2F200F0EFEF00E6E4E200F1EC
      E900E6E1DC007C757300ECE9E900FCF9F600F5EFEA00F2E9E200EFE2D700EADB
      CC00E7D4C500D2B19800C2987800BE987700B38E6E00A68261009A755500936E
      5000956C4A00BA9B7E00EFEBEA00EDEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EFAF0700F1B92D00EDA60000EDA60000F6D47C00EEA90000F0B32300FEF6
      E200E1E3E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9
      E900E3E3E300D6D6D600CACACA00CECECE00D2D2D200D1D1D100CBCBCB00E9E9
      E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F800FBFB
      FB00EDEDED00CCCBCB00DBDADA00F6F6F600F5F5F500F3F3F300F3F3F300F3F3
      F300F4F4F400F6F6F600F6F6F600F8F8F800F4F4F400F4F4F400F4F4F400F7F7
      F700FCFCFC00C6C5C600FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1EFEE00F0DACB00DCA37E00C473
      4200C6784A00C5764700D1916800CA8B6300C5835B00BF7A5300B8724C00C17D
      5300AD633C00A65B3300A1562E009F532900A0582B00B06D42009A532700954D
      220091471D008C4319007F340A00B0714F00F9EEE600BC977F009A633D00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100F1F2F200F3F2
      F200E0DEDD008B848200E8E6E500FAF8F600F4EFEC00EFE9E300EBE1D900E6D8
      CC00DFCEC000D7C2B300B6977B009E79580099755700936F5100936C4E009B73
      5300A5774E00D6C0AD00E5E4E500E9E9EA00F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AD
      0000EFB01500F9E6B900F0B62700F1BC3200F2BC2E00EEA90000F0B32500FEF6
      E200E2E3E700F6F6F600F3F3F300F3F3F300F4F4F400F4F4F400F8F8F800DDDD
      DD00C5C5C500EFEFEF008E8E8E0090909000A0A0A000A0A0A000BBBBBB00F4F4
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F600FDFD
      FD00F6F6F600E9E9E900F1F1F100F5F6F500F4F4F400F3F3F300F3F3F300F4F4
      F400F4F4F400F4F4F400F3F3F300F3F3F300F4F4F400F4F4F400F5F5F500FAFA
      FA00EDEDED00CCCBCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F0EFEE00F2DED000D6987100B258
      2000B25C2600AE5A2600B56634009F4611009D4411009942100097401000AA5C
      2E009342160092451900964A1F00964D210097512400A76439008E471C008D46
      1C008A441B0087411A007D350D00B1755200F8ECE800BA937F0098613C00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100EFF0F000A8A3A200E1DFDE00FBFAF900F6F2EF00EEE9E500E7E0D900E0D5
      CB00D6C7BC00CEBCAF00C1AE9E00A2856D00916A4C00956E4E00A1795600AA7C
      5300C1997500EBE3E000E2E0E000E8E9E900F1F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AD
      0000EEAE0E00FBF2DE00F8E6B900F8E9BF00F8E2A700EDA80000EFB32400FFF7
      E200E0E2E500E3E3E300EEEEEE00E6E6E600E8E8E800E3E3E300E5E5E500EFEF
      EF00F6F6F600F0F0F000F1F1F100F0F0F000F3F3F300D7D7D700E0E0E000ECEC
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400FDFD
      FD00A19F9F00AAA9A900E1E1E100EEEEEE00FBFAFA000000000000000000FAFA
      FA00F5F5F500F3F3F300F3F3F300F3F3F300F4F4F400F3F3F300F3F3F300FBFB
      FB00DCDBDB00DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F0EFEE00F2E3D700DCA27D00C06C
      3600BF6E3B00BA6D3800C3794800B3653100B3643100AF623100AD623100BC75
      4600AA603000A65E2D00A35B2B009E5627009F572900AD693C00974E2200964E
      2100934D2100924A2000873E1200B8805500F7D0E800BB7A80009A6A3E00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F8F800BBB8B700D9D6D600FDFDFD00FAF7F500F2EEEA00EAE4DF00E2D9
      D000D9CCC100D0BFB300C8B5A600C4AE9B00B8987F00B1886600B3855A00B786
      5A00E2D2C600EBE9E900E4E4E400F1F2F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EFB11300F4CC6500EA930000EEA71100F0BD4300EFAA0000EFB32400FEF6
      E100E8E9ED00D4D4D400C3C3C300CFCFCF00BFBFBF00EDEDED00CACACA00C2C2
      C200BBBBBB00DCDCDC00E7E7E700E5E5E500EDEDED00E5E5E500E7E7E700EEEE
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300FEFE
      FE00D4D4D400B6B5B500A7A6A6009D9B9C00B4B3B300B9B8B800C3C2C200E1E0
      E100F7F7F700F8F8F800F6F6F600F4F4F400F3F3F300F3F3F300F3F3F300FEFE
      FE00CCCBCB00ECEBEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1F0EE00F0E0D100EAC2A600E3AE
      8A00E5B29100E3B39400E5B79900E2B39300E3B49500E3B59600E3B59800E7B9
      9D00E4B69A00E4B79B00E4B89D00E3B99D00E4B99E00E6BDA300E3BAA100E4BC
      A200E4BEA400E5BDA500E3BDA400E6C5AD00F2E8E000C2A08600A4714B00EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400DBDADA00C3BFBD00F7F6F600FFFFFD00F8F4F100F3ECE700EBE3
      DC00E5D8CE00DFCEC000D8C3B200D4BAA600D3B49D00CEA88A00C49B7800DDC9
      BA00EEEAEA00E6E4E400ECEDED00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AF
      0000EEAA0000F0BB3500F6DD9B00F9F1D500F5D99500EDA70000F0B32400FDF5
      E000F9FBFE0086868600646464007F7F7F008B8B8B00AFAFAF00717171009999
      990071717100C9C9C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4
      F400FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F8F8
      F8000000000000000000FCFCFC00F6F6F600E3E2E200BCBBBB00A5A3A300ACAA
      AA0093929200D1D1D1000000000000000000FDFDFD00FAFAFA00F9F9F900FDFD
      FD00C6C5C500FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F1F0ED00F0DCCD00F4E8E000F4ED
      E500F4ECE500F6EAE600F5E9E500F5EBE400F4EAE300F4E9E200F4EAE100F4E8
      E000F4E8E200F4E9E200F4E8E100F3E7E100F2E6DE00F0E3DC00F1E5DD00F0E4
      DC00EFE3DC00EFE1DC00F0E2DC00EDDED700EFE4DD00CDAD9200B6896500EEED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F3F300CFCCCC00D7D5D300F1F0F000FFFFFC00FAF4F000F4EB
      E500EEE3D900EADACC00E6CFBC00E3C6B000D7B59B00CAAE9700E5D9D000F6F2
      F000E4E2E200E5E6E600F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AE
      0000EEAD0900FCF5E400F6E3B500F3D38700EFB22D00EFA90000EFB32500FDF5
      E000F0F1F500E5E5E500E9E9E900E9E9E900EFEFEF00E0E0E000E3E3E300F0F0
      F000EAEAEA00E9E9E900EAEAEA00EAEAEA00EAEAEA00EAEAEA00E7E7E700F2F2
      F200FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00FAFAFA00F9F9F900FAFAFA00FEFEFE000000000000000000F9F9
      F900E8E8E800F8F8F8000000000000000000000000000000000000000000F0F0
      F000CAC9CA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F0EE00F0DBCE00F4E5DC00F2E6
      DE00F0E7DE00F0E6DE00F2E5DE00F2E4DE00F1E4DB00EFE3D900EFE2D900EFE2
      D900EFE2D900EFE2D800EFE2D800F0E1D800F0E1D700EDDFD600EEDED400EDDD
      D400ECDCD300ECDCD300ECDBD300EBD9D200F0E4DE00DCBEA400CBA48100EFED
      EC00F1F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200EEEEEE00D5D5D400D7D5D400E3E1DF00F1EEEB00F3EE
      EA00EBE2DB00E2D5CA00DBCBBC00C2B0A400BDB2AB00EBE7E500FAF5F400ECEA
      EA00E6E6E600F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFAF
      0100EFAC0000EB9F0000F3CA6900FBF6EA00F7E5B300EDA60000F0B32400FBF3
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EAC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00FAFAFA00F8F8F800F9F9
      F900FDFDFD00FCFCFC00FDFDFD0000000000000000000000000000000000DBDB
      DB00D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F1F100F0E2DA00F2E0D400F4E5
      DC00F1E4DB00EFE4DB00F0E4DA00F1E2DA00F1E1DB00F0E1D800F0E0D600EFDF
      D600EFDFD600EFDFD600EFE0D600EFDFD500EFDED400EEDDD400ECDCD200ECDA
      D100ECDBD000EBDACF00EAD9D000EADAD100E2CCC000CBA38000DDC4AB00F1F3
      F400F0F0F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200EEEEEE00E3E2E100D2CFCE00D6D3D100D4D2
      D000CFCAC900C7C2C000ADA9A900B9B5B500E9E7E700F3F1EF00E9E9E800EFEF
      EF00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEAF
      0100F0AF0000EFAE0000EEA70000EDA30000F1BD3A00EEAB0000EFB32700FCF6
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EDC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FAFAFA00F8F8F800F8F8F800F8F8F800FAFAFA00FCFCFC00DAD9
      D900EEEDED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F1EDEB00F1EE
      EB00F1EDEA00F1EDEB00F1EDEA00F1EDE900F1ECE800F1ECE900F0ECE800F0EB
      E800F0EBE800F0EBE800F0E9E700EFEAE600EFE9E600EFE8E500EEE9E500EEE8
      E400EEE7E300EEE7E300EDE7E300EEE8E300D5C6BB00CDBBAC00EEEDEC00F1F2
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F2F2F200EAEAEA00E7E6E600EAE9
      E700D1CDCC00D0CDCB00D9D5D400F8F7F600E9EAEA00EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0AE0000EFAE0000EFAE0000EFAE0000EEAB0000EEAB0000EFB11D00F6E5
      B200F7EBC500F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9
      BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9
      BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F8ECC700F4DD96000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00F9F9F900FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000F8000000800000000100010000000000001000000000000000000000
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
      00000000000000000000000000000000FFFE00000000FFFFFFFFFF807FFFFFFF
      FFF80000017FFFFFFFC00000007FFF00FFFC00000000FFFFFFFFE0007FFFFFFF
      FFFE0000007FFFFFFF800000007FFF00FFFE00000000FFFFFFFC00007FFFFFFF
      FFFC000001FFFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFF00000003FFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFE10000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF80000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF807000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF808800007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF810400007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF810400007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF810401007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF80040C407FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000207FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF808800087FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF807000047FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000027FFFF
      FFE00000001FFFFFFF800000007FFF00FFFC00000000FFFFFFF80000000FFFFF
      FFE00000005FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFF00000003FFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFFC000000FFFFFFFF800000007FFF00FFFC00000000FFFFFFF800000007FFFF
      FFFC040000FFFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFFE040001FFFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFFE000001FFFFFFFF800000007FFF00FFFC00000000FFFFFFF800007FFFFFFF
      FFFF000001FFFFFFFF800000007FFF00FFFC00000000FFFFFFFC00007FFFFFFF
      FFFF003803FFFFFFFF800000007FFF00FFFC00000000FFFFFFFFE0007FFFFFFF
      FFFF007801FFFFFFFF800000007FFF00FFFC00000000FFFFFFFFFF807FFFFFFF
      FFFF000001FFFFFFFF800000007FFF00FFFFFFF20FFFFFFFFFFFFFF8FFFFFFFF
      FFFFFFE3FFFFFFFFFFF8000003FFFF00FFFFFFFC2FFFFFFFFFFFFFE8FFFFFFFF
      FFFFFFC1FFFFFFFFFFF0000003FFFF00FFFFFFF01FFFFFFFFFFFFFC01FFFFFFF
      FFFFFF01FFFFFFFFFFF0000003FFFF00FFFFFFF01FFFFFFFFFFFFFC01FFFFFFF
      FFFF0E00FFFFFFFFFFF0000003FFFF00FFFFFFD80FFFFFFFFFFFFFC01FFFFFFF
      FFFE03007FFFFFFFFFF0000003FFFF00FFFFFFDC0FFFFFFFFFFFFF801FFFFFFF
      FFFC00C07FFFFFFFFFF0000003FFFF00FFFFFF600CFFFFFFFFFFFE001FFFFFFF
      FFFC00207FFFFFFFFFF0000003FFFF00FFFFFF0001FFFFFFFFFFFC000FFFFFFF
      FFFC0E001FFFFFFFFFF0000003FFFF00FFFFFF80001FFFFFFFFFF80000FFFFFF
      FFFC1F0003FFFFFFFFF0000003FFFF00FFFFFF10001FFFFFFFFFF000007FFFFF
      FFFC1F0001FFFFFFFFF0000003FFFF00FFFFFF10001FFFFFFFFFF04000FFFFFF
      FFFE0E0001FFFFFFFFF0000003FFFF00FFFFFE10001FFFFFFFF80000000FFFFF
      FFFE0C7000FFFFFFFFF0000003FFFF00FFFFFA10000FFFFFFFF000000007FFFF
      FFFF0D0000FFFFFFFFF0000003FFFF00FFFFFA000007FFFFFFF000000007FFFF
      FFFF020000FFFFFFFFF0000003FFFF00FFFFFE000007FFFFFFF000000027FFFF
      FFFF060000FFFFFFFFF0000003FFFF00FFFFFF00E00FFFFFFFF000008027FFFF
      FFFF800000FFFFFFFFF0000003FFFF00FFFFF9001003FFFFFFF000000027FFFF
      FFFF8000007FFFFFFFF0000003FFFF00FFFFFC020001FFFFFFF100000007FFFF
      FFFFC000007FFFFFFFF0000003FFFF00FFFF84020001FFFFFFF000000007FFFF
      FFFC0100003FFFFFFFF0000003FFFF00FFFE00021801FFFFFFF000000007FFFF
      FFF80000001FFFFFFFF0000003FFFF00FFFE00020801FFFFFFFC00082007FFFF
      FFF00000001FFFFFFFF0000003FFFF00FFFE00010801FFFFFFF000080007FFFF
      FFE00038001FFFFFFFF0000003FFFF00FFFE00009001FFFFFFF000040007FFFF
      FFE00000001FFFFFFFF0000003FFFF00FFFE00100001FFFFFFF00002000FFFFF
      FFE00000001FFFFFFFF0000003FFFF00FFFE80000005FFFFFFF98000201FFFFF
      FFF00000007FFFFFFFF0000003FFFF00FFFE8000000FFFFFFFF80000001FFFFF
      FFF0900000FFFFFFFFF0000003FFFF00FFFE8000018FFFFFFFF80800001FFFFF
      FFF90000007FFFFFFFF0000003FFFF00FFFF8000001FFFFFFFF840000C1FFFFF
      FFF80000307FFFFFFFF0000003FFFF00FFFF8000003FFFFFFFFC4000083FFFFF
      FFF80800707FFFFFFFF0000003FFFF00FFFFA000007FFFFFFFFCC800003FFFFF
      FFE4480020FFFFFFFFF0000003FFFF00FFFFF0173FFFFFFFFFFDB014007FFFFF
      FFF4C00000FFFFFFFFF0000003FFFF00FFFFF81C8FFFFFFFFFFFF01983FFFFFF
      FFF0839301FFFFFFFFF0000003FFFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
      FFF00000001FFFFFFFFFFE0003FFFF00FFFFE0000003FFFFFFFFFFFFE00FFFFF
      FFE00000001FFFFFFFFFFF800FFFFF00FFFFE0000003FFFFFFFFFFFFC00FFFFF
      FFE00000001FFFFFFFFFFFE27FFFFF00FFFF80000003FFFFFFFFFFFF800FFFFF
      FFE00000001FFFFFFFFFF00000FFFF00FFFE00000001FFFFFFFFFFFF0007FFFF
      FFE00000001FFFFFFFFE700000FFFF00FFFE00000001FFFFFFFFFFFE000FFFFF
      FFE00000001FFFFFFFFE000000FFFF00FFFE00000001FFFFFFFFFC1C001FFFFF
      FFE00000001FFFFFFFFC03C000FFFF00FFFE00000001FFFFFFFFF800003FFFFF
      FFE00000001FFFFFFFFCE3FC00FFFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFE00000001FFFFFFFFC20FFE0FFFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFE00000001FFFFFFFFA00FFF8FFFF00FFFE00000003FFFFFFFFE000007FFFFF
      FFE00000001FFFFFFFFA01FC30FFFF00FFFE00000003FFFFFFFFE00000FFFFFF
      FFE00000001FFFFFFFFA000010FFFF00FFFE00000007FFFFFFFFC00000FFFFFF
      FFE00000001FFFFFFFF8000000FFFF00FFFE00000007FFFFFFFF800001FFFFFF
      FFE00000001FFFFFFFF0400000FFFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFE00000001FFFFFFFF3C00000FFFF00FFFE00000007FFFFFFFF0000001FFFFF
      FFE00000001FFFFFFFF1F03000FFFF00FFFE00000007FFFFFFFF0000000FFFFF
      FFE00000001FFFFFFFF1D23000FFFF00FFFE00000007FFFFFFFE0000000FFFFF
      FFE00000001FFFFFFFE1D33820FFFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFE80000001FFFFFFFE7D3FFC0FFFF00FFFE00000007FFFFFFFC0000001FFFFF
      FFE00000001FFFFFFFE1900000FFFF00FFFE00000007FFFFFFFC0000003FFFFF
      FFE00000001FFFFFFFE0000000FFFF00FFFE00000007FFFFFFFE0000003FFFFF
      FFE00000001FFFFFFFE003F9FFFFFF00FFFE00000007FFFFFFFE0000007FFFFF
      FFE00000001FFFFFFFC00019FFFFFF00FFFE00000007FFFFFFFF000000FFFFFF
      FFE00000001FFFFFFFC00001FFFFFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFE00000001FFFFFFFC00003FFFFFF00FFFE00000007FFFFFFFFE000007FFFFF
      FFE00000001FFFFFFFC06003FFFFFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFE00000001FFFFFFFC00003FFFFFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFE00000001FFFFFFFCC0303FFFFFF00FFFE00000007FFFFFFFFF80001FFFFFF
      FFE00000001FFFFFFFE063E7FFFFFF00FFFF00000007FFFFFFFFF80003FFFFFF
      FFE00000001FFFFFFFFE01E7FFFFFF00FFFF00000007FFFFFFFFFC0007FFFFFF
      FFE00000001FFFFFFFFFF007FFFFFF00FFFF8000000FFFFFFFFFFE003FFFFFFF
      FFF00000001FFFFFFFFFFF0FFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    BufferChunks = 4500
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT   PK.ID,PK.IDEP,PK.NFE_TPNF,PK.CDST,PK.REST,PK.DEST,'
      
        '         PK.NFE_CDRO,PK.NFE_DERO,IIF(NOT FEMPTY(PK.NFE_DERO),PK.' +
        'NFE_DERO,'#39'AVULSO'#39')   AS DERO,PK.NFE_CDBX,'
      
        '         PK.NFE_FINNFE,TB_FIN.DESCRICAO AS FINNFE,IIF(PK.NFE_FIN' +
        'NFE = 6,'#39'NFe Contra'#39',IIF(PK.NFE_FINNFE = 5,'#39'CFe'#39','#39'NFe'#39')) AS EMIS' +
        'SOR,'
      
        '         PK.NFE_CDNF,PK.NFE_DEMI,PK.NFE_DSAI,PK.NFE_HRSE,PK.DTSA' +
        ',PK.NFE_ESTO,PK.NFE_CNAT,TB_NAT.NAT_TIPO AS TIPO_NF,TB_NAT.NAT_O' +
        'PER AS TIPO_OP,TB_NAT.FINALIDADE_ABREV,'
      
        '         PK.NFE_CLFO,IIF(PK.NFE_CLFO = 0,'#39'Cliente'#39',IIF(PK.NFE_CL' +
        'FO = 1,'#39'Fornecedor'#39','#39'Representante'#39')) AS CLFO,PK.NFE_CFAV,PK.NFE' +
        '_DFAV,PK.NFE_CVEN,PK.NFE_DVEN,PK.NFE_CREP,PK.NFE_DREP,'
      '         PK.NFE_CTRA,PK.NFE_DTRA,PK.CFRT,'
      
        '         FK.NFE_MODFRETE AS MODFRETE,TB_FRT.DESCRICAO AS MODFRET' +
        'E_DESC,FK.NFE_QVOL||'#39' '#39'||COALESCE(FK.NFE_ESP,'#39#39') AS VOLUME,FK.NF' +
        'E_PSBR AS PESOB,FK.NFE_PSLQ AS PESOL,'
      
        '         PK.NFE_QCOM,PK.NFE_VPROD,PK.NFE_VDESC,PK.NFE_VNF,PK.NFE' +
        '_VICMS,PK.NFE_VIPI,PK.NFE_VPIS,PK.NFE_VCOFINS,'
      '         PK.NFE_VST,PK.NFE_VFRETE,PK.NFE_VSEG,PK.NFE_VII,'
      
        '         IIF(CHAR_LENGTH(PK.NFE_CHAV) = 44,EP.FANTASIA,'#39'TERCEIRO' +
        'S'#39') AS EMPRESA,'
      '         PK.NFE_CHAV,PK.NFE_PROT,PK.NFE_PROC,PK.CSTAT,'
      '         PK.NFE_OBSE'
      ''
      '         FROM NFE_CAB      AS PK'
      
        '         JOIN TAB_PAR_SIS  AS EP     ON (EP.ID             = PK.' +
        'IDEP  )'
      
        '         JOIN TAB_NAT      AS TB_NAT ON (TB_NAT.CFOP       = PK.' +
        'CFOP  )'
      
        '         JOIN TAB_TPO      AS TB_FIN ON (TB_FIN.FIS_FINNFE = PK.' +
        'FINNFE)'
      ''
      
        '         LEFT JOIN NFE_TRA AS FK     ON (FK.IDPK         = PK.ID' +
        'PK)'
      
        '         LEFT JOIN TAB_TPO AS TB_FRT ON (TB_FRT.FIS_MFRT = FK.MF' +
        'RT)'
      ''
      
        '         WHERE CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRAC' +
        'T(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EX' +
        'TRACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD' +
        '(1 MONTH TO CURRENT_DATE)))'
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')'
      'SELECT   DISTINCT PK.* FROM CTE_PSQ AS PK'
      'ORDER BY PK.ID DESC')
    Top = 224
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"NFE_CAB"."IDEP"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"NFE_CAB"."CDST"'
    end
    object CadastroREST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'REST'
      Origin = '"NFE_CAB"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"NFE_CAB"."DEST"'
      Size = 60
    end
    object CadastroNFE_TPNF: TSmallintField
      FieldName = 'NFE_TPNF'
      Origin = '"NFE_CAB"."NFE_TPNF"'
    end
    object CadastroNFE_CDNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB"."NFE_CDNF"'
      DisplayFormat = '0'
    end
    object CadastroNFE_DEMI: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroNFE_DSAI: TDateField
      FieldName = 'NFE_DSAI'
      Origin = '"NFE_CAB"."NFE_DSAI"'
    end
    object CadastroDTSA: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'DTSA'
      Origin = '"NFE_CAB"."DTSA"'
      DisplayFormat = 'dd/mm hh:mm'
    end
    object CadastroNFE_HRSE: TTimeField
      FieldName = 'NFE_HRSE'
      Origin = '"NFE_CAB"."NFE_HRSE"'
    end
    object CadastroNFE_ESTO: TIBStringField
      FieldName = 'NFE_ESTO'
      Origin = '"NFE_CAB"."NFE_ESTO"'
      FixedChar = True
      Size = 1
    end
    object CadastroNFE_CDRO: TIntegerField
      FieldName = 'NFE_CDRO'
      Origin = '"NFE_CAB"."NFE_CDRO"'
    end
    object CadastroNFE_DERO: TIBStringField
      FieldName = 'NFE_DERO'
      Origin = '"NFE_CAB"."NFE_DERO"'
      Size = 30
    end
    object CadastroDERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DERO'
      ProviderFlags = []
      Size = 30
    end
    object CadastroNFE_CDBX: TLargeintField
      FieldName = 'NFE_CDBX'
      Origin = '"NFE_CAB"."NFE_CDBX"'
    end
    object f: TSmallintField
      DisplayLabel = 'Finalidade'
      FieldName = 'NFE_FINNFE'
      Origin = '"NFE_CAB"."NFE_FINNFE"'
    end
    object CadastroFINNFE: TIBStringField
      DisplayLabel = 'Finalidade'
      FieldName = 'FINNFE'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object CadastroEMISSOR: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'EMISSOR'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object CadastroNFE_CNAT: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NFE_CNAT'
      Origin = '"NFE_CAB"."NFE_CNAT"'
      Size = 10
    end
    object CadastroTIPO_NF: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_NF'
      Origin = '"TAB_NAT"."NAT_TIPO"'
      Size = 30
    end
    object CadastroTIPO_OP: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'TIPO_OP'
      Origin = '"TAB_NAT"."NAT_OPER"'
      Size = 10
    end
    object CadastroNFE_CLFO: TIBStringField
      FieldName = 'NFE_CLFO'
      Origin = '"NFE_CAB"."NFE_CLFO"'
      FixedChar = True
      Size = 1
    end
    object CadastroCLFO: TIBStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'CLFO'
      ProviderFlags = []
      FixedChar = True
      Size = 13
    end
    object CadastroNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_CAB"."NFE_CFAV"'
    end
    object CadastroNFE_DFAV: TIBStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'NFE_DFAV'
      Origin = '"NFE_CAB"."NFE_DFAV"'
      Size = 60
    end
    object CadastroNFE_CVEN: TIntegerField
      FieldName = 'NFE_CVEN'
      Origin = '"NFE_CAB"."NFE_CVEN"'
    end
    object CadastroNFE_DVEN: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_CAB"."NFE_DVEN"'
      Size = 40
    end
    object CadastroNFE_CREP: TIntegerField
      FieldName = 'NFE_CREP'
      Origin = '"NFE_CAB"."NFE_CREP"'
    end
    object CadastroNFE_DREP: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'NFE_DREP'
      Origin = '"NFE_CAB"."NFE_DREP"'
      Size = 60
    end
    object CadastroNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_CAB"."NFE_CTRA"'
    end
    object CadastroNFE_DTRA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'NFE_DTRA'
      Origin = '"NFE_CAB"."NFE_DTRA"'
      Size = 60
    end
    object CadastroMODFRETE: TIBStringField
      FieldName = 'MODFRETE'
      Origin = '"NFE_TRA"."NFE_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object CadastroMODFRETE_DESC: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODFRETE_DESC'
      Origin = '"TAB_TPO"."DESCRICAO"'
      Size = 60
    end
    object CadastroCFRT: TIBStringField
      DisplayLabel = 'Coleta'
      FieldName = 'CFRT'
      Origin = '"NFE_CAB"."CFRT"'
      Size = 10
    end
    object CadastroVOLUME: TIBStringField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      ProviderFlags = []
      Size = 67
    end
    object CadastroPESOB: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOB'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroPESOL: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PESOL'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroNFE_QCOM: TIBBCDField
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_CAB"."NFE_QCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CadastroNFE_VPROD: TIBBCDField
      DisplayLabel = 'Vl. Produtos'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_CAB"."NFE_VPROD"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VDESC: TIBBCDField
      DisplayLabel = 'Vl. Descontos'
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_CAB"."NFE_VDESC"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VNF: TIBBCDField
      DisplayLabel = 'Vl. Nota Fiscal'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB"."NFE_VNF"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VICMS: TIBBCDField
      DisplayLabel = 'Valor ICMS R$'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_CAB"."NFE_VICMS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VIPI: TIBBCDField
      DisplayLabel = 'Vl. IPI'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_CAB"."NFE_VIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VPIS: TIBBCDField
      DisplayLabel = 'Vl. PIS'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_CAB"."NFE_VPIS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'Vl. Cofins'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_CAB"."NFE_VCOFINS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VST: TIBBCDField
      DisplayLabel = 'Valor ST'
      FieldName = 'NFE_VST'
      Origin = '"NFE_CAB"."NFE_VST"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VFRETE: TIBBCDField
      DisplayLabel = 'Vl. Frete'
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_CAB"."NFE_VFRETE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_CAB"."NFE_VSEG"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNFE_VII: TIBBCDField
      FieldName = 'NFE_VII'
      Origin = '"NFE_CAB"."NFE_VII"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 60
    end
    object CadastroNFE_CHAV: TIBStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'NFE_CHAV'
      Origin = '"NFE_CAB"."NFE_CHAV"'
      Size = 44
    end
    object CadastroNFE_PROT: TIBStringField
      DisplayLabel = 'Protocolo Emiss'#227'o'
      FieldName = 'NFE_PROT'
      Origin = '"NFE_CAB"."NFE_PROT"'
      Size = 30
    end
    object CadastroNFE_PROC: TIBStringField
      DisplayLabel = 'Protocolo Cancelamento'
      FieldName = 'NFE_PROC'
      Origin = '"NFE_CAB"."NFE_PROC"'
      Size = 30
    end
    object CadastroNFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_CAB"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object CadastroCSTAT: TSmallintField
      FieldName = 'CSTAT'
      Origin = '"NFE_CAB_004"."CSTAT"'
    end
    object CadastroFINALIDADE_ABREV: TIBStringField
      FieldName = 'FINALIDADE_ABREV'
      Origin = '"TAB_NAT"."FINALIDADE_ABREV"'
      Size = 30
    end
  end
  inherited ILDockIcons: TImageList
    Left = 424
  end
  inherited BMMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object nfe_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    OnCalcFields = nfe_iteCalcFields
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_ITE_004'
      'WHERE NFE_CCAB = :ID')
    Left = 104
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object nfe_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_iteNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_ITE"."NFE_CCAB"'
    end
    object nfe_iteNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_ITE"."NFE_CDNF"'
    end
    object nfe_iteNFE_INDTOT: TIntegerField
      FieldName = 'NFE_INDTOT'
      Origin = '"NFE_ITE"."NFE_INDTOT"'
    end
    object nfe_iteNFE_CFOP: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE"."NFE_CFOP"'
      Size = 4
    end
    object nfe_iteNFE_CART: TIBStringField
      FieldName = 'NFE_CART'
      Origin = '"NFE_ITE"."NFE_CART"'
    end
    object nfe_iteNFE_CPROD: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE"."NFE_CPROD"'
    end
    object nfe_iteNFE_CEAN: TIBStringField
      FieldName = 'NFE_CEAN'
      Origin = '"NFE_ITE"."NFE_CEAN"'
      Size = 14
    end
    object nfe_iteNFE_NCM: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'NFE_NCM'
      Origin = '"NFE_ITE"."NFE_NCM"'
      Size = 8
    end
    object nfe_iteNFE_EXTIPI: TIBStringField
      FieldName = 'NFE_EXTIPI'
      Origin = '"NFE_ITE"."NFE_EXTIPI"'
      Size = 3
    end
    object nfe_iteNFE_DCOR: TIBStringField
      FieldName = 'NFE_DCOR'
      Origin = '"NFE_ITE"."NFE_DCOR"'
      Size = 30
    end
    object nfe_iteNFE_XPROD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE"."NFE_XPROD"'
      Size = 120
    end
    object nfe_iteNFE_INFADPROD: TMemoField
      FieldName = 'NFE_INFADPROD'
      Origin = '"NFE_ITE"."NFE_INFADPROD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object nfe_iteNFE_UCOM: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'NFE_UCOM'
      Origin = '"NFE_ITE"."NFE_UCOM"'
      Size = 6
    end
    object nfe_iteNFE_QCOM: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_ITE"."NFE_QCOM"'
      DisplayFormat = '#,0.0000'
      Precision = 18
      Size = 4
    end
    object nfe_iteNFE_RCOM: TIntegerField
      FieldName = 'NFE_RCOM'
      Origin = '"NFE_ITE"."NFE_RCOM"'
    end
    object nfe_iteNFE_VPROD: TIBBCDField
      DisplayLabel = 'Produtos R$'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_ITE"."NFE_VFRETE"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_ITE"."NFE_VSEG"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VDESC: TIBBCDField
      DisplayLabel = 'Vl. Desc.'
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_ITE"."NFE_VDESC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_ITE"."NFE_VOUTRO"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_XLOCEMBARQ: TIBStringField
      FieldName = 'NFE_XLOCEMBARQ'
      Origin = '"NFE_ITE"."NFE_XLOCEMBARQ"'
      Size = 60
    end
    object nfe_iteNFE_UFEMBARQ: TIBStringField
      FieldName = 'NFE_UFEMBARQ'
      Origin = '"NFE_ITE"."NFE_UFEMBARQ"'
      Size = 2
    end
    object nfe_iteNFE_NDI: TIBStringField
      FieldName = 'NFE_NDI'
      Origin = '"NFE_ITE"."NFE_NDI"'
      Size = 10
    end
    object nfe_iteNFE_DDI: TDateField
      FieldName = 'NFE_DDI'
      Origin = '"NFE_ITE"."NFE_DDI"'
    end
    object nfe_iteNFE_XLOCDESEMB: TIBStringField
      FieldName = 'NFE_XLOCDESEMB'
      Origin = '"NFE_ITE"."NFE_XLOCDESEMB"'
      Size = 60
    end
    object nfe_iteNFE_UFDESEMB: TIBStringField
      FieldName = 'NFE_UFDESEMB'
      Origin = '"NFE_ITE"."NFE_UFDESEMB"'
      Size = 2
    end
    object nfe_iteNFE_DDESEMB: TDateField
      FieldName = 'NFE_DDESEMB'
      Origin = '"NFE_ITE"."NFE_DDESEMB"'
    end
    object nfe_iteNFE_CEXPORTADOR: TIBStringField
      FieldName = 'NFE_CEXPORTADOR'
      Origin = '"NFE_ITE"."NFE_CEXPORTADOR"'
      Size = 60
    end
    object nfe_iteNFE_NADICAO: TSmallintField
      FieldName = 'NFE_NADICAO'
      Origin = '"NFE_ITE"."NFE_NADICAO"'
    end
    object nfe_iteNFE_NSEQADIC: TSmallintField
      FieldName = 'NFE_NSEQADIC'
      Origin = '"NFE_ITE"."NFE_NSEQADIC"'
    end
    object nfe_iteNFE_CFABRICANTE: TIBStringField
      FieldName = 'NFE_CFABRICANTE'
      Origin = '"NFE_ITE"."NFE_CFABRICANTE"'
      Size = 60
    end
    object nfe_iteNFE_VDESCDI: TIBBCDField
      FieldName = 'NFE_VDESCDI'
      Origin = '"NFE_ITE"."NFE_VDESCDI"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_XPED: TIBStringField
      FieldName = 'NFE_XPED'
      Origin = '"NFE_ITE"."NFE_XPED"'
      Size = 15
    end
    object nfe_iteNFE_ITEMPED: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE"."NFE_ITEMPED"'
      Size = 6
    end
    object nfe_iteNFE_ORIG: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'NFE_ORIG'
      Origin = '"NFE_ITE"."NFE_ORIG"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_CST: TIBStringField
      DisplayLabel = 'CST'
      FieldName = 'NFE_CST'
      Origin = '"NFE_ITE"."NFE_CST"'
      Size = 3
    end
    object nfe_iteNFE_MODBC: TIBStringField
      FieldName = 'NFE_MODBC'
      Origin = '"NFE_ITE"."NFE_MODBC"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_PREDBC: TIBBCDField
      FieldName = 'NFE_PREDBC'
      Origin = '"NFE_ITE"."NFE_PREDBC"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VBC: TIBBCDField
      FieldName = 'NFE_VBC'
      Origin = '"NFE_ITE"."NFE_VBC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMS: TIBBCDField
      DisplayLabel = 'ICMS %'
      FieldName = 'NFE_PICMS'
      Origin = '"NFE_ITE"."NFE_PICMS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VICMS: TIBBCDField
      DisplayLabel = 'ICMS R$'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_ITE"."NFE_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_MODBCST: TIBStringField
      FieldName = 'NFE_MODBCST'
      Origin = '"NFE_ITE"."NFE_MODBCST"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_MVAST: TIBBCDField
      FieldName = 'NFE_MVAST'
      Origin = '"NFE_ITE"."NFE_MVAST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_PREDBCST: TIBBCDField
      FieldName = 'NFE_PREDBCST'
      Origin = '"NFE_ITE"."NFE_PREDBCST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_ITE"."NFE_VBCST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCSTRET: TIBBCDField
      FieldName = 'NFE_VBCSTRET'
      Origin = '"NFE_ITE"."NFE_VBCSTRET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VICMSSTRET: TIBBCDField
      FieldName = 'NFE_VICMSSTRET'
      Origin = '"NFE_ITE"."NFE_VICMSSTRET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMSST: TIBBCDField
      DisplayLabel = 'ICMS ST %'
      FieldName = 'NFE_PICMSST'
      Origin = '"NFE_ITE"."NFE_PICMSST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VICMSST: TIBBCDField
      DisplayLabel = 'ICMS ST R$'
      FieldName = 'NFE_VICMSST'
      Origin = '"NFE_ITE"."NFE_VICMSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCREDSN: TIBBCDField
      FieldName = 'NFE_PCREDSN'
      Origin = '"NFE_ITE"."NFE_PCREDSN"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCREDICMSSN: TIBBCDField
      FieldName = 'NFE_VCREDICMSSN'
      Origin = '"NFE_ITE"."NFE_VCREDICMSSN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTIPI: TIBStringField
      FieldName = 'NFE_CSTIPI'
      Origin = '"NFE_ITE"."NFE_CSTIPI"'
      Size = 3
    end
    object nfe_iteNFE_VBCIPI: TIBBCDField
      FieldName = 'NFE_VBCIPI'
      Origin = '"NFE_ITE"."NFE_VBCIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'NFE_PIPI'
      Origin = '"NFE_ITE"."NFE_PIPI"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VIPI: TIBBCDField
      DisplayLabel = 'IPI R$'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_ITE"."NFE_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCIMP: TIBBCDField
      FieldName = 'NFE_VBCIMP'
      Origin = '"NFE_ITE"."NFE_VBCIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VDESPADU: TIBBCDField
      FieldName = 'NFE_VDESPADU'
      Origin = '"NFE_ITE"."NFE_VDESPADU"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VIIIMP: TIBBCDField
      FieldName = 'NFE_VIIIMP'
      Origin = '"NFE_ITE"."NFE_VIIIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VIOFIMP: TIBBCDField
      FieldName = 'NFE_VIOFIMP'
      Origin = '"NFE_ITE"."NFE_VIOFIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTPIS: TIBStringField
      FieldName = 'NFE_CSTPIS'
      Origin = '"NFE_ITE"."NFE_CSTPIS"'
      Size = 3
    end
    object nfe_iteNFE_VBCPIS: TIBBCDField
      FieldName = 'NFE_VBCPIS'
      Origin = '"NFE_ITE"."NFE_VBCPIS"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PPIS: TIBBCDField
      DisplayLabel = 'PIS %'
      FieldName = 'NFE_PPIS'
      Origin = '"NFE_ITE"."NFE_PPIS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VPIS: TIBBCDField
      DisplayLabel = 'PIS R$'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_ITE"."NFE_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCPISST: TIBBCDField
      FieldName = 'NFE_VBCPISST'
      Origin = '"NFE_ITE"."NFE_VBCPISST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PPISST: TIBBCDField
      FieldName = 'NFE_PPISST'
      Origin = '"NFE_ITE"."NFE_PPISST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VPISST: TIBBCDField
      FieldName = 'NFE_VPISST'
      Origin = '"NFE_ITE"."NFE_VPISST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTCOFINS: TIBStringField
      FieldName = 'NFE_CSTCOFINS'
      Origin = '"NFE_ITE"."NFE_CSTCOFINS"'
      Size = 3
    end
    object nfe_iteNFE_VBCOFINS: TIBBCDField
      FieldName = 'NFE_VBCOFINS'
      Origin = '"NFE_ITE"."NFE_VBCOFINS"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCOFINS: TIBBCDField
      DisplayLabel = 'COFINS %'
      FieldName = 'NFE_PCOFINS'
      Origin = '"NFE_ITE"."NFE_PCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'COFINS R$'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_ITE"."NFE_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCOFINSST: TIBBCDField
      FieldName = 'NFE_VBCOFINSST'
      Origin = '"NFE_ITE"."NFE_VBCOFINSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCOFINSST: TIBBCDField
      FieldName = 'NFE_PCOFINSST'
      Origin = '"NFE_ITE"."NFE_PCOFINSST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCOFINSST: TIBBCDField
      FieldName = 'NFE_VCOFINSST'
      Origin = '"NFE_ITE"."NFE_VCOFINSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_ITE"."NFE_VBCISSQN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VALIQISSQN: TIBBCDField
      FieldName = 'NFE_VALIQISSQN'
      Origin = '"NFE_ITE"."NFE_VALIQISSQN"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VISSQN: TIBBCDField
      FieldName = 'NFE_VISSQN'
      Origin = '"NFE_ITE"."NFE_VISSQN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CMUNFGISSQN: TIBStringField
      FieldName = 'NFE_CMUNFGISSQN'
      Origin = '"NFE_ITE"."NFE_CMUNFGISSQN"'
      Size = 7
    end
    object nfe_iteNFE_CLISTSERV: TIntegerField
      FieldName = 'NFE_CLISTSERV'
      Origin = '"NFE_ITE"."NFE_CLISTSERV"'
    end
    object nfe_iteNFE_VNF: TIBBCDField
      DisplayLabel = 'Total NF R$'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_ITE"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VUNCOM: TFloatField
      DisplayLabel = 'Pre'#231'o R$'
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE_004"."NFE_VUNCOM"'
      DisplayFormat = '#,0.00###'
    end
    object nfe_iteNFE_VBCSTDEST: TIBBCDField
      FieldName = 'NFE_VBCSTDEST'
      Origin = '"NFE_ITE_004"."NFE_VBCSTDEST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VICMSSTDEST: TIBBCDField
      FieldName = 'NFE_VICMSSTDEST'
      Origin = '"NFE_ITE_004"."NFE_VICMSSTDEST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCUFDEST: TIBBCDField
      FieldName = 'NFE_VBCUFDEST'
      Origin = '"NFE_ITE_004"."NFE_VBCUFDEST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PFCPUFDEST: TIBBCDField
      FieldName = 'NFE_PFCPUFDEST'
      Origin = '"NFE_ITE_004"."NFE_PFCPUFDEST"'
      Precision = 18
      Size = 4
    end
    object nfe_iteNFE_PICMSUFDEST: TIBBCDField
      FieldName = 'NFE_PICMSUFDEST'
      Origin = '"NFE_ITE_004"."NFE_PICMSUFDEST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMSINTER: TIBBCDField
      FieldName = 'NFE_PICMSINTER'
      Origin = '"NFE_ITE_004"."NFE_PICMSINTER"'
      Precision = 18
      Size = 4
    end
    object nfe_iteNFE_PICMSINTERPART: TIBBCDField
      FieldName = 'NFE_PICMSINTERPART'
      Origin = '"NFE_ITE_004"."NFE_PICMSINTERPART"'
      Precision = 18
      Size = 4
    end
    object nfe_iteNFE_VFCPUFDEST: TIBBCDField
      FieldName = 'NFE_VFCPUFDEST'
      Origin = '"NFE_ITE_004"."NFE_VFCPUFDEST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VICMSUFDEST: TIBBCDField
      FieldName = 'NFE_VICMSUFDEST'
      Origin = '"NFE_ITE_004"."NFE_VICMSUFDEST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VICMSUFREMET: TIBBCDField
      FieldName = 'NFE_VICMSUFREMET'
      Origin = '"NFE_ITE_004"."NFE_VICMSUFREMET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CNPJREF: TIBStringField
      FieldName = 'NFE_CNPJREF'
      Origin = '"NFE_ITE_004"."NFE_CNPJREF"'
      Size = 14
    end
    object nfe_iteNFE_NFCI: TIBStringField
      FieldName = 'NFE_NFCI'
      Origin = '"NFE_ITE_004"."NFE_NFCI"'
      Size = 40
    end
    object nfe_iteC_CST: TStringField
      DisplayLabel = 'CST'
      FieldKind = fkCalculated
      FieldName = 'C_CST'
      Size = 5
      Calculated = True
    end
    object nfe_iteNFE_CEST: TIBStringField
      DisplayLabel = 'CEST'
      FieldName = 'NFE_CEST'
      Origin = '"NFE_ITE_004"."NFE_CEST"'
      Size = 7
    end
    object nfe_itePSCN: TIBBCDField
      FieldName = 'PSCN'
      Origin = '"NFE_ITE_004"."PSCN"'
      Precision = 9
      Size = 2
    end
    object nfe_itePSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"NFE_ITE_004"."PSBR"'
      Precision = 18
      Size = 3
    end
    object nfe_itePSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"NFE_ITE_004"."PSLQ"'
      Precision = 18
      Size = 3
    end
  end
  object dtsnfe_ite: TDataSource
    DataSet = nfe_ite
    OnDataChange = dtsnfe_iteDataChange
    Left = 136
    Top = 256
  end
  object nfe_tra: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_TRA')
    Left = 104
    Top = 352
    object nfe_traID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_traNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_TRA"."NFE_CCAB"'
    end
    object nfe_traNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_TRA"."NFE_CTRA"'
    end
    object nfe_traNFE_MODFRETE: TIBStringField
      FieldName = 'NFE_MODFRETE'
      Origin = '"NFE_TRA"."NFE_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object nfe_traNFE_RETTRANSP: TIBStringField
      FieldName = 'NFE_RETTRANSP'
      Origin = '"NFE_TRA"."NFE_RETTRANSP"'
      FixedChar = True
      Size = 1
    end
    object nfe_traNFE_VSERV: TIBBCDField
      FieldName = 'NFE_VSERV'
      Origin = '"NFE_TRA"."NFE_VSERV"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_VBCRET: TIBBCDField
      FieldName = 'NFE_VBCRET'
      Origin = '"NFE_TRA"."NFE_VBCRET"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_PICMSRET: TIBBCDField
      FieldName = 'NFE_PICMSRET'
      Origin = '"NFE_TRA"."NFE_PICMSRET"'
      Precision = 9
      Size = 2
    end
    object nfe_traNFE_VICMSRET: TIBBCDField
      FieldName = 'NFE_VICMSRET'
      Origin = '"NFE_TRA"."NFE_VICMSRET"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_CFOP: TIBStringField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_TRA"."NFE_CFOP"'
      Size = 4
    end
    object nfe_traNFE_CMUNFG: TIBStringField
      FieldName = 'NFE_CMUNFG'
      Origin = '"NFE_TRA"."NFE_CMUNFG"'
      Size = 7
    end
    object nfe_traNFE_PLACA: TIBStringField
      FieldName = 'NFE_PLACA'
      Origin = '"NFE_TRA"."NFE_PLACA"'
      Size = 8
    end
    object nfe_traNFE_UF: TIBStringField
      FieldName = 'NFE_UF'
      Origin = '"NFE_TRA"."NFE_UF"'
      Size = 2
    end
    object nfe_traNFE_RNTC: TIBStringField
      FieldName = 'NFE_RNTC'
      Origin = '"NFE_TRA"."NFE_RNTC"'
    end
    object nfe_traNFE_QVOL: TSmallintField
      FieldName = 'NFE_QVOL'
      Origin = '"NFE_TRA"."NFE_QVOL"'
    end
    object nfe_traNFE_ESP: TIBStringField
      FieldName = 'NFE_ESP'
      Origin = '"NFE_TRA"."NFE_ESP"'
      Size = 60
    end
    object nfe_traNFE_MARCA: TIBStringField
      FieldName = 'NFE_MARCA'
      Origin = '"NFE_TRA"."NFE_MARCA"'
      Size = 60
    end
    object nfe_traNFE_NVOL: TIBStringField
      FieldName = 'NFE_NVOL'
      Origin = '"NFE_TRA"."NFE_NVOL"'
      Size = 60
    end
    object nfe_traNFE_PSLQ: TIBBCDField
      FieldName = 'NFE_PSLQ'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      Precision = 18
      Size = 3
    end
    object nfe_traNFE_PSBR: TIBBCDField
      FieldName = 'NFE_PSBR'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      Precision = 18
      Size = 3
    end
    object nfe_traNFE_NLACRE: TIBStringField
      FieldName = 'NFE_NLACRE'
      Origin = '"NFE_TRA"."NFE_NLACRE"'
      Size = 60
    end
  end
  object nfe_log: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_LOG'
      'WHERE CDNF = :NFE_CDNF'
      'ORDER BY DTSA DESC')
    Left = 104
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end>
    object nfe_logID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_LOG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nfe_logIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"NFE_LOG"."IDEP"'
    end
    object nfe_logCDNF: TLargeintField
      FieldName = 'CDNF'
      Origin = '"NFE_LOG"."CDNF"'
    end
    object nfe_logDTEM: TDateTimeField
      FieldName = 'DTEM'
      Origin = '"NFE_LOG"."DTEM"'
    end
    object nfe_logDTSA: TDateTimeField
      DisplayLabel = 'Dt. Sa'#237'da'
      FieldName = 'DTSA'
      Origin = '"NFE_LOG"."DTSA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object nfe_logDESTINATARIO: TIBStringField
      FieldName = 'DESTINATARIO'
      Origin = '"NFE_LOG"."DESTINATARIO"'
      Size = 60
    end
    object nfe_logVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"NFE_LOG"."VENDEDOR"'
      Size = 40
    end
    object nfe_logREPRESENTANTE: TIBStringField
      FieldName = 'REPRESENTANTE'
      Origin = '"NFE_LOG"."REPRESENTANTE"'
      Size = 60
    end
    object nfe_logTRANSPORTADORA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'TRANSPORTADORA'
      Origin = '"NFE_LOG"."TRANSPORTADORA"'
      Size = 60
    end
    object nfe_logMOTORISTA: TIBStringField
      DisplayLabel = 'Motorista'
      FieldName = 'MOTORISTA'
      Origin = '"NFE_LOG"."MOTORISTA"'
      Size = 40
    end
    object nfe_logPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"NFE_LOG"."PLACA"'
      Size = 10
    end
    object nfe_logVOLUME: TIBStringField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"NFE_LOG"."VOLUME"'
    end
    object nfe_logPESOB: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOB'
      Origin = '"NFE_LOG"."PESOB"'
      Precision = 18
      Size = 3
    end
    object nfe_logPESOL: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PESOL'
      Origin = '"NFE_LOG"."PESOL"'
      Precision = 18
      Size = 3
    end
    object nfe_logPEDIDO: TIBStringField
      FieldName = 'PEDIDO'
      Origin = '"NFE_LOG"."PEDIDO"'
    end
    object nfe_logDTPV: TDateTimeField
      FieldName = 'DTPV'
      Origin = '"NFE_LOG"."DTPV"'
    end
    object nfe_logQTPC: TSmallintField
      FieldName = 'QTPC'
      Origin = '"NFE_LOG"."QTPC"'
    end
    object nfe_logSEPARADOR: TIBStringField
      FieldName = 'SEPARADOR'
      Origin = '"NFE_LOG"."SEPARADOR"'
      Size = 40
    end
    object nfe_logCONFERENTE: TIBStringField
      FieldName = 'CONFERENTE'
      Origin = '"NFE_LOG"."CONFERENTE"'
      Size = 40
    end
    object nfe_logDTCONF: TDateTimeField
      FieldName = 'DTCONF'
      Origin = '"NFE_LOG"."DTCONF"'
    end
    object nfe_logINFAD: TMemoField
      FieldName = 'INFAD'
      Origin = '"NFE_LOG"."INFAD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object DTSnfe_log: TDataSource
    DataSet = nfe_log
    Left = 136
    Top = 288
  end
  object Titulo: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT PK.ID AS ID,PK.NFE_PARC AS P,PK.NFE_CDNF AS CDNF,'
      
        '       PK.NFE_TITU AS TituloNumeroDocumento,PK.NFE_TITU AS Titul' +
        'oEmissaoBoleto,PK.NFE_DNFE AS TituloDataEmissao,'
      
        '       PK.NFE_DVEN AS TituloDataVencimento ,PK.NFE_VDUP AS Titul' +
        'oValor,'
      '       FK.ID AS IDCL,'
      '       FK.CLI_RAZA AS SacadoNome,FK.CLI_CNPJ AS SacadoCPFCNPJ,'
      
        '       FK.CLI_MAIL AS SacadoEmail,FK.CLI_DDD||FK.CLI_TEL1 AS Sac' +
        'adoCelular,FK.CLI_DD5||FK.CLI_CEL AS SacadoTelefone,'
      
        '       FK.CLI_TLOG||'#39' '#39'||FK.CLI_LOGR AS SacadoEnderecoLogradouro' +
        ',FK.CLI_NUME AS SacadoEnderecoNumero,FK.CLI_CEP AS SacadoEnderec' +
        'oCEP,'
      
        '       FK.CLI_BAI AS SacadoEnderecoBairro,FK.CLI_CID AS SacadoEn' +
        'derecoCidade,FK.CLI_ESTA AS SacadoEnderecoUF,'#39'BRASIL'#39' AS SacadoE' +
        'nderecoPais'
      'FROM   NFE_DUP_004 AS PK'
      'JOIN   CAD_CLI     AS FK ON (FK.ID = PK.NFE_CFAV)'
      'WHERE  PK.NFE_CDNF = :CDNF')
    Left = 104
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'CDNF'
        ParamType = ptInput
      end>
    object TituloID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_DUP_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TituloP: TIntegerField
      FieldName = 'P'
      Origin = '"NFE_DUP_004"."NFE_PARC"'
    end
    object TituloCDNF: TIntegerField
      FieldName = 'CDNF'
      Origin = '"NFE_DUP_004"."NFE_CDNF"'
    end
    object TituloTITULONUMERODOCUMENTO: TIBStringField
      FieldName = 'TITULONUMERODOCUMENTO'
      Origin = '"NFE_DUP_004"."NFE_TITU"'
      Size = 30
    end
    object TituloTITULOEMISSAOBOLETO: TIBStringField
      FieldName = 'TITULOEMISSAOBOLETO'
      Origin = '"NFE_DUP_004"."NFE_TITU"'
      Size = 30
    end
    object TituloTITULODATAEMISSAO: TDateField
      FieldName = 'TITULODATAEMISSAO'
      Origin = '"NFE_DUP_004"."NFE_DNFE"'
    end
    object TituloTITULODATAVENCIMENTO: TDateField
      FieldName = 'TITULODATAVENCIMENTO'
      Origin = '"NFE_DUP_004"."NFE_DVEN"'
    end
    object TituloTITULOVALOR: TIBBCDField
      FieldName = 'TITULOVALOR'
      Origin = '"NFE_DUP_004"."NFE_VDUP"'
      Precision = 18
      Size = 2
    end
    object TituloIDCL: TIntegerField
      FieldName = 'IDCL'
      Origin = '"CAD_CLI"."ID"'
      Required = True
    end
    object TituloSACADONOME: TIBStringField
      FieldName = 'SACADONOME'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object TituloSACADOCPFCNPJ: TIBStringField
      FieldName = 'SACADOCPFCNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object TituloSACADOEMAIL: TIBStringField
      FieldName = 'SACADOEMAIL'
      Origin = '"CAD_CLI"."CLI_MAIL"'
      Size = 60
    end
    object TituloSACADOCELULAR: TIBStringField
      FieldName = 'SACADOCELULAR'
      ProviderFlags = []
      Size = 11
    end
    object TituloSACADOTELEFONE: TIBStringField
      FieldName = 'SACADOTELEFONE'
      ProviderFlags = []
      Size = 11
    end
    object TituloSACADOENDERECOLOGRADOURO: TIBStringField
      FieldName = 'SACADOENDERECOLOGRADOURO'
      ProviderFlags = []
      Size = 76
    end
    object TituloSACADOENDERECONUMERO: TIBStringField
      FieldName = 'SACADOENDERECONUMERO'
      Origin = '"CAD_CLI"."CLI_NUME"'
      Size = 10
    end
    object TituloSACADOENDERECOCEP: TIBStringField
      FieldName = 'SACADOENDERECOCEP'
      Origin = '"CAD_CLI"."CLI_CEP"'
      Size = 9
    end
    object TituloSACADOENDERECOBAIRRO: TIBStringField
      FieldName = 'SACADOENDERECOBAIRRO'
      Origin = '"CAD_CLI"."CLI_BAI"'
      Size = 40
    end
    object TituloSACADOENDERECOCIDADE: TIBStringField
      FieldName = 'SACADOENDERECOCIDADE'
      Origin = '"CAD_CLI"."CLI_CID"'
      Size = 40
    end
    object TituloSACADOENDERECOUF: TIBStringField
      FieldName = 'SACADOENDERECOUF'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object TituloSACADOENDERECOPAIS: TIBStringField
      FieldName = 'SACADOENDERECOPAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
  end
  object DTSTitulo: TDataSource
    DataSet = Titulo
    Left = 136
    Top = 320
  end
end
