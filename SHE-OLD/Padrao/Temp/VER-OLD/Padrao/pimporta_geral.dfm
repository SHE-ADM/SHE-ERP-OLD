inherited frmimporta_geral: Tfrmimporta_geral
  Left = 390
  Top = 29
  ActiveControl = edTXT
  AlphaBlendValue = 0
  Caption = 'Importa'#231#227'o Geral'
  ClientHeight = 627
  ClientWidth = 1076
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 1076
    Height = 511
    inherited PaintBox: TPaintBox
      Top = 97
      Width = 1076
      Height = 414
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 1076
      Height = 97
      Align = alTop
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label8: TLabel
        Left = 4
        Top = 72
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
      object clCAD_PRO_TREL: TLabel
        Left = 4
        Top = 24
        Width = 46
        Height = 14
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 4
        Top = 48
        Width = 39
        Height = 14
        Caption = 'Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edTXT: TdxMaskEdit
        Left = 52
        Top = 67
        Width = 110
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
        TabOrder = 0
        CharCase = ecUpperCase
        IgnoreMaskBlank = False
        MaxLength = 20
        OnValidate = edTXTValidate
        StoredValues = 6
      end
      object cbFANT: TdxImageEdit
        Tag = 1
        Left = 52
        Top = 19
        Width = 262
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
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 1
        AutoSize = False
        DropDownRows = 15
        Descriptions.Strings = (
          '')
        ImageIndexes.Strings = (
          '0')
        Values.Strings = (
          '')
        Height = 24
      end
      object cbTIPO: TdxImageEdit
        Tag = 1
        Left = 52
        Top = 43
        Width = 262
        Hint = 'Cor'
        Color = clWhite
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clGray
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 2
        AutoSize = False
        OnChange = cbTIPOChange
        DropDownRows = 15
        Descriptions.Strings = (
          'PEDIDOS'
          'DEVOLU'#199#213'ES'
          'PROGRAMA'#199#213'ES'
          'ROMANEIOS'
          'NOTAS FISCAIS'
          'ESTOQUE'
          'CDI'
          'XML')
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
          'PEDIDOS'
          'DEVOLU'#199#213'ES'
          'PROGRAMA'#199#213'ES'
          'ROMANEIOS'
          'NOTAS FISCAIS'
          'ESTOQUE'
          'CDI'
          'XML')
        Height = 24
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 97
      Width = 1076
      Height = 414
      Align = alClient
      Caption = 'Sum'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object pcSUM: TdxPageControl
        Left = 2
        Top = 16
        Width = 1072
        Height = 396
        ActivePage = tsSUM
        Align = alClient
        HideButtons = False
        HotTrack = False
        Images = imageITEM
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        Style = dxtsFlatButtons
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object tsSUM: TdxTabSheet
          Caption = 'Pedido de Venda'
          object dbgSUM: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1072
            Height = 350
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
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = dbgSUMKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtsimp_ite
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HideSelectionColor = 14789952
            HighlightColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            object dbgSUMROM_ITEM: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_ITEM'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgSUMROM_CPRO: TdxDBGridMaskColumn
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_CPRO'
            end
            object dbgSUMROM_DPRO: TdxDBGridMaskColumn
              Tag = 350
              Width = 300
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DPRO'
            end
            object dbgSUMROM_DGCP: TdxDBGridMaskColumn
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DGCP'
            end
            object dbgSUMROM_DUNI: TdxDBGridMaskColumn
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DUNI'
            end
            object dbgSUMROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgSUMROM_UNIT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_UNIT'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'ROM_UNIT'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgSUMROM_TOTA: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TOTA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_TOTA'
              SummaryFooterFormat = 'R$ #,0.00'
            end
          end
        end
        object tsXML: TdxTabSheet
          Caption = 'XML'
          ImageIndex = 6
          object pcXML: TdxPageControl
            Left = 0
            Top = 0
            Width = 1072
            Height = 350
            ActivePage = tsITEM
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
            object tsITEM: TdxTabSheet
              Caption = 'Itens'
              object dbgNFE_ITE: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1072
                Height = 326
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
                ParentCtl3D = False
                TabOrder = 0
                OnKeyDown = dbgNFE_ITEKeyDown
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                DataSource = dtsimp_nit
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                object dbgNFE_ITENFE_ITEMPED: TdxDBGridMaskColumn
                  Width = 45
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_ITEMPED'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object dbgNFE_ITENFE_CFOP: TdxDBGridMaskColumn
                  Width = 57
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_CFOP'
                end
                object dbgNFE_ITENFE_CPROD: TdxDBGridMaskColumn
                  Width = 104
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_CPROD'
                end
                object dbgNFE_ITENFE_NCM: TdxDBGridMaskColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_NCM'
                end
                object dbgNFE_ITENFE_XPROD: TdxDBGridMaskColumn
                  Width = 475
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_XPROD'
                end
                object dbgNFE_ITENFE_UCOM: TdxDBGridMaskColumn
                  Width = 35
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_UCOM'
                end
                object dbgNFE_ITENFE_QCOM: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_QCOM'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'NFE_QCOM'
                  SummaryFooterFormat = '#,0.00'
                end
                object dbgNFE_ITENFE_VUNCOM: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VUNCOM'
                  SummaryFooterField = 'NFE_VUNCOM'
                end
                object dbgNFE_ITENFE_VPROD: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VPROD'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'NFE_VPROD'
                  SummaryFooterFormat = '#,0.00'
                end
              end
            end
            object tsFAV: TdxTabSheet
              Caption = 'Favorecido'
              object dxDBGrid2: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1072
                Height = 309
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
                ParentCtl3D = False
                TabOrder = 0
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              end
              object dxDBGrid1: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1072
                Height = 309
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
                ParentCtl3D = False
                TabOrder = 1
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                DataSource = dtsimp_nca
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                object dxDBGrid1NFE_CDNF: TdxDBGridMaskColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_CDNF'
                end
                object dxDBGrid1NFE_DEMI: TdxDBGridDateColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_DEMI'
                end
                object dxDBGrid1NFE_DSAI: TdxDBGridDateColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_DSAI'
                end
                object dxDBGrid1NFE_VBC: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VBC'
                end
                object dxDBGrid1NFE_VICMS: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VICMS'
                end
                object dxDBGrid1NFE_VPROD: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VPROD'
                end
                object dxDBGrid1NFE_VFRETE: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VFRETE'
                end
                object dxDBGrid1NFE_VII: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VII'
                end
                object dxDBGrid1NFE_VIPI: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VIPI'
                end
                object dxDBGrid1NFE_VPIS: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VPIS'
                end
                object dxDBGrid1NFE_VCOFINS: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VCOFINS'
                end
                object dxDBGrid1NFE_VOUTRO: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VOUTRO'
                end
                object dxDBGrid1NFE_VNF: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VNF'
                end
              end
            end
            object tsTRA: TdxTabSheet
              Caption = 'Transportadora'
              object dxDBGrid3: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1072
                Height = 309
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
                ParentCtl3D = False
                TabOrder = 0
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              end
              object dbgNFE_TRA: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1072
                Height = 309
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                Color = clBtnFace
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 1
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                object dbgNFE_TRANFE_RAZA: TdxDBGridMaskColumn
                  Width = 252
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_RAZA'
                end
                object dbgNFE_TRANFE_ESP: TdxDBGridMaskColumn
                  Width = 123
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_ESP'
                end
                object dbgNFE_TRANFE_QVOL: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_QVOL'
                end
                object dbgNFE_TRANFE_PSLQ: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_PSLQ'
                end
                object dbgNFE_TRANFE_PSBR: TdxDBGridMaskColumn
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_PSBR'
                end
              end
            end
            object tsINF: TdxTabSheet
              Caption = 'Informa'#231#245'es Adicionais'
              object memoINFCPL: TdxDBMemo
                Left = 0
                Top = 0
                Width = 1072
                Align = alClient
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                DataField = 'NFE_INFCPL'
                DataSource = dtsimp_nca
                Height = 309
              end
            end
            object tsDUP: TdxTabSheet
              Caption = 'Duplicatas'
              object dxDBGrid4: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1072
                Height = 256
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
                ParentCtl3D = False
                TabOrder = 0
                AutoSearchColor = 9395
                AutoSearchTextColor = clWhite
                DataSource = dtsimp_ndu
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                object dxDBGrid4NFE_TITU: TdxDBGridMaskColumn
                  Width = 109
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_TITU'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object dxDBGrid4NFE_DVEN: TdxDBGridDateColumn
                  Width = 74
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_DVEN'
                end
                object dxDBGrid4NFE_VDUP: TdxDBGridCurrencyColumn
                  HeaderAlignment = taRightJustify
                  Width = 90
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_VDUP'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'NFE_VDUP'
                  SummaryFooterFormat = 'R$ #,0.00'
                  Nullable = False
                end
              end
            end
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 608
    Width = 1076
  end
  inherited PNLMenu: TPanel
    Width = 1076
    inherited SpeedBar2: TSpeedBar
      Width = 1076
      inherited siCAN: TSpeedItem [4]
      end
      inherited siSAIR: TSpeedItem [5]
      end
      inherited siSAV: TSpeedItem [6]
        Visible = False
      end
      inherited siVAL: TSpeedItem [7]
        Left = 3
        Visible = True
        OnDblClick = siVALDblClick
      end
    end
  end
  inherited imageOPC: TImageList
    Top = 48
  end
  inherited imageITEM: TImageList
    Top = 48
    Bitmap = {
      494C010109000E00040024002400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000900000009000000001002000000000000044
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
      00000000000000000000000000000000000000000000898DB1008A8CA800C4C4
      ED008889A600A8ABD8009394B900BEC2E800C7C9F300878AA700D6D8FF008B8D
      B100BCC2E9006D728A00948EAA00B6A7CB00AFA5C900B0A6CA00B3A6CA00B2A5
      C900B3A6CA00B3A8CC00BCB0D200686074009BA0CE008284A0009192B9007B7F
      99009195BD00C4C6ED008F90B100BEC4ED00A6AED8008E8FAE00727691006F71
      8900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008689A5007677920052566C00898C
      AD009191B3008485A000A0A3D0009BA0CC00AFB2DD00989CC900A8B0DB00AFB2
      DD00CED2FF00C6CAF600979CC900C0B3D500B6A8CE00B2A6CC00B2A8CC00B6A7
      CB00B6A7CC00C1B7D50057556B00B7C0E9009396C500D3D6FF0084869E00B9BC
      E400A2A7D5009598C300A6ABD30071768F00B9C1E7009298C1008D8EAE007B7B
      8F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009394BD00C4C9EF008385A1009092
      B8004B506500A7A6D500BEC1E900898DAD009194BD00C4C7F000A2A8D5009395
      BD00A3A8DC00CBCFFF00CBCFFF005B5D7300B3A6CD00B2A8CE00B2A6CC00B3A7
      CD00B3A7CD005D5F7800BCC7F3008689A900B6B7DD00A0A5D2009498C200A8AE
      DB009FA1CF00979AC700989DC900B0B9E3004D5169008D8DAF008D8EAE00C0C5
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4F64004A4D6300CACFFD009195
      C0008F91B200C5CAFB008D90B500C0C4EC00A0A5D100BDC3EA00999ECB00B2B9
      E300C6CAF7008286A300C3C8F600C4C9F6008285A2008D88A200B3A7CD00B6A8
      CE00A29ABE00C1C8F2008486A400D5D6FF009498C0009599C300B6BDE3009497
      C0008F92B800ABAFDB00ACB2E0008688A7009090B1008687A2009FA1CE005558
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4D62003A3C550060657E009395
      BE00CFD3FF007B8199009698C000686E8900AEB6DF00A7B0D900DADEFF008589
      A700B2B9E6008D8DAE007B7E9800CFD2FF00A3ABD900ACB6DF00C2B8D8008F8A
      A5009196C1008D8EB100D7DBFF00959AC500AEB7DF00A0A5D100BCC2E9009196
      BE00A7A7D3008589A8006B718D008688A300C3C8F100A8B0DB003B3A4D00211D
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2D4300212437001F213400262B
      3A00464B5D00D0D4FF00AEB3E0008A8DAD009094C000C2C6F6008D92BC008F91
      B3008587A300A6B3E000CACDFE008F92B900CDD2FF00898BAE0066657C00A1AE
      DD00B6BCE900AEB7E000ACB7DF009DA2CF00BCC3EA00B6BDE4009196BE00A0A5
      D100686B86009193B8009194B900B2B9E30053576C0024253000201D2D001D1A
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002120320020233600262B3A00262A
      3900242531002A2C39006A708900CCD2FF008689A5009497C00069728A009193
      B900B9C1EA009BA0CD00A5ACD500B6BCE3009EA3CF00C8CCFA00AFA5CC00AEA6
      CC00CACDFE00C0C5ED00C0C5EE00A3ACD600C6CAF600BDC4EC008686A300A2AB
      D900888AA500B3BEEA00BEC4EF00232326002C2831002F313A00313345002F32
      4500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034394C003C4155003B404F003C44
      4D003E414B0035363D002A282B0025212400C6CAF900BCC4F000A2A7D2007981
      9C00C5CBF900BCC2E900A0A5D100C7CCFB00B7B9DD00A19ABE00A7A0C200A69F
      C100A59EBE00BEBCE300B6BEE600BCC3EA00A6AFD9007E83A0008689A6008283
      9C00C4CAF9005355620028241F00464643004B4C4C00474646004C4F61005054
      6900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065687E00696D830080829600605E
      69003E392300444134004A4A4600423C36002C24200058596900BDC3ED009598
      C1008D8FB1007F83A100CFD3FF00A198B800A29BBD00A29BBE00A29BBE00A29B
      BE00A29BBE00A19ABD00A096B600A79FC300C9CAF7009193B800A6ABD600CACF
      FF0033281C003E2E1C0045361F00534A17006860420085848D008687A1006B6F
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000696A8200696D7D009191A8009594
      A9009D9AB3007B776E005E54320052421F003E281B00312018004A362B00C5BA
      CE00C8C4D500A696A3009F919C00A293A000A394A100A395A100A5959E00A595
      9E00A5949D00A2919800A5909300A28F8D00A18E8700C2A3A000A5918100917D
      5D00584218005C450F006F541200A19DAB00A39DA500A69D9E00918F9E007E7F
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E70820075747D00AFA3AB00C8BD
      AF00CBC3B300C0B2B200B7ACB90098959D009C720F00A57D1B00A37E1B00A17E
      1C00A17F1C009F7C20009D7B1B009B771F009A781800A07C1800A5821F00A682
      2300A3811B009D7B18009C792000A17C1F00A2801C00B3842700BC862400BC86
      2300BD894200B3A2A400C3BABD00CFC5A700DDD7C500F3F0DD00ABA1A5008B8B
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075748300827E8000D7CEB200F6ED
      C500F6D65600E4DDD300D7D2C500CEC5B500B6B0C100A58E7C00A87A1700A17C
      1C009F791F009A761F0098741F0095711C0095711C00997520009E7A1F009E79
      1F009B791C0098741B0098731C009C752000A07B2300B2822300C7861200C491
      6400CEC6B300DAD1B100E4DECD00FEF6CB00F9F6CA00FAF8D600C9C1AE009491
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7C83008C898300ECDEBC00FFFF
      E700FFFFE700FFE99200F8D74D00F6DE9D00D9D2C900CEC5B900C8C2C900997B
      310098751F0095701B00936D180091681C0091681C00926B1B00957020009571
      1C0095701C00936E1C00946E1F0094701B0099741C00B7801400B0A8BA00D4C9
      B100F6F0DD00FBF7D000FEF7C900F9FBDF00FBFBE000FAFADD00D6CCAE009A97
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000837F8300968F8600F3E6C200FFFB
      E300FEFBE800FFFFEC00FFFFEA00FFF8D500F2D64500EDDA9900E6E0E300C3C1
      CE009468070091681B008F631C008D5D1F008D5C1C008E5F1F008F631B008F64
      1B008F631B008E6118008F621B0091671B00936D1C00CA821300D6D2BD00F8F7
      E700FAFAE200FEFAE800FBF9E400FAFAE300F7F8DF00F8FADF00DACE9E00A19B
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000847E7B00A1938500FAEECE00FEFA
      DF00FFFBE900FFFFED00FFFFED00FFFEED00FFFEE900FFF8CD00F9DD6900C2B0
      B200916918008D621F008959180089521B0089521B00895318008A5617008A56
      18008B561B008B571B008B571B008B5C1B008F641B00D1871B00E8E0BE00F9FA
      E400FBFAE700FBFAE700FBFAE600FAFAE300FAFAE300F9FADF00DECD8200A79E
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000087827100B09A8200FAF9DD00FFFB
      E600FFFEED00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEC00FFFEE400CA9F
      86008F681C0088591B0085501800834A17008449180084481B00864A1B00864B
      1B00864C1800864D17008650180087531800895B1800CB842000EDD9A400FBFB
      E800FFFEEA00FBFBE700FFFBE800FEFBE800FAFAE300F9F9E300E2CB5300B2A3
      A800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091897C00C3A88C00FFFEE900FFFF
      EA00FFFFEE00FFFFF200FFFFF300FFFFF300FFFFF100FFFFEF00FFFAD500CA8D
      49008D651B0083531C007F4A18007B4018007E3E17007E3E1700813F1400813F
      1400824217008144170081461800834A170085511B00BA7B2300E7CB7800FEFE
      EA00FFFEED00FFFEEA00FEFBE800FEFBE800FEFEE600FAFBE400ECCF4200BDAE
      B100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000968F7C00CEC39D00FFFFEE00FFFF
      EE00FFFFF000FFFFF300FFFFF200FFFFF600FFFFF300FFFFF100FFF1AA00C27D
      1800885E1B00774C140074411400753617007533130076341400773513007736
      140078361400793914007B3C17007B4014007A4814009E6F1C00DEAC4500FFFF
      EC00FFFFF000FFFEED00FFFBEA00FFFEEC00FEFBE800FAF9E700F2D76200C4BA
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B917A00D9CEAD00FEFEE600FFFE
      ED00FFFFEF00FFFFF200FFFFF100FFFFF200FFFFF100FFFFF000FBE07300B070
      0F00805518006D44130067341400652E1400682E0F00682D14006A2C1400692D
      12006B2D17006E2F14006E31140070351400703C17008D621C00D6931F00FEFB
      ED00FFFEEE00FFFEED00FFFBEC00FFFBEA00FEFBE800FAFAE700F8E29200CAC3
      B200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3937500E0D6BC00FEFBE600FFFF
      EC00FFFEED00FFFFF100FFFFF200FFFFF200FFFFF200FFFFF200F7D753009C68
      1700774E1800603B14005B2F12005A2813005A2813005A2712005D2813005F27
      1300602A1300642C130064341300643514006839140082571800CA861200FAF8
      E600FFFFEF00FFFBEE00FFFEEC00FFFEEA00FEFBE800FAF9E600FBF2C200D5C7
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8957500E9DBC700FEFBE800FFFF
      EF00FFFFEE00FFFFF200FFFFF200FFFFF600FFFFF200FFFFE900F2D77100915E
      1F006742140056311300502714004C2412004C2412004C2412004E250F005025
      130055270F0071481400CB912700C48B230099771F0081521800B2741400F3E8
      D000FFFBEF00FFFBEF00FFFEEE00FFFEEA00FFFEE900FBFAE700FBFADF00DDCC
      7D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCA79200EEE0C300FFFFED00FFFF
      EF00FFFFF000FFFFF200FFFFF300FFFFF600FFFFF300FFF3C000ECDCAF008654
      18005E3A1300502814004B240E0047210E0046210E0046200E004A2312004F26
      0F00754A1400865B1B0053311300552F12005C351300A17B1F00B07A2000E5D6
      A700FFFFEE00FFFFF000FFFEEF00FFFEE900FFFEE900FEFAE800FBFEDF00E9D3
      6D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBBCAF00ECDEC300FFFEED00FFFF
      EC00FFFFEE00FFFFF200FFFFF200FFFFF300FFFFF000FBE38700E4DFDF007F4D
      140064391400512C12004F2B0F00754B170050260F0048211200562C13009470
      1F00946F1C00441F0F00411B0B00421F0E00461F0E0056331200986D1F00DABC
      7100FFFBEC00FFFBEC00FFFEEC00FFFEE900FEFBE800FAFAE300FBF8DB00F1D6
      6500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CABEBA00EEDECB00FEFBE300FBFA
      E600FFFEEC00FFFFEE00FFFEF000FFFFF200FFFFF000F8DA5B00DBD7D900A784
      2300B3892400A17C2300B087240077471B00B0862400936B1F008B631B00532A
      1300441B0F003A130F003B1312003C1513003B15120045210B0069411300C08A
      3F00FBFBE800FBFBEA00FBFBE900FAFAE300FBFAE000FEF9DB00FEF9D500E6CC
      5C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0B2C100DCD4C900FAF7E600FEFA
      E900FFFBEE00FFFFF200FFFFF000FFFFEE00FFFBE400E6CB4B00C9B0A2006133
      130053281300592B1200522512003C130E00411A0E0050250F003A120F003510
      0F003610120035100E0035110F0036110F0036100F003B130F004B250F008D5A
      0F00F9E5AF00F9ECC100FAECCD00FAF0DD00F7EEDD00F6ECDB00DAD5C700BEB6
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2BDDB00CCC9DD00DDD8D900E3DB
      D600ECDFD900F7E9DF00F7EEE400FAF2EA00FBF2EC00DAD7E30093764D00461A
      0F003A12120035100E0033100F00310C0B00320D0E00320D0E00310D0E003210
      0E002F0C0B00310D0B0032100F0032100F0032100F0034100F0039130E004F1D
      0000C9C5D300CFCAD800D2CCDB00D2CCE000D0CDE200CECAE000BEBAD800AEA8
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000280000004A1A000086571B00916A
      30009C7C4100B8906D00C9A18900CCA79400C6A5A000B298A200612E04003311
      0E002E0B0B002C090E002C07120027060F0027060F0027060F002A060F002707
      0E002C070E002C090F002C090E002B090E002B090E002E090E00310C0E003512
      0E00582F1F005E3317005B2C0B00522100004A150000410D0000280000002000
      0600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000250713002C0B1200491F0F005328
      12005E33120071421400774814007C4C17006A3C130055280F0040150B002A07
      0E0027060F0026050F0025050F0026050F0025050F0026050F0026050F002605
      0F002706120026050F0026050F0026050F0025050F0028060F0028060F002A06
      0F00320C0F00320D0F00330D0F00320C0E002C0B0F0028060F00230514002105
      1700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000210717002305140026070F002D0B
      0F00340D12003E150E0041170F0042170F003B110E002E0C0E002A090E002105
      0F00240413002504130025041300230012002401120023011200230413002504
      1300230412002505120025050F002504130025050F0023041300230413002601
      130024040F002505120025051200230414002104130021051300210414001D04
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F05170021051700210514002105
      17002004120024051300260612002606120024040F002405130021040F002301
      1300200113002001130020011300200113002301130021011300210113002101
      1300210113002101130023001200210112002101130021011300210013002101
      1200210413002001120020011300200414001D0113001F001300200414001D04
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020061800200414001F0113001F01
      13001F0113002001130020011300210113002001130020011300200113001F01
      13001F0113001D0012001F0113001F0113001F0113001F0113001F0113002001
      1300200113002001130020011300210113001F0012001F0113001F0113001F01
      13001F0113001F0113001F0113001F0113001F0113001F011300200414001D01
      1300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020061C00200414001F0113001F01
      13001F0113001F0113001F0113001F0113001F0113001F011300200414001F01
      13001F0113001D0012001F0113001F0113001F0113001F0113001F0113001F01
      13001F0113001F0113001F0113001F0113001F0113001F0113001F0113001F01
      13001F0113001F0113001F0113001D0012001F0113001F0113001F0113001D04
      1300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020061C001F0018001F0113001F01
      13001F0113001F0113001F0113001F0113001D0012001D0012001D0012001D00
      12001F0113001D0012001F0113001D0012001D0012001F0113001D0012001D00
      12001F0113001F0113001F0113001D0012001D0012001D0012001D0012001D00
      12001D0012001F0113001D0012001D001200200414001F0113001F0113001D01
      1300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020061C00200417001F0113001F01
      13001F0113001D0012001D0012001F0113001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001F0113002004
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020061C00200118001F0113001F01
      13001F0113001D0012001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001F0113001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001F0113001F00
      1700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020061C0020041B001F0113001F01
      13001F0113001F0113001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001D0012001D0012001D00
      12001D0012001D0012001D0012001D0012001D0012001F0113001D0012001D04
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008686F8005151F200CDCDFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E5E5E500E2E2E200E1E1E100E1E1E100E0E0E000DDDD
      DD00DCDCDC00D9D9D900D8D8D800D6D6D600D5D5D500D3D3D300D3D3D300D2D2
      D200D2D2D200D3D3D300D3D3D300D2D2D100D1D1D000C7C7C700C0BFBF00B3B4
      B500A6A7A800999A9B008D8D8E00737474006A6B6C0065656600535455007979
      7900D2D2D100E0E0E000E5E5E500ECECEC000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F7FC00CADCF1004590
      CA00A6C0E300FDFFFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00F9F9F900FAFAFA00DFDFDF00AAAAAA00F9F9F900C6C6C600ACAC
      AC000000000000000000FEFEFE00FBFBFB00F7F7F700F9F9F900F7F7F700F1F1
      F100EEEEEE00EBEBEB00E3E3E300EBEBEB00F0F0F000E2E2E200E2E2E200E3E3
      E300E6E6E600EBEBEB00F0F0F000F0F0F000F4F4F400F7F7F700F9F9F900F9F9
      F900FBFBFB00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E6E
      F9008787FC00CACAFF006A6AF8002020F5005A5AF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E400E2E2E200E1E1E100DDDDDD00D4D4D400CECECE00CDCDCD00D0D0
      D000CFCFCF00CBCBCB00CBCBCB00CACACA00CCCCCC00CBCBCB00C5C5C500B3B3
      B300A8A8A8009B9B9A008E8E8E008182820076767700606061005C5D5D005658
      5C0056595D00595D6000606367006F727600787C800083868900828687006B6E
      6E00BCBCBC00D2D2D200DADADA00E2E2E2000000000000000000000000000000
      0000000000000000000000000000E1F3FA00B1D4ED001252BA000032AF00002A
      AA000026A7002854B800C9D6ED00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00F3F3F300CECECE00C7C7C700C2C2C200D4D4D400C6C6C600C2C2
      C200FEFEFE00FEFEFE00FBFBFB00F5F5F500EBEBEB00E0E0E000C5C5C500B0B0
      B000B2B2B200959595006C6C6C00848484008484840091919100C0C0C000D8D8
      D800D9D9D900E0E0E000E7E7E700E7E7E700EBEBEB00F4F4F400F1F1F100F5F5
      F500F9F9F900FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000006E6E
      F9008787FC00CACAFF006A6AF8002020F5005A5AF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3E3E300DFDFDF00D7D7D7009F9F9F0096969600929292008D8D8D009292
      9200AEAEAE00B8B8B800B5B5B500B1B1B1008E9091006B6C6F00626365005A5C
      5D00595C5E00595F62005E62660065686E006C7277007D82860082868B008B8D
      8F008F909200909294008F9294008F9294009194950092959700979BA0007D81
      8100BCBCBC00D2D3D300DADADA00E2E2E2000000000000000000000000000000
      0000E6F6FC00ABDBF000269EDA00096DC6000054BC00003DB4000033AF00002C
      AB000127A8000023A300021F9E00EAF0F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00EAEAEA00ACACAC00B8B8B800FDFDFD00ABABAB00C9C9C900FAFA
      FA00FEFEFE00FEFEFE00F7F7F700F1F1F100E7E7E700DBDDDD00BABABA00C7C7
      C700C4C4C400C1C1C100ABABAB0091919100B6B6B600B7B7B700ABABAA00D4D4
      D400D4D4D400D9D9D900DFDFDF00E2E2E200E3E3E300EAEAEA00EDEBE700F1F1
      F100F0F0F000F5F5F500F4F5F500F5F5F500F9F9F900F9F9F900F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000707
      F00000000000000000000000000000000000FBFBFF000000ED00A5A5FE00EAEA
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700E6E6E600E0E0E000DADADA00E1E1E100DDDDDD00C9C9C900CDCD
      CD00D8D8D800D3D3D300C9C9C900949292007C7D7F0083858600858789008689
      8A00878A8B00878A8A00878A8A008C8D8E00898B8C00858787008D8F90008083
      8400737677006F7076007C7C82005151550047494D00797D8200A9ADB1008D8F
      9100B9B9B800E2E2E200E4E4E400EBEBEB0000000000000000000000000082D4
      F0000087D500007FD1000077CB000069C4000057BE000037B100002EAC002081
      D600052FAD000022A300011F9E00011695008CACD50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100C4C4C400CBCBCB00FCFCFC00B9B9B900C2C2C200D0D0
      D000FEFEFE00FBFBFB00F5F5F500EDEBEB00E6E2E200E0D9DB00C4C1C100C4C4
      C400C4C4C400C3C3C300B8B8B8009D9D9D00C1C1C100C1C0C000B7BBC000B6BC
      BF00C2C0C400C5C4C800C1C7CB00C8CFD400D6DCE200DEEAF500D4D9E200DFE8
      E500DFDDDE00DDE1DE00EEE1E100E2E3E000E2E8E700EBEDEE00F5EEED00FBF1
      F400F9F8F800F5F9F900F9FEFE00000000000000000000000000000000008E8E
      FC00000000000000000000000000000000000000000000000000ECECFF004F4F
      F5000000F5006969F900FEFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00ECECEC00EEEEEE00C5C5C500C6C6C600B6B6B600AAAAAA00E3E3
      E300E5E5E500E3E3E300E0E0E000A8A8A8007D7D81007F817C007D8070007F7F
      7700727376005C5E600057595A00676A6B005E6061004E505100525354003B3B
      3D002E2E30002526290038383C002E292D002220220056575900AAAFB5009194
      9600AFB0AF00EAEAEA00ECECEC00F0F0F00000000000000000000000000082D4
      F0000087D500007FD1000077CB000069C4000057BE000037B100002EAC002081
      D600052FAD000022A300011F9E00011695008CACD50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100C4C4C400CBCBCB00FCFCFC00B9B9B900C2C2C200D0D0
      D000FEFEFE00F5F5F500EDEDED00E7E7E700DCDDDD00CACFCF00C2C7C600C6C6
      C600C3C3C300C1C1C100B8B8B8009B9B9B00C3C3C300C4C1C100BBBFC1003747
      5A0026446900283F6100224267002B4C740033547B00476F860061828D00868E
      9200A6B8AF00C5CCCD00CECFD300D8D4D700D5D8D600E0E2E100DDD9D800E1E0
      E000E8E7E700EDEDED00F9F9F900FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8FF00C0C0FE004747F8009292FB00F0F0FF00FEFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200F1F1F100F2F2F200C0C0C000ADADAD009E9E9E0090909000DFDF
      DF00EFEFEF00EBEBEB00EEEEEE00B1B1B10082807F0052536F0019185F001A1D
      5200585856005E6061005D5F600041434400636667006E7070003D4041003A36
      38005D585A00363336002F2F30003A323400302A2D004F4F5200A6ACB300989B
      9F00A5A7A700F0F0F000F1F1F100F3F3F3000000000000000000000000006DCE
      F000008CDA000082D1000074CA000065C5000B64C70098A6AF007C5637002B1A
      0D005F4438006E9ACF000725A40001189700001393002A45A600FDFDFD00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00F9F9F900FAFAFA00FAFAFA00F6F6F600F9F9F900C7C7C700ABAB
      AB00F7F7F700F0F0F000E0E0E000D4D4D400C6CBC9006F858300B3C4C200C3C3
      C300C3C3C300C1C1C100B3B3B3009B9B9B00C4C4C400C1C1C100C0C0C0002240
      6100174271002142720023477A00274D80002E5483003D678900458091002B4E
      8000131C28000F1727004E7D89005C838D007D8C97007B8B9500848D9900979A
      9D00D8D9D900E6E2E300F5F0F100FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8FF00C0C0FE004747F8009292FB00F0F0FF00FEFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500F5F5F500F4F4F400CCCCCC00A9A9A9009F9F9F0087878700C6C6
      C600FAFAFA00F1F1F100F5F5F500AFB0AF00838177003D3F7900191D9B000303
      72005C5A5800919494008B8D8E004E5051006F727300878A8C00585C5F004C4A
      4C00575456004E4E51005151540054505200413D400048474900A1A6AD009FA3
      A7009D9F9F00F5F5F500F5F5F500F8F8F80000000000000000000000000069CC
      F000008BDC001393DF0039A4D70096A6A5008A653900A38D7600593C27002314
      070015090000221107007A6D6A00021C9B000113930013319F00FAFAFA00F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700C6C6C600C0C0C000C2C2
      C200F9F9F900F0F0F000E5E5E500E0E0DE00CFD4D4002E537F00B6BBC000C4C4
      C400C4C4C400C3C3C300ABABAB009D9D9D00BFBFBF00BDC3C000C4C0C1002444
      6A001E456F002342740021457B00244A7D00284E81003F69890041718C00325F
      8200060C19000C142F00467C8B00437C8D005381910063849500395E86007586
      9000CBD2D300DEDAD900E3E3E300F4F4F4000000000000000000F0F0FF000000
      000000000000F0F0FF00D3D3FF00000000000000000000000000000000000000
      0000000000000000000000000000F6F6FF001E1EF3001515F800AEAEFB00FCFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900F8F8F800F8F8F800DBDBDB00ADADAD009D9D9D00898989009E9E
      9E00FAFAFA00F5F5F500F6F6F600A6A5A5008182780050517C001819A700191C
      94006B6C6F0086898700808283006E7072007D80810065686C00686C73006C6F
      73005355560055575C00555559004E4B4D0043404200434142009A9FA300A6AA
      AF0096989700FBFAFA00F9F9F900FAFAFA00000000000000000000000000ACE4
      F900BACCBC00A77726007C2E0900581F01003C1800002B15060020100500816D
      5800472E210013070000100400008C8E9E001637A80013309E00FAFAFA00F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700ABABAB00CACACA00F9F9
      F900F9F9F900F5F5F500F4F4F400EBEBEB00E8F4F4002E538100B4BBC000C4C4
      C400C4C4C400C3C3C300A8A8A8009D9D9D00BFBFBF00BDC3C000C3BFC1002443
      67001E456F002342740021457B0023497D00274D81003D6789004A7A8F003F71
      8B0007101E000B142C00457C8B00427C8E004E819100638496005E8293005F84
      920047618000D8E0EA00EAEAED00F2F2F20000000000000000009090FE000000
      000000000000A1A1FC0000000000000000007D7DFC00F9F9FF00000000000000
      0000000000000000000000000000000000000000000000000000A3A3FE002323
      F8001818F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FCFCFC00FCFCFC00FAFAFA00D0D0D000C2C2C200B8B8B8009292
      9200BEBEBE00FFFFFF00ECECEC008E8E8E00868686006C6B6A003A3732002725
      250038383B0076787900878A8B005E6061004E505100969898005E6061005D60
      6000919495009A9D9E006B7070004A484A00514E50005250520096999D00B1B8
      BC008E929500FFFFFF00FCFCFC00FDFDFD00000000000000000000000000A587
      28009158140086451000591F0000531C0100B49F7700281204001D0D02001408
      010025150F00E1DFDC001A0B070008000000230F0B00BEC7DC00F7F7F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700CCCCCC00BDBDBD00B4B4
      B400FCFCFC00FBFBFB00F5F5F500F7F8F700F0FBFB00345C8400B4BAC000C5C5
      C500C4C4C400C3C3C300A6A6A6009D9D9D00BFBFBF00BFC4C100C3BFC1002140
      66001F4971002443740021457B0023497D00274D80003A66880045778E004072
      8B00070E1C000B142C00477D8B00477F8F00457D8F004C809100518091004777
      8B0042698400E3F1FE00FEF9F700FBFBFB0000000000000000003737F5000000
      0000000000003838F900000000009696FC008787F9003030F9001B1BF200A6A6
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FBFBFF000D0DF3003030F800C7C7FE00FCFCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00FDFDFD00FFFFFF00D7D7D700C4C4C400C2C2C200A3A3
      A300ADADAD00FFFFFF00DDDDDD008C8C8C0094949400706F6F00434042004745
      4700414143008386870091949500797C7D00686B6C00868A8B006C7273007879
      7D007B7C81006B6F700062676800555559004C4C4E004A4B4C00898C8F00B5BB
      C10091959600FFFFFF00FEFEFE00FEFEFE000000000000000000FCFAF400EEE3
      D700F0E8DB00EDE6DA00E1D4C700AE9B7F00492208002A1204001F0E02001509
      01001D15100038312C0087A9A200DEDBDA00EDEBEA00F7F7F700F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F4F4F400E4E4E800EDED
      ED00F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700C6C6C600ABAB
      AB00FBFBFB00FBFBFB00FBFBFB00F9FCFB00F1FBFF00345C8400B4BBBC00C5C5
      C500C4C4C400C1C1C100A8A8A8009B9B9B00C0C0C000C1C1C100C1C1C2002441
      60001F447100204272002143780024457A00234B7D003064880042748D003C71
      8B0007101F000B162E004D808D00497F8F00477F90004C8191004C8191004A7F
      9100567C8C00EDF7FE00FFFBFB00FEFEFE0000000000000000003737F5000000
      0000000000003838F900000000009696FC008787F9003030F9001B1BF200A6A6
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FBFBFF000D0DF3003030F800C7C7FE00FCFCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D900C4C4C400C5C5C500AEAE
      AE00A6A6A600FFFFFF00BABABA0091919100A0A0A0007777770058585A004847
      480059585A00676B6C0054565700535556005F616200535657004E5253005557
      5A005E5F630061656600565A5C00343237003D3A3C002625260062666A00BABF
      C400969A9B00FFFFFF00FEFEFE00FFFFFF00000000000000000000000000F6F3
      EB000000000000000000FFFDFD00BEA06800652605002A120300220F0200240F
      0400232D22000A2C2300242E2700FDFAFC00F6F6F600F6F6F600F6F6F600F6F6
      F600F9F7F700FAFAFA00F7F7F700F6F6F600F0F0F000D4D7D900C0A99800CBCC
      CC00EEEEEE00F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600E4E4E400DADA
      DA00000000000000000000000000FEFFFC00F1FBFF00345C8400B4BBBC00C5C5
      C500C4C4C400C1C1C100A8A8A8009B9B9B00C0C0C000C1C1C100C0C1C3002442
      61001E4267001D3F6D001F40720026427400264A7C003061870042748D003A71
      8B00091222000B162F004E818E00457D8E00497F90004C8191004B819100477D
      9200587D8C00EEF5FF00FFFEFC00FEFEFE0000000000000000004646F5000000
      0000F9F9FF000E0EF0000000F0009A9AFB000000000000000000000000000000
      00006A6AFB000000F200ADADFB00000000000000000000000000000000000000
      00000000000000000000F5F5FF009090FC000B0BF0005555F600CACAFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC00C4C4C400C6C6C600B6B6
      B6009E9E9E00F1F1F1008787870097979700A2A2A2007C7C7C004C4C4E004340
      42002928290057595A0076787900737677004648480091949500787B7C004B4C
      4E00808283009FA1A20082848500413F41004B484A003B373B0062616700BABE
      C2009DA1A200FFFFFF00FFFFFF00FFFFFF00000000000000000000000000A17B
      2C00F7F6EE0000000000F7F4ED004A322300844F1B00281103001C0D03002913
      090023584900171106001C160D00FAFAFA00F6F6F600F6F6F600FCF9F900E7EE
      EB00B3BABA00AFADAE00DADADA00F9F7F700E4E7EB00C1B09E00C58F5800A5A5
      A700D0CFCF00F1F1F100F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7
      F700000000000000000000000000FEFEFB00F2FCFF0037618600B6BBBC00C3C3
      C300C0C0C000BFBFBF00A5A5A5009D9D9D00BCBCBC00C0C0C000BABDBC00182E
      4B0018324F0014284C0014274E00162A4D001E3D69002A54820043788E00396F
      8A00091121000C193400477C8B003F788B0040788C00457D8E00518494004A80
      9400507A8A00F4FEFF000000000000000000000000006767F5009C9CFE000000
      00008E8EFE00D4D4FF00000000001717F600F5F5FF00A9A9FE00000000000000
      0000CFCFFE00000000006D6DFE000000ED007A7AFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5FB001313
      F500F6F6FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00C5C5C500C9C9C900C0C0
      C00099999900AEAEAE007878780099999900A3A3A3007F7F7F00474748005855
      5700282728005D5F600091949500909294005D5F6100999B9D008E9091006B6E
      7000898B8C0090929400878B8C00676A6B005A5C5E005C5D5F0082838700B8BE
      C100A5A8AA00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000854F1E00281103001D0D03002C13
      09001E73680009281D00212017002D1D1300F6F6F600FAFCFC008CB2A8003B7D
      54007797860035765700727777007D807F00D6D2CC00CA8F5D00C78F59009E85
      7200B3B4B400EAEAEA00F7F7F700F6F6F600F6F6F600F6F6F600F6F6F600F9F9
      F9000000000000000000FEFEFE00FCFBFB00A3B2C30037568000B3B2BA00BFBF
      BF00BDBDBD00BCBCBC00AAAAAA009A9A9A00BCBCBC00BCBCBC00B7BBBB001523
      4000192B4B00192B4B001A2C4C0018284D0030537200346386003F728D00204D
      6F0009122600122244001B3C560016346000234F7700477B8D003F6F8A001224
      4B005C7A8400F1FBF900FEFFFF0000000000000000000808F300000000000000
      00002323F2007F7FFB00D3D3FF003737FB009C9CFC00C6C6FC00AFAFFE000000
      0000CDCDFE00BDBDFC002828F800EAEAFF00BCBCFC009090FE006A6AFB00FBFB
      FF0000000000000000000000000000000000000000000000000000000000E9E9
      FE007979FB001414F0007171F900CCCCFC000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500C4C4C400C4C4C400BCBC
      BC00A7A7A7007272720074747400848484009090900085858500605F61003330
      3300323033004A4B4D005A5D5E00606263004D4F52006E727600777B7F004C4E
      52005D5F620085898C008D91950034303400575557005351530037343600A1A5
      A500B5BABE00F1F3F300FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000854F1E00281103001D0D03002C13
      09001E73680009281D00212017002D1D1300F6F6F600FAFCFC008CB2A8003B7D
      54007797860035765700727777007D807F00D6D2CC00CA8F5D00C78F59009E85
      7200B3B4B400EAEAEA00F7F7F700F6F6F600F6F6F600F6F6F600F6F6F600F9F9
      F9000000000000000000FEFEFE00F5FBFC004677870044778A00B6BAC400BBBB
      BB00B6B6B600AEAEAE009B9B9B0099999900AEAEAE00AFAFAF00AFB0B2002C47
      6A001A3758003258770034587B000D1B3C004C7A8D0043788D00447A91001940
      6300122242001E395C00162F50002145770039678600518191003C748B002A51
      8100C6D4DD00F2F8F800FEFFFE0000000000000000000808F300000000000000
      00002323F2007F7FFB00D3D3FF003737FB009C9CFC00C6C6FC00AFAFFE000000
      0000CDCDFE00BDBDFC002828F800EAEAFF00BCBCFC009090FE006A6AFB00FBFB
      FF0000000000000000000000000000000000000000000000000000000000E9E9
      FE007979FB001414F0007171F900CCCCFC000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700C4C4C400C3C3C300BBBB
      BB00ADADAD008C8C8C00838383008585850085858500A0A1A10070707200514D
      4F00383437003A383B0082828400959798006C6F7000949798009BA0A100686F
      6F00676C6E009A9FA000A0A3A50053545500585657005D5A5D0058565800A9A9
      AC00BABFC400E7EBEB00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000087542000281103001D0D03002E15
      0B0020776A0009271C00212A2400C2B9B6002215120064574F006B9987008B87
      8A00BFE4EB0065A3A8005B9E93004E7D6A0066666A00746F6B00B5835600C08E
      5D0094969800C5C5C500EDEDED00F3F3F300F6F6F600F6F6F600F6F6F600F6F6
      F7000000000000000000FEFEFE00F0F8FE00417288003D6A8800BDC3CB00B2B2
      B200A6A6A6009B9B9B009595950094949400969696009C9C9C00A2A5A5002643
      600012224600142C53001C3D670021466A00447A8B00427B8E003D718E001940
      610012204000162E4E001F3D64002247780036678600457D90004C8295002A4F
      7F00D0D8E700FFFFFE00FFFFFE0000000000000000005C5CF900000000000000
      000000000000CCCCFE005757F900FEFEFF001A1AF30000000000000000003434
      F6004B4BF6005E5EF900FEFEFF000000000000000000FBFBFF000000EC000000
      0000E1E1FE000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFFF004E4EF8001212F500E0E0FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E600C5C5C500C6C6C600C0C0
      C000B8B8B8009F9F9F0096969600919191008B8A8A00BBBBBB0087898A005351
      530048464800565557008484860085878900787B7D007D828300727778006B6F
      70007D828300676B6C005A5E5F007074760050515200474748004B4B4C00989A
      9D00BFC3C900DDDFDF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000089582200281103001D0D03002E16
      0C0022786D0009271C00212A2300FFFDFF00F7F4F1005F5D540031342B006D82
      830061B9C900E0F3F400D6F0F100AED5D20052938200567B800088563900C085
      4D0098806D009B9B9B00AFB1B200C1C2C400DADADA00F6F6F600F6F6F600F6F6
      F7000000000000000000FEFEFE00F2FBFE00437589003F6C8800B2B4C0009F9F
      9F00959595008A8A8A00848484008080800084848400858585008B8C8E00324A
      6F0021467200224675002145750020477500477C8F00417B8F0041778D001F46
      7200193055001E3C670022437400264A7C0030608600497F9100478092002E58
      8300CDD7E500FFFFFC00FEFFFE000000000000000000B9B9FE00000000000000
      000000000000000000000000000000000000DADAFE000000F000000000003434
      F80000000000D3D3FE00E0E0FF000303F6005B5BF300CDCDFE00FEFEFF00FFFF
      FE001D1DF800F8F8FF000000ED0000000000B0B0FF0000000000000000000000
      000000000000000000000000000000000000000000005454F9000000ED00C9C9
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA00C3C3C300C5C5C500C0C0
      C000BBBBBB00AFAFAF00A8A8A800A1A1A10094949400CDCDCD00A0A2A3003230
      33003A383B0049484A0049484A003230320030303400403F4200363234002C29
      2C004244460044424300424042003A3C3D003B37380047444600292829007677
      7B00C4C9CD00D1D3D200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008A5C2500281103001D0D03002F17
      0C00247B6D0009271C00212A2300F3F0F000FCFCFD00B5CBC500696F60001F2E
      3000B1C4CA00EEEDED00C4C4C200AFAFAE00A2A09E00527D5900905F3700BC82
      4A00C98F5B00B87D4A00AD815F00AA998900B1B3B400F4F4F400F6F6F600F7F7
      F7000000000000000000FEFEFE00F0FEFF0040778A0043758B00AAB0B8008E8E
      8E007D7D7D003A3A3A00202020001C1C1C00191919002222220032363900141C
      2E0020466C002145740023477A00224D7C00437B8E00437B9000467B8E002047
      7A00173260001F41750022467B00264B7F00326187004C8091004D8192002E61
      8700CAD8E200FFFFF900FEFFFF0000000000000000000A0AF200C4C4FC000000
      00000000000000000000000000000000000000000000FEFEFF00000000006D6D
      F9000000F2009C9CFC008787F90000000000000000006666FB004646FB000000
      EC00F9F9FF004B4BF8003C3CF200000000001F1FF60000000000F5F5FE000000
      0000000000000000000000000000000000000000000000000000000000001111
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400C4C4C400BFBFBF00BFBF
      BF00BFBFBF00BABABA00B4B4B400ACACAC0099999900D5D5D500BFBFC1004848
      49004C4C4E002C2A2D0049484A00676566005F5E600055565700747477003A36
      380036343700737374007C7B7D003F404200494749005E595C00454041007676
      7600C5CACE00C4C6C600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008D612900281103001D0D0300321A
      0E00267B700009271C00180A0400C2BCBB0002302200C1D1D00094B1A000618B
      910011020100C2C2C200DEDEDE00E8E8E800CBC4C100998A7C00376B46008D64
      3D00C28A5200CA8F5900CC956300B572430098928F00F0F0F000F6F6F600F6F7
      F7000000000000000000FEFEFE00F1FEFF0043788A00497B8D009CA2AA008484
      840007070700070707000A0A0A00090909000909090008090900090909000507
      0B00214771002247750024497B00234E7C00427A8D00447C9100477F90002250
      7F001B40710022477C00275081002B5483003D728B00497D9100497D91003C74
      8C00CDDCE500FFFFF900FEFFFF0000000000000000000A0AF200C4C4FC000000
      00000000000000000000000000000000000000000000FEFEFF00000000006D6D
      F9000000F2009C9CFC008787F90000000000000000006666FB004646FB000000
      EC00F9F9FF004B4BF8003C3CF200000000001F1FF60000000000F5F5FE000000
      0000000000000000000000000000000000000000000000000000000000001111
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600AEAEAE00B9B9
      B900C0C0C000C5C5C500C4C4C400BBBBBB00A3A3A300DBDBDB00E9EAEB006B6C
      6E007F8081008D8E8F00969799009A9B9F00A2A3A700B0B3B800B1B5B900BABE
      C100B5B5BC003A784C0018632C00225932002320870010138E00020491001E1F
      8100C1C4BC00ADB0B000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008B632A002C120200261609004833
      2A00267A6D0009281E00120400001C5C4D00648C8200DFD9D900709586006A77
      7D000D020100FCFCFC00DADADA00D4D7DA00C7AC9A00DCC9B300EEEAEA007A41
      2F009C683E00C9905C00C58F5900C28B5300AC835D00E0E0E000F7F7F700F6F7
      F7000000000000000000FEFEFE00F0FCFF0044788900477A8B00909598004141
      410022222200131313000A0A0A00090909000909090008090900090908000608
      090023467200224A7800284B7C00224D7D00447B8E00457C9000437F90002A5E
      8400224C7F00325F8500325C850037648800477B8E004E809100477C8F004075
      8B0090A7B400FEFCFB00FBFFFE000000000000000000E9E9FF008E8EFC002B2B
      F500D0D0FE000000000000000000000000000000000000000000000000000000
      000000000000000000009B9BFB005A5AF900000000003030F90000000000F3F3
      FF007E7EFB00CCCCFE002323F300F5F5FF000000ED00B3B3FF003F3FF8003434
      F3001E1EF5000000000000000000000000000000000000000000000000004949
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D5D500A6A6A600B6B6
      B600C1C1C100CACACA00C9C9C900C0C0C000A8A8A800DBDBDB00FAFBFB007779
      7B008A8C8D0092959600999B9F009FA0A600A5A6AC00ACAFB500AEB3B800B1B5
      BB00B6B0BE0030964F001EA645001C833700413AB5004545D0004446D1004647
      B100C3C5C000B1B5B600FCFDFD00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000C0B093003A989200359288001F41
      2E001223170013110800AAA098006A9C9500A49690007D6356004F5F49006D6D
      63006E888B00EAEAEA008B8B8B00BDB4AF00C68C5800C4874E00C18D6300637A
      4600854D3500BD865700CA915C00C68E5800BA7F4500D0D0D000F6F6F600F6F7
      F7000000000000000000FEFEFE00F4F9FB0094A8BA008896AB0091949500BABA
      BA00AFAFAF00ABABAB000A0A0A0009090900090909000A090900090909000606
      0600324A6C00264B7400284C7C001F4B7D00447B8F00477D9000437C8F00376D
      89003769880037638600396387003F6D8900457A8D0024547B002C5984005683
      970059869200FBF7FF00F9FFFE0000000000000000000000000000000000E1E1
      FE007E7EFB000F0FF2005A5AFE00D3D3FE00FEFEFF0000000000000000000000
      0000000000000000000000000000C4C4FE00E7E7FF000404F0009797FC002B2B
      F500CCCCFF00000000001B1BF800E4E4FE006D6DFE005C5CF900ABABFC00FBFB
      FF00E9E9FF002525F30000000000AEAEFE007171FE0000000000000000001313
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500A2A2A200BABA
      BA00C7C7C700CDCDCD00CBCBCB00C3C3C300ADADAD00D3D3D300FFFFFF00787B
      7C00949596009FA1A100AAACAD00BAB9BA00C2C2C200CED0D000D2D5D400D6D9
      D900DCDCDE00D3DCD500CADFCE00DDE3DF00E0E0E500DADBE400DEDEE400E3E5
      E500DEDFE0009BA0A100EAEBEC00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000DEF1F000F3F7F600AC93
      7D00271306009E8977003DA19E00FFFCFC00F7F7F700F9FAFA00F4F7F900729C
      8B007799A200F6F6F7004C4D4C0096663B009D6E40009F774200A27847007C83
      5B00837442006E3A2C00BD824A00BC814A00CB8E5800B6B6B600EAEAEA00F6F7
      F7000000000000000000FBFBFB00000000008D8E8D00C2C4C400D0CECD00CDCD
      CD00949494007C7C7C000B0B0B00080808000909090009080800070707002A2C
      2C005C6166005E7289002C547F00285684004C80910043788E003F748B00406F
      8A004B788E002A5080002E5583002A50800050829200588695005A8696005683
      96005A879200FBF7FF00F7FEFE00000000000000000000000000000000000000
      00000000000000000000000000003B3BF6000000EF00E9E9FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006363FB00000000004F4FFE00D7D7FE00A4A4FF003333FB00000000000000
      0000EFEFFF002020F3004F4FFE00E6E6FE0000000000000000008989FB008181
      F800FFFFFF00FFFFFF00FFFFFF00F3F3F300ACACAC008B8B8B00B0B0B000C6C6
      C600CDCDCD00D0D0D000CCCCCC00C6C6C600B1B3B300B6B6B600FFFFFF009295
      9600AAAEAE00AEB1B100B0B3B300B6B6B300B4B3B100A9AAA900A3A5A3009EA0
      9E0096989700949294008F8B8E007F7C8100737777006C707000636767005D5F
      610054575A001E222300CECFD000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6F6F600B3DCDB00F6F6F600F4F3F300E7E7E700CBCFCE008FA9
      A100A8B2AD00E0D5CB000000000000000000F4FFFF00EBEDF300D7D6D5009A8C
      87003E6E410085423100B1834E00C6905B00C68E5B0098999B00C6C6C600EDEE
      EE000000000000000000F9F9F900C8C8C800F5F1F000F8F4F100E6E3E300E3E3
      E300C4C4C40091919100151515000A0A0A000A0A0A000A09090003030300BCC1
      C100CFCCC300AEB6C3004C7F8E004D819100497D90003466880045758C004D7C
      8F004E788D002A538200335F8500335F86004E7F91005E869800558394005883
      97005B879300FBF7FF00F7FEFE00000000000000000000000000000000000000
      00000000000000000000000000003B3BF6000000EF00E9E9FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006363FB00000000004F4FFE00D7D7FE00A4A4FF003333FB00000000000000
      0000EFEFFF002020F3004F4FFE00E6E6FE0000000000000000008989FB008181
      F800FFFFFF00FFFFFF00FDFDFD008787870083838300A7A7A700C1C1C100CBCB
      CB00CECECE00D0D0D000CDCDCD00C9C9C900BCBCBC0098989800DFDFDF00171A
      1B0025292A002428290023282900212627002024260020242500212325002023
      240020232400202324002124250022252700242628002426290026262C002628
      2D0025282D001D212200BABCBB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6F6F600B3DCDB00F6F6F600F4F3F300E7E7E700CBCFCE008FA9
      A100A8B2AD00E0D5CB000000000000000000F4FFFF00EBEDF300D7D6D5009A8C
      87003E6E410085423100B1834E00C6905B00C68E5B0098999B00C6C6C600EDEE
      EE00000000000000000000000000D4D4D400E7E7E700959595008D8D8D00D1D1
      D10098989800080808000909090009090900090909000808080008080800433F
      3F008C888E00B6B8C8004C8194004F828F004A7D8C007B8F9B008C9CA600919F
      AA00B8C9D600496A81003A69830039678600558395004B839500508496004E83
      970054859100FFF9FE00FEFFFB00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF007171F8000101F0005555
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000007D7DFF00D0D0FE003838FB00FEFEFF00D4D4FE000000
      0000BCBCFE00DADAFF008484FC000000000000000000000000002020F8000000
      0000DEDEDE009D9D9D0098989800B3B3B300C1C1C100C2C2C200AEAEAE00B1B1
      B100BABABA00C2C2C200BFBFBF00BBBBBB00C1C1C100BBBBBB00A3A3A3001D1E
      2100282A2F0030343A00373A40003A3D42003D4145004346490045484B004749
      4D00484B4F00484B4F004A4D51004C4F53004D5054005154580030343A002326
      2A00363A3F00323637008F909000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E3E4E400C2B9B300B99B8000C691
      6A004A7C6000936B4600EDEAE3007F584600A0704700C9926100CB976A00F4F6
      F60070705200786038006E3B2C00C58D5800C68F5900A7815C00A5A4A600D2D2
      D4000000000000000000FEFEFE00DEDEDE00D5D5D500A6A6A60091919100A8A8
      A8009A9A9A000A0A0A000A0A0A000909090009090900080A0A000A0A0A000302
      020003070800728891004C83910046809100507D8A00F2F9F800FFFFF700FFFF
      F700FCFCF5004D6F8100467B8B0039748C00518294004A8395004F8496006385
      950066889200FFF9FE00FBFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFF00C7C7
      FE004949FB001111F2007777FB00000000000000000000000000000000000000
      0000000000000000000000000000F8F8FE00DDDDFE00000000005F5FFB000000
      00002727F600B6B6FE00D0D0FF000000000000000000F3F3FF003C3CF6000000
      0000E0E0E000C6C6C600C4C4C400E2E2E200FAFAFA00FFFFFF00ECECEC009F9F
      9F00909090009F9F9F00ADADAD00BCBCBC00B4B4B400B9B9B900B3B3B3002122
      2500292D30004346490047494D004B4E52004D5054005154580053565A00575A
      5F0055585D00575A5F0055585D00575A5F00585C60005D6065003A3D42004C4F
      53002F333800363B3C00797C7C00FFFFFF00EBEBEB00E7E7E700EEEEEE00EAEA
      EA00E4E4E400F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DBD2CF00C0875000C0854D00C085
      4F00BD89530095593800A4765400EEE6E000967D6B00814E34009C693C00FCFD
      FD0097775F00397646007C4D3500B0784900B6774400B36D3A00A38B7F00BFC1
      C2000000000000000000FEFEFE00F8F8F800E3E3E300C4C4C400B8B8B800BCBC
      BC00ABABAB0008080800090909000A0A0A000A0A0A0008090900090A0A000A08
      0800020505004D7F8A00547C8B007A919F0081939E00F8FEFC00FCFEFE00FCFE
      FC00FBFBFC00F9FFFF009CAEB7007892A30081919E007D97A600879BAA008E9D
      AB00889EA700FCF8FE00F7FEFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7FF001414F8008B8BFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000CACAFF002222
      EF00EDEDFF00A5A5FC00DCDCFF0000000000B8B8FE008181FC00BDBDFE000000
      0000FFFFFF00DDDDDD00B3B3B300FFFFFF00FFFFFF0000000000AAAAAA007777
      77006F6F6F00737373008A8A8A00ECECEC00EBEBEB00CECECE00B4B4B4002C2D
      2E00222529004144480046484C00494C50004D50540051545800525559005457
      5C0055585D0056595E0056595E00585C6000575A5F005F62670047494D00494C
      5000383C41003B40410062666500FCFEFE00BEBEBE00ABABAB00C5C5C500B8B8
      B800A9A9A900DCDCDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DCD6D400C98E5700C7905B00C690
      5900C690590084896000905D3D00A8764200E3D7CA00E3E3DE00BFB8B200F1F0
      ED00A466430077906F009576440090643C00C0844E00B36F3C00AC968500C6C9
      CA0000000000000000000000000000000000E7E7E700D4D4D400C8C8C800C4C4
      C400BDBDBD000B0B0B000A0A0A00090909000909090005050500050505000808
      08000A0C0E0000000000FCFFFF00FBFFFF00F8FFFC00F5FFFF00000000000000
      0000000000000000000000000000FFFEFB00FFFFFE00FFFCFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7FF001414F8008B8BFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000CACAFF002222
      EF00EDEDFF00A5A5FC00DCDCFF0000000000B8B8FE008181FC00BDBDFE000000
      0000FFFFFF00F3F3F300C6C6C600FFFFFF00D4D4D40079797900707070008282
      82008686860084848400797979009A9A9A00FCFCFC00FFFFFF00EAEAEA004345
      46001A1D200034383D003B3F43003F4246004245480046484C0045484B004648
      4C0046484C0047494D0047494D0047494D0046484C00484A4E00404347001F22
      26001D1F23004044460055585700F2F4F400C1C1C100AEAEAE00C7C7C700B9B9
      B900ADADAD00D4D4D400EEEEEE00FAFAFA000000000000000000000000000000
      0000000000000000000000000000D2D2D200C6CACB00C5B5A700966F5000BF8A
      5400936F4A00A0895300878B600080563700B47A4600C6905900CCA98E00C28C
      5B00C2885200B59C730083784300824F3400C0864D00948A8400BEC0C000E0E0
      E100000000000000000000000000FEFEFE00FCFCFC00FEFEFE00E8E8E800E6E6
      E600E5E5E500060606000B0B0B002020200066666600CBCBCB00E1E1E1006D6D
      6D0008070700F9F5F500FFFEFE00FBFFFF00FBFFFF00FBFFFF00000000000000
      0000000000000000000000000000FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDFC003F3FF9000C0CED00ABAB
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFF001010F0004C4CFC004F4FF9000000EF00FBFBFF000000
      0000FFFFFF00FDFDFD00D9D9D900C4C4C4007B7B7B007B7B7B008D8D8D009595
      950097979700979797009595950084848400BEBEBE00FFFFFF00FFFFFF008B8C
      8E001114170023262A00272A2F002C2F34002E32370032363B0034383D00363A
      3F00383C4100383C4100383C4100383C41003B3F43003B3F43003D4145003C40
      44003D41450044484A004F515100E3E5E500FDFDFD00FDFDFD00CBCBCB00CBCB
      CB0000000000B9B9B900ACACAC00EAEAEA000000000000000000000000000000
      0000000000000000000000000000CACACA00C7C7C700DBDADA00F6F7F700865D
      3B00FDF4EB00CE905F009F895600848A5F00884C3400A0724500CB8E5900C78F
      5900CA8E5700BD895B0047734D006B504300AD9E9100AFAFAF00EDEDED00F4F6
      F6000000000000000000000000000000000000000000FEFEFE0000000000EAEA
      EA005E5E5E000606060008080800D4D4D400D2D2D200D4D4D400DFDFDF00F5F5
      F500F2F9F400F8FBF700F9FFFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFF00B2B2
      FC001616F200A8A8FB0000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDFF00000000006E6EFC00000000000000
      0000FFFFFF00DEDEDE00D5D5D500AAAAAA007070700095959500AAAAAA00B1B1
      B100B3B3B300B3B3B300B1B1B100B0B0B000A5A5A500DCDCDC00FFFFFF004042
      4200242626004B4C4E003D3F41003F40430044454800484A4C004B4C4E004D4F
      50004E5051004F51520050525300535556005354560054565700565859005658
      590057595A004E5253006A707000E7E9E900EDEDED00E8E8E800C7C7C700D1D1
      D10000000000C6C6C600BDBDBD00EDEDED000000000000000000000000000000
      0000000000000000000000000000D2D2D200DCDCDC00CFCFCF00F4F4F4008E73
      6500E8D4C000917864008A70600058402D0070875C008B6E45008C573800C08E
      5D00AC8D7000B0A999004F7F70008C898A00B4D6DB00E7E4E400F6F6F600F6F7
      F70000000000000000000000000000000000000000000000000000000000F9F9
      F900A2A2A200A8A8A800A0A0A000989898009E9E9E009C9C9C00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009494FC000F0FF3003B3BF300C4C4FF0000000000000000000000
      00000000000000000000000000000000000000000000EAEAFE00000000000000
      0000FFFFFF00E1E1E100D5D5D500C6C6C600838383009F9F9F00BABABA00C0C0
      C000C0C0C000C1C1C100C0C0C000BFBFBF00B6B6B600D9D9D900FFFFFF00A9A9
      A900C0C0C000DADADA00C3C3C3007F7F7F00ADADAD00DBDCDC00DCDCDC00DDDE
      DE00DEDEDE00DFDFDF00DFE0E000E1E2E200E2E3E300E3E4E400E4E4E400E5E5
      E500E6E6E600E4E5E500F5F6F600FFFFFF00BEBEBE00ACACAC00C7C7C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E300EEEEEE00E8E8E800BDBCBC00B1A6
      A100BDB4AD00AA9B9000E1BEA80099776400BF916B007784560060774F00464E
      4E00708687004E8B6E00353E3D0084A3A5004798A100F7F7F700F6F6F600F9F9
      FA0000000000000000000000000000000000000000000000000000000000F7F7
      F700BBBBBB00BBBBBB00B3B3B300BABABA00BCBCBC00B8B8B800FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009494FC000F0FF3003B3BF300C4C4FF0000000000000000000000
      00000000000000000000000000000000000000000000EAEAFE00000000000000
      0000FFFFFF00F2F2F200DFDFDF00DADADA009B9B9B00A8A8A800C9C9C900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00C6C6C600E0E0E000FFFFFF00FFFF
      FF00E5E5E500E6E6E600EFEFEF0000000000FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2C200AEAEAE00C0C0C000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEEEEE00E0E0E000CECECE00D4D4D400CFCF
      CF00A3A4A4007A6F66007F776F0022222200ADAFAF00C9D0D200C0C1C1004D8B
      73004D8970008BAAAC0087C5CF0083C4D000DAF3F600F6F6F600F4F4F400B3B4
      B40000000000000000000000000000000000000000000000000000000000F5F5
      F500C1C1C100C8C8C800C2C2C200C4C4C400C4C4C400C4C4C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3FF00C0C0FC000101F0001B1BF6000000
      00000000000000000000000000000000000000000000FEFEFF00000000000000
      0000FFFFFF00FFFFFF00F5F5F500E4E4E400A6A6A600B8B8B800D5D5D500D7D7
      D700D8D8D800D6D6D600D7D7D700D7D7D700D4D4D400EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2C200AEAEAE00C0C0C000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEEEEE00E0E0E000CECECE00D4D4D400CFCF
      CF00A3A4A4007A6F66007F776F0022222200ADAFAF00C9D0D200C0C1C1004D8B
      73004D8970008BAAAC0087C5CF0083C4D000DAF3F600F6F6F600F4F4F400B3B4
      B40000000000000000000000000000000000000000000000000000000000F5F5
      F500C4C4C400CCCCCC00C7C7C700C7C7C700C7C7C700C8C8C800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4FC002424
      F2005858F800BDBDFF000000000000000000C3C3FE0000000000000000000000
      0000FFFFFF00FFFFFF00FCFCFC00EEEEEE00B5B5B500C4C4C400E0E0E000E1E1
      E100E2E2E200E1E1E100E2E2E200E1E1E100E5E5E500FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000CACACA00CBCB
      CB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DADADA00CFCFCF00F6F6F600E7E7
      E700DFDFDF00EAE8E800E1E0E100D5D5D500E3E3E300F6F6F600F6F3F600F1F0
      F000F4F3F300F7F7F700F9F7F600F7F7F700F7F6F600EBEBEB00E1E1E100BABA
      BB0000000000000000000000000000000000000000000000000000000000F8F8
      F800C8C8C800CECECE00CACACA00CACACA00CACACA00C9C9C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0FF005454F3000808F5004D4DF3001010F20000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F900F4F4F400F5F5F500F5F5
      F500F4F4F400F5F5F500F5F5F500FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDB00CECECE00C2C2C200C0C0
      C000CBCBCB00E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600F6F6F600F7F7F700F6F6F600F6F6
      F600F7F7F700F4F4F400F3F3F300F4F4F400F4F4F400F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700C7C7C700ADADAD00F4F6
      F60000000000000000000000000000000000000000000000000000000000FEFE
      FE00C9C9C900CFCFCF00D0D0D000D1D1D100D0D0D000C9C9C900FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0FF005454F3000808F5004D4DF3001010F20000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFE
      FE00FDFDFD00FDFDFD00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000ACACAC00C7C7C700C0C0
      C000AAAAAA00D4D4D40000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F7F7F700C9C9C900EEEEEE00AFAF
      AF0000000000000000000000000000000000000000000000000000000000FBFB
      FB00EBEBEB00D6D6D600D8D8D800D7D7D700DFDFDF00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1C1C100ADADAD00C7C7C700C0C0
      C000ABABAB00D5D5D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00CCCCCC00F9F9F900ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB0000000000FEFEFE00FBFBFB00F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3F4F400CEF0E900004BDC00007FE600B7E7E9009BE5E6000050
      DB00004CDC00ABE7E500A0E3E300B3E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D700D6D6D600D0D0D000CDCDCD00CBCBCB00CACACA00C5C5
      C500C5C5C500C3C3C300C5C5C500C5C5C500C6C6C600C2C2C200C7C7C700C5C5
      C500C9C9C900C2C2C200C5C5C500C2C2C200C1C1C100BFBFBF00BEBEBE00BFBF
      BF00BEBEBE00BEBEBE00BFBFBF00BABABA00BABABA00BABABA00BFBFBF00C5C5
      C500C9C9C900D5D5D500D7D7D700DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFF00FBED
      EB00F0D7C600FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000092B8D1002575A500357EA6003680B0003680B0005D91AF00EEF1
      F50000000000000000000000000000000000EAF0F5009FBCD1009FBCD1003C7F
      A8002473A4001E699400AECCDC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00000000000000
      00000000000000000000FDFEFE00FEFFFF00000000000000000000000000FBFF
      FF00E3F4F600E2F4F6000056DF000057DF000052DC00000593000052DC000052
      DC000052DC0000089D00C4EEEC00B5E9EA00B8E8E900BBE9EA00000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00D6EF
      EF00BCE8E900B8E7E900CFEFEF00FFFEFE000000000000000000000000000000
      0000F8F8F800D6D6D600D3D3D300CBCBCB00C9C9C900C5C5C500C3C3C300BFBF
      BF00BEBEBE00B6B6B600B5B5B500BABABA00BEBEBE00BFBFBF00BEBEBE00C1C1
      C100C1C1C100BFBFBF00BCBCBC00BBBBBB00BABABA00B2B2B200AEAEAE00AAAA
      AA00A5A5A6009B9B9B00949494009A9A9A00A0A0A000A5A5A500AFAFAF00B7B7
      B700BFBFBF00CECECE00D3D3D300D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFE00FCFCFB00F5D3
      C100CF804B00F2EAE400FCFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC000000000097BEDA0067A5C70066A2BE005393B6005393B600347BA4004482
      A700FDFEFE000000000000000000ABC8DA001F6EA3003079A3003079A3004689
      AE005798B9005999BC004A89AE00FDFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFDFD00FBFEFE00000000000000000000000000FEFF
      FF00FAFEFE00F9FFFF000066E3000060E100005FE10000099D000057DF000052
      DC000052DC00000FA70000049600DAF3F300D4F2F200D1EFEF00CEF0F0000000
      0000000000000000000000000000CDEEEE0000DDFE00007FDA002A8ED10044FA
      FE0000DAFE00000EA100003FBF00B4E6E900AFE6E700AFE5E600C9EEEE000000
      000000000000D5D5D500D3D3D300C6C6C600C5C5C500BFBFBF00BCBCBC00B5B5
      B500B5B5B500A6A6A600A2A2A200A4A4A400A6A6A600AEAEAE00AFAFAF00B4B4
      B400B6B6B600B7B7B700B6B6B600B2B2B200B0B0B000A5A5A5009C9C9C009696
      9400828888006F6D6900636262005C5C5C00767676008C8C8C0095959500A2A2
      A200B2B2B200C9C9C900D1D1D100D9D9D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFFFE00FFFFFE00FCF7F500F1D6C800E4B9
      7D00CE762E00EECCB900FBF9F700FCFFFE00FFFEFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000F8FBFD00A2D0E9007EAFD1004E91B3004E91B3003D7FA7003D7E
      A900F6F9FB000000000000000000A6C4DA002970A0004A88AF004A88AF004E8F
      B40070A8CB0091C0E400B6D7E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000076E7000075E7000070E60000029000006EE5000065
      E3000065E3000029C0000016AF000000000000000000FEFFFF00000000000000
      000000000000000000000000000000D8FF004AFFFF0001EBFF0000ACF80022EE
      FE001AE9FB00001ACD000018C60050A5E300E9F7F700E9F7F700E8F7F700E2F3
      F40000000000D6D6D600D0D0D000C3C3C300BBBBBB00B4B4B400B0B0B000ABAB
      AB00A7A7A70078787800969696009393930076767600585858005D5D5D00A9A9
      A900AEAEAE00ACACAC00AEAEAE00AEAEAE00A7A7A7009B9B9B00949494008C8A
      83001E1F710003026D0037383700040305004646460063636300747474009191
      9100A6A6A600CFCFCF00D5D5D500DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00FCF0E400E4BEAA00D8A05F00F2B2
      5400E4A44900D5744800EDCEBA00FCFBF200FCFEFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE000000000000000000D9E7EE004187AD003074A0003074A000206B9C004B87
      A900000000000000000000000000D9E5EC002975A5004485AB004485AB005796
      B80084B3CD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007DEA00007DE9000079E900000392000073E7000070
      E600006CE5000030CD000020BD00000000000000000000000000000000000000
      000000000000000000000000000000DDFF0038F8FF0000E5FE0000ADF80014E6
      FB000053D200009BF400001FDA0069B5EE0000000000FEFFFF00FEFFFF00FEFF
      FF0000000000D7D7D700D3D3D300BCBCBC00A7A7A7009F9F9F008D8D8D008989
      8900878787007B7B7B00B0B0B0009E9E9E0090909000A5A5A500A2A2A2009898
      9800A2A2A200A6A6A600A6A6A600A6A6A600A2A2A200969696008C8C8C008185
      790012119F0004079B001E222600100F11000F0F0F000A0A0A00232323008A8A
      8A00B7B7B700D1D1D100D7D7D700DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEFC00EDCEC200E1AF6700FCB65400FEB1
      5000FCB55500C0390100D0744400F1DBCC00FBFEFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE000000000000000000DCEAF1003E81AA00266D9E00266D9E00196695002871
      9E00FAFBFD000000000000000000B1CBDB00206D9E003C7FA3003C7FA3004A8D
      B2008BB5D2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000085EE000081EB000080EB0000039200007CE9000079
      E8000075E700004BDB000034CE00000000000000000000000000000000000000
      000000000000000000000000000000DAFE0023EFFE0000E0FE0000A5F600000C
      9C00001DB30016DBFA0020DFFB000FD4F80029DFFB0000000000000000000000
      000000000000D9D9D900D6D6D600C7C7C700A5A2A5007A7A78006B6B6B005F5F
      5F00656565005454540099999900838383007A7A7A0089898900A2A2A2009A9A
      9A00A0A0A000A5A5A500A9A9A900A4A4A400A0A0A0008C8D8C007A7A7B00686B
      6A006D6C6800221F69001216260011101200100F1100100F11000F0F0F000E0E
      0E0025252500D1D1D100D7D7D700DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00F1D8C600F8B45400FCB35200FFB4
      5200FCB45000D27B3200BB2D0200D8956000F7EBE00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFEBF1003E80A900276D9E00276D9E001A669600186B
      9D00EAF1F500000000000000000076A1BE0019689A003573A1003573A1004385
      AA008CB9D1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008BEF000088EE000085EC00000597000081EB00007F
      EA00007DEA000062E600004CDB00000000000000000000000000000000000000
      000000000000000000000000000000D3FB0010E3FB0000D3FA00009BF3000003
      9200001EB30000A0F30002C6F90012D6FA0027E0FB002FE3FD0000C4FA000000
      000000000000DADADA00D6D6D600C5C6C5006E6E6E00575757008C8C8C007777
      7700878787005D5D5D00717171007F7F7F00747474007E7E7E0093939300A2A2
      A200A7A7A700A9A9A900A9A9A900A9A9A900A4A4A5006B6E790002005D000000
      56000301510032364E0014152700111012001110120011101200111011001010
      100009090900D5D5D500DADADA00DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFE00FFFEFE00F1F1F000DEDEDB00E8E8E800F8F5F700F8D5BB00F8B7
      6000F2B75800FEB45300DE913A00C1470E00EECDBB00FCFCFC00000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE000000000000000000E1EEF3004386B100296D9C00296D9C005792B1005A95
      B40075A8C40076AAC80079AAC9005793B300538FB0005692B1005692B1005692
      B100689EBC007FAFC90080B1CC0082B3CD0082B1CC0087B2CB008AB3CF008AB3
      CF008BB3D0008BB5D20094BAD60092BAD50092BAD40094BBD2009ABDD4009CBF
      DA009CBFDA009EC5DB009EC5DA00A6CFE1000000000000000000000000000000
      000000000000000000000090F000008DEF00008DEF00000CA5000088EE000086
      EE000083EB000073EF000063E600000000000000000000000000000000000000
      000000000000000000000000000000BFFA0005D8FA0000C5FA000090F3000003
      9200001EB3000099F30000A7F40000B3F70003C8F9000ED2F9002CE3FB0000CF
      FB0000000000DEDEDE00D9D9D900CDCDCD00151717000B0D0E00070708001312
      14008181810057575700757575008C8C8C007F7F7F0083838300A1A1A100B0B0
      B000AFAFAF00B1B1B100B1B1B100B2B2B200B0B0B0006769A00000018C000F14
      8C0011147B000D0F620012122A00151314001211130011101200111012001111
      110004040400D9D9D900DFDFDF00E1E1E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFE000000
      0000000000009AA59D003C4A3E00444447005452530066676800ABA69F00E1B5
      7200F8B85600F5B85900DD8C4200BA2A0000D79A6900F8DED900FCFBFB000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE000000000000000000ECF4F8005498C3003674A1003674A100A3CBE000B6D7
      E700B6D9EA00BBDEEF009ABFDE0001115D00092F820024488F0024488F00486B
      A5006C98BF0096BAD900AED4EA00BEE2F300C7E9F600C4E4F100BDDFEF00BDDF
      EF00BBDFEE00BBDCEF00BBDEEF00BCDFEF00BADEEE00BADBEE00BCDCEE00BCDE
      EE00BCDEEE00BADBEC00B6D9EB00A5D0E7000000000000000000000000000000
      000000000000000000000094F1000093F0000090EF000013AC00008DEF00008D
      EF00008BEF000073EF000073EE00000000000000000000000000000000000000
      000000000000000000000000000000B7F90000CFF90000BBF800008BF0000003
      9200001EB30000A0F4000097F3000093F20000A3F40000B0F60001C4F90000C8
      F90000000000E6E6E600DEDEDE00DADADA00151718000A0D0E00090B0B00090A
      0A008F8F8F00515151006E6E6E008A8A8A008D8D8D008D8D8D00B7B7B700BABA
      BA00BABABA00BEBEBE00BFBFBF00BFBFBF00C0C0C000BFBFBE007D7AC6002626
      8A0004065D001519790013184100323634001313140013131300121212001212
      120009090900DEDEDE00E1E1E100E1E1E1000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFC00FFFFFC00BFDE
      CD000F5E20000048070018641F0000450F000018000001070100140A05005F34
      1200B4772D00FFB55100EEB65D00C5622200BC2D0000CE794800E8BDA100F5ED
      E700FBEEED00FFFCFC000000000000000000000000000000000000000000FEFE
      FE000000000000000000F9FBFB0062A3C700397CA200397CA200A5C9E200B2D7
      E600B3D7E700B4D7E700668BB40000095A000015700000156F0000156F000013
      6C0000116900000E680000146900052C780022478C004D70A800739FC500739F
      C5009ABCDA00B3D4EA00C0E1F100C7E6F400C4E2F000BEDCEC00BDDCEF00BDDC
      EF00BDDCEF00BADCEE00B6DAEB00A5D1E5000000000000000000000000000000
      000000000000000000000099F3000099F3000099F300001EBB000096F2000096
      F2000094F1000073EF000075EF00000000000000000000000000000000000000
      0000000000000000000000000000009FF40000BBF80000A9F4000081EE000009
      9D000048CF004BEAFE001BDBFA000BD1F90000CCF90000ABF400008DF200009B
      F40000000000E6E6E600E3E3E300DFDFDF00151819000B0D0E00080A0B000405
      06007271710056565600818181008F8F8F0088888800A2A2A200C6C6C600C8C8
      C800C9C9C900C8C8C800C9C9C900CACACA00CECECE00CDCDCD00CFCFCF00EBEA
      D800141668000D0F7A0001016100343442004546460015171900131311001313
      12000E100E00DFDFDF00E3E3E300E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0DCCC000553
      0F00254C2C00AFD1D10040C9D3005DDBE80063C9B9002782450003280500342C
      0800592F0A00DAA24B00FBB95800FCB65700DA8D3800C6531200C3440900CD6E
      4200D8976300F2D2C100FBF9F800FCFFFF00000000000000000000000000FEFE
      FE000000000000000000000000008BB4D200387CA200387CA200A1C7E000B1D2
      E500B1D4E700C4E1EF000C29670000166800001A6C0006367D0006367D00425D
      9A00265392001A418600112A7D00011E740000196F0000156E0000166B000016
      6B0000196D00001D7100001B6E00001C710000196E0000146800001064000015
      670000156700012973001E43760096C0DC000000000000000000000000000000
      000000000000000000000099F3000099F3000099F300002AC6000099F3000099
      F3000098F3000073EF000073EF00000000000000000000000000000000000000
      0000000000000000000000000000009BF30000B3F60000A4F3000079EB00004F
      D3000090EF0000A0F40003CAFB000BDBFD0052EFFE0020DFFA000ED3F90000BD
      F80000000000EBEBEB00EAEAEA00E8E8E800151718000A0C0D00080A0A000406
      060048484800757575008C8C8C009393930085858500C3C3C300CFCFCF00CFCF
      CF00D0D0D000D0D0D000D0D0D000D6D6D600D3D3D300D1D1D300D6D6D600B4B0
      CE000A0A5D0009097900030377000B0A76001E1F500002028600000082000604
      5F00221F2000E3E3E300EAEAEA00EBEBEB000000000000000000000000000000
      00000000000000000000000000000000000000000000F8FCF900468F58000C29
      0D008DA9B20024C5D5005398A100F9F0ED00E5B79700DC9C6000B4B152002464
      2400202602005E3D1200C8833C00FFB65200FCB85800F2BB6000DC974C00D88D
      3F00BD370000D3815300F8E0D500FBFFFF00000000000000000000000000FFFE
      FE00000000000000000000000000AFD4E2003776A2003776A2008DBBD700A1C9
      E000ABCFE500CDEEF50004125600001C6B00001E6F00001B6E00001B6E00031F
      730000186C002D559500142F7D00254588002F58970036589800305595003055
      950023508E001A3983000A297B000021720000176D0000196D00001E6F00001E
      7000001E700000186700030F4A00ABD5E6000000000000000000000000000000
      000000000000E9FAFE000099F3000099F3000099F3000077E7000099F3000099
      F3000099F3000073EF000073EF00000000000000000000000000000000000000
      00000000000000000000000000000099F30000A9F400009FF3000079EB00009B
      F200009DF20000B0F7000072E900008FF00000A5F70004CAFB000FDFFD0038EB
      FD00F8F8F800F0F0F000EEEEEE00E7E7E70045464600090A0A00090909000505
      05004545450087878700969696009595950081818100DEDEDE00D9D9D900DBDB
      DB00DADADA00D8D8D800DADADA00DBDBDB00D9D9D900DBDBDB00DDDBDA004948
      80000C0B59000203770004048100060885000205C5000409CA000205C6000708
      B400EDEBE700EBEBEB00EEEEEE00EBEBEB000000000000000000000000000000
      00000000000000000000000000000000000000000000DEEDE40005531700494A
      490037C5D7002D646F00BCB7B500FCDBC400E5AB5700EAAC4E00FEB55000EAB8
      5700659F4800684414005B300B00C0783200FBB95D00FCB25200F8B65300F8BB
      5D00D37D3400C33D0700E3AF8600FBF2EE00FEFFFF000000000000000000FFFE
      FE000000000000000000F9FBFB00689BBB000C5989000C5989004183AC007BAE
      CD009DC7DF00B3DEF400000D5300001D6C00001E6D00000F6500000F6500506E
      A4004A659E0042639C003E5B9800244F8F0006227400021E710000196A000019
      6A00002172000D347F002A478D003C5D99003F629E00294D9200001E6E00001E
      7100001E7100001561000F1F5900B6DEF0000000000000000000000000000000
      0000000000001970D7000099F3000099F3000099F3000099F3000099F3000099
      F3000099F3000073EF000073EF00000000000000000000000000000000000000
      00000000000000000000000000000099F20000A1F400009BF3000079EB00009B
      F3000098F3000019D7000023D30000A3F2000027CF0000B4F60026D1F9000099
      F400F8F8F800F2F2F200EEEEEE00EDEDED00999B9B0054555600191B1C001214
      1600555555008F8F8F009B9B9B009393930077777700EEEEEE00DFDFDF00DEDF
      E000DFDEDE00E3DFDF00E0E1DF00E1E1E000E1E1E100E0DFDE00E4E3E8000606
      520017157F00030286000001900000004F00171A9C001B2DF5000000C800D7D8
      F100EAEBED00EEEEEE00F0F0F000F2F2F2000000000000000000000000000000
      00000000000000000000000000000000000000000000B8D9C3000A3C12005055
      5900159CA30064646400DDDBDA00F5CEB700FBB15000FFB45200FFB35200FEB4
      5100FFB55400002E090077481B004F290A00BE7B3E00FCB55400FFB55100F7B6
      5800EEBF6000C0480800C65E2300F0D5C900FFFEFF000000000000000000FFFE
      FE000000000000000000A6C5D9002870A1001967990019679900075688004084
      A9008ABAD50070A0C80000135A0000247100002374005D7AB0005D7AB0006C8B
      B600576EA7000E3781005B76AC004466A0004B69A3003F5E9C007F9AC0007F9A
      C000072E7B004667A200315C96000F3781000F2D7D0000196B00002472000024
      71000024710000145B00274E7400B8E1F1000000000000000000000000000000
      0000008FF0000090EF000099F3000099F3000099F3000099F3000099F3000099
      F3000099F3000075EF000069E900000000000000000000000000000000000000
      00000000000000000000000000000099F200009DF3000099F300008DF0000099
      F3000099F30015F3FF000053CE00000A9F00006EDC009CE8FD008ADBFA000000
      0000F8F8F800F2F2F200F2F2F200F0F0F000F2F2F200F0F0F000DEDEDE00787A
      7A00969898009B9B9B009C9C9C009696960074747400D6D6D600E6E6E600E6E6
      E600F7F5F10048497E00FFFFF700E8E6E400E8E8E800F1F1F000464755002521
      6B00030483000202940003039F00000062005D5CAB000605B5000000A000F7F4
      F000EEEBEE00F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      000000000000000000000000000000000000000000009DCCB400163A17003952
      56002872790074706F00E4E4E500F5CDB000FCB24E00FFB85300F8B14E00DDA0
      4500DEA14600B9BB6400074112007A4D1C0048260600CA823A00FFB65300FEB2
      5100F9B95700E19F4700BE3E0300DEB88A00FBFBF7000000000000000000FEFE
      FE00000000000000000070A1BC004081A8003275A1003275A1002A6F9C003578
      A10089B9D600305B90000019640000247400002373000F3481000F348100879F
      C5004268A100092D7B003F5B9B00244D9000255191004F70A800A9BBD900A9BB
      D9006887B4004465A0005A7DAF00B9CBE500476AA30002227400002373000024
      740000247400000E54005D799F00B6DCF000000000000000000000000000009F
      F3000099F3000099F3000099F3000099F3000099F3000099F3000099F3000099
      F3000099F3000057DF00004ADB00000000000000000000000000000000000000
      00000000000000000000000000000098F3000099F3000099F3000099F3000099
      F3000099F30030F4FF0000DDFE000020BB000043CA0000000000000000000000
      0000F8F8F800F7F7F700F7F7F700F7F7F700F4F4F400F2F2F200F4F4F4008989
      8900B9B9B900A1A1A1009C9C9C00898989006E6E6E0095959500EDEDED00F8F9
      F80056566B006562640058555500B2B4B400EAEAEA00F8F7F70011110F000708
      5000000089000102960002039F0002036D00090A5F000504A20000008D00F1F1
      F200F4F4F400F4F4F400F7F7F700F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000000000009DCBB400193E19003450
      51003369710074707100E1E4E400F4D2BC00F4AF4800C8975500A27D5D00836F
      58006B574200673C12007B8046000941100082561E0055320B00CF974300FFB4
      5100F7B75800EAB15600BF410400D57B4D00F9EEDF000000000000000000FFFF
      FE0000000000000000006FA5C1004687AD003F81A6003F81A6004789AB005392
      B2009CC8E10002295E00001C670000267400002676000025760000257600022D
      7B00153F89000025790000267900002679000025760000227500002278000022
      7800002A7B000F3E85000F408600355D99005273AB0006307D00002675000023
      71000023710000094A008FACCD00B8DCF00000000000F3FDFE00009CF3000099
      F30000A4F8005FE3FD000099F3000099F3000099F3000099F3000099F3000099
      F3000099F300001DBC000017B000000000003FC8F80038C8F80036B0EC003694
      E5003CB0F40059C0F200000000000098F3000099F3000099F3000099F3000099
      F3000099F30000CFFA0017E7FD00006FEC00006CEA0000000000000000000000
      0000F8F8F800F7F7F700F8F8F800F4F4F400F4F4F400F7F7F700F8F8F800A5A5
      A500BBBBBB009E9E9E0088888800707070005858580056565700727174005555
      5600757672008786850072717F005D5C5D00D9D8D900F4F4F4000E100F000403
      4C0000019400010293000001900001015F0016166A0005049C0000009E00E3E3
      ED00F4F4F400F8F8F800FBFBFB00F7F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000B5D8C200144016004055
      560025626A0077707000D3CDC700E5B37900E0C69C00EEE8DF00F8F8F800FEFF
      FF00F7F7F80081797200381F1100385421000E37080087541C006A431300FFB5
      5200FBB55200F4BB5F00CF691E00C7531900F1D6C50000000000000000000000
      0000ECF3F8004289AF0079ADCD009CC7DB0017608E0017608E00C5E2F000D4EA
      F300D1E7EE00192E4300010F220000001A0000001E0000002000000020000007
      3600000D490000155400001D5C0000236400002A6B00002E7500003279000032
      790000367E000037810000388400003580000037830000388400003883000030
      740000307400071A5400D4EAF400BCDFEC00000000000093F20000ADF40000A4
      F400001CA90033D4F9000099F3000099F3000099F3000099F3000099F3000099
      F3000099F3000010A8000039C6000093F200009BF3000070EF000055E0000029
      C4000075EF00003CD3000E43C3000099F3000099F3000099F3000099F3000099
      F3000099F30000C0FA0000CCF900007DEF000075EF0000000000000000000000
      0000F8F8F800FCFCFC00FCFCFC00FBFBFB00F8F8F800F8F8F800000000005D5D
      5D00AEAEAE008E8E8E00707070005555550076767600909090009A9A9A009696
      9600949494009B9C94000F107B0054556D00C1C1CE00FFFFFF001F1D1E000605
      47000001930000029900000194000000500015167600020391000003B500DBDB
      F100F7F7F700FBFBFB00FBFBFB00F8F8F8000000000000000000000000000000
      00000000000000000000000000000000000000000000CEEADA00094618006064
      6B00124D5300797A7200B9A58900E4BB6B00FCFCF800FCFFFE0000000000FBFC
      FC00FCFEFC0000000000CECDCB0038221900215523002C380E0074451500FCB4
      5100F7B45300F2BA5D00DA8D3D00C4430C00EEC7B70000000000000000000000
      00007AA8C70080B0CF008DBBDA004687AB000655890006558900BEDCE600D7EE
      F600D6ECF500E4F4F900E0F4F80095ACBF0013315A0091A4B10091A4B1004F68
      8A00223A570000132E0000001E000000180000011F0000093600000F4B00000F
      4B0000155400001C5D0000246700002A6C000031750000347D00003781000027
      69000027690017436C00E0F5FB00BADFEE0000000000009DF30000B5F70000A9
      F4000002920009C3F80000A4F40000A0F3000099F3000099F3000099F3000099
      F3000099F30000069700009DF4000099F3000077EF000075EF000050DD00001E
      BF000081F0000030CD00000FA9000099F3000099F300009CF20000A1F1000099
      F3000099F3000093F10000AFF400008DF2000075EF00CCECF900000000000000
      0000F8F8F800FBFBFB00FBFBFB00FBFBFB00F8F8F800FCFCFC00D7D7D7005959
      5900A5A5A5006A6A6A0059595900868686009B9B9B00AEAEAE00B7B7B700C1C1
      C100BFBFBF00BAB9A700191CB50006056D0000004D00FEFFFF004E4E52000C0D
      320000009F000505A6000806B0000203500003047D00000199000000BA00E7E8
      EE00FBF8FC00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F9F40018612E007778
      780000373D007A777B00BA975500EDD3BE000000000000000000EEEEEA00BAAA
      8300E8C48D00FBFCF900FFFFFE00F2F4F00026150A000A4E200062521700C587
      4200FCBB5A00FBB65200DD984000BF3C0800EDBFAC00FEFFFF0000000000FBFB
      FB00BEDEE40088B6D60084B0D2005991B2004D8CB1004D8CB10090CDC000D7EC
      F500E0EEFA00E0EFFA00D6ECF500DEF0F900B2C4D1001B3E59001B3E5900C9DB
      E400E9F8FB00DEF3FB00BDDFF60099B5CC006F91A600485F8500213752002137
      520004163100000426000003210000052900000B3F0000124D00001956000012
      4D0000124D00526F9500E1F4F900BDE2F0000000000017BCF70000C6F80000C3
      F8000005970001B9F60000B5F60000ACF40000A3F3000099F3000099F3000099
      F3000099F300000597000099F3000099F3000075EF000075EF0052B4EF0014E6
      FE0013E7FD000094EB00000A9D000099F3000099F30053CFE00057D1E100009C
      F2000099F300005DE2000098F300008FF1000075EF003DBDF700000000000000
      0000F8F8F800FCFCFC00FCFCFC00FCFCFC00FBFBFB00FCFCFC007E7E7E006C6C
      6C009F9F9F008E8E8E0098989800A4A4A400B0B0B000B2B2B200F7F7F700F8F8
      F800D2D2D200CFCBC1003D41A7000708B400070BA10000004E00414154000D0D
      000001019F000001A70004039E000A0A7000010190000608C1003838C000FFFF
      FE00FCFCFC00FCFCFC00FBFBFB00FCFCFC00000000000000000000000000FEFE
      FE00FEFFFE00FFFCFF00F8F4EE00F4E8E100F5E7E300FEF8F2009FB891000A20
      010048250900955F2600F7B85B00F4E0CA000000000000000000635649007A4B
      1900FFBB5600F9BB5D00F4C68000EEBF7600EEBC6100FBBB600087A44F00693F
      1400A2612400FCB55200F0B05300CD6C2800BF330300F7EAE100FCFFFF00FFFE
      FC00FEFFFF0071ACD4004F90B1000A5785004D8DB5004D8DB500CBE5EE008ED1
      BA004ABD880052C59300D9EBF100DFECF500DEEBF400EFFDFF00EFFDFF002D45
      67009CACBC00DAECFA00CCE4F300C3E4F100C4E2F100CFEBF400E6F6FD00E6F6
      FD00E5FDFF00C7E6F9009BB3CC00395F7D00051C44001F2F4B0004142F000001
      10000001100090ADC900E2F0F600BEE0EE00000000000000000000B7F70000CF
      F90000AFF9000069DD0000C1F80000BFF80000B8F70000A7F4000097F3000099
      F3000099F3000076E3000099F300009BF3000075EF000070EF00000000000000
      000000B0F60000B3F4000019AD000099F3000099F3006FD7E70089DDE6000099
      F2000099F300004BD3000099F3000094F1000075EF00089CF000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FCFCFC00FEFEFE009E9E9E006262
      6200A6A6A600B5B5B500BABABA00B6B6B600B6B6B600E8E8E800FBFBFB00FBFB
      FB00FCFCFC00BABABB00FBFFFC00FFFFFB006969CA001214910004045D00171B
      2200060A96000001B0000001A100010195000607BB000001C600C9CAEE00FBFC
      FC00FCFCFC00FFFFFF00FCFCFC00FCFCFC00000000000000000000000000FCFE
      FE00FCF5F400F5D8CB00DEAB7E00D07D4C00D07F4D00F4CDB500DEB96E000C4A
      12007849160070461200F1B35600F2D0AF0000000000000000009B9489003E26
      160078572C007458300077552800765528007255290076562E0064451D007750
      1C00542F0A00E1A34800FEB55100F7B75B00C6561400E0B39400FCF1E700FCFE
      FE000000000087C0E6004689B000044A74004C8FAE004C8FAE00DBEBEE000C57
      1A0000914000005E14000B8A4100D1E5EA00DFECF600DAECF400DAECF400E9F6
      FA005A718C0064829600CFEFF900CBEFFA00BBE0EF00B1D4E500D5F3FB00D5F3
      FB00C9E1EF00536886001C385700869DA900DEE7F000F9FEFF00F4FFFF00D7EA
      F900D7EAF900E4ECF600E4ECF500C1E2F10000000000000000003FCAF9000ADD
      FA0007DAFA00009BEE0000CEF90000C9F80000C8F80000C0F80000BBF70000A3
      F4000097F3000098F3000099F300008EF0000075EF0024B0F300000000000000
      00000000000000A3F300009FF6000099F3000099F300A4E2F100ABE6F6000097
      F2000099F3000040CC000099F3000098F2000075EF000089F000000000000000
      0000F8F8F800FCFCFC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00D0D0D0008989
      8900AAAAAA00BABABA00C5C5C500C5C5C50065656500FFFFFF00FCFCFC00FEFE
      FE00FCFCFC00FCFCFC00FCFCFC00F9FCF900F9FCF9001011A000030151000D13
      59000C125C00090CC3000205B9000D14DE00090CDA000303D300FFFEFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FCFCFC00000000000000000000000000FCEE
      E800E0BBA100D3855100E5A34F00E39A4800C5541000DB944B00FCB85300659C
      50004B4110005D380F00C28A4000F5BE7200F9FEF900FEFFFF00F5F7F700E1E1
      DE00E3E1DF00E1E0E000E3E1DF00E1E1E000E1E1DE00E0E0E000514743000F32
      06007B481800A3632400FFB55300F9B55500E8BA5E00C4521900E0BCA000F7F1
      ED00000000009AC1DB004D90B500055081004D8FB1004D8FB100C1E1DF000049
      0A00003C050000923D000051090060AC8500E9F0FA00DAEEF500DAEEF500D2E7
      F000D5EBF600809BB000314C6F0011204B00274469006689A6001B375C001B37
      5C0050698700B2CBD700DFF0F600DFECF600E0ECF600E5EFF500E6F0F600E7F3
      F900E7F3F900E6EFF600E2EEF500C5E2F1000000000000000000000000006CE0
      FA0026F3FE001DEBFE0018E7FD0011E3FB000EE0FD000ADDFA0006D8FA0003D3
      FA0000CEF90000C9F90000B4F7000050DD000066E70000000000000000000000
      0000000000000099F3000099F3000099F3000099F300DDF7FA00000000000099
      F3000099F300008DEE000099F300008FF0000062E500007DEE00000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700ABAB
      AB00AAAAAA00A1A1A1009A9A9A006F6F6F00D7D7D700FCFCFC00FEFEFE00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FBFCFB00FFFEFC00F2F4FC0000006F000708
      9F0010120300090E850004059F000D0EC6003D3DB600FFFFFC00FCFCFC00FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00000000000000000000000000E8C9
      AC00E7B05500DEA94B00FCB45300FEB44F00F8C26100D58A3D00F9B65400DBB5
      5A00002F0600804F1E0077481400F9B35300F9F4EA00FEFFFF0000000000FEFF
      FF0000000000FCFFFF00FBFFFF0000000000FBFFFF0000000000AFACA1001759
      1A005A3F13005F380F00E4A64B00F8B65500F1B85C00BB430A00CC643000F0D7
      CA0000000000F8FAFB008AC0E0004F8FB2005494B5005494B500DAEEF500BBDF
      D100217D4500005F100000530900006F2100AFDFD700D9EEF600D9EEF600CCE6
      F100ABD1E7007DAFCF005794B20000133F00163A63002E76A1001E6A96001E6A
      96008FBCD700C3E2EE00D7ECF500DAEEF500DEEEF600E4EEF500E4EFF400E4F0
      F500E4F0F500E4F0F500E4EFF600C0E2F0000000000000000000000000000000
      000002ACF40037FAFF0032F6FF0026F2FE0021EFFE001AEAFD0016E8FD000FE3
      FB000CE2FB0000C9FA000041CF000037CF001D85E70000000000000000000000
      0000000000000099F3000099F3000098F300009BF30000B8F400000000000099
      F3000099F3000099F30000ABF6000084EB000048D800006BE300000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0
      E0009B9B9B00585858005A5A5A0066666600FFFFFF00FCFCFC00FCFCFC00FEFE
      FE00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FEFEFE00FCFCFC009694DB000000
      9800060A5D00090B700001025F009E9FCF00F9FCFC00FEFFFB00FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FEFFFF00EDB8
      7100FEB25000FCB35300F7B55800F4B55800F5B55000FBB45500F5B85900F8B4
      5400468746003C3D110065401300FCB65500F0D5B000FCFEFC0000000000D1CE
      CC002F170700F8BF6F00F1BF6D00E4BE6E00F7F2E70000000000F0F0ED006C94
      46001F2E080060391300B27E3900F2BB5F00F4B65600E0954400BC420900E4BF
      A4000000000000000000CBE5EE006DAEDA00629EBF00629EBF006095B5006599
      BA006F9EC0005495AC002F808C0028798100277F7A00629ABA00629ABA005E96
      B2004D88B0000C5A8B00065389001C6B9B007FB3D4007BAFCF006BA6C5006BA6
      C5004B8DB1006EABD10076B0D2007AB3D5007AB3D7007CB4DA007DB9DA007FB8
      D6007FB8D60081BBDC0084BCDB0073B1DA000000000000000000000000000000
      000000000000198DE7000050D200005FD600005FD600005FD600005AD600005C
      D7000041CD000007A0000010B0001A5FCF000000000000000000000000000000
      00000000000000A3F40000A8F40000ADF40000B4F60000B1F600F2FBFE000096
      F2000097F300009FF30000CCF900005ADA000029C5001089E000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
      F1005555550062626200626262005A5A5A00A5A5A500FFFFFF00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FFFFFF00FEFEFE00FFFFFF00FEFFFE00FCFEFB00FFFF
      FF00444388000A0C5A000000520002005400E3E3F200FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FEFFFF00F5B2
      5400F8B65800F9B75600FCB75400FCB55200FFB45200FFB65400FCB45200F9B7
      5800E8C161000F4915007B511C00F1B75A00F1B35700F8EEDF00FCFFFF00F8F7
      F50058514C00EAAC4D00F7B75800F7B14B00F4DECC0000000000FEFFFF00A972
      34000551150076481C007D501E00F8BB5F00F4B85A00E8A95200C3480C00E0BA
      94000000000000000000FEFFFF00DAECF5006DA6C7006DA6C7004E90B3005292
      B6005594B8005897B6005E9CBE0063A0C40065A0C30066A4C00066A4C0009AC9
      E40072A5C1006EA5C400427FA6003C7EA30091BEDA008FBDDA00A3D7EF00A3D7
      EF00C8DFE900E2F0F400E2EFF500E0EFF400DFECF400DEECF300DEEBF300DCEA
      F100DCEAF100DAEAF100DAE9F100DEECF6000000000000000000000000000000
      0000000000000000000000000000184CC0001E4CBD001E4BBD000024B400002D
      B4001F6BC900479CDC0000000000000000000000000000000000000000000000
      00000000000000A4F30000C4F90000CAF80002D3F9003CE1F900D8F2F7000AE1
      FA0013E7FB0015E7FD000ADFFD00000FAD00001CB700A1D1F400000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F4006565
      650070707000727272006F6F6F006D6D6D0062626200A7A7A700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FFFFFF001D19
      6E0011137D00000063000000620000005D0000005500DEDEF100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000ABABAB00B0B0B000F8BB
      7500FBB15300BA7B30009B642400DA9D4500EEB15200AA6F2900F1AF4E00FEB3
      5200FFB45000869F4F002A3C0B008D592300FBB34E00EDC78300F7FBF5000000
      0000E5E5E400603A0F00D6974500E8A94D00F0DBCA000000000000000000A163
      260053813D00413D0E00683F0F00E0AF5700F4B95C00E3A74C00C3551B00EDC7
      B60000000000000000000000000000000000EEF4F600EEF4F600226C97001463
      9100206B9B003679A4005D97B500619CBC007CB0D200C8ECFA00C8ECFA00FBFD
      FD00D1EAF100D5F4FA0087B3D600A3D2E700E5F8FE00E9F9FE00F4FAFD00F4FA
      FD00FFFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C4EBFB000060DB00003DD7000028C3000019
      B500000EA900AFC9EC0000000000000000000000000000000000000000000000
      00000000000073E3FB0007DAFA001AEAFF0020EEFF0075F9FF003BEEFF0018EA
      FF001DE1FD0012BDEC000014AD0000089B000024B80000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008A8A8A008383
      830086868600888888008686860081818100797979006C6C6C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005152A9001215
      9100080985000100790001007D0002007D000000750009077700FBFEFC00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00C9C9C9002F2F2F00F7D1
      A100F0C58A00CFCCC40051463C0081511D00F2DBB80027170F00C9853F00FFB7
      5200FEB45200F7BC580033672E00552F0E00C5853900F8B34E00F1CEA900FBFE
      FE00FFFFFE0061574B00422510008C694B00F8F9F20000000000FFFFFC00AE76
      3300A1AD5100132C070066371000CB8A4100F8B85C00E3A55700D9A36E00F7DF
      DA0000000000000000000000000091B2C80000497E0000497E00004474000047
      780000497D00004C7F004482A600FEFFFF000000000000000000000000000000
      0000FFFFFE00000000000000000000000000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFEAFA000060E1000059DF000052DC000052DC000055
      DD000030C8000020BC00BBD6F200000000000000000000000000000000000000
      000000000000000000003DAFEC000B93EC000066DC00001CB70000008800010E
      99000F1CA7000F1EA8000F3FB90096C9EB000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800909090009E9E
      9E009F9F9F009F9F9F009E9E9E009A9A9A00909090007F7F7F00D5D5D500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00111293000506
      8E0002028D000102990002039A0000019A000000910000008900E0DFF000FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000003C3C3D00FBF7
      F500F7F5EB000000000092898200502A0500F7DAAF0044362700A1662200FEB6
      5300FBB25300FFB44F00D2B75A00A16026004B250A00DB9A4600FCB55000F1CD
      A100FEFFFF0000000000F7F8F800F5FEFE00FEFEFF00FFFFF900FBFCFE00DDA5
      4C00D2BC5C0012390A0059320C00B26C2D00A66F3300D9C7B800F9F0EA00FBFC
      F80000000000000000008EAFC80002518700004D8000004D8000004D8000004B
      7E00004D8100014E8100015387007DA7BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008BEE000081EA000077E700006FE5000060E1000053
      DC000052DC000063DC00005FD800000000000000000000000000000000000000
      0000000000000000000000000000CCECFA0000AFF200005FDF000047D8000026
      C9000CD6FA0080B1E50000000000000000000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400AFAFAF00B0B0
      B000B5B5B500B9B9B900B5B5B500B2B2B200A6A6A6009B9B9B00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFBFE00000095000000
      99000001A7000001AF00100CBA000307C3000508C0000000A900A9A7DD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000616161000000
      00000000000000000000B7B4B0002E160300EBBE81006960520068411300FCB9
      5400FEB65300FCB55400FFB75500031F050095582300673C0F00DEA14800F8B4
      4F00EAC17A00F9FBF900FCFFFF000000000000000000F7FEFE00C4B39F00FBB9
      5600EDBF5F000F4C11004D2F0A0056492A0028453000DBDAD90000000000FEFC
      FB00000000006499B9001C699B001E6999001E6998001E6998001C6898001C68
      97001E6997001E699A0021699A00226D9E0087B0C90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000096F200008EEF000088EE00007DE900006FE5000066
      E3000059DF00004CDB00008AEA00000000000000000000000000000000000000
      00000000000000000000FAFEFE00009BEB00009CEB000083E6000065E0000044
      D7000030CE0010E3FF0098BBE600000000000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800C2C2C200C6C6
      C600C9C9C900CACACA00C7C7C700C5C5C500BEBEBE00B0B0B000D7D7D700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000A4000103
      C2000000BC000101C700262CF4000607D8000203D0000202C800A7A9DE00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000979797000000
      0000F5F5F500C7C7C700D9D8D50027180E00D79A5500AFAAA2002C160A00744E
      1D00714F1E00724E1C00744B16007DA251000F2C0700724919006C451200E1A4
      4A00FFB54E00F2C57900EBD1B100F2D7BC00F1D5B900E1C38600DFAA5200E5AD
      6A00EBC1A400115D22003D3E2800596D6C0024707A00D6D6D80000000000FEFC
      FB0000000000488DB5003775A2003674A1003673A1003673A1003673A0003675
      A2003675A1003678A000377AA000397CA3005794BB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000099F3000096F200008FEF000089EE00007FEA000075
      E7000069E300005CE0000094EF00000000000000000000000000000000000000
      00000000000000000000005CDF0007CCF90000AFF0000090E9000076E3000057
      DC000038D10015E7FE0000079900000000000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00CACACA00D1D1
      D100D5D5D500D9D9D900D9D9D900D2D2D200CBCBCB00BFBFBF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001313C100070B
      E1000409E0000303DD00080CF9000000DA000406ED000001E700E0E0F200FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BCBCBC000000
      0000C1C1C100A4A4A400FBFCFB00422D1E00AA6B2400F7F8F500DAD9D800D8D8
      D600DAD9D500DCDCDA0051412D00F5BC5A005487410022380A006F4415006943
      1100DDA64D00B0521700D79A5A00F0BA7000F7B04A00E8B45C00E0AE6900F0DA
      CF00FFFFFE001567300038473D0069919C001C798200DDDCDC0000000000FEFC
      FB00000000004B90BA004485AA004483AA004484A8004484A8004483A9004484
      AA004483AA004586AB004686AE004887AD00599EC70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009DF3000099F3000096F2000092F000008DEF000084
      EB00007CE9000081EA000096EE00000000000000000000000000000000000000
      000000000000000000000050DB006EE1FB0022CEFA0000A4EF00008DE900006C
      E100004CDA0017EAFF000012AC00DBE9F6000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDED00DEDE
      DE00E1E1E100E1E1E100E0E0E000DEDEDE00D6D6D600D9D9D900FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFE008080DE000000
      DE000A0CF8000204F1001A21F800383DF9000305F7001717D300FFFEFB00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC000000000000000000FEFEFE00CACA
      CA004D4D4D00F4F4F400FEFEFE00AAA49C00471B0000F5F9F80051494600955A
      1E00EBB15400F2AC4900F1AE4C00FCB54F00FFB15100FCB756006B9C49000021
      00008A501D007F4413006116000065514300DADCDC0000000000FFFFFE00F9FF
      FE00D7F0E300093D10004947470072CDD50025505700FBFBFB0000000000FEFC
      FB00000000005699BB005291B5004F91B4004F90B2004F90B2004F8FB2004F90
      B2004F91B4005290B4005392B5005494B40065A9D20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000098F3000099F3000098F2000094F000008D
      EF000084EB000099EF0000000000000000000000000000000000000000000000
      000000000000000000000048DA00B7F3FB0069E1FB0009BFF4000099EB000083
      E6000069E000008EE800001FB900E1EFF7000000000000000000000000000000
      0000F5F5F500FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F0F0
      F000F0F0F000F2F2F200F1F1F100EDEDED00E4E4E400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFF9004A49
      D3000305FE000709FC000B0CF4000C0EF7000000EE00EAEAF700F8FCFF00FFFF
      FE00FFFFFF00FFFFFF00FFFFFF00FCFCFC000000000000000000000000008181
      8100C0C0C000FBFBFB00FBFBFB00D6D3D2001D080000FEFCFB00B0ACAB006A5B
      4D007D6A53007D69500072604800D1A06100F1BF7E00F1B55D00F5B65C008DA4
      5C00053F0D00442004000D08000049463C00726D6A0094929200D0D0D0000000
      00006DB88600031E05006E83850022BFCC00585F5F000000000000000000FCFB
      FB00000000006FADD20062A0BF00609EBF005E9DBF005E9DBF005E9DBC005E9D
      BC005F9DBD00629FC00062A0C00063A1C10082BAE00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000A1F4000099F3000098F300009C
      F2004AD8F9000000000000000000000000000000000000000000000000000000
      000000000000000000000033CE008EF3FE00BBF4FE0020D3FA0000AFF0000093
      EA0008CEF9000043D600002DC800000000000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F8F800F7F7F700FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FC
      F900E4E4F0001314D2000202F1005355D300FFFFFE00FEFFFB00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC00FFFFFF00FCFCFC000000000000000000FEFEFE009494
      9400FCFCFC0000000000FEFEFE00F1EEEE006C6A6900FCFCFC00F8F8F200F4F0
      E300F5EBE300F4EDE400E4DDD600CBAD8D00F9F5F400F7DECF00F2D0C000F5D5
      C100C3CEAC00071C000015221500082F370011292E00364045004B4D4E005C7F
      610000460800193834002DBDCC00479CA400DAD5D1000000000000000000FBFB
      FB000000000098D0EE007AADCD0075AACF006FA8C8006FA8C8006EA7CB006FA9
      C8006FAACB0074A8CC0076ABCC007EB2D100A2CBDF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004FDA000063E0000080EF000073
      EF000075EF00007AEF0000000000000000000000000000000000000000000000
      0000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFF
      FE00FBFEFB00FCFCFB00FBFFFE00FCFBFC00FBFCFE00FBFFFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FEFEFE00F8F8
      F800000000000000000000000000FEFEFE00F9F9F900FBFBFB00EED0B600E7C1
      8A00EEBE8000F0B96E00E7B26800EDC5B400FFFCFC00FCFFFF00FEFEFF00F9FF
      FF00FBF9F40089AE7A00216A340008411600002F1900001E100000140700004B
      0E00056B58002ABBC90078D3D900E8E8E800000000000000000000000000FEFC
      FC0000000000F8FAFD00BEE7F400A4C9E100A1CCDF00A1CCDF009FC9E000A0CB
      E000A1C8E400A7CDE200AED5E900D5EFF500FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEF7FB00008EEE000083
      EF00C8EAFA000000000000000000000000000000000000000000000000000000
      0000F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F8F2EA00FBDE
      E100F8E5DE00F2D1B900E7B57500F2E0DA00FCFFFF0000000000000000000000
      000000000000FFF2F100FEFFF800B9E1C90060B4790036874D002E8A4B009FDB
      D000BEFFFF00E5FBFC0000000000000000000000000000000000000000000000
      00000000000000000000EFF8FA00DEF4F900BCDEEE00BCDEEE00BAD7EC00BBDC
      EB00BCDEF000C4E4F400E4F8FA00FDFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFF700FEFF
      FC0000000000FBFFF900F5FCF700FEF8FF000000000000000000000000000000
      000000000000F7FFFF00FEFEFF00FBFFFE00FEFBFF000000000000000000FBFE
      F900F5FBFF00F7FEFF00F9FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FEFEFF00F8FEFE00F8FEFE00EBF9FD00DFEE
      F800E6F1F500F5F9FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000090000000900000000100010000000000400B00000000000000000000
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
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F1FFFFFFF800000000FF83FFE00C0000
      01FF0000E07FFFFFF000000000FE01FFE0000000001F0000E07FFFFFF0000000
      00F000FFF0000000001F0000EF0FFFFFF000000000E0007FF800000000010000
      EFC1FFFFF000000000E0007FF800000000000000FFF03FFFF000000000E00000
      0000000000000000FFF03FFFF000000000E000000000000000000000D9FE0FFF
      F000000000E000000000000000000000DB3FC7FFF000000000E0000000000000
      00000000DA0FF07FF000000000C000000000000000000000DA0FF07FF0000000
      00EC0000000E000000000000D0F1FC1FF000000000E40000000E000000030000
      92347FC7F000000000FF0000000C000000010000B0100FE0F000000000FF0000
      000C000000010000B0100FE0F000000000FF0000000C000000010000B86197FC
      3000000000FF0000000C000000010000BF28017F8000000000FF0000000C0000
      000100009FA1815FE000000000FF0000000C0000000100009FA1815FE0000000
      00FF0000000C00000001000087FCA007E000000000FF0000000C000000010000
      E07E04026000000000FF8000000D000000010000FE3FF430C000000000FFF803
      000C000000010000FE3FF430C000000000FFF803000E000000010000FF0FFC11
      D000000000FFFE00000C000000010000FFC1FE51900000000003FE00000C0000
      00010000FFFC7FC1104000000003FE00000F00043E3F0000FFFC7FC110000000
      0000FE00000E00003EFF0000FFFF0FF8100000000008FE00000FA001FFFF0000
      FFFFC3FEB00000000008FE00000FE01FFFFF0000FFFFF87FB0000000001FFE00
      000FE01FFFFF0000FFFFF87FB0000100000FFE00000FE03FFFFF0000FFFFFE1F
      B0000000000FFE00000FE03FFFFF0000FFFFFFC370000000004FFE00000FE03F
      FFFF0000FFFFFFF0700000000003FE00000FE01FFFFF0000FFFFFFF070000000
      0003FE00000FE03FFFFF0000FFFFFFFFF00000000003FFFFFF0FF23FFFFF0000
      F800FFFFF800000000FFFFC3FFF80F01FFBC0000E0003FC0F000000000FFFF81
      FFE80600FFFC0000E0001E001800000000FFFE007FE80601FFFF0000FC01BE00
      0800000000FFFE007FEC0E07FFFF0000FC01FE008800000000FFFE007FEC0607
      FFFF0000FC01FE007800000000FFFE007FFC0607FFFF0000FC01FE0018000000
      00FFF0003FEC000000000000FC01FE000800000000FFD8001FEC000000000000
      FC01FE000800000000FF800003EC000000000000FC01FE000800000000FFC000
      00EE000000000000FC01FE000800000000FF800000EE000000000000F801FE00
      0000000000FF8000006C000000000000F801FE000000000000FF8000006C0000
      00000000F001FE001000000000FF8000006C000000000000E001FE0070000000
      00FF8000006C000000000000800102007000000000FF80000070000000000000
      800000007020000000FF80240070000000000000800000003000000000FF80C0
      0020000000000000800000003000000000E000C00000000000000000C0003000
      3000000000E000C00008000000000000C00038003000000000E0000000080000
      00000000E00078203000000000E000294008000000000000F000782038000000
      00C00020400C000000000000F800F8003000000000C00000400C000000000000
      FE03F8003000000000800010600F000007FF0000FE03F8007000000000000000
      400E00F77FFF0000FC01FC00F000000000C40004000C00FFFFFF0000FC01FE03
      F000000000DC00018028007FFFFF0000FC01FC01F000000000D000000028007F
      FFFF0000FC01FC01F000000000D000000028007FFFFF0000FC01FC00F0000000
      00C000004028007FFFFF0000FE03FC00F000000000E000001068007FFFFF0000
      FF07FC01F000000000C400000068007FFFFF0000FFFFFF03F000000000CE0000
      00E8007FFFFF0000FFFFFF87F000000000FF807803FC00FFFFFF0000FFFFFFFF
      F000000000FFC8F861FE03FFFFFF000000000000000000000000000000000000
      000000000000}
  end
  inherited SPEvent: TIBStoredProc
    Left = 448
  end
  inherited EEvent: TIBEvents
    Left = 480
  end
  inherited SQLEvent: TIBSQL
    Left = 512
  end
  inherited ALPrincipal: TActionList
    Left = 440
  end
  object ped_cab: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.R' +
        'EP_FANT,PAG_DPAG'
      'FROM   PED_VEN_CAB,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG'
      'WHERE  PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID'
      'AND    PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND    PED_VEN_CAB.ROM_CREP = CAD_REP.ID'
      'AND    PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID'
      'AND    PED_VEN_CAB.ID = 0'
      'ORDER BY ID DESC')
    Left = 416
    Top = 136
    object ped_cabID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ped_cabROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_VEN_CAB"."ROM_CDOC"'
    end
    object ped_cabROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_CAB"."ROM_CDPR"'
    end
    object ped_cabROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_CAB"."ROM_CDPD"'
    end
    object ped_cabROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_CAB"."ROM_CDRO"'
    end
    object ped_cabROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_CAB"."ROM_CDRD"'
    end
    object ped_cabROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_CAB"."ROM_CDNF"'
    end
    object ped_cabROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_VEN_CAB"."ROM_CDBX"'
    end
    object ped_cabROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"PED_VEN_CAB"."ROM_CDCX"'
    end
    object ped_cabROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
      Size = 30
    end
    object ped_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"PED_VEN_CAB"."ROM_STPD"'
      Size = 30
    end
    object ped_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"PED_VEN_CAB"."ROM_STCO"'
      Size = 30
    end
    object ped_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB"."ROM_STFI"'
      Size = 30
    end
    object ped_cabROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"PED_VEN_CAB"."ROM_DROM"'
    end
    object ped_cabROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"PED_VEN_CAB"."ROM_HROM"'
    end
    object ped_cabROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_VEN_CAB"."ROM_DBAI"'
    end
    object ped_cabROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"PED_VEN_CAB"."ROM_DCAN"'
    end
    object ped_cabROM_DNFS: TDateField
      FieldName = 'ROM_DNFS'
      Origin = '"PED_VEN_CAB"."ROM_DNFS"'
    end
    object ped_cabROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"PED_VEN_CAB"."ROM_DEXP"'
    end
    object ped_cabROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"PED_VEN_CAB"."ROM_HEXP"'
    end
    object ped_cabROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"PED_VEN_CAB"."ROM_CEXP"'
    end
    object ped_cabROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"PED_VEN_CAB"."ROM_CCLI"'
    end
    object ped_cabROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"PED_VEN_CAB"."ROM_CVEN"'
    end
    object ped_cabROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_VEN_CAB"."ROM_CREP"'
    end
    object ped_cabROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_VEN_CAB"."ROM_CPAG"'
    end
    object ped_cabROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"PED_VEN_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object ped_cabROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_CAB"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object ped_cabROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_CAB"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object ped_cabROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"PED_VEN_CAB"."ROM_RLVE"'
    end
    object ped_cabROM_TSDE: TIBBCDField
      FieldName = 'ROM_TSDE'
      Origin = '"PED_VEN_CAB"."ROM_TSDE"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"PED_VEN_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object ped_cabROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"PED_VEN_CAB"."ROM_PDSC"'
      Precision = 9
      Size = 2
    end
    object ped_cabROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"PED_VEN_CAB"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object ped_cabROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"PED_VEN_CAB"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object ped_cabROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"PED_VEN_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_VEN_CAB"."ROM_CONC"'
    end
    object ped_cabROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ped_cabROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"PED_VEN_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object ped_cabROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_VEN_CAB"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object ped_cabCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object ped_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object ped_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object ped_cabPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object ped_cabROM_DPRD: TDateField
      FieldName = 'ROM_DPRD'
      Origin = '"PED_VEN_CAB"."ROM_DPRD"'
    end
    object ped_cabROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"PED_VEN_CAB"."ROM_CTNR"'
    end
    object ped_cabROM_DEMB: TDateField
      FieldName = 'ROM_DEMB'
      Origin = '"PED_VEN_CAB"."ROM_DEMB"'
    end
    object ped_cabROM_DDES: TDateField
      FieldName = 'ROM_DDES'
      Origin = '"PED_VEN_CAB"."ROM_DDES"'
    end
    object ped_cabROM_CBAI: TIntegerField
      FieldName = 'ROM_CBAI'
      Origin = '"PED_VEN_CAB"."ROM_CBAI"'
    end
    object ped_cabROM_TBAI: TDateTimeField
      FieldName = 'ROM_TBAI'
      Origin = '"PED_VEN_CAB"."ROM_TBAI"'
    end
    object ped_cabROM_UPRN: TIntegerField
      FieldName = 'ROM_UPRN'
      Origin = '"PED_VEN_CAB"."ROM_UPRN"'
    end
    object ped_cabROM_PPRN: TSmallintField
      FieldName = 'ROM_PPRN'
      Origin = '"PED_VEN_CAB"."ROM_PPRN"'
    end
    object ped_cabROM_TPRN: TDateTimeField
      FieldName = 'ROM_TPRN'
      Origin = '"PED_VEN_CAB"."ROM_TPRN"'
    end
    object ped_cabROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"PED_VEN_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"PED_VEN_CAB"."ROM_CTRA"'
    end
    object ped_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"PED_VEN_CAB"."ROM_DTRA"'
      Size = 60
    end
    object ped_cabROM_VIPI: TIBBCDField
      FieldName = 'ROM_VIPI'
      Origin = '"PED_VEN_CAB"."ROM_VIPI"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_VNF: TIBBCDField
      FieldName = 'ROM_VNF'
      Origin = '"PED_VEN_CAB"."ROM_VNF"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"PED_VEN_CAB"."ROM_DSEP"'
      Size = 40
    end
    object ped_cabROM_DERD: TIBStringField
      FieldName = 'ROM_DERD'
      Origin = '"PED_VEN_CAB"."ROM_DERD"'
    end
    object ped_cabROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_CAB"."ROM_RLPD"'
    end
    object ped_cabROM_TSRO: TIBBCDField
      FieldName = 'ROM_TSRO'
      Origin = '"PED_VEN_CAB"."ROM_TSRO"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_TCRO: TIBBCDField
      FieldName = 'ROM_TCRO'
      Origin = '"PED_VEN_CAB"."ROM_TCRO"'
      Precision = 18
      Size = 2
    end
    object ped_cabROM_ENVWEB: TSmallintField
      FieldName = 'ROM_ENVWEB'
      Origin = '"PED_VEN_CAB"."ROM_ENVWEB"'
    end
    object ped_cabROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"PED_VEN_CAB"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object ped_cabROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"PED_VEN_CAB"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object ped_cabROM_MFRT: TSmallintField
      FieldName = 'ROM_MFRT'
      Origin = '"PED_VEN_CAB"."ROM_MFRT"'
    end
  end
  object ped_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM PED_VEN_ITE')
    Left = 448
    Top = 136
    object ped_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ped_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_VEN_ITE"."ROM_CCAB"'
    end
    object ped_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_VEN_ITE"."ROM_CDOC"'
    end
    object ped_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_ITE"."ROM_CDPR"'
    end
    object ped_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_ITE"."ROM_CDPD"'
    end
    object ped_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_ITE"."ROM_CDRO"'
    end
    object ped_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_ITE"."ROM_CDRD"'
    end
    object ped_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_ITE"."ROM_CDNF"'
    end
    object ped_iteROM_ITEM: TIBStringField
      FieldName = 'ROM_ITEM'
      Origin = '"PED_VEN_ITE"."ROM_ITEM"'
      Size = 5
    end
    object ped_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_VEN_ITE"."ROM_CPRO"'
    end
    object ped_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"PED_VEN_ITE"."ROM_CPR2"'
    end
    object ped_iteROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"PED_VEN_ITE"."ROM_CDET"'
      Size = 10
    end
    object ped_iteROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      Origin = '"PED_VEN_ITE"."ROM_QTDE"'
      Precision = 18
      Size = 4
    end
    object ped_iteROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_ITE"."ROM_QTRL"'
    end
    object ped_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object ped_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_VEN_ITE"."ROM_RLSP"'
    end
    object ped_iteROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_ITE"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object ped_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_ITE"."ROM_RLPD"'
    end
    object ped_iteROM_UNIT: TFloatField
      FieldName = 'ROM_UNIT'
      Origin = '"PED_VEN_ITE"."ROM_UNIT"'
      DisplayFormat = ',##,0.00###'
    end
    object ped_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_VEN_ITE"."ROM_PREC"'
      DisplayFormat = ',##,0.00###'
    end
    object ped_iteROM_VDSC: TIBBCDField
      FieldName = 'ROM_VDSC'
      Origin = '"PED_VEN_ITE"."ROM_VDSC"'
      Precision = 9
      Size = 2
    end
    object ped_iteROM_TOTA: TIBBCDField
      FieldName = 'ROM_TOTA'
      Origin = '"PED_VEN_ITE"."ROM_TOTA"'
      Precision = 18
      Size = 2
    end
    object ped_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_VEN_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object ped_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_VEN_ITE"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object ped_iteROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"PED_VEN_ITE"."ROM_DPRO"'
      Size = 120
    end
    object ped_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"PED_VEN_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object ped_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"PED_VEN_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object ped_iteROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"PED_VEN_ITE"."ROM_DUNI"'
      Size = 6
    end
    object ped_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ped_iteROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"PED_VEN_ITE"."ROM_DSEP"'
      Size = 40
    end
    object ped_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"PED_VEN_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
    object ped_iteROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"PED_VEN_ITE"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object ped_iteROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"PED_VEN_ITE"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object ped_iteROM_DTPD: TDateTimeField
      FieldName = 'ROM_DTPD'
      Origin = '"PED_VEN_ITE"."ROM_DTPD"'
    end
    object ped_itePDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"PED_VEN_ITE"."PDSC"'
      Precision = 9
      Size = 2
    end
    object ped_iteDGCP: TIBStringField
      FieldName = 'DGCP'
      Origin = '"PED_VEN_ITE"."DGCP"'
      Size = 60
    end
  end
  object dtsped_ite: TDataSource
    DataSet = ped_ite
    Left = 448
    Top = 168
  end
  object rom_cab: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_F' +
        'ANT,PAG_DPAG'
      'FROM   ROM_CAB,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG'
      'WHERE  ROM_CAB.ROM_CCLI = CAD_CLI.ID'
      'AND    ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND    ROM_CAB.ROM_CREP = CAD_REP.ID'
      'AND    ROM_CAB.ROM_CPAG = TAB_PAG.ID'
      'AND    ROM_CAB.ID = 0'
      'ORDER BY ID DESC')
    Left = 480
    Top = 136
    object rom_cabID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_cabROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"ROM_CAB"."ROM_CDOC"'
    end
    object rom_cabROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"ROM_CAB"."ROM_CDPR"'
    end
    object rom_cabROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"ROM_CAB"."ROM_CDPD"'
    end
    object rom_cabROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"ROM_CAB"."ROM_CDRO"'
    end
    object rom_cabROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"ROM_CAB"."ROM_CDRD"'
    end
    object rom_cabROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"ROM_CAB"."ROM_CDNF"'
    end
    object rom_cabROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"ROM_CAB"."ROM_CDBX"'
    end
    object rom_cabROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"ROM_CAB"."ROM_CDCX"'
    end
    object rom_cabROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"ROM_CAB"."ROM_DERO"'
      Size = 30
    end
    object rom_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"ROM_CAB"."ROM_STPD"'
      Size = 30
    end
    object rom_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"ROM_CAB"."ROM_STCO"'
      Size = 30
    end
    object rom_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"ROM_CAB"."ROM_STFI"'
      Size = 30
    end
    object rom_cabROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"ROM_CAB"."ROM_DROM"'
    end
    object rom_cabROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"ROM_CAB"."ROM_HROM"'
    end
    object rom_cabROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"ROM_CAB"."ROM_DBAI"'
    end
    object rom_cabROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"ROM_CAB"."ROM_DCAN"'
    end
    object rom_cabROM_DNFS: TDateField
      FieldName = 'ROM_DNFS'
      Origin = '"ROM_CAB"."ROM_DNFS"'
    end
    object rom_cabROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"ROM_CAB"."ROM_DEXP"'
    end
    object rom_cabROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"ROM_CAB"."ROM_HEXP"'
    end
    object rom_cabROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"ROM_CAB"."ROM_CEXP"'
    end
    object rom_cabROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"ROM_CAB"."ROM_CCLI"'
    end
    object rom_cabROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"ROM_CAB"."ROM_CVEN"'
    end
    object rom_cabROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"ROM_CAB"."ROM_CREP"'
    end
    object rom_cabROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"ROM_CAB"."ROM_CPAG"'
    end
    object rom_cabROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"ROM_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object rom_cabROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"ROM_CAB"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object rom_cabROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"ROM_CAB"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object rom_cabROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"ROM_CAB"."ROM_RLVE"'
    end
    object rom_cabROM_TSDE: TIBBCDField
      FieldName = 'ROM_TSDE'
      Origin = '"ROM_CAB"."ROM_TSDE"'
      Precision = 18
      Size = 2
    end
    object rom_cabROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"ROM_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object rom_cabROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"ROM_CAB"."ROM_PDSC"'
      Precision = 9
      Size = 2
    end
    object rom_cabROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"ROM_CAB"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object rom_cabROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"ROM_CAB"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object rom_cabROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"ROM_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
    object rom_cabROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"ROM_CAB"."ROM_CONC"'
    end
    object rom_cabROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"ROM_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object rom_cabROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"ROM_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object rom_cabROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"ROM_CAB"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object rom_cabCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object rom_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object rom_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object rom_cabPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object rom_cabROM_DPRD: TDateField
      FieldName = 'ROM_DPRD'
      Origin = '"ROM_CAB"."ROM_DPRD"'
    end
    object rom_cabROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"ROM_CAB"."ROM_CTNR"'
    end
    object rom_cabROM_DEMB: TDateField
      FieldName = 'ROM_DEMB'
      Origin = '"ROM_CAB"."ROM_DEMB"'
    end
    object rom_cabROM_DDES: TDateField
      FieldName = 'ROM_DDES'
      Origin = '"ROM_CAB"."ROM_DDES"'
    end
    object rom_cabROM_CBAI: TIntegerField
      FieldName = 'ROM_CBAI'
      Origin = '"ROM_CAB"."ROM_CBAI"'
    end
    object rom_cabROM_TBAI: TDateTimeField
      FieldName = 'ROM_TBAI'
      Origin = '"ROM_CAB"."ROM_TBAI"'
    end
    object rom_cabROM_UPRN: TIntegerField
      FieldName = 'ROM_UPRN'
      Origin = '"ROM_CAB"."ROM_UPRN"'
    end
    object rom_cabROM_PPRN: TSmallintField
      FieldName = 'ROM_PPRN'
      Origin = '"ROM_CAB"."ROM_PPRN"'
    end
    object rom_cabROM_TPRN: TDateTimeField
      FieldName = 'ROM_TPRN'
      Origin = '"ROM_CAB"."ROM_TPRN"'
    end
    object rom_cabROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"ROM_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object rom_cabROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"ROM_CAB"."ROM_CTRA"'
    end
    object rom_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"ROM_CAB"."ROM_DTRA"'
      Size = 60
    end
    object rom_cabROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"ROM_CAB"."ROM_RLPD"'
    end
    object rom_cabROM_VPROD: TIBBCDField
      FieldName = 'ROM_VPROD'
      Origin = '"ROM_CAB"."ROM_VPROD"'
      Precision = 18
      Size = 2
    end
    object rom_cabROM_VNF: TIBBCDField
      FieldName = 'ROM_VNF'
      Origin = '"ROM_CAB"."ROM_VNF"'
      Precision = 18
      Size = 2
    end
    object rom_cabROM_VIPI: TIBBCDField
      FieldName = 'ROM_VIPI'
      Origin = '"ROM_CAB"."ROM_VIPI"'
      Precision = 18
      Size = 2
    end
    object rom_cabROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"ROM_CAB"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object rom_cabROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"ROM_CAB"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object rom_cabROM_MFRT: TSmallintField
      FieldName = 'ROM_MFRT'
      Origin = '"ROM_CAB"."ROM_MFRT"'
    end
  end
  object rom_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      'SELECT PK.ID  ,PK.IDPK,PK.ITEM,PK.IDCP,PK.CP_IDEP,'
      '       PK.DECP,PK.DGCP,'
      '       PK.UCOM,PK.QTDE,PK.QTRL,'
      '       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,PK.VPRC_PAD,PK.VPRC_COM,'
      '       PK.PDSC,PK.VDSC,'
      '       PK.TSDE,PK.TCDE,'
      '       PK.PSBR,PK.PSLQ'
      'FROM   ROM_ITE_004 AS PK'
      'WHERE  PK.IDEP = 0'
      'AND    PK.IDPK = 0')
    Left = 512
    Top = 136
    object rom_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_ITE_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object rom_iteIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"ROM_ITE_004"."IDPK"'
    end
    object rom_iteITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = '"ROM_ITE_004"."ITEM"'
    end
    object rom_iteIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"ROM_ITE_004"."IDCP"'
    end
    object rom_iteCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"ROM_ITE_004"."CP_IDEP"'
    end
    object rom_iteDECP: TIBStringField
      FieldName = 'DECP'
      Origin = '"ROM_ITE_004"."DECP"'
      Size = 120
    end
    object rom_iteDGCP: TIBStringField
      FieldName = 'DGCP'
      Origin = '"ROM_ITE_004"."DGCP"'
      Size = 60
    end
    object rom_iteUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"ROM_ITE_004"."UCOM"'
      Size = 10
    end
    object rom_iteQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"ROM_ITE_004"."QTDE"'
      Precision = 18
      Size = 4
    end
    object rom_iteQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"ROM_ITE_004"."QTRL"'
    end
    object rom_iteVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"ROM_ITE_004"."VPRC_PAD_INI"'
    end
    object rom_iteVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"ROM_ITE_004"."VPRC_PAD_FIM"'
    end
    object rom_iteVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"ROM_ITE_004"."VPRC_PAD"'
    end
    object rom_iteVPRC_COM: TFloatField
      FieldName = 'VPRC_COM'
      Origin = '"ROM_ITE_004"."VPRC_COM"'
    end
    object rom_itePDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"ROM_ITE_004"."PDSC"'
      Precision = 9
      Size = 2
    end
    object rom_iteVDSC: TIBBCDField
      FieldName = 'VDSC'
      Origin = '"ROM_ITE_004"."VDSC"'
      Precision = 18
      Size = 2
    end
    object rom_iteTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"ROM_ITE_004"."TSDE"'
      Precision = 18
      Size = 2
    end
    object rom_iteTCDE: TIBBCDField
      FieldName = 'TCDE'
      Origin = '"ROM_ITE_004"."TCDE"'
      Precision = 18
      Size = 2
    end
    object rom_itePSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"ROM_ITE_004"."PSBR"'
      Precision = 18
      Size = 3
    end
    object rom_itePSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"ROM_ITE_004"."PSLQ"'
      Precision = 18
      Size = 3
    end
  end
  object dtsrom_ite: TDataSource
    DataSet = rom_ite
    Left = 512
    Top = 168
  end
  object prg_cab: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT PED_PRG_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.R' +
        'EP_FANT,PAG_DPAG'
      'FROM   PED_PRG_CAB,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG'
      'WHERE  PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID'
      'AND    PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND    PED_PRG_CAB.ROM_CREP = CAD_REP.ID'
      'AND    PED_PRG_CAB.ROM_CPAG = TAB_PAG.ID'
      'AND    PED_PRG_CAB.ID = 0'
      'ORDER BY ID DESC')
    Left = 544
    Top = 136
    object prg_cabID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_PRG_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prg_cabROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_PRG_CAB"."ROM_CDOC"'
    end
    object prg_cabROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_PRG_CAB"."ROM_CDPR"'
    end
    object prg_cabROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_PRG_CAB"."ROM_CDPD"'
    end
    object prg_cabROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_PRG_CAB"."ROM_CDRO"'
    end
    object prg_cabROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_PRG_CAB"."ROM_CDRD"'
    end
    object prg_cabROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_PRG_CAB"."ROM_CDNF"'
    end
    object prg_cabROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_PRG_CAB"."ROM_CDBX"'
    end
    object prg_cabROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"PED_PRG_CAB"."ROM_CDCX"'
    end
    object prg_cabROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_PRG_CAB"."ROM_DERO"'
      Size = 30
    end
    object prg_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"PED_PRG_CAB"."ROM_STPD"'
      Size = 30
    end
    object prg_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"PED_PRG_CAB"."ROM_STCO"'
      Size = 30
    end
    object prg_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_PRG_CAB"."ROM_STFI"'
      Size = 30
    end
    object prg_cabROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"PED_PRG_CAB"."ROM_DROM"'
    end
    object prg_cabROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"PED_PRG_CAB"."ROM_HROM"'
    end
    object prg_cabROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_PRG_CAB"."ROM_DBAI"'
    end
    object prg_cabROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"PED_PRG_CAB"."ROM_DCAN"'
    end
    object prg_cabROM_DNFS: TDateField
      FieldName = 'ROM_DNFS'
      Origin = '"PED_PRG_CAB"."ROM_DNFS"'
    end
    object prg_cabROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"PED_PRG_CAB"."ROM_DEXP"'
    end
    object prg_cabROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"PED_PRG_CAB"."ROM_HEXP"'
    end
    object prg_cabROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"PED_PRG_CAB"."ROM_CEXP"'
    end
    object prg_cabROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"PED_PRG_CAB"."ROM_CCLI"'
    end
    object prg_cabROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"PED_PRG_CAB"."ROM_CVEN"'
    end
    object prg_cabROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_PRG_CAB"."ROM_CREP"'
    end
    object prg_cabROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_PRG_CAB"."ROM_CPAG"'
    end
    object prg_cabROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"PED_PRG_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object prg_cabROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_PRG_CAB"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object prg_cabROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_PRG_CAB"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object prg_cabROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"PED_PRG_CAB"."ROM_RLVE"'
    end
    object prg_cabROM_TSDE: TIBBCDField
      FieldName = 'ROM_TSDE'
      Origin = '"PED_PRG_CAB"."ROM_TSDE"'
      Precision = 18
      Size = 2
    end
    object prg_cabROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"PED_PRG_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object prg_cabROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"PED_PRG_CAB"."ROM_PDSC"'
      Precision = 9
      Size = 2
    end
    object prg_cabROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"PED_PRG_CAB"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object prg_cabROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"PED_PRG_CAB"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object prg_cabROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"PED_PRG_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
    object prg_cabROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_PRG_CAB"."ROM_CONC"'
    end
    object prg_cabROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_PRG_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object prg_cabROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"PED_PRG_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object prg_cabROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_PRG_CAB"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object prg_cabCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object prg_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object prg_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object prg_cabPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object prg_cabROM_DPRD: TDateField
      FieldName = 'ROM_DPRD'
      Origin = '"PED_PRG_CAB"."ROM_DPRD"'
    end
    object prg_cabROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"PED_PRG_CAB"."ROM_CTNR"'
    end
    object prg_cabROM_DEMB: TDateField
      FieldName = 'ROM_DEMB'
      Origin = '"PED_PRG_CAB"."ROM_DEMB"'
    end
    object prg_cabROM_DDES: TDateField
      FieldName = 'ROM_DDES'
      Origin = '"PED_PRG_CAB"."ROM_DDES"'
    end
    object prg_cabROM_CBAI: TIntegerField
      FieldName = 'ROM_CBAI'
      Origin = '"PED_PRG_CAB"."ROM_CBAI"'
    end
    object prg_cabROM_TBAI: TDateTimeField
      FieldName = 'ROM_TBAI'
      Origin = '"PED_PRG_CAB"."ROM_TBAI"'
    end
    object prg_cabROM_UPRN: TIntegerField
      FieldName = 'ROM_UPRN'
      Origin = '"PED_PRG_CAB"."ROM_UPRN"'
    end
    object prg_cabROM_PPRN: TSmallintField
      FieldName = 'ROM_PPRN'
      Origin = '"PED_PRG_CAB"."ROM_PPRN"'
    end
    object prg_cabROM_TPRN: TDateTimeField
      FieldName = 'ROM_TPRN'
      Origin = '"PED_PRG_CAB"."ROM_TPRN"'
    end
    object prg_cabROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_PRG_CAB"."ROM_RLPD"'
    end
    object prg_cabROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"PED_PRG_CAB"."ROM_CTRA"'
    end
    object prg_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"PED_PRG_CAB"."ROM_DTRA"'
      Size = 60
    end
    object prg_cabROM_MODFRETE: TIBStringField
      FieldName = 'ROM_MODFRETE'
      Origin = '"PED_PRG_CAB"."ROM_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object prg_cabROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"PED_PRG_CAB"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object prg_cabROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"PED_PRG_CAB"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object prg_cabROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"PED_PRG_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object prg_cabROM_MFRT: TSmallintField
      FieldName = 'ROM_MFRT'
      Origin = '"PED_PRG_CAB"."ROM_MFRT"'
    end
  end
  object prg_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM PED_PRG_ITE')
    Left = 576
    Top = 136
    object prg_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_PRG_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prg_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_PRG_ITE"."ROM_CCAB"'
    end
    object prg_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_PRG_ITE"."ROM_CDOC"'
    end
    object prg_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_PRG_ITE"."ROM_CDPR"'
    end
    object prg_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_PRG_ITE"."ROM_CDPD"'
    end
    object prg_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_PRG_ITE"."ROM_CDRO"'
    end
    object prg_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_PRG_ITE"."ROM_CDRD"'
    end
    object prg_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_PRG_ITE"."ROM_CDNF"'
    end
    object prg_iteROM_ITEM: TIBStringField
      FieldName = 'ROM_ITEM'
      Origin = '"PED_PRG_ITE"."ROM_ITEM"'
      Size = 5
    end
    object prg_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_PRG_ITE"."ROM_CPRO"'
    end
    object prg_iteROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"PED_PRG_ITE"."ROM_CDET"'
      Size = 10
    end
    object prg_iteROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      Origin = '"PED_PRG_ITE"."ROM_QTDE"'
      Precision = 18
      Size = 4
    end
    object prg_iteROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_PRG_ITE"."ROM_QTRL"'
    end
    object prg_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_PRG_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object prg_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_PRG_ITE"."ROM_RLSP"'
    end
    object prg_iteROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_PRG_ITE"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object prg_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_PRG_ITE"."ROM_RLPD"'
    end
    object prg_iteROM_UNIT: TFloatField
      FieldName = 'ROM_UNIT'
      Origin = '"PED_PRG_ITE"."ROM_UNIT"'
      DisplayFormat = ',##,0.00###'
    end
    object prg_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_PRG_ITE"."ROM_PREC"'
      DisplayFormat = ',##,0.00###'
    end
    object prg_iteROM_VDSC: TIBBCDField
      FieldName = 'ROM_VDSC'
      Origin = '"PED_PRG_ITE"."ROM_VDSC"'
      Precision = 9
      Size = 2
    end
    object prg_iteROM_TOTA: TIBBCDField
      FieldName = 'ROM_TOTA'
      Origin = '"PED_PRG_ITE"."ROM_TOTA"'
      Precision = 18
      Size = 2
    end
    object prg_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_PRG_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object prg_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_PRG_ITE"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object prg_iteROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"PED_PRG_ITE"."ROM_DPRO"'
      Size = 120
    end
    object prg_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"PED_PRG_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object prg_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"PED_PRG_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object prg_iteROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"PED_PRG_ITE"."ROM_DUNI"'
      Size = 6
    end
    object prg_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_PRG_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object prg_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"PED_PRG_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
    object prg_iteROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"PED_PRG_ITE"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object prg_iteROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"PED_PRG_ITE"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object prg_iteDGCP: TIBStringField
      FieldName = 'DGCP'
      Origin = '"PED_PRG_ITE"."DGCP"'
      Size = 60
    end
  end
  object dtsprg_ite: TDataSource
    DataSet = prg_ite
    Left = 576
    Top = 168
  end
  object dtsped_cab: TDataSource
    DataSet = ped_cab
    Left = 416
    Top = 168
  end
  object dtsrom_cab: TDataSource
    DataSet = rom_cab
    Left = 480
    Top = 168
  end
  object dtsprg_cab: TDataSource
    DataSet = prg_cab
    Left = 544
    Top = 168
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 544
    Top = 8
  end
  object imp_ite: TIBDataSet
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = imp_cabAfterDelete
    AfterPost = imp_cabAfterPost
    OnNewRecord = imp_iteNewRecord
    DeleteSQL.Strings = (
      'delete from IMP_ITE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into IMP_ITE'
      
        '  (ID, ROM_CART, ROM_CBAR, ROM_CCLF, ROM_CDEP, ROM_CPRO, ROM_DGC' +
        'P, ROM_DPRO, '
      
        '   ROM_DSEP, ROM_DTPD, ROM_DUNI, ROM_FLAG, ROM_FOTO, ROM_IDPK, R' +
        'OM_IPRO, '
      
        '   ROM_ITEM, ROM_METR, ROM_PDSC, ROM_PESO, ROM_PIPI, ROM_PREC, R' +
        'OM_PSBR, '
      
        '   ROM_PSCN, ROM_PSLQ, ROM_PTABF, ROM_PTABI, ROM_QDIS, ROM_QTDE,' +
        ' ROM_QTPD, '
      
        '   ROM_QTRL, ROM_QTUN, ROM_REND, ROM_RLDI, ROM_RLPD, ROM_STAV, R' +
        'OM_TOTA, '
      '   ROM_TSDE, ROM_UCON, ROM_UNIT, ROM_VDSC, ROM_VIPI)'
      'values'
      
        '  (:ID, :ROM_CART, :ROM_CBAR, :ROM_CCLF, :ROM_CDEP, :ROM_CPRO, :' +
        'ROM_DGCP, '
      
        '   :ROM_DPRO, :ROM_DSEP, :ROM_DTPD, :ROM_DUNI, :ROM_FLAG, :ROM_F' +
        'OTO, :ROM_IDPK, '
      
        '   :ROM_IPRO, :ROM_ITEM, :ROM_METR, :ROM_PDSC, :ROM_PESO, :ROM_P' +
        'IPI, :ROM_PREC, '
      
        '   :ROM_PSBR, :ROM_PSCN, :ROM_PSLQ, :ROM_PTABF, :ROM_PTABI, :ROM' +
        '_QDIS, '
      
        '   :ROM_QTDE, :ROM_QTPD, :ROM_QTRL, :ROM_QTUN, :ROM_REND, :ROM_R' +
        'LDI, :ROM_RLPD, '
      
        '   :ROM_STAV, :ROM_TOTA, :ROM_TSDE, :ROM_UCON, :ROM_UNIT, :ROM_V' +
        'DSC, :ROM_VIPI)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_IDPK,'
      '  ROM_CDEP,'
      '  ROM_ITEM,'
      '  ROM_IPRO,'
      '  ROM_CART,'
      '  ROM_CPRO,'
      '  ROM_CBAR,'
      '  ROM_DPRO,'
      '  ROM_DGCP,'
      '  ROM_DUNI,'
      '  ROM_UCON,'
      '  ROM_QTUN,'
      '  ROM_PESO,'
      '  ROM_PSCN,'
      '  ROM_METR,'
      '  ROM_REND,'
      '  ROM_QDIS,'
      '  ROM_RLDI,'
      '  ROM_QTDE,'
      '  ROM_QTRL,'
      '  ROM_PREC,'
      '  ROM_PTABI,'
      '  ROM_PTABF,'
      '  ROM_PDSC,'
      '  ROM_VDSC,'
      '  ROM_UNIT,'
      '  ROM_TSDE,'
      '  ROM_TOTA,'
      '  ROM_CCLF,'
      '  ROM_PIPI,'
      '  ROM_VIPI,'
      '  ROM_PSBR,'
      '  ROM_PSLQ,'
      '  ROM_QTPD,'
      '  ROM_RLPD,'
      '  ROM_DSEP,'
      '  ROM_DTPD,'
      '  ROM_FOTO,'
      '  ROM_STAV,'
      '  ROM_FLAG'
      'from IMP_ITE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   PK.ID,PK.ROM_IDPK,PK.ROM_CDEP,'
      '         PK.ROM_ITEM,'
      '         PK.ROM_IPRO,PK.ROM_CART ,PK.ROM_CPRO,PK.ROM_CBAR,'
      '         PK.ROM_DPRO,PK.ROM_DGCP,'
      '         PK.ROM_DUNI,PK.ROM_UCON ,PK.ROM_QTUN,'
      '         PK.ROM_PESO,PK.ROM_PSCN ,PK.ROM_METR,PK.ROM_REND,'
      '         PK.ROM_QDIS,PK.ROM_RLDI ,'
      '         PK.ROM_QTDE,PK.ROM_QTRL ,'
      '         PK.ROM_PREC,PK.ROM_PTABI,PK.ROM_PTABF,'
      '         PK.ROM_PDSC,PK.ROM_VDSC ,PK.ROM_UNIT ,'
      '         PK.ROM_TSDE,PK.ROM_TOTA ,'
      '         PK.ROM_CCLF,PK.ROM_PIPI ,PK.ROM_VIPI,'
      '         PK.ROM_PSBR,PK.ROM_PSLQ ,'
      '         PK.ROM_QTPD,PK.ROM_RLPD ,PK.ROM_DSEP,PK.ROM_DTPD,'
      '         PK.ROM_FOTO,PK.ROM_STAV ,'
      '         PK.ROM_FLAG'
      'FROM     IMP_ITE AS PK'
      'WHERE    PK.ROM_FLAG = 0'
      'ORDER BY PK.ROM_ITEM'
      '')
    ModifySQL.Strings = (
      'update IMP_ITE'
      'set'
      '  ID = :ID,'
      '  ROM_CART = :ROM_CART,'
      '  ROM_CBAR = :ROM_CBAR,'
      '  ROM_CCLF = :ROM_CCLF,'
      '  ROM_CDEP = :ROM_CDEP,'
      '  ROM_CPRO = :ROM_CPRO,'
      '  ROM_DGCP = :ROM_DGCP,'
      '  ROM_DPRO = :ROM_DPRO,'
      '  ROM_DSEP = :ROM_DSEP,'
      '  ROM_DTPD = :ROM_DTPD,'
      '  ROM_DUNI = :ROM_DUNI,'
      '  ROM_FLAG = :ROM_FLAG,'
      '  ROM_FOTO = :ROM_FOTO,'
      '  ROM_IDPK = :ROM_IDPK,'
      '  ROM_IPRO = :ROM_IPRO,'
      '  ROM_ITEM = :ROM_ITEM,'
      '  ROM_METR = :ROM_METR,'
      '  ROM_PDSC = :ROM_PDSC,'
      '  ROM_PESO = :ROM_PESO,'
      '  ROM_PIPI = :ROM_PIPI,'
      '  ROM_PREC = :ROM_PREC,'
      '  ROM_PSBR = :ROM_PSBR,'
      '  ROM_PSCN = :ROM_PSCN,'
      '  ROM_PSLQ = :ROM_PSLQ,'
      '  ROM_PTABF = :ROM_PTABF,'
      '  ROM_PTABI = :ROM_PTABI,'
      '  ROM_QDIS = :ROM_QDIS,'
      '  ROM_QTDE = :ROM_QTDE,'
      '  ROM_QTPD = :ROM_QTPD,'
      '  ROM_QTRL = :ROM_QTRL,'
      '  ROM_QTUN = :ROM_QTUN,'
      '  ROM_REND = :ROM_REND,'
      '  ROM_RLDI = :ROM_RLDI,'
      '  ROM_RLPD = :ROM_RLPD,'
      '  ROM_STAV = :ROM_STAV,'
      '  ROM_TOTA = :ROM_TOTA,'
      '  ROM_TSDE = :ROM_TSDE,'
      '  ROM_UCON = :ROM_UCON,'
      '  ROM_UNIT = :ROM_UNIT,'
      '  ROM_VDSC = :ROM_VDSC,'
      '  ROM_VIPI = :ROM_VIPI'
      'where'
      '  ID = :OLD_ID')
    Left = 576
    Top = 72
    object imp_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"IMP_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_iteROM_IDPK: TLargeintField
      FieldName = 'ROM_IDPK'
      Origin = '"IMP_ITE"."ROM_IDPK"'
    end
    object imp_iteROM_CDEP: TSmallintField
      FieldName = 'ROM_CDEP'
      Origin = '"IMP_ITE"."ROM_CDEP"'
    end
    object imp_iteROM_ITEM: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'ROM_ITEM'
      Origin = '"IMP_ITE"."ROM_ITEM"'
      Size = 5
    end
    object imp_iteROM_IPRO: TIntegerField
      FieldName = 'ROM_IPRO'
      Origin = '"IMP_ITE"."ROM_IPRO"'
    end
    object imp_iteROM_CART: TIBStringField
      FieldName = 'ROM_CART'
      Origin = '"IMP_ITE"."ROM_CART"'
    end
    object imp_iteROM_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'ROM_CPRO'
      Origin = '"IMP_ITE"."ROM_CPRO"'
    end
    object imp_iteROM_CBAR: TIBStringField
      FieldName = 'ROM_CBAR'
      Origin = '"IMP_ITE"."ROM_CBAR"'
    end
    object imp_iteROM_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ROM_DPRO'
      Origin = '"IMP_ITE"."ROM_DPRO"'
      Size = 120
    end
    object imp_iteROM_DGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'ROM_DGCP'
      Origin = '"IMP_ITE"."ROM_DGCP"'
      Size = 60
    end
    object imp_iteROM_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'ROM_DUNI'
      Origin = '"IMP_ITE"."ROM_DUNI"'
      Size = 10
    end
    object imp_iteROM_UCON: TIBStringField
      FieldName = 'ROM_UCON'
      Origin = '"IMP_ITE"."ROM_UCON"'
      Size = 40
    end
    object imp_iteROM_QTUN: TIBBCDField
      FieldName = 'ROM_QTUN'
      Origin = '"IMP_ITE"."ROM_QTUN"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"IMP_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_PSCN: TIBBCDField
      FieldName = 'ROM_PSCN'
      Origin = '"IMP_ITE"."ROM_PSCN"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_METR: TIBBCDField
      FieldName = 'ROM_METR'
      Origin = '"IMP_ITE"."ROM_METR"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_REND: TIBBCDField
      FieldName = 'ROM_REND'
      Origin = '"IMP_ITE"."ROM_REND"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_QDIS: TIBBCDField
      FieldName = 'ROM_QDIS'
      Origin = '"IMP_ITE"."ROM_QDIS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_RLDI: TIntegerField
      FieldName = 'ROM_RLDI'
      Origin = '"IMP_ITE"."ROM_RLDI"'
    end
    object imp_iteROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"IMP_ITE"."ROM_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'ROM_QTRL'
      Origin = '"IMP_ITE"."ROM_QTRL"'
      DisplayFormat = '0'
    end
    object imp_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"IMP_ITE"."ROM_PREC"'
      DisplayFormat = ',##,0.00###'
    end
    object imp_iteROM_PTABI: TFloatField
      FieldName = 'ROM_PTABI'
      Origin = '"IMP_ITE"."ROM_PTABI"'
    end
    object imp_iteROM_PTABF: TFloatField
      FieldName = 'ROM_PTABF'
      Origin = '"IMP_ITE"."ROM_PTABF"'
    end
    object imp_iteROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"IMP_ITE"."ROM_PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_VDSC: TIBBCDField
      FieldName = 'ROM_VDSC'
      Origin = '"IMP_ITE"."ROM_VDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_UNIT: TFloatField
      DisplayLabel = 'Unit'#225'rio R$'
      FieldName = 'ROM_UNIT'
      Origin = '"IMP_ITE"."ROM_UNIT"'
      DisplayFormat = ',##,0.00###'
    end
    object imp_iteROM_TSDE: TIBBCDField
      DisplayLabel = 'Sub Total R$'
      FieldName = 'ROM_TSDE'
      Origin = '"IMP_ITE"."ROM_TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_TOTA: TIBBCDField
      DisplayLabel = 'Total R$'
      FieldName = 'ROM_TOTA'
      Origin = '"IMP_ITE"."ROM_TOTA"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_CCLF: TIBStringField
      FieldName = 'ROM_CCLF'
      Origin = '"IMP_ITE"."ROM_CCLF"'
      Size = 8
    end
    object imp_iteROM_PIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'ROM_PIPI'
      Origin = '"IMP_ITE"."ROM_PIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_VIPI: TIBBCDField
      DisplayLabel = 'IPI R$'
      FieldName = 'ROM_VIPI'
      Origin = '"IMP_ITE"."ROM_VIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"IMP_ITE"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object imp_iteROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"IMP_ITE"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object imp_iteROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"IMP_ITE"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"IMP_ITE"."ROM_RLPD"'
    end
    object imp_iteROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"IMP_ITE"."ROM_DSEP"'
      Size = 60
    end
    object imp_iteROM_DTPD: TDateTimeField
      FieldName = 'ROM_DTPD'
      Origin = '"IMP_ITE"."ROM_DTPD"'
    end
    object imp_iteROM_FOTO: TBlobField
      FieldName = 'ROM_FOTO'
      Origin = '"IMP_ITE"."ROM_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object imp_iteROM_STAV: TIBStringField
      FieldName = 'ROM_STAV'
      Origin = '"IMP_ITE"."ROM_STAV"'
      FixedChar = True
      Size = 1
    end
    object imp_iteROM_FLAG: TSmallintField
      FieldName = 'ROM_FLAG'
      Origin = '"IMP_ITE"."ROM_FLAG"'
    end
  end
  object consulta_s: TIBQuery
    Database = FBird.DBEDI
    Transaction = tSHEILD
    Left = 544
    Top = 40
  end
  object pro_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      'SELECT   PK.CDRO,PK.DTRO,PK.IDCA,PK.DTCA,PK.LGCA,'
      '         PK.CDET,PK.CTNR,PK.LOTE,'
      '         PK.IDFK,PK.CDFK,PK.ITEM,PK.IDCP,PK.CP_IDEP,'
      '         PK.CEAN,PK.IDAK,PK.IDEK,'
      '         PK.DGCP,'
      '         PK.QTDE,PK.QTRL,PK.INFADCAD'
      'FROM     VW_CAD_PRO_EST_RFK AS PK'
      'WHERE    PK.CDRO = :CDRO'
      'ORDER BY PK.ITEM')
    Left = 640
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CDRO'
        ParamType = ptUnknown
      end>
    object pro_iteCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"VW_CAD_PRO_EST_RFK"."CDRO"'
    end
    object pro_iteDTRO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_CAD_PRO_EST_RFK"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object pro_iteIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDCA"'
    end
    object pro_iteDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST_RFK"."DTCA"'
    end
    object pro_iteLGCA: TIBStringField
      FieldName = 'LGCA'
      Origin = '"VW_CAD_PRO_EST_RFK"."LGCA"'
      Size = 30
    end
    object pro_iteCDET: TLargeintField
      FieldName = 'CDET'
      Origin = '"VW_CAD_PRO_EST_RFK"."CDET"'
    end
    object pro_iteCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_CAD_PRO_EST_RFK"."CTNR"'
      Size = 30
    end
    object pro_iteLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"VW_CAD_PRO_EST_RFK"."LOTE"'
      Size = 30
    end
    object pro_iteIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDFK"'
    end
    object pro_iteCDFK: TLargeintField
      FieldName = 'CDFK'
      Origin = '"VW_CAD_PRO_EST_RFK"."CDFK"'
    end
    object pro_iteITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = '"VW_CAD_PRO_EST_RFK"."ITEM"'
    end
    object pro_iteIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDCP"'
    end
    object pro_iteCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_CAD_PRO_EST_RFK"."CP_IDEP"'
    end
    object pro_iteCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_CAD_PRO_EST_RFK"."CEAN"'
    end
    object pro_iteIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDAK"'
    end
    object pro_iteIDEK: TLargeintField
      FieldName = 'IDEK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDEK"'
    end
    object pro_iteDGCP: TIBStringField
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST_RFK"."DGCP"'
      Size = 60
    end
    object pro_iteQTDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST_RFK"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object pro_iteQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST_RFK"."QTRL"'
    end
    object pro_iteINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_CAD_PRO_EST_RFK"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
  end
  object dtspro_ite: TDataSource
    DataSet = pro_ite
    Left = 640
    Top = 168
  end
  object imp_cab: TIBDataSet
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = imp_cabAfterDelete
    AfterPost = imp_cabAfterPost
    OnNewRecord = imp_cabNewRecord
    DeleteSQL.Strings = (
      'delete from IMP_CAB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into IMP_CAB'
      
        '  (ID, ROM_ADSC, ROM_CCLI, ROM_CDBX, ROM_CDCX, ROM_CDNF, ROM_CDO' +
        'C, ROM_CDPD, '
      
        '   ROM_CDPR, ROM_CDRD, ROM_CDRO, ROM_CDSC, ROM_CEXP, ROM_CONC, R' +
        'OM_CPAG, '
      
        '   ROM_CREP, ROM_CTRA, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DCLI, R' +
        'OM_DERO, '
      
        '   ROM_DEXP, ROM_DNFS, ROM_DPAG, ROM_DREP, ROM_DROM, ROM_DTRA, R' +
        'OM_DVEN, '
      
        '   ROM_HEXP, ROM_HROM, ROM_MFRT, ROM_OBSE, ROM_PDSC, ROM_PSBR, R' +
        'OM_PSLQ, '
      
        '   ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE, ROM_STA, ROM_STCO, RO' +
        'M_STFI, '
      '   ROM_STPD, ROM_TCDE, ROM_TDSC, ROM_TSDE, ROM_VFRT)'
      'values'
      
        '  (:ID, :ROM_ADSC, :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :' +
        'ROM_CDOC, '
      
        '   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_C' +
        'EXP, :ROM_CONC, '
      
        '   :ROM_CPAG, :ROM_CREP, :ROM_CTRA, :ROM_CVEN, :ROM_DBAI, :ROM_D' +
        'CAN, :ROM_DCLI, '
      
        '   :ROM_DERO, :ROM_DEXP, :ROM_DNFS, :ROM_DPAG, :ROM_DREP, :ROM_D' +
        'ROM, :ROM_DTRA, '
      
        '   :ROM_DVEN, :ROM_HEXP, :ROM_HROM, :ROM_MFRT, :ROM_OBSE, :ROM_P' +
        'DSC, :ROM_PSBR, '
      
        '   :ROM_PSLQ, :ROM_QTPD, :ROM_QTSP, :ROM_QTVE, :ROM_RLVE, :ROM_S' +
        'TA, :ROM_STCO, '
      
        '   :ROM_STFI, :ROM_STPD, :ROM_TCDE, :ROM_TDSC, :ROM_TSDE, :ROM_V' +
        'FRT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CDOC,'
      '  ROM_CDPR,'
      '  ROM_CDPD,'
      '  ROM_CDRO,'
      '  ROM_CDRD,'
      '  ROM_CDNF,'
      '  ROM_CDBX,'
      '  ROM_CDCX,'
      '  ROM_DERO,'
      '  ROM_DROM,'
      '  ROM_HROM,'
      '  ROM_DBAI,'
      '  ROM_DCAN,'
      '  ROM_DNFS,'
      '  ROM_DEXP,'
      '  ROM_HEXP,'
      '  ROM_CEXP,'
      '  ROM_CCLI,'
      '  ROM_DCLI,'
      '  ROM_CVEN,'
      '  ROM_DVEN,'
      '  ROM_CREP,'
      '  ROM_DREP,'
      '  ROM_CPAG,'
      '  ROM_DPAG,'
      '  ROM_QTVE,'
      '  ROM_QTSP,'
      '  ROM_QTPD,'
      '  ROM_RLVE,'
      '  ROM_TSDE,'
      '  ROM_TDSC,'
      '  ROM_PDSC,'
      '  ROM_CDSC,'
      '  ROM_ADSC,'
      '  ROM_TCDE,'
      '  ROM_CONC,'
      '  ROM_STA,'
      '  ROM_VFRT,'
      '  ROM_CTRA,'
      '  ROM_DTRA,'
      '  ROM_OBSE,'
      '  ROM_STPD,'
      '  ROM_STCO,'
      '  ROM_STFI,'
      '  ROM_PSBR,'
      '  ROM_PSLQ,'
      '  ROM_MFRT'
      'from IMP_CAB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM IMP_CAB'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update IMP_CAB'
      'set'
      '  ID = :ID,'
      '  ROM_ADSC = :ROM_ADSC,'
      '  ROM_CCLI = :ROM_CCLI,'
      '  ROM_CDBX = :ROM_CDBX,'
      '  ROM_CDCX = :ROM_CDCX,'
      '  ROM_CDNF = :ROM_CDNF,'
      '  ROM_CDOC = :ROM_CDOC,'
      '  ROM_CDPD = :ROM_CDPD,'
      '  ROM_CDPR = :ROM_CDPR,'
      '  ROM_CDRD = :ROM_CDRD,'
      '  ROM_CDRO = :ROM_CDRO,'
      '  ROM_CDSC = :ROM_CDSC,'
      '  ROM_CEXP = :ROM_CEXP,'
      '  ROM_CONC = :ROM_CONC,'
      '  ROM_CPAG = :ROM_CPAG,'
      '  ROM_CREP = :ROM_CREP,'
      '  ROM_CTRA = :ROM_CTRA,'
      '  ROM_CVEN = :ROM_CVEN,'
      '  ROM_DBAI = :ROM_DBAI,'
      '  ROM_DCAN = :ROM_DCAN,'
      '  ROM_DCLI = :ROM_DCLI,'
      '  ROM_DERO = :ROM_DERO,'
      '  ROM_DEXP = :ROM_DEXP,'
      '  ROM_DNFS = :ROM_DNFS,'
      '  ROM_DPAG = :ROM_DPAG,'
      '  ROM_DREP = :ROM_DREP,'
      '  ROM_DROM = :ROM_DROM,'
      '  ROM_DTRA = :ROM_DTRA,'
      '  ROM_DVEN = :ROM_DVEN,'
      '  ROM_HEXP = :ROM_HEXP,'
      '  ROM_HROM = :ROM_HROM,'
      '  ROM_MFRT = :ROM_MFRT,'
      '  ROM_OBSE = :ROM_OBSE,'
      '  ROM_PDSC = :ROM_PDSC,'
      '  ROM_PSBR = :ROM_PSBR,'
      '  ROM_PSLQ = :ROM_PSLQ,'
      '  ROM_QTPD = :ROM_QTPD,'
      '  ROM_QTSP = :ROM_QTSP,'
      '  ROM_QTVE = :ROM_QTVE,'
      '  ROM_RLVE = :ROM_RLVE,'
      '  ROM_STA = :ROM_STA,'
      '  ROM_STCO = :ROM_STCO,'
      '  ROM_STFI = :ROM_STFI,'
      '  ROM_STPD = :ROM_STPD,'
      '  ROM_TCDE = :ROM_TCDE,'
      '  ROM_TDSC = :ROM_TDSC,'
      '  ROM_TSDE = :ROM_TSDE,'
      '  ROM_VFRT = :ROM_VFRT'
      'where'
      '  ID = :OLD_ID')
    Left = 544
    Top = 72
    object imp_cabID: TIntegerField
      FieldName = 'ID'
      Origin = '"IMP_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_cabROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"IMP_CAB"."ROM_CDOC"'
    end
    object imp_cabROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"IMP_CAB"."ROM_CDPR"'
    end
    object imp_cabROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"IMP_CAB"."ROM_CDPD"'
    end
    object imp_cabROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"IMP_CAB"."ROM_CDRO"'
    end
    object imp_cabROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"IMP_CAB"."ROM_CDRD"'
    end
    object imp_cabROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"IMP_CAB"."ROM_CDNF"'
    end
    object imp_cabROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"IMP_CAB"."ROM_CDBX"'
    end
    object imp_cabROM_CDCX: TSmallintField
      FieldName = 'ROM_CDCX'
      Origin = '"IMP_CAB"."ROM_CDCX"'
    end
    object imp_cabROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"IMP_CAB"."ROM_DERO"'
      Size = 30
    end
    object imp_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"IMP_CAB"."ROM_STPD"'
      Size = 60
    end
    object imp_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"IMP_CAB"."ROM_STCO"'
      Size = 60
    end
    object imp_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"IMP_CAB"."ROM_STFI"'
      Size = 60
    end
    object imp_cabROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"IMP_CAB"."ROM_DROM"'
    end
    object imp_cabROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"IMP_CAB"."ROM_HROM"'
    end
    object imp_cabROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"IMP_CAB"."ROM_DBAI"'
    end
    object imp_cabROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"IMP_CAB"."ROM_DCAN"'
    end
    object imp_cabROM_DNFS: TDateField
      FieldName = 'ROM_DNFS'
      Origin = '"IMP_CAB"."ROM_DNFS"'
    end
    object imp_cabROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"IMP_CAB"."ROM_DEXP"'
    end
    object imp_cabROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"IMP_CAB"."ROM_HEXP"'
    end
    object imp_cabROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"IMP_CAB"."ROM_CEXP"'
    end
    object imp_cabROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"IMP_CAB"."ROM_CCLI"'
    end
    object imp_cabROM_DCLI: TIBStringField
      FieldName = 'ROM_DCLI'
      Origin = '"IMP_CAB"."ROM_DCLI"'
      Size = 60
    end
    object imp_cabROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"IMP_CAB"."ROM_CVEN"'
    end
    object imp_cabROM_DVEN: TIBStringField
      FieldName = 'ROM_DVEN'
      Origin = '"IMP_CAB"."ROM_DVEN"'
      Size = 60
    end
    object imp_cabROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"IMP_CAB"."ROM_CREP"'
    end
    object imp_cabROM_DREP: TIBStringField
      FieldName = 'ROM_DREP'
      Origin = '"IMP_CAB"."ROM_DREP"'
      Size = 60
    end
    object imp_cabROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"IMP_CAB"."ROM_CPAG"'
    end
    object imp_cabROM_DPAG: TIBStringField
      FieldName = 'ROM_DPAG'
      Origin = '"IMP_CAB"."ROM_DPAG"'
      Size = 50
    end
    object imp_cabROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"IMP_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object imp_cabROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"IMP_CAB"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object imp_cabROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"IMP_CAB"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object imp_cabROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"IMP_CAB"."ROM_RLVE"'
    end
    object imp_cabROM_TSDE: TIBBCDField
      FieldName = 'ROM_TSDE'
      Origin = '"IMP_CAB"."ROM_TSDE"'
      Precision = 18
      Size = 2
    end
    object imp_cabROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"IMP_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object imp_cabROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"IMP_CAB"."ROM_PDSC"'
      Precision = 9
      Size = 2
    end
    object imp_cabROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"IMP_CAB"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object imp_cabROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"IMP_CAB"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object imp_cabROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"IMP_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
    object imp_cabROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"IMP_CAB"."ROM_CONC"'
    end
    object imp_cabROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"IMP_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object imp_cabROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"IMP_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object imp_cabROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"IMP_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object imp_cabROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"IMP_CAB"."ROM_CTRA"'
    end
    object imp_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"IMP_CAB"."ROM_DTRA"'
      Size = 60
    end
    object imp_cabROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"IMP_CAB"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object imp_cabROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"IMP_CAB"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object imp_cabROM_MFRT: TSmallintField
      FieldName = 'ROM_MFRT'
      Origin = '"IMP_CAB"."ROM_MFRT"'
    end
  end
  object dtsimp_cab: TDataSource
    DataSet = imp_cab
    Left = 544
    Top = 104
  end
  object openARQ: TOpenDialog
    Left = 264
    Top = 16
  end
  object imp_nit: TIBDataSet
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = imp_cabAfterDelete
    AfterPost = imp_cabAfterPost
    OnNewRecord = imp_nitNewRecord
    DeleteSQL.Strings = (
      'delete from NFE_ITE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_ITE'
      
        '  (ID, NFE_CART, NFE_CBENEF, NFE_CBPRODUTO, NFE_CBUNIDADE, NFE_C' +
        'CAB, NFE_CDEP, '
      
        '   NFE_CDNF, NFE_CEAN, NFE_CENQ, NFE_CEST, NFE_CEXPORTADOR, NFE_' +
        'CFABRICANTE, '
      
        '   NFE_CFOP, NFE_CHNFE, NFE_CLENQ, NFE_CLISTSERV, NFE_CMUNFGISSQ' +
        'N, NFE_CNPJ, '
      
        '   NFE_CNPJFAB, NFE_CNPJPROD, NFE_CNPJTERCEIRO, NFE_COMP, NFE_CP' +
        'ROD, NFE_CST, '
      
        '   NFE_CSTA, NFE_CSTCOFINS, NFE_CSTIPI, NFE_CSTPIS, NFE_CSTS, NF' +
        'E_DCOR, '
      
        '   NFE_DDESEMB, NFE_DDI, NFE_ESP, NFE_EXTIPI, NFE_FLAG, NFE_FRET' +
        ', NFE_GRAM, '
      
        '   NFE_INDESCALA, NFE_INDTOT, NFE_INFADPROD, NFE_INFADTRIB, NFE_' +
        'IPRO, NFE_ITEMPED, '
      
        '   NFE_LARG, NFE_METR, NFE_MODBC, NFE_MODBCST, NFE_MOTDESICMS, N' +
        'FE_MVA, '
      
        '   NFE_MVAST, NFE_NADICAO, NFE_NCM, NFE_NDI, NFE_NDRAW, NFE_NFCI' +
        ', NFE_NRE, '
      
        '   NFE_NRECOPI, NFE_NSEQADIC, NFE_NVE, NFE_ORIG, NFE_PCOFINS, NF' +
        'E_PCOFINSST, '
      
        '   NFE_PCREDSN, NFE_PDIF, NFE_PESO, NFE_PFCP, NFE_PFCPST, NFE_PF' +
        'CPSTRET, '
      
        '   NFE_PFCPUFDEST, NFE_PICMS, NFE_PICMSINTER, NFE_PICMSINTERPART' +
        ', NFE_PICMSST, '
      
        '   NFE_PICMSUFDEST, NFE_PIMP, NFE_PIPI, NFE_PPIS, NFE_PPISST, NF' +
        'E_PREC, '
      
        '   NFE_PREDBC, NFE_PREDBCST, NFE_PSBR, NFE_PSCN, NFE_PSLQ, NFE_P' +
        'SMR, NFE_PST, '
      
        '   NFE_QCOM, NFE_QEXPORT, NFE_QTRIB, NFE_QTUN, NFE_QVOL, NFE_RCO' +
        'M, NFE_REND, '
      
        '   NFE_REPR, NFE_STAV, NFE_TIPI, NFE_TIPO, NFE_TPINTERMEDIO, NFE' +
        '_TPVIATRANSP, '
      
        '   NFE_TRIBESTADUAL, NFE_TRIBFEDIMPORTADO, NFE_TRIBFEDNACIONAL, ' +
        'NFE_TRIBIPI, '
      
        '   NFE_TRIBMUNICIPAL, NFE_UCOM, NFE_UEXP, NFE_UFDESEMB, NFE_UFEM' +
        'BARQ, NFE_UFSAIDAPAIS, '
      
        '   NFE_UFTERCEIRO, NFE_UTRIB, NFE_VAFRMM, NFE_VALIQISSQN, NFE_VA' +
        'LIQPROD, '
      
        '   NFE_VBC, NFE_VBCFCP, NFE_VBCFCPST, NFE_VBCFCPSTRET, NFE_VBCFC' +
        'PUFDEST, '
      
        '   NFE_VBCIMP, NFE_VBCIPI, NFE_VBCISSQN, NFE_VBCOFINS, NFE_VBCOF' +
        'INSST, '
      
        '   NFE_VBCPIS, NFE_VBCPISST, NFE_VBCST, NFE_VBCSTDEST, NFE_VBCST' +
        'RET, NFE_VBCUFDEST, '
      
        '   NFE_VCOFINS, NFE_VCOFINSST, NFE_VCREDICMSSN, NFE_VDESC, NFE_V' +
        'DESCDI, '
      
        '   NFE_VDESPADU, NFE_VFCP, NFE_VFCPST, NFE_VFCPSTRET, NFE_VFCPUF' +
        'DEST, NFE_VFRETE, '
      
        '   NFE_VI04, NFE_VI07, NFE_VI12, NFE_VI18, NFE_VICMS, NFE_VICMSD' +
        'ESON, NFE_VICMSDIF, '
      
        '   NFE_VICMSOP, NFE_VICMSST, NFE_VICMSSTDEST, NFE_VICMSSTRET, NF' +
        'E_VICMSUFDEST, '
      
        '   NFE_VICMSUFREMET, NFE_VIIIMP, NFE_VIOFIMP, NFE_VIPI, NFE_VISS' +
        'QN, NFE_VMULTA, '
      
        '   NFE_VNF, NFE_VOUTRO, NFE_VPIS, NFE_VPISST, NFE_VPROD, NFE_VSE' +
        'G, NFE_VTOTTRIB, '
      
        '   NFE_VUNCOM, NFE_VUNTRIB, NFE_XLOCDESEMB, NFE_XLOCDESPACHO, NF' +
        'E_XLOCEMBARQ, '
      '   NFE_XPED, NFE_XPROD, NFE_XPROX)'
      'values'
      
        '  (:ID, :NFE_CART, :NFE_CBENEF, :NFE_CBPRODUTO, :NFE_CBUNIDADE, ' +
        ':NFE_CCAB, '
      
        '   :NFE_CDEP, :NFE_CDNF, :NFE_CEAN, :NFE_CENQ, :NFE_CEST, :NFE_C' +
        'EXPORTADOR, '
      
        '   :NFE_CFABRICANTE, :NFE_CFOP, :NFE_CHNFE, :NFE_CLENQ, :NFE_CLI' +
        'STSERV, '
      
        '   :NFE_CMUNFGISSQN, :NFE_CNPJ, :NFE_CNPJFAB, :NFE_CNPJPROD, :NF' +
        'E_CNPJTERCEIRO, '
      
        '   :NFE_COMP, :NFE_CPROD, :NFE_CST, :NFE_CSTA, :NFE_CSTCOFINS, :' +
        'NFE_CSTIPI, '
      
        '   :NFE_CSTPIS, :NFE_CSTS, :NFE_DCOR, :NFE_DDESEMB, :NFE_DDI, :N' +
        'FE_ESP, '
      
        '   :NFE_EXTIPI, :NFE_FLAG, :NFE_FRET, :NFE_GRAM, :NFE_INDESCALA,' +
        ' :NFE_INDTOT, '
      
        '   :NFE_INFADPROD, :NFE_INFADTRIB, :NFE_IPRO, :NFE_ITEMPED, :NFE' +
        '_LARG, '
      
        '   :NFE_METR, :NFE_MODBC, :NFE_MODBCST, :NFE_MOTDESICMS, :NFE_MV' +
        'A, :NFE_MVAST, '
      
        '   :NFE_NADICAO, :NFE_NCM, :NFE_NDI, :NFE_NDRAW, :NFE_NFCI, :NFE' +
        '_NRE, :NFE_NRECOPI, '
      
        '   :NFE_NSEQADIC, :NFE_NVE, :NFE_ORIG, :NFE_PCOFINS, :NFE_PCOFIN' +
        'SST, :NFE_PCREDSN, '
      
        '   :NFE_PDIF, :NFE_PESO, :NFE_PFCP, :NFE_PFCPST, :NFE_PFCPSTRET,' +
        ' :NFE_PFCPUFDEST, '
      
        '   :NFE_PICMS, :NFE_PICMSINTER, :NFE_PICMSINTERPART, :NFE_PICMSS' +
        'T, :NFE_PICMSUFDEST, '
      
        '   :NFE_PIMP, :NFE_PIPI, :NFE_PPIS, :NFE_PPISST, :NFE_PREC, :NFE' +
        '_PREDBC, '
      
        '   :NFE_PREDBCST, :NFE_PSBR, :NFE_PSCN, :NFE_PSLQ, :NFE_PSMR, :N' +
        'FE_PST, '
      
        '   :NFE_QCOM, :NFE_QEXPORT, :NFE_QTRIB, :NFE_QTUN, :NFE_QVOL, :N' +
        'FE_RCOM, '
      
        '   :NFE_REND, :NFE_REPR, :NFE_STAV, :NFE_TIPI, :NFE_TIPO, :NFE_T' +
        'PINTERMEDIO, '
      
        '   :NFE_TPVIATRANSP, :NFE_TRIBESTADUAL, :NFE_TRIBFEDIMPORTADO, :' +
        'NFE_TRIBFEDNACIONAL, '
      
        '   :NFE_TRIBIPI, :NFE_TRIBMUNICIPAL, :NFE_UCOM, :NFE_UEXP, :NFE_' +
        'UFDESEMB, '
      
        '   :NFE_UFEMBARQ, :NFE_UFSAIDAPAIS, :NFE_UFTERCEIRO, :NFE_UTRIB,' +
        ' :NFE_VAFRMM, '
      
        '   :NFE_VALIQISSQN, :NFE_VALIQPROD, :NFE_VBC, :NFE_VBCFCP, :NFE_' +
        'VBCFCPST, '
      
        '   :NFE_VBCFCPSTRET, :NFE_VBCFCPUFDEST, :NFE_VBCIMP, :NFE_VBCIPI' +
        ', :NFE_VBCISSQN, '
      
        '   :NFE_VBCOFINS, :NFE_VBCOFINSST, :NFE_VBCPIS, :NFE_VBCPISST, :' +
        'NFE_VBCST, '
      
        '   :NFE_VBCSTDEST, :NFE_VBCSTRET, :NFE_VBCUFDEST, :NFE_VCOFINS, ' +
        ':NFE_VCOFINSST, '
      
        '   :NFE_VCREDICMSSN, :NFE_VDESC, :NFE_VDESCDI, :NFE_VDESPADU, :N' +
        'FE_VFCP, '
      
        '   :NFE_VFCPST, :NFE_VFCPSTRET, :NFE_VFCPUFDEST, :NFE_VFRETE, :N' +
        'FE_VI04, '
      
        '   :NFE_VI07, :NFE_VI12, :NFE_VI18, :NFE_VICMS, :NFE_VICMSDESON,' +
        ' :NFE_VICMSDIF, '
      
        '   :NFE_VICMSOP, :NFE_VICMSST, :NFE_VICMSSTDEST, :NFE_VICMSSTRET' +
        ', :NFE_VICMSUFDEST, '
      
        '   :NFE_VICMSUFREMET, :NFE_VIIIMP, :NFE_VIOFIMP, :NFE_VIPI, :NFE' +
        '_VISSQN, '
      
        '   :NFE_VMULTA, :NFE_VNF, :NFE_VOUTRO, :NFE_VPIS, :NFE_VPISST, :' +
        'NFE_VPROD, '
      
        '   :NFE_VSEG, :NFE_VTOTTRIB, :NFE_VUNCOM, :NFE_VUNTRIB, :NFE_XLO' +
        'CDESEMB, '
      
        '   :NFE_XLOCDESPACHO, :NFE_XLOCEMBARQ, :NFE_XPED, :NFE_XPROD, :N' +
        'FE_XPROX)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CDEP,'
      '  NFE_CCAB,'
      '  NFE_CDNF,'
      '  NFE_INDTOT,'
      '  NFE_IPRO,'
      '  NFE_ITEMPED,'
      '  NFE_XPED,'
      '  NFE_CFOP,'
      '  NFE_CART,'
      '  NFE_CPROD,'
      '  NFE_CEAN,'
      '  NFE_NCM,'
      '  NFE_NVE,'
      '  NFE_ORIG,'
      '  NFE_CST,'
      '  NFE_CEST,'
      '  NFE_DCOR,'
      '  NFE_XPROD,'
      '  NFE_XPROX,'
      '  NFE_UCOM,'
      '  NFE_RCOM,'
      '  NFE_QCOM,'
      '  NFE_PSBR,'
      '  NFE_PSLQ,'
      '  NFE_VUNCOM,'
      '  NFE_PREC,'
      '  NFE_VPROD,'
      '  NFE_VNF,'
      '  NFE_VDESC,'
      '  NFE_MODBC,'
      '  NFE_PREDBC,'
      '  NFE_VBC,'
      '  NFE_PICMS,'
      '  NFE_VICMS,'
      '  NFE_PCREDSN,'
      '  NFE_VCREDICMSSN,'
      '  NFE_CLISTSERV,'
      '  NFE_MODBCST,'
      '  NFE_MVAST,'
      '  NFE_PREDBCST,'
      '  NFE_VBCST,'
      '  NFE_PICMSST,'
      '  NFE_VICMSST,'
      '  NFE_VBCSTRET,'
      '  NFE_VBCSTDEST,'
      '  NFE_VICMSSTDEST,'
      '  NFE_VBCUFDEST,'
      '  NFE_PFCPUFDEST,'
      '  NFE_PICMSUFDEST,'
      '  NFE_CMUNFGISSQN,'
      '  NFE_VBCISSQN,'
      '  NFE_VALIQISSQN,'
      '  NFE_VISSQN,'
      '  NFE_PICMSINTER,'
      '  NFE_PICMSINTERPART,'
      '  NFE_VFCPUFDEST,'
      '  NFE_VICMSUFDEST,'
      '  NFE_VICMSUFREMET,'
      '  NFE_VICMSSTRET,'
      '  NFE_VFRETE,'
      '  NFE_VSEG,'
      '  NFE_VOUTRO,'
      '  NFE_EXTIPI,'
      '  NFE_CSTIPI,'
      '  NFE_VBCIPI,'
      '  NFE_PIPI,'
      '  NFE_VIPI,'
      '  NFE_CSTPIS,'
      '  NFE_VBCPIS,'
      '  NFE_PPIS,'
      '  NFE_VPIS,'
      '  NFE_VBCPISST,'
      '  NFE_PPISST,'
      '  NFE_VPISST,'
      '  NFE_CSTCOFINS,'
      '  NFE_VBCOFINS,'
      '  NFE_PCOFINS,'
      '  NFE_VCOFINS,'
      '  NFE_VBCOFINSST,'
      '  NFE_PCOFINSST,'
      '  NFE_VCOFINSST,'
      '  NFE_VBCIMP,'
      '  NFE_VDESCDI,'
      '  NFE_VDESPADU,'
      '  NFE_VIIIMP,'
      '  NFE_VIOFIMP,'
      '  NFE_VMULTA,'
      '  NFE_VAFRMM,'
      '  NFE_NDI,'
      '  NFE_DDI,'
      '  NFE_NADICAO,'
      '  NFE_NSEQADIC,'
      '  NFE_XLOCEMBARQ,'
      '  NFE_UFEMBARQ,'
      '  NFE_XLOCDESEMB,'
      '  NFE_UFDESEMB,'
      '  NFE_DDESEMB,'
      '  NFE_CEXPORTADOR,'
      '  NFE_CFABRICANTE,'
      '  NFE_UFTERCEIRO,'
      '  NFE_CNPJ,'
      '  NFE_TIPO,'
      '  NFE_METR,'
      '  NFE_PESO,'
      '  NFE_REND,'
      '  NFE_PSCN,'
      '  NFE_PSMR,'
      '  NFE_GRAM,'
      '  NFE_LARG,'
      '  NFE_PIMP,'
      '  NFE_VI04,'
      '  NFE_VI07,'
      '  NFE_VI12,'
      '  NFE_VI18,'
      '  NFE_FRET,'
      '  NFE_REPR,'
      '  NFE_FLAG,'
      '  NFE_INDESCALA,'
      '  NFE_TIPI,'
      '  NFE_CLENQ,'
      '  NFE_CENQ,'
      '  NFE_CBENEF,'
      '  NFE_NFCI,'
      '  NFE_CNPJFAB,'
      '  NFE_CBPRODUTO,'
      '  NFE_CBUNIDADE,'
      '  NFE_VALIQPROD,'
      '  NFE_VICMSOP,'
      '  NFE_PDIF,'
      '  NFE_VICMSDIF,'
      '  NFE_VBCFCP,'
      '  NFE_PFCP,'
      '  NFE_VFCP,'
      '  NFE_PST,'
      '  NFE_VBCFCPST,'
      '  NFE_PFCPST,'
      '  NFE_VFCPST,'
      '  NFE_VBCFCPSTRET,'
      '  NFE_PFCPSTRET,'
      '  NFE_VFCPSTRET,'
      '  NFE_VBCFCPUFDEST,'
      '  NFE_VICMSDESON,'
      '  NFE_MOTDESICMS,'
      '  NFE_NDRAW,'
      '  NFE_NRE,'
      '  NFE_NRECOPI,'
      '  NFE_CHNFE,'
      '  NFE_QEXPORT,'
      '  NFE_VTOTTRIB,'
      '  NFE_CNPJPROD,'
      '  NFE_INFADPROD,'
      '  NFE_COMP,'
      '  NFE_CSTA,'
      '  NFE_CSTS,'
      '  NFE_QVOL,'
      '  NFE_ESP,'
      '  NFE_QTUN,'
      '  NFE_CNPJTERCEIRO,'
      '  NFE_TPINTERMEDIO,'
      '  NFE_TPVIATRANSP,'
      '  NFE_XLOCDESPACHO,'
      '  NFE_UFSAIDAPAIS,'
      '  NFE_UTRIB,'
      '  NFE_UEXP,'
      '  NFE_TRIBFEDNACIONAL,'
      '  NFE_TRIBFEDIMPORTADO,'
      '  NFE_TRIBESTADUAL,'
      '  NFE_TRIBMUNICIPAL,'
      '  NFE_TRIBIPI,'
      '  NFE_MVA,'
      '  NFE_QTRIB,'
      '  NFE_VUNTRIB,'
      '  NFE_STAV,'
      '  NFE_INFADTRIB'
      'from NFE_ITE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM NFE_ITE'
      'ORDER BY NFE_ITEMPED')
    ModifySQL.Strings = (
      'update NFE_ITE'
      'set'
      '  ID = :ID,'
      '  NFE_CART = :NFE_CART,'
      '  NFE_CBENEF = :NFE_CBENEF,'
      '  NFE_CBPRODUTO = :NFE_CBPRODUTO,'
      '  NFE_CBUNIDADE = :NFE_CBUNIDADE,'
      '  NFE_CCAB = :NFE_CCAB,'
      '  NFE_CDEP = :NFE_CDEP,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CEAN = :NFE_CEAN,'
      '  NFE_CENQ = :NFE_CENQ,'
      '  NFE_CEST = :NFE_CEST,'
      '  NFE_CEXPORTADOR = :NFE_CEXPORTADOR,'
      '  NFE_CFABRICANTE = :NFE_CFABRICANTE,'
      '  NFE_CFOP = :NFE_CFOP,'
      '  NFE_CHNFE = :NFE_CHNFE,'
      '  NFE_CLENQ = :NFE_CLENQ,'
      '  NFE_CLISTSERV = :NFE_CLISTSERV,'
      '  NFE_CMUNFGISSQN = :NFE_CMUNFGISSQN,'
      '  NFE_CNPJ = :NFE_CNPJ,'
      '  NFE_CNPJFAB = :NFE_CNPJFAB,'
      '  NFE_CNPJPROD = :NFE_CNPJPROD,'
      '  NFE_CNPJTERCEIRO = :NFE_CNPJTERCEIRO,'
      '  NFE_COMP = :NFE_COMP,'
      '  NFE_CPROD = :NFE_CPROD,'
      '  NFE_CST = :NFE_CST,'
      '  NFE_CSTA = :NFE_CSTA,'
      '  NFE_CSTCOFINS = :NFE_CSTCOFINS,'
      '  NFE_CSTIPI = :NFE_CSTIPI,'
      '  NFE_CSTPIS = :NFE_CSTPIS,'
      '  NFE_CSTS = :NFE_CSTS,'
      '  NFE_DCOR = :NFE_DCOR,'
      '  NFE_DDESEMB = :NFE_DDESEMB,'
      '  NFE_DDI = :NFE_DDI,'
      '  NFE_ESP = :NFE_ESP,'
      '  NFE_EXTIPI = :NFE_EXTIPI,'
      '  NFE_FLAG = :NFE_FLAG,'
      '  NFE_FRET = :NFE_FRET,'
      '  NFE_GRAM = :NFE_GRAM,'
      '  NFE_INDESCALA = :NFE_INDESCALA,'
      '  NFE_INDTOT = :NFE_INDTOT,'
      '  NFE_INFADPROD = :NFE_INFADPROD,'
      '  NFE_INFADTRIB = :NFE_INFADTRIB,'
      '  NFE_IPRO = :NFE_IPRO,'
      '  NFE_ITEMPED = :NFE_ITEMPED,'
      '  NFE_LARG = :NFE_LARG,'
      '  NFE_METR = :NFE_METR,'
      '  NFE_MODBC = :NFE_MODBC,'
      '  NFE_MODBCST = :NFE_MODBCST,'
      '  NFE_MOTDESICMS = :NFE_MOTDESICMS,'
      '  NFE_MVA = :NFE_MVA,'
      '  NFE_MVAST = :NFE_MVAST,'
      '  NFE_NADICAO = :NFE_NADICAO,'
      '  NFE_NCM = :NFE_NCM,'
      '  NFE_NDI = :NFE_NDI,'
      '  NFE_NDRAW = :NFE_NDRAW,'
      '  NFE_NFCI = :NFE_NFCI,'
      '  NFE_NRE = :NFE_NRE,'
      '  NFE_NRECOPI = :NFE_NRECOPI,'
      '  NFE_NSEQADIC = :NFE_NSEQADIC,'
      '  NFE_NVE = :NFE_NVE,'
      '  NFE_ORIG = :NFE_ORIG,'
      '  NFE_PCOFINS = :NFE_PCOFINS,'
      '  NFE_PCOFINSST = :NFE_PCOFINSST,'
      '  NFE_PCREDSN = :NFE_PCREDSN,'
      '  NFE_PDIF = :NFE_PDIF,'
      '  NFE_PESO = :NFE_PESO,'
      '  NFE_PFCP = :NFE_PFCP,'
      '  NFE_PFCPST = :NFE_PFCPST,'
      '  NFE_PFCPSTRET = :NFE_PFCPSTRET,'
      '  NFE_PFCPUFDEST = :NFE_PFCPUFDEST,'
      '  NFE_PICMS = :NFE_PICMS,'
      '  NFE_PICMSINTER = :NFE_PICMSINTER,'
      '  NFE_PICMSINTERPART = :NFE_PICMSINTERPART,'
      '  NFE_PICMSST = :NFE_PICMSST,'
      '  NFE_PICMSUFDEST = :NFE_PICMSUFDEST,'
      '  NFE_PIMP = :NFE_PIMP,'
      '  NFE_PIPI = :NFE_PIPI,'
      '  NFE_PPIS = :NFE_PPIS,'
      '  NFE_PPISST = :NFE_PPISST,'
      '  NFE_PREC = :NFE_PREC,'
      '  NFE_PREDBC = :NFE_PREDBC,'
      '  NFE_PREDBCST = :NFE_PREDBCST,'
      '  NFE_PSBR = :NFE_PSBR,'
      '  NFE_PSCN = :NFE_PSCN,'
      '  NFE_PSLQ = :NFE_PSLQ,'
      '  NFE_PSMR = :NFE_PSMR,'
      '  NFE_PST = :NFE_PST,'
      '  NFE_QCOM = :NFE_QCOM,'
      '  NFE_QEXPORT = :NFE_QEXPORT,'
      '  NFE_QTRIB = :NFE_QTRIB,'
      '  NFE_QTUN = :NFE_QTUN,'
      '  NFE_QVOL = :NFE_QVOL,'
      '  NFE_RCOM = :NFE_RCOM,'
      '  NFE_REND = :NFE_REND,'
      '  NFE_REPR = :NFE_REPR,'
      '  NFE_STAV = :NFE_STAV,'
      '  NFE_TIPI = :NFE_TIPI,'
      '  NFE_TIPO = :NFE_TIPO,'
      '  NFE_TPINTERMEDIO = :NFE_TPINTERMEDIO,'
      '  NFE_TPVIATRANSP = :NFE_TPVIATRANSP,'
      '  NFE_TRIBESTADUAL = :NFE_TRIBESTADUAL,'
      '  NFE_TRIBFEDIMPORTADO = :NFE_TRIBFEDIMPORTADO,'
      '  NFE_TRIBFEDNACIONAL = :NFE_TRIBFEDNACIONAL,'
      '  NFE_TRIBIPI = :NFE_TRIBIPI,'
      '  NFE_TRIBMUNICIPAL = :NFE_TRIBMUNICIPAL,'
      '  NFE_UCOM = :NFE_UCOM,'
      '  NFE_UEXP = :NFE_UEXP,'
      '  NFE_UFDESEMB = :NFE_UFDESEMB,'
      '  NFE_UFEMBARQ = :NFE_UFEMBARQ,'
      '  NFE_UFSAIDAPAIS = :NFE_UFSAIDAPAIS,'
      '  NFE_UFTERCEIRO = :NFE_UFTERCEIRO,'
      '  NFE_UTRIB = :NFE_UTRIB,'
      '  NFE_VAFRMM = :NFE_VAFRMM,'
      '  NFE_VALIQISSQN = :NFE_VALIQISSQN,'
      '  NFE_VALIQPROD = :NFE_VALIQPROD,'
      '  NFE_VBC = :NFE_VBC,'
      '  NFE_VBCFCP = :NFE_VBCFCP,'
      '  NFE_VBCFCPST = :NFE_VBCFCPST,'
      '  NFE_VBCFCPSTRET = :NFE_VBCFCPSTRET,'
      '  NFE_VBCFCPUFDEST = :NFE_VBCFCPUFDEST,'
      '  NFE_VBCIMP = :NFE_VBCIMP,'
      '  NFE_VBCIPI = :NFE_VBCIPI,'
      '  NFE_VBCISSQN = :NFE_VBCISSQN,'
      '  NFE_VBCOFINS = :NFE_VBCOFINS,'
      '  NFE_VBCOFINSST = :NFE_VBCOFINSST,'
      '  NFE_VBCPIS = :NFE_VBCPIS,'
      '  NFE_VBCPISST = :NFE_VBCPISST,'
      '  NFE_VBCST = :NFE_VBCST,'
      '  NFE_VBCSTDEST = :NFE_VBCSTDEST,'
      '  NFE_VBCSTRET = :NFE_VBCSTRET,'
      '  NFE_VBCUFDEST = :NFE_VBCUFDEST,'
      '  NFE_VCOFINS = :NFE_VCOFINS,'
      '  NFE_VCOFINSST = :NFE_VCOFINSST,'
      '  NFE_VCREDICMSSN = :NFE_VCREDICMSSN,'
      '  NFE_VDESC = :NFE_VDESC,'
      '  NFE_VDESCDI = :NFE_VDESCDI,'
      '  NFE_VDESPADU = :NFE_VDESPADU,'
      '  NFE_VFCP = :NFE_VFCP,'
      '  NFE_VFCPST = :NFE_VFCPST,'
      '  NFE_VFCPSTRET = :NFE_VFCPSTRET,'
      '  NFE_VFCPUFDEST = :NFE_VFCPUFDEST,'
      '  NFE_VFRETE = :NFE_VFRETE,'
      '  NFE_VI04 = :NFE_VI04,'
      '  NFE_VI07 = :NFE_VI07,'
      '  NFE_VI12 = :NFE_VI12,'
      '  NFE_VI18 = :NFE_VI18,'
      '  NFE_VICMS = :NFE_VICMS,'
      '  NFE_VICMSDESON = :NFE_VICMSDESON,'
      '  NFE_VICMSDIF = :NFE_VICMSDIF,'
      '  NFE_VICMSOP = :NFE_VICMSOP,'
      '  NFE_VICMSST = :NFE_VICMSST,'
      '  NFE_VICMSSTDEST = :NFE_VICMSSTDEST,'
      '  NFE_VICMSSTRET = :NFE_VICMSSTRET,'
      '  NFE_VICMSUFDEST = :NFE_VICMSUFDEST,'
      '  NFE_VICMSUFREMET = :NFE_VICMSUFREMET,'
      '  NFE_VIIIMP = :NFE_VIIIMP,'
      '  NFE_VIOFIMP = :NFE_VIOFIMP,'
      '  NFE_VIPI = :NFE_VIPI,'
      '  NFE_VISSQN = :NFE_VISSQN,'
      '  NFE_VMULTA = :NFE_VMULTA,'
      '  NFE_VNF = :NFE_VNF,'
      '  NFE_VOUTRO = :NFE_VOUTRO,'
      '  NFE_VPIS = :NFE_VPIS,'
      '  NFE_VPISST = :NFE_VPISST,'
      '  NFE_VPROD = :NFE_VPROD,'
      '  NFE_VSEG = :NFE_VSEG,'
      '  NFE_VTOTTRIB = :NFE_VTOTTRIB,'
      '  NFE_VUNCOM = :NFE_VUNCOM,'
      '  NFE_VUNTRIB = :NFE_VUNTRIB,'
      '  NFE_XLOCDESEMB = :NFE_XLOCDESEMB,'
      '  NFE_XLOCDESPACHO = :NFE_XLOCDESPACHO,'
      '  NFE_XLOCEMBARQ = :NFE_XLOCEMBARQ,'
      '  NFE_XPED = :NFE_XPED,'
      '  NFE_XPROD = :NFE_XPROD,'
      '  NFE_XPROX = :NFE_XPROX'
      'where'
      '  ID = :OLD_ID')
    Left = 640
    Top = 72
    object imp_nitID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_nitNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_ITE"."NFE_CCAB"'
    end
    object imp_nitNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_ITE"."NFE_CDNF"'
    end
    object imp_nitNFE_INDTOT: TIntegerField
      FieldName = 'NFE_INDTOT'
      Origin = '"NFE_ITE"."NFE_INDTOT"'
    end
    object imp_nitNFE_CFOP: TIBStringField
      DisplayLabel = 'C.F.O.P.'
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE"."NFE_CFOP"'
      Size = 4
    end
    object imp_nitNFE_CART: TIBStringField
      FieldName = 'NFE_CART'
      Origin = '"NFE_ITE"."NFE_CART"'
    end
    object imp_nitNFE_CPROD: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE"."NFE_CPROD"'
    end
    object imp_nitNFE_CEAN: TIBStringField
      FieldName = 'NFE_CEAN'
      Origin = '"NFE_ITE"."NFE_CEAN"'
      Size = 14
    end
    object imp_nitNFE_NCM: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'NFE_NCM'
      Origin = '"NFE_ITE"."NFE_NCM"'
      Size = 8
    end
    object imp_nitNFE_EXTIPI: TIBStringField
      FieldName = 'NFE_EXTIPI'
      Origin = '"NFE_ITE"."NFE_EXTIPI"'
      Size = 3
    end
    object imp_nitNFE_DCOR: TIBStringField
      FieldName = 'NFE_DCOR'
      Origin = '"NFE_ITE"."NFE_DCOR"'
      Size = 30
    end
    object imp_nitNFE_XPROD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE"."NFE_XPROD"'
      Size = 120
    end
    object imp_nitNFE_UCOM: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'NFE_UCOM'
      Origin = '"NFE_ITE"."NFE_UCOM"'
      Size = 6
    end
    object imp_nitNFE_QCOM: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_ITE"."NFE_QCOM"'
      DisplayFormat = '#,0.0000'
      Precision = 18
      Size = 4
    end
    object imp_nitNFE_RCOM: TIntegerField
      FieldName = 'NFE_RCOM'
      Origin = '"NFE_ITE"."NFE_RCOM"'
    end
    object imp_nitNFE_VPROD: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_ITE"."NFE_VFRETE"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_ITE"."NFE_VSEG"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VDESC: TIBBCDField
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_ITE"."NFE_VDESC"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_ITE"."NFE_VOUTRO"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_XLOCEMBARQ: TIBStringField
      FieldName = 'NFE_XLOCEMBARQ'
      Origin = '"NFE_ITE"."NFE_XLOCEMBARQ"'
      Size = 60
    end
    object imp_nitNFE_UFEMBARQ: TIBStringField
      FieldName = 'NFE_UFEMBARQ'
      Origin = '"NFE_ITE"."NFE_UFEMBARQ"'
      Size = 2
    end
    object imp_nitNFE_NDI: TIBStringField
      FieldName = 'NFE_NDI'
      Origin = '"NFE_ITE"."NFE_NDI"'
      Size = 10
    end
    object imp_nitNFE_DDI: TDateField
      FieldName = 'NFE_DDI'
      Origin = '"NFE_ITE"."NFE_DDI"'
    end
    object imp_nitNFE_XLOCDESEMB: TIBStringField
      FieldName = 'NFE_XLOCDESEMB'
      Origin = '"NFE_ITE"."NFE_XLOCDESEMB"'
      Size = 60
    end
    object imp_nitNFE_UFDESEMB: TIBStringField
      FieldName = 'NFE_UFDESEMB'
      Origin = '"NFE_ITE"."NFE_UFDESEMB"'
      Size = 2
    end
    object imp_nitNFE_DDESEMB: TDateField
      FieldName = 'NFE_DDESEMB'
      Origin = '"NFE_ITE"."NFE_DDESEMB"'
    end
    object imp_nitNFE_CEXPORTADOR: TIBStringField
      FieldName = 'NFE_CEXPORTADOR'
      Origin = '"NFE_ITE"."NFE_CEXPORTADOR"'
      Size = 60
    end
    object imp_nitNFE_NADICAO: TSmallintField
      FieldName = 'NFE_NADICAO'
      Origin = '"NFE_ITE"."NFE_NADICAO"'
    end
    object imp_nitNFE_NSEQADIC: TSmallintField
      FieldName = 'NFE_NSEQADIC'
      Origin = '"NFE_ITE"."NFE_NSEQADIC"'
    end
    object imp_nitNFE_CFABRICANTE: TIBStringField
      FieldName = 'NFE_CFABRICANTE'
      Origin = '"NFE_ITE"."NFE_CFABRICANTE"'
      Size = 60
    end
    object imp_nitNFE_VDESCDI: TIBBCDField
      FieldName = 'NFE_VDESCDI'
      Origin = '"NFE_ITE"."NFE_VDESCDI"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_XPED: TIBStringField
      FieldName = 'NFE_XPED'
      Origin = '"NFE_ITE"."NFE_XPED"'
      Size = 15
    end
    object imp_nitNFE_ORIG: TIBStringField
      FieldName = 'NFE_ORIG'
      Origin = '"NFE_ITE"."NFE_ORIG"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_CST: TIBStringField
      FieldName = 'NFE_CST'
      Origin = '"NFE_ITE"."NFE_CST"'
      Size = 3
    end
    object imp_nitNFE_MODBC: TIBStringField
      FieldName = 'NFE_MODBC'
      Origin = '"NFE_ITE"."NFE_MODBC"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_PREDBC: TIBBCDField
      FieldName = 'NFE_PREDBC'
      Origin = '"NFE_ITE"."NFE_PREDBC"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VBC: TIBBCDField
      FieldName = 'NFE_VBC'
      Origin = '"NFE_ITE"."NFE_VBC"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PICMS: TIBBCDField
      FieldName = 'NFE_PICMS'
      Origin = '"NFE_ITE"."NFE_PICMS"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VICMS: TIBBCDField
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_ITE"."NFE_VICMS"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_MODBCST: TIBStringField
      FieldName = 'NFE_MODBCST'
      Origin = '"NFE_ITE"."NFE_MODBCST"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_MVAST: TIBBCDField
      FieldName = 'NFE_MVAST'
      Origin = '"NFE_ITE"."NFE_MVAST"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_PREDBCST: TIBBCDField
      FieldName = 'NFE_PREDBCST'
      Origin = '"NFE_ITE"."NFE_PREDBCST"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_ITE"."NFE_VBCST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCSTRET: TIBBCDField
      FieldName = 'NFE_VBCSTRET'
      Origin = '"NFE_ITE"."NFE_VBCSTRET"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VICMSSTRET: TIBBCDField
      FieldName = 'NFE_VICMSSTRET'
      Origin = '"NFE_ITE"."NFE_VICMSSTRET"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PICMSST: TIBBCDField
      FieldName = 'NFE_PICMSST'
      Origin = '"NFE_ITE"."NFE_PICMSST"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VICMSST: TIBBCDField
      FieldName = 'NFE_VICMSST'
      Origin = '"NFE_ITE"."NFE_VICMSST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PCREDSN: TIBBCDField
      FieldName = 'NFE_PCREDSN'
      Origin = '"NFE_ITE"."NFE_PCREDSN"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VCREDICMSSN: TIBBCDField
      FieldName = 'NFE_VCREDICMSSN'
      Origin = '"NFE_ITE"."NFE_VCREDICMSSN"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_CSTIPI: TIBStringField
      FieldName = 'NFE_CSTIPI'
      Origin = '"NFE_ITE"."NFE_CSTIPI"'
      Size = 3
    end
    object imp_nitNFE_VBCIPI: TIBBCDField
      FieldName = 'NFE_VBCIPI'
      Origin = '"NFE_ITE"."NFE_VBCIPI"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PIPI: TIBBCDField
      FieldName = 'NFE_PIPI'
      Origin = '"NFE_ITE"."NFE_PIPI"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VIPI: TIBBCDField
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_ITE"."NFE_VIPI"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCIMP: TIBBCDField
      FieldName = 'NFE_VBCIMP'
      Origin = '"NFE_ITE"."NFE_VBCIMP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VDESPADU: TIBBCDField
      FieldName = 'NFE_VDESPADU'
      Origin = '"NFE_ITE"."NFE_VDESPADU"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VIIIMP: TIBBCDField
      FieldName = 'NFE_VIIIMP'
      Origin = '"NFE_ITE"."NFE_VIIIMP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VIOFIMP: TIBBCDField
      FieldName = 'NFE_VIOFIMP'
      Origin = '"NFE_ITE"."NFE_VIOFIMP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_CSTPIS: TIBStringField
      FieldName = 'NFE_CSTPIS'
      Origin = '"NFE_ITE"."NFE_CSTPIS"'
      Size = 3
    end
    object imp_nitNFE_VBCPIS: TIBBCDField
      FieldName = 'NFE_VBCPIS'
      Origin = '"NFE_ITE"."NFE_VBCPIS"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PPIS: TIBBCDField
      FieldName = 'NFE_PPIS'
      Origin = '"NFE_ITE"."NFE_PPIS"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VPIS: TIBBCDField
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_ITE"."NFE_VPIS"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCPISST: TIBBCDField
      FieldName = 'NFE_VBCPISST'
      Origin = '"NFE_ITE"."NFE_VBCPISST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PPISST: TIBBCDField
      FieldName = 'NFE_PPISST'
      Origin = '"NFE_ITE"."NFE_PPISST"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VPISST: TIBBCDField
      FieldName = 'NFE_VPISST'
      Origin = '"NFE_ITE"."NFE_VPISST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_CSTCOFINS: TIBStringField
      FieldName = 'NFE_CSTCOFINS'
      Origin = '"NFE_ITE"."NFE_CSTCOFINS"'
      Size = 3
    end
    object imp_nitNFE_VBCOFINS: TIBBCDField
      FieldName = 'NFE_VBCOFINS'
      Origin = '"NFE_ITE"."NFE_VBCOFINS"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PCOFINS: TIBBCDField
      FieldName = 'NFE_PCOFINS'
      Origin = '"NFE_ITE"."NFE_PCOFINS"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VCOFINS: TIBBCDField
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_ITE"."NFE_VCOFINS"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCOFINSST: TIBBCDField
      FieldName = 'NFE_VBCOFINSST'
      Origin = '"NFE_ITE"."NFE_VBCOFINSST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PCOFINSST: TIBBCDField
      FieldName = 'NFE_PCOFINSST'
      Origin = '"NFE_ITE"."NFE_PCOFINSST"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VCOFINSST: TIBBCDField
      FieldName = 'NFE_VCOFINSST'
      Origin = '"NFE_ITE"."NFE_VCOFINSST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_ITE"."NFE_VBCISSQN"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VALIQISSQN: TIBBCDField
      FieldName = 'NFE_VALIQISSQN'
      Origin = '"NFE_ITE"."NFE_VALIQISSQN"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VISSQN: TIBBCDField
      FieldName = 'NFE_VISSQN'
      Origin = '"NFE_ITE"."NFE_VISSQN"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_CMUNFGISSQN: TIBStringField
      FieldName = 'NFE_CMUNFGISSQN'
      Origin = '"NFE_ITE"."NFE_CMUNFGISSQN"'
      Size = 7
    end
    object imp_nitNFE_CLISTSERV: TIntegerField
      FieldName = 'NFE_CLISTSERV'
      Origin = '"NFE_ITE"."NFE_CLISTSERV"'
    end
    object imp_nitNFE_VNF: TIBBCDField
      FieldName = 'NFE_VNF'
      Origin = '"NFE_ITE"."NFE_VNF"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_METR: TIBBCDField
      FieldName = 'NFE_METR'
      Origin = '"NFE_ITE"."NFE_METR"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_PESO: TIBBCDField
      FieldName = 'NFE_PESO'
      Origin = '"NFE_ITE"."NFE_PESO"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_REND: TIBBCDField
      FieldName = 'NFE_REND'
      Origin = '"NFE_ITE"."NFE_REND"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_PSCN: TIBBCDField
      FieldName = 'NFE_PSCN'
      Origin = '"NFE_ITE"."NFE_PSCN"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_PSMR: TIBBCDField
      FieldName = 'NFE_PSMR'
      Origin = '"NFE_ITE"."NFE_PSMR"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_FRET: TIBStringField
      FieldName = 'NFE_FRET'
      Origin = '"NFE_ITE"."NFE_FRET"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_TIPO: TIBStringField
      FieldName = 'NFE_TIPO'
      Origin = '"NFE_ITE"."NFE_TIPO"'
      Size = 30
    end
    object imp_nitNFE_REPR: TIBStringField
      FieldName = 'NFE_REPR'
      Origin = '"NFE_ITE"."NFE_REPR"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_FLAG: TIBStringField
      FieldName = 'NFE_FLAG'
      Origin = '"NFE_ITE"."NFE_FLAG"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_VUNCOM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE"."NFE_VUNCOM"'
      DisplayFormat = ',##,0.00###'
    end
    object imp_nitNFE_IPRO: TIntegerField
      FieldName = 'NFE_IPRO'
      Origin = '"NFE_ITE"."NFE_IPRO"'
    end
    object imp_nitNFE_VMULTA: TIBBCDField
      FieldName = 'NFE_VMULTA'
      Origin = '"NFE_ITE"."NFE_VMULTA"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PIMP: TIBBCDField
      FieldName = 'NFE_PIMP'
      Origin = '"NFE_ITE"."NFE_PIMP"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VAFRMM: TIBBCDField
      FieldName = 'NFE_VAFRMM'
      Origin = '"NFE_ITE"."NFE_VAFRMM"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_CNPJ: TIBStringField
      FieldName = 'NFE_CNPJ'
      Origin = '"NFE_ITE"."NFE_CNPJ"'
      Size = 14
    end
    object imp_nitNFE_UFTERCEIRO: TIBStringField
      FieldName = 'NFE_UFTERCEIRO'
      Origin = '"NFE_ITE"."NFE_UFTERCEIRO"'
      Size = 2
    end
    object imp_nitNFE_VI04: TIBBCDField
      FieldName = 'NFE_VI04'
      Origin = '"NFE_ITE"."NFE_VI04"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VI07: TIBBCDField
      FieldName = 'NFE_VI07'
      Origin = '"NFE_ITE"."NFE_VI07"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VI12: TIBBCDField
      FieldName = 'NFE_VI12'
      Origin = '"NFE_ITE"."NFE_VI12"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VI18: TIBBCDField
      FieldName = 'NFE_VI18'
      Origin = '"NFE_ITE"."NFE_VI18"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_VBCSTDEST: TIBBCDField
      FieldName = 'NFE_VBCSTDEST'
      Origin = '"NFE_ITE"."NFE_VBCSTDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VICMSSTDEST: TIBBCDField
      FieldName = 'NFE_VICMSSTDEST'
      Origin = '"NFE_ITE"."NFE_VICMSSTDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCUFDEST: TIBBCDField
      FieldName = 'NFE_VBCUFDEST'
      Origin = '"NFE_ITE"."NFE_VBCUFDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PFCPUFDEST: TIBBCDField
      FieldName = 'NFE_PFCPUFDEST'
      Origin = '"NFE_ITE"."NFE_PFCPUFDEST"'
      Precision = 18
      Size = 4
    end
    object imp_nitNFE_PICMSUFDEST: TIBBCDField
      FieldName = 'NFE_PICMSUFDEST'
      Origin = '"NFE_ITE"."NFE_PICMSUFDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PICMSINTER: TIBBCDField
      FieldName = 'NFE_PICMSINTER'
      Origin = '"NFE_ITE"."NFE_PICMSINTER"'
      Precision = 18
      Size = 4
    end
    object imp_nitNFE_PICMSINTERPART: TIBBCDField
      FieldName = 'NFE_PICMSINTERPART'
      Origin = '"NFE_ITE"."NFE_PICMSINTERPART"'
      Precision = 18
      Size = 4
    end
    object imp_nitNFE_VFCPUFDEST: TIBBCDField
      FieldName = 'NFE_VFCPUFDEST'
      Origin = '"NFE_ITE"."NFE_VFCPUFDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VICMSUFDEST: TIBBCDField
      FieldName = 'NFE_VICMSUFDEST'
      Origin = '"NFE_ITE"."NFE_VICMSUFDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VICMSUFREMET: TIBBCDField
      FieldName = 'NFE_VICMSUFREMET'
      Origin = '"NFE_ITE"."NFE_VICMSUFREMET"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PREC: TFloatField
      FieldName = 'NFE_PREC'
      Origin = '"NFE_ITE"."NFE_PREC"'
      DisplayFormat = ',##,0.00###'
    end
    object imp_nitNFE_GRAM: TIBBCDField
      FieldName = 'NFE_GRAM'
      Origin = '"NFE_ITE"."NFE_GRAM"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_LARG: TIBBCDField
      FieldName = 'NFE_LARG'
      Origin = '"NFE_ITE"."NFE_LARG"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_ITEMPED: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE"."NFE_ITEMPED"'
    end
    object imp_nitNFE_NVE: TIBStringField
      FieldName = 'NFE_NVE'
      Origin = '"NFE_ITE"."NFE_NVE"'
      Size = 6
    end
    object imp_nitNFE_CEST: TIBStringField
      FieldName = 'NFE_CEST'
      Origin = '"NFE_ITE"."NFE_CEST"'
      Size = 7
    end
    object imp_nitNFE_PSBR: TIBBCDField
      FieldName = 'NFE_PSBR'
      Origin = '"NFE_ITE"."NFE_PSBR"'
      Precision = 18
      Size = 3
    end
    object imp_nitNFE_PSLQ: TIBBCDField
      FieldName = 'NFE_PSLQ'
      Origin = '"NFE_ITE"."NFE_PSLQ"'
      Precision = 18
      Size = 3
    end
    object imp_nitNFE_INDESCALA: TIBStringField
      FieldName = 'NFE_INDESCALA'
      Origin = '"NFE_ITE"."NFE_INDESCALA"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_TIPI: TSmallintField
      FieldName = 'NFE_TIPI'
      Origin = '"NFE_ITE"."NFE_TIPI"'
    end
    object imp_nitNFE_CLENQ: TIBStringField
      FieldName = 'NFE_CLENQ'
      Origin = '"NFE_ITE"."NFE_CLENQ"'
      Size = 5
    end
    object imp_nitNFE_CENQ: TIBStringField
      FieldName = 'NFE_CENQ'
      Origin = '"NFE_ITE"."NFE_CENQ"'
      Size = 3
    end
    object imp_nitNFE_CBENEF: TIBStringField
      FieldName = 'NFE_CBENEF'
      Origin = '"NFE_ITE"."NFE_CBENEF"'
      Size = 10
    end
    object imp_nitNFE_NFCI: TIBStringField
      FieldName = 'NFE_NFCI'
      Origin = '"NFE_ITE"."NFE_NFCI"'
      Size = 36
    end
    object imp_nitNFE_CNPJFAB: TLargeintField
      FieldName = 'NFE_CNPJFAB'
      Origin = '"NFE_ITE"."NFE_CNPJFAB"'
    end
    object imp_nitNFE_CBPRODUTO: TLargeintField
      FieldName = 'NFE_CBPRODUTO'
      Origin = '"NFE_ITE"."NFE_CBPRODUTO"'
    end
    object imp_nitNFE_CBUNIDADE: TLargeintField
      FieldName = 'NFE_CBUNIDADE'
      Origin = '"NFE_ITE"."NFE_CBUNIDADE"'
    end
    object imp_nitNFE_VALIQPROD: TIBBCDField
      FieldName = 'NFE_VALIQPROD'
      Origin = '"NFE_ITE"."NFE_VALIQPROD"'
      Precision = 9
      Size = 4
    end
    object imp_nitNFE_VICMSOP: TIBBCDField
      FieldName = 'NFE_VICMSOP'
      Origin = '"NFE_ITE"."NFE_VICMSOP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PDIF: TIBBCDField
      FieldName = 'NFE_PDIF'
      Origin = '"NFE_ITE"."NFE_PDIF"'
      Precision = 9
      Size = 4
    end
    object imp_nitNFE_VICMSDIF: TIBBCDField
      FieldName = 'NFE_VICMSDIF'
      Origin = '"NFE_ITE"."NFE_VICMSDIF"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCFCP: TIBBCDField
      FieldName = 'NFE_VBCFCP'
      Origin = '"NFE_ITE"."NFE_VBCFCP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PFCP: TIBBCDField
      FieldName = 'NFE_PFCP'
      Origin = '"NFE_ITE"."NFE_PFCP"'
      Precision = 9
      Size = 4
    end
    object imp_nitNFE_VFCP: TIBBCDField
      FieldName = 'NFE_VFCP'
      Origin = '"NFE_ITE"."NFE_VFCP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PST: TIBBCDField
      FieldName = 'NFE_PST'
      Origin = '"NFE_ITE"."NFE_PST"'
      Precision = 9
      Size = 4
    end
    object imp_nitNFE_VBCFCPST: TIBBCDField
      FieldName = 'NFE_VBCFCPST'
      Origin = '"NFE_ITE"."NFE_VBCFCPST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PFCPST: TIBBCDField
      FieldName = 'NFE_PFCPST'
      Origin = '"NFE_ITE"."NFE_PFCPST"'
      Precision = 9
      Size = 4
    end
    object imp_nitNFE_VFCPST: TIBBCDField
      FieldName = 'NFE_VFCPST'
      Origin = '"NFE_ITE"."NFE_VFCPST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCFCPSTRET: TIBBCDField
      FieldName = 'NFE_VBCFCPSTRET'
      Origin = '"NFE_ITE"."NFE_VBCFCPSTRET"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_PFCPSTRET: TIBBCDField
      FieldName = 'NFE_PFCPSTRET'
      Origin = '"NFE_ITE"."NFE_PFCPSTRET"'
      Precision = 9
      Size = 4
    end
    object imp_nitNFE_VFCPSTRET: TIBBCDField
      FieldName = 'NFE_VFCPSTRET'
      Origin = '"NFE_ITE"."NFE_VFCPSTRET"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VBCFCPUFDEST: TIBBCDField
      FieldName = 'NFE_VBCFCPUFDEST'
      Origin = '"NFE_ITE"."NFE_VBCFCPUFDEST"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VICMSDESON: TIBBCDField
      FieldName = 'NFE_VICMSDESON'
      Origin = '"NFE_ITE"."NFE_VICMSDESON"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_MOTDESICMS: TSmallintField
      FieldName = 'NFE_MOTDESICMS'
      Origin = '"NFE_ITE"."NFE_MOTDESICMS"'
    end
    object imp_nitNFE_NDRAW: TIBStringField
      FieldName = 'NFE_NDRAW'
      Origin = '"NFE_ITE"."NFE_NDRAW"'
      Size = 11
    end
    object imp_nitNFE_NRE: TIBStringField
      FieldName = 'NFE_NRE'
      Origin = '"NFE_ITE"."NFE_NRE"'
      Size = 12
    end
    object imp_nitNFE_NRECOPI: TIBStringField
      FieldName = 'NFE_NRECOPI'
      Origin = '"NFE_ITE"."NFE_NRECOPI"'
    end
    object imp_nitNFE_CHNFE: TIBStringField
      FieldName = 'NFE_CHNFE'
      Origin = '"NFE_ITE"."NFE_CHNFE"'
      Size = 44
    end
    object imp_nitNFE_QEXPORT: TIBBCDField
      FieldName = 'NFE_QEXPORT'
      Origin = '"NFE_ITE"."NFE_QEXPORT"'
      Precision = 18
      Size = 4
    end
    object imp_nitNFE_VTOTTRIB: TIBBCDField
      FieldName = 'NFE_VTOTTRIB'
      Origin = '"NFE_ITE"."NFE_VTOTTRIB"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_CNPJPROD: TIBStringField
      FieldName = 'NFE_CNPJPROD'
      Origin = '"NFE_ITE"."NFE_CNPJPROD"'
      Size = 14
    end
    object imp_nitNFE_INFADPROD: TIBStringField
      FieldName = 'NFE_INFADPROD'
      Origin = '"NFE_ITE"."NFE_INFADPROD"'
      Size = 500
    end
    object imp_nitNFE_COMP: TIBStringField
      FieldName = 'NFE_COMP'
      Origin = '"NFE_ITE"."NFE_COMP"'
      Size = 120
    end
    object imp_nitNFE_CSTA: TIBStringField
      FieldName = 'NFE_CSTA'
      Origin = '"NFE_ITE"."NFE_CSTA"'
      Size = 3
    end
    object imp_nitNFE_CSTS: TIBStringField
      FieldName = 'NFE_CSTS'
      Origin = '"NFE_ITE"."NFE_CSTS"'
      Size = 3
    end
    object imp_nitNFE_XPROX: TIBStringField
      FieldName = 'NFE_XPROX'
      Origin = '"NFE_ITE"."NFE_XPROX"'
      Size = 120
    end
    object imp_nitNFE_QVOL: TIBBCDField
      FieldName = 'NFE_QVOL'
      Origin = '"NFE_ITE"."NFE_QVOL"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_ESP: TIBStringField
      FieldName = 'NFE_ESP'
      Origin = '"NFE_ITE"."NFE_ESP"'
      Size = 30
    end
    object imp_nitNFE_QTUN: TIBBCDField
      FieldName = 'NFE_QTUN'
      Origin = '"NFE_ITE"."NFE_QTUN"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_CNPJTERCEIRO: TIBStringField
      FieldName = 'NFE_CNPJTERCEIRO'
      Origin = '"NFE_ITE"."NFE_CNPJTERCEIRO"'
      Size = 14
    end
    object imp_nitNFE_XLOCDESPACHO: TIBStringField
      FieldName = 'NFE_XLOCDESPACHO'
      Origin = '"NFE_ITE"."NFE_XLOCDESPACHO"'
      Size = 60
    end
    object imp_nitNFE_UFSAIDAPAIS: TIBStringField
      FieldName = 'NFE_UFSAIDAPAIS'
      Origin = '"NFE_ITE"."NFE_UFSAIDAPAIS"'
      Size = 2
    end
    object imp_nitNFE_UTRIB: TIBStringField
      FieldName = 'NFE_UTRIB'
      Origin = '"NFE_ITE"."NFE_UTRIB"'
      Size = 6
    end
    object imp_nitNFE_UEXP: TIBStringField
      FieldName = 'NFE_UEXP'
      Origin = '"NFE_ITE"."NFE_UEXP"'
      Size = 6
    end
    object imp_nitNFE_TPINTERMEDIO: TIBStringField
      FieldName = 'NFE_TPINTERMEDIO'
      Origin = '"NFE_ITE"."NFE_TPINTERMEDIO"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_TPVIATRANSP: TIBStringField
      FieldName = 'NFE_TPVIATRANSP'
      Origin = '"NFE_ITE"."NFE_TPVIATRANSP"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_TRIBFEDNACIONAL: TIBBCDField
      FieldName = 'NFE_TRIBFEDNACIONAL'
      Origin = '"NFE_ITE"."NFE_TRIBFEDNACIONAL"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_TRIBFEDIMPORTADO: TIBBCDField
      FieldName = 'NFE_TRIBFEDIMPORTADO'
      Origin = '"NFE_ITE"."NFE_TRIBFEDIMPORTADO"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_TRIBESTADUAL: TIBBCDField
      FieldName = 'NFE_TRIBESTADUAL'
      Origin = '"NFE_ITE"."NFE_TRIBESTADUAL"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_TRIBMUNICIPAL: TIBBCDField
      FieldName = 'NFE_TRIBMUNICIPAL'
      Origin = '"NFE_ITE"."NFE_TRIBMUNICIPAL"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_TRIBIPI: TIBBCDField
      FieldName = 'NFE_TRIBIPI'
      Origin = '"NFE_ITE"."NFE_TRIBIPI"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_MVA: TIBBCDField
      FieldName = 'NFE_MVA'
      Origin = '"NFE_ITE"."NFE_MVA"'
      Precision = 9
      Size = 2
    end
    object imp_nitNFE_QTRIB: TIBBCDField
      FieldName = 'NFE_QTRIB'
      Origin = '"NFE_ITE"."NFE_QTRIB"'
      Precision = 18
      Size = 4
    end
    object imp_nitNFE_VUNTRIB: TFloatField
      FieldName = 'NFE_VUNTRIB'
      Origin = '"NFE_ITE"."NFE_VUNTRIB"'
      DisplayFormat = ',##,0.00###'
    end
    object imp_nitNFE_STAV: TIBStringField
      FieldName = 'NFE_STAV'
      Origin = '"NFE_ITE"."NFE_STAV"'
      FixedChar = True
      Size = 1
    end
    object imp_nitNFE_INFADTRIB: TIBStringField
      FieldName = 'NFE_INFADTRIB'
      Origin = '"NFE_ITE"."NFE_INFADTRIB"'
      Size = 500
    end
    object imp_nitNFE_CDEP: TSmallintField
      FieldName = 'NFE_CDEP'
      Origin = '"NFE_ITE"."NFE_CDEP"'
    end
  end
  object dtsimp_nit: TDataSource
    DataSet = imp_nit
    Left = 640
    Top = 104
  end
  object imp_nca: TIBDataSet
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = imp_cabAfterDelete
    AfterPost = imp_cabAfterPost
    BeforePost = imp_ncaBeforePost
    DeleteSQL.Strings = (
      'delete from NFE_CAB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_CAB'
      
        '  (ID, NFE_AAMM, NFE_AAMMREF, NFE_CDNF, NFE_CFAV, NFE_CMUNFG, NF' +
        'E_CNAT, '
      
        '   NFE_CNPJREF, NFE_CPAIS, NFE_CUF, NFE_CUFREF, NFE_DEMI, NFE_DH' +
        'CONT, NFE_DSAI, '
      
        '   NFE_FINNFE, NFE_HRSE, NFE_INDPAG, NFE_INFCPL, NFE_ISUF, NFE_M' +
        'OD, NFE_MODREF, '
      
        '   NFE_NATOP, NFE_NFREF, NFE_NNFREF, NFE_PROCEMI, NFE_REFNFE, NF' +
        'E_SERIE, '
      
        '   NFE_SERIEREF, NFE_TPEMIS, NFE_TPIMP, NFE_TPNF, NFE_VBC, NFE_V' +
        'BCIRRF, '
      
        '   NFE_VBCISSQN, NFE_VBCRETPREV, NFE_VBCST, NFE_VCOFINS, NFE_VCO' +
        'FINSISSQN, '
      
        '   NFE_VDESC, NFE_VERPROC, NFE_VFRETE, NFE_VICMS, NFE_VICMSDESON' +
        ', NFE_VII, '
      
        '   NFE_VIPI, NFE_VIRRF, NFE_VISS, NFE_VNF, NFE_VOUTRO, NFE_VPIS,' +
        ' NFE_VPISISSQN, '
      
        '   NFE_VPROD, NFE_VRETCOFINS, NFE_VRETCSLL, NFE_VRETPIS, NFE_VRE' +
        'TPREV, '
      
        '   NFE_VSEG, NFE_VSERVISSQN, NFE_VST, NFE_VTOTTRIB, NFE_XJUST, N' +
        'FE_XPAIS)'
      'values'
      
        '  (:ID, :NFE_AAMM, :NFE_AAMMREF, :NFE_CDNF, :NFE_CFAV, :NFE_CMUN' +
        'FG, :NFE_CNAT, '
      
        '   :NFE_CNPJREF, :NFE_CPAIS, :NFE_CUF, :NFE_CUFREF, :NFE_DEMI, :' +
        'NFE_DHCONT, '
      
        '   :NFE_DSAI, :NFE_FINNFE, :NFE_HRSE, :NFE_INDPAG, :NFE_INFCPL, ' +
        ':NFE_ISUF, '
      
        '   :NFE_MOD, :NFE_MODREF, :NFE_NATOP, :NFE_NFREF, :NFE_NNFREF, :' +
        'NFE_PROCEMI, '
      
        '   :NFE_REFNFE, :NFE_SERIE, :NFE_SERIEREF, :NFE_TPEMIS, :NFE_TPI' +
        'MP, :NFE_TPNF, '
      
        '   :NFE_VBC, :NFE_VBCIRRF, :NFE_VBCISSQN, :NFE_VBCRETPREV, :NFE_' +
        'VBCST, '
      
        '   :NFE_VCOFINS, :NFE_VCOFINSISSQN, :NFE_VDESC, :NFE_VERPROC, :N' +
        'FE_VFRETE, '
      
        '   :NFE_VICMS, :NFE_VICMSDESON, :NFE_VII, :NFE_VIPI, :NFE_VIRRF,' +
        ' :NFE_VISS, '
      
        '   :NFE_VNF, :NFE_VOUTRO, :NFE_VPIS, :NFE_VPISISSQN, :NFE_VPROD,' +
        ' :NFE_VRETCOFINS, '
      
        '   :NFE_VRETCSLL, :NFE_VRETPIS, :NFE_VRETPREV, :NFE_VSEG, :NFE_V' +
        'SERVISSQN, '
      '   :NFE_VST, :NFE_VTOTTRIB, :NFE_XJUST, :NFE_XPAIS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CDNF,'
      '  NFE_AAMM,'
      '  NFE_DEMI,'
      '  NFE_DSAI,'
      '  NFE_HRSE,'
      '  NFE_CFAV,'
      '  NFE_CNAT,'
      '  NFE_INDPAG,'
      '  NFE_TPNF,'
      '  NFE_NFREF,'
      '  NFE_REFNFE,'
      '  NFE_CUFREF,'
      '  NFE_AAMMREF,'
      '  NFE_CNPJREF,'
      '  NFE_MODREF,'
      '  NFE_SERIEREF,'
      '  NFE_NNFREF,'
      '  NFE_TPEMIS,'
      '  NFE_FINNFE,'
      '  NFE_PROCEMI,'
      '  NFE_VERPROC,'
      '  NFE_DHCONT,'
      '  NFE_ISUF,'
      '  NFE_VBC,'
      '  NFE_VICMS,'
      '  NFE_VBCST,'
      '  NFE_VST,'
      '  NFE_VPROD,'
      '  NFE_VFRETE,'
      '  NFE_VSEG,'
      '  NFE_VDESC,'
      '  NFE_VII,'
      '  NFE_VIPI,'
      '  NFE_VPIS,'
      '  NFE_VCOFINS,'
      '  NFE_VOUTRO,'
      '  NFE_VNF,'
      '  NFE_VSERVISSQN,'
      '  NFE_VBCISSQN,'
      '  NFE_VISS,'
      '  NFE_VPISISSQN,'
      '  NFE_VCOFINSISSQN,'
      '  NFE_VRETPIS,'
      '  NFE_VRETCOFINS,'
      '  NFE_VRETCSLL,'
      '  NFE_VBCIRRF,'
      '  NFE_VIRRF,'
      '  NFE_VBCRETPREV,'
      '  NFE_VRETPREV,'
      '  NFE_CUF,'
      '  NFE_NATOP,'
      '  NFE_MOD,'
      '  NFE_SERIE,'
      '  NFE_CMUNFG,'
      '  NFE_TPIMP,'
      '  NFE_VICMSDESON,'
      '  NFE_VTOTTRIB,'
      '  NFE_CPAIS,'
      '  NFE_XPAIS,'
      '  NFE_XJUST,'
      '  NFE_INFCPL'
      'from NFE_CAB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM NFE_CAB'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update NFE_CAB'
      'set'
      '  ID = :ID,'
      '  NFE_AAMM = :NFE_AAMM,'
      '  NFE_AAMMREF = :NFE_AAMMREF,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CFAV = :NFE_CFAV,'
      '  NFE_CMUNFG = :NFE_CMUNFG,'
      '  NFE_CNAT = :NFE_CNAT,'
      '  NFE_CNPJREF = :NFE_CNPJREF,'
      '  NFE_CPAIS = :NFE_CPAIS,'
      '  NFE_CUF = :NFE_CUF,'
      '  NFE_CUFREF = :NFE_CUFREF,'
      '  NFE_DEMI = :NFE_DEMI,'
      '  NFE_DHCONT = :NFE_DHCONT,'
      '  NFE_DSAI = :NFE_DSAI,'
      '  NFE_FINNFE = :NFE_FINNFE,'
      '  NFE_HRSE = :NFE_HRSE,'
      '  NFE_INDPAG = :NFE_INDPAG,'
      '  NFE_INFCPL = :NFE_INFCPL,'
      '  NFE_ISUF = :NFE_ISUF,'
      '  NFE_MOD = :NFE_MOD,'
      '  NFE_MODREF = :NFE_MODREF,'
      '  NFE_NATOP = :NFE_NATOP,'
      '  NFE_NFREF = :NFE_NFREF,'
      '  NFE_NNFREF = :NFE_NNFREF,'
      '  NFE_PROCEMI = :NFE_PROCEMI,'
      '  NFE_REFNFE = :NFE_REFNFE,'
      '  NFE_SERIE = :NFE_SERIE,'
      '  NFE_SERIEREF = :NFE_SERIEREF,'
      '  NFE_TPEMIS = :NFE_TPEMIS,'
      '  NFE_TPIMP = :NFE_TPIMP,'
      '  NFE_TPNF = :NFE_TPNF,'
      '  NFE_VBC = :NFE_VBC,'
      '  NFE_VBCIRRF = :NFE_VBCIRRF,'
      '  NFE_VBCISSQN = :NFE_VBCISSQN,'
      '  NFE_VBCRETPREV = :NFE_VBCRETPREV,'
      '  NFE_VBCST = :NFE_VBCST,'
      '  NFE_VCOFINS = :NFE_VCOFINS,'
      '  NFE_VCOFINSISSQN = :NFE_VCOFINSISSQN,'
      '  NFE_VDESC = :NFE_VDESC,'
      '  NFE_VERPROC = :NFE_VERPROC,'
      '  NFE_VFRETE = :NFE_VFRETE,'
      '  NFE_VICMS = :NFE_VICMS,'
      '  NFE_VICMSDESON = :NFE_VICMSDESON,'
      '  NFE_VII = :NFE_VII,'
      '  NFE_VIPI = :NFE_VIPI,'
      '  NFE_VIRRF = :NFE_VIRRF,'
      '  NFE_VISS = :NFE_VISS,'
      '  NFE_VNF = :NFE_VNF,'
      '  NFE_VOUTRO = :NFE_VOUTRO,'
      '  NFE_VPIS = :NFE_VPIS,'
      '  NFE_VPISISSQN = :NFE_VPISISSQN,'
      '  NFE_VPROD = :NFE_VPROD,'
      '  NFE_VRETCOFINS = :NFE_VRETCOFINS,'
      '  NFE_VRETCSLL = :NFE_VRETCSLL,'
      '  NFE_VRETPIS = :NFE_VRETPIS,'
      '  NFE_VRETPREV = :NFE_VRETPREV,'
      '  NFE_VSEG = :NFE_VSEG,'
      '  NFE_VSERVISSQN = :NFE_VSERVISSQN,'
      '  NFE_VST = :NFE_VST,'
      '  NFE_VTOTTRIB = :NFE_VTOTTRIB,'
      '  NFE_XJUST = :NFE_XJUST,'
      '  NFE_XPAIS = :NFE_XPAIS'
      'where'
      '  ID = :OLD_ID')
    Left = 608
    Top = 72
    object imp_ncaID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_ncaNFE_CDNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB"."NFE_CDNF"'
    end
    object imp_ncaNFE_AAMM: TIBStringField
      FieldName = 'NFE_AAMM'
      Origin = '"NFE_CAB"."NFE_AAMM"'
      Size = 4
    end
    object imp_ncaNFE_DEMI: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object imp_ncaNFE_DSAI: TDateField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'NFE_DSAI'
      Origin = '"NFE_CAB"."NFE_DSAI"'
    end
    object imp_ncaNFE_HRSE: TTimeField
      FieldName = 'NFE_HRSE'
      Origin = '"NFE_CAB"."NFE_HRSE"'
    end
    object imp_ncaNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_CAB"."NFE_CFAV"'
    end
    object imp_ncaNFE_CNAT: TIntegerField
      FieldName = 'NFE_CNAT'
      Origin = '"NFE_CAB"."NFE_CNAT"'
    end
    object imp_ncaNFE_INDPAG: TSmallintField
      FieldName = 'NFE_INDPAG'
      Origin = '"NFE_CAB"."NFE_INDPAG"'
    end
    object imp_ncaNFE_TPNF: TSmallintField
      FieldName = 'NFE_TPNF'
      Origin = '"NFE_CAB"."NFE_TPNF"'
    end
    object imp_ncaNFE_NFREF: TSmallintField
      FieldName = 'NFE_NFREF'
      Origin = '"NFE_CAB"."NFE_NFREF"'
    end
    object imp_ncaNFE_REFNFE: TIBStringField
      FieldName = 'NFE_REFNFE'
      Origin = '"NFE_CAB"."NFE_REFNFE"'
      Size = 44
    end
    object imp_ncaNFE_CUFREF: TIBStringField
      FieldName = 'NFE_CUFREF'
      Origin = '"NFE_CAB"."NFE_CUFREF"'
      Size = 2
    end
    object imp_ncaNFE_AAMMREF: TIBStringField
      FieldName = 'NFE_AAMMREF'
      Origin = '"NFE_CAB"."NFE_AAMMREF"'
      Size = 4
    end
    object imp_ncaNFE_CNPJREF: TIBStringField
      FieldName = 'NFE_CNPJREF'
      Origin = '"NFE_CAB"."NFE_CNPJREF"'
      Size = 14
    end
    object imp_ncaNFE_MODREF: TIBStringField
      FieldName = 'NFE_MODREF'
      Origin = '"NFE_CAB"."NFE_MODREF"'
      Size = 2
    end
    object imp_ncaNFE_SERIEREF: TIBStringField
      FieldName = 'NFE_SERIEREF'
      Origin = '"NFE_CAB"."NFE_SERIEREF"'
      Size = 3
    end
    object imp_ncaNFE_NNFREF: TIntegerField
      FieldName = 'NFE_NNFREF'
      Origin = '"NFE_CAB"."NFE_NNFREF"'
    end
    object imp_ncaNFE_TPEMIS: TSmallintField
      FieldName = 'NFE_TPEMIS'
      Origin = '"NFE_CAB"."NFE_TPEMIS"'
    end
    object imp_ncaNFE_FINNFE: TSmallintField
      FieldName = 'NFE_FINNFE'
      Origin = '"NFE_CAB"."NFE_FINNFE"'
    end
    object imp_ncaNFE_PROCEMI: TIBStringField
      FieldName = 'NFE_PROCEMI'
      Origin = '"NFE_CAB"."NFE_PROCEMI"'
      FixedChar = True
      Size = 1
    end
    object imp_ncaNFE_VERPROC: TIBStringField
      FieldName = 'NFE_VERPROC'
      Origin = '"NFE_CAB"."NFE_VERPROC"'
    end
    object imp_ncaNFE_DHCONT: TDateTimeField
      FieldName = 'NFE_DHCONT'
      Origin = '"NFE_CAB"."NFE_DHCONT"'
    end
    object imp_ncaNFE_ISUF: TIBStringField
      FieldName = 'NFE_ISUF'
      Origin = '"NFE_CAB"."NFE_ISUF"'
      Size = 10
    end
    object imp_ncaNFE_VBC: TIBBCDField
      DisplayLabel = 'Base'
      FieldName = 'NFE_VBC'
      Origin = '"NFE_CAB"."NFE_VBC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VICMS: TIBBCDField
      DisplayLabel = 'I.C.M.S.'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_CAB"."NFE_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_CAB"."NFE_VBCST"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VST: TIBBCDField
      FieldName = 'NFE_VST'
      Origin = '"NFE_CAB"."NFE_VST"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VPROD: TIBBCDField
      DisplayLabel = 'Produto'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_CAB"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_CAB"."NFE_VFRETE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_CAB"."NFE_VSEG"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VDESC: TIBBCDField
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_CAB"."NFE_VDESC"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VII: TIBBCDField
      DisplayLabel = 'VII'
      FieldName = 'NFE_VII'
      Origin = '"NFE_CAB"."NFE_VII"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VIPI: TIBBCDField
      DisplayLabel = 'IPI'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_CAB"."NFE_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VPIS: TIBBCDField
      DisplayLabel = 'PIS'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_CAB"."NFE_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'COFINS'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_CAB"."NFE_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VOUTRO: TIBBCDField
      DisplayLabel = 'Outros'
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_CAB"."NFE_VOUTRO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VNF: TIBBCDField
      DisplayLabel = 'Total NF'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VSERVISSQN: TIBBCDField
      FieldName = 'NFE_VSERVISSQN'
      Origin = '"NFE_CAB"."NFE_VSERVISSQN"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_CAB"."NFE_VBCISSQN"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VISS: TIBBCDField
      FieldName = 'NFE_VISS'
      Origin = '"NFE_CAB"."NFE_VISS"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VPISISSQN: TIBBCDField
      FieldName = 'NFE_VPISISSQN'
      Origin = '"NFE_CAB"."NFE_VPISISSQN"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VCOFINSISSQN: TIBBCDField
      FieldName = 'NFE_VCOFINSISSQN'
      Origin = '"NFE_CAB"."NFE_VCOFINSISSQN"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VRETPIS: TIBBCDField
      FieldName = 'NFE_VRETPIS'
      Origin = '"NFE_CAB"."NFE_VRETPIS"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VRETCOFINS: TIBBCDField
      FieldName = 'NFE_VRETCOFINS'
      Origin = '"NFE_CAB"."NFE_VRETCOFINS"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VRETCSLL: TIBBCDField
      FieldName = 'NFE_VRETCSLL'
      Origin = '"NFE_CAB"."NFE_VRETCSLL"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VBCIRRF: TIBBCDField
      FieldName = 'NFE_VBCIRRF'
      Origin = '"NFE_CAB"."NFE_VBCIRRF"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VIRRF: TIBBCDField
      FieldName = 'NFE_VIRRF'
      Origin = '"NFE_CAB"."NFE_VIRRF"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VBCRETPREV: TIBBCDField
      FieldName = 'NFE_VBCRETPREV'
      Origin = '"NFE_CAB"."NFE_VBCRETPREV"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VRETPREV: TIBBCDField
      FieldName = 'NFE_VRETPREV'
      Origin = '"NFE_CAB"."NFE_VRETPREV"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_CUF: TIBStringField
      FieldName = 'NFE_CUF'
      Origin = '"NFE_CAB"."NFE_CUF"'
      Size = 2
    end
    object imp_ncaNFE_NATOP: TIBStringField
      FieldName = 'NFE_NATOP'
      Origin = '"NFE_CAB"."NFE_NATOP"'
      Size = 60
    end
    object imp_ncaNFE_MOD: TIBStringField
      FieldName = 'NFE_MOD'
      Origin = '"NFE_CAB"."NFE_MOD"'
      Size = 2
    end
    object imp_ncaNFE_SERIE: TIBStringField
      FieldName = 'NFE_SERIE'
      Origin = '"NFE_CAB"."NFE_SERIE"'
      FixedChar = True
      Size = 1
    end
    object imp_ncaNFE_CMUNFG: TIBStringField
      FieldName = 'NFE_CMUNFG'
      Origin = '"NFE_CAB"."NFE_CMUNFG"'
      Size = 10
    end
    object imp_ncaNFE_TPIMP: TIBStringField
      FieldName = 'NFE_TPIMP'
      Origin = '"NFE_CAB"."NFE_TPIMP"'
      FixedChar = True
      Size = 1
    end
    object imp_ncaNFE_VICMSDESON: TIBBCDField
      FieldName = 'NFE_VICMSDESON'
      Origin = '"NFE_CAB"."NFE_VICMSDESON"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VTOTTRIB: TIBBCDField
      FieldName = 'NFE_VTOTTRIB'
      Origin = '"NFE_CAB"."NFE_VTOTTRIB"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_XJUST: TMemoField
      FieldName = 'NFE_XJUST'
      Origin = '"NFE_CAB"."NFE_XJUST"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object imp_ncaNFE_INFCPL: TMemoField
      FieldName = 'NFE_INFCPL'
      Origin = '"NFE_CAB"."NFE_INFCPL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object imp_ncaNFE_CPAIS: TSmallintField
      FieldName = 'NFE_CPAIS'
      Origin = '"NFE_CAB"."NFE_CPAIS"'
    end
    object imp_ncaNFE_XPAIS: TIBStringField
      FieldName = 'NFE_XPAIS'
      Origin = '"NFE_CAB"."NFE_XPAIS"'
      Size = 60
    end
  end
  object dtsimp_nca: TDataSource
    DataSet = imp_nca
    Left = 608
    Top = 104
  end
  object dtsimp_ite: TDataSource
    DataSet = imp_ite
    Left = 576
    Top = 104
  end
  object dtsimp_ndu: TDataSource
    DataSet = imp_ndu
    Left = 672
    Top = 104
  end
  object imp_ndu: TIBDataSet
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = imp_cabAfterDelete
    AfterPost = imp_cabAfterPost
    DeleteSQL.Strings = (
      'delete from NFE_DUP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_DUP'
      
        '  (ID, NFE_CCAB, NFE_CDNF, NFE_CDRO, NFE_CFAV, NFE_DNFE, NFE_DPA' +
        'G, NFE_DROM, '
      
        '   NFE_DVEN, NFE_OBSE, NFE_PARC, NFE_PSEQ, NFE_STA, NFE_STCO, NF' +
        'E_STFI, '
      '   NFE_STPD, NFE_TITU, NFE_TSEQ, NFE_VDUP, NFE_VPAG, NFE_VPEN)'
      'values'
      
        '  (:ID, :NFE_CCAB, :NFE_CDNF, :NFE_CDRO, :NFE_CFAV, :NFE_DNFE, :' +
        'NFE_DPAG, '
      
        '   :NFE_DROM, :NFE_DVEN, :NFE_OBSE, :NFE_PARC, :NFE_PSEQ, :NFE_S' +
        'TA, :NFE_STCO, '
      
        '   :NFE_STFI, :NFE_STPD, :NFE_TITU, :NFE_TSEQ, :NFE_VDUP, :NFE_V' +
        'PAG, :NFE_VPEN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CDRO,'
      '  NFE_CCAB,'
      '  NFE_CFAV,'
      '  NFE_DROM,'
      '  NFE_CDNF,'
      '  NFE_DNFE,'
      '  NFE_TITU,'
      '  NFE_STPD,'
      '  NFE_STCO,'
      '  NFE_STFI,'
      '  NFE_PARC,'
      '  NFE_DVEN,'
      '  NFE_VDUP,'
      '  NFE_DPAG,'
      '  NFE_VPAG,'
      '  NFE_VPEN,'
      '  NFE_STA,'
      '  NFE_OBSE,'
      '  NFE_TSEQ,'
      '  NFE_PSEQ'
      'from NFE_DUP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM NFE_DUP'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update NFE_DUP'
      'set'
      '  ID = :ID,'
      '  NFE_CCAB = :NFE_CCAB,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CDRO = :NFE_CDRO,'
      '  NFE_CFAV = :NFE_CFAV,'
      '  NFE_DNFE = :NFE_DNFE,'
      '  NFE_DPAG = :NFE_DPAG,'
      '  NFE_DROM = :NFE_DROM,'
      '  NFE_DVEN = :NFE_DVEN,'
      '  NFE_OBSE = :NFE_OBSE,'
      '  NFE_PARC = :NFE_PARC,'
      '  NFE_PSEQ = :NFE_PSEQ,'
      '  NFE_STA = :NFE_STA,'
      '  NFE_STCO = :NFE_STCO,'
      '  NFE_STFI = :NFE_STFI,'
      '  NFE_STPD = :NFE_STPD,'
      '  NFE_TITU = :NFE_TITU,'
      '  NFE_TSEQ = :NFE_TSEQ,'
      '  NFE_VDUP = :NFE_VDUP,'
      '  NFE_VPAG = :NFE_VPAG,'
      '  NFE_VPEN = :NFE_VPEN'
      'where'
      '  ID = :OLD_ID')
    Left = 672
    Top = 72
    object imp_nduID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_DUP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_nduNFE_CDRO: TIntegerField
      FieldName = 'NFE_CDRO'
      Origin = '"NFE_DUP"."NFE_CDRO"'
    end
    object imp_nduNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_DUP"."NFE_CCAB"'
    end
    object imp_nduNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_DUP"."NFE_CFAV"'
    end
    object imp_nduNFE_DROM: TDateField
      FieldName = 'NFE_DROM'
      Origin = '"NFE_DUP"."NFE_DROM"'
    end
    object imp_nduNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_DUP"."NFE_CDNF"'
    end
    object imp_nduNFE_DNFE: TDateField
      FieldName = 'NFE_DNFE'
      Origin = '"NFE_DUP"."NFE_DNFE"'
    end
    object imp_nduNFE_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'NFE_TITU'
      Origin = '"NFE_DUP"."NFE_TITU"'
      Size = 30
    end
    object imp_nduNFE_STPD: TIBStringField
      FieldName = 'NFE_STPD'
      Origin = '"NFE_DUP"."NFE_STPD"'
      Size = 60
    end
    object imp_nduNFE_STCO: TIBStringField
      FieldName = 'NFE_STCO'
      Origin = '"NFE_DUP"."NFE_STCO"'
      Size = 60
    end
    object imp_nduNFE_STFI: TIBStringField
      FieldName = 'NFE_STFI'
      Origin = '"NFE_DUP"."NFE_STFI"'
      Size = 60
    end
    object imp_nduNFE_PARC: TIntegerField
      FieldName = 'NFE_PARC'
      Origin = '"NFE_DUP"."NFE_PARC"'
    end
    object imp_nduNFE_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_DUP"."NFE_DVEN"'
    end
    object imp_nduNFE_VDUP: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'NFE_VDUP'
      Origin = '"NFE_DUP"."NFE_VDUP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_nduNFE_DPAG: TDateField
      FieldName = 'NFE_DPAG'
      Origin = '"NFE_DUP"."NFE_DPAG"'
    end
    object imp_nduNFE_VPAG: TIBBCDField
      FieldName = 'NFE_VPAG'
      Origin = '"NFE_DUP"."NFE_VPAG"'
      Precision = 18
      Size = 2
    end
    object imp_nduNFE_VPEN: TIBBCDField
      FieldName = 'NFE_VPEN'
      Origin = '"NFE_DUP"."NFE_VPEN"'
      Precision = 18
      Size = 2
    end
    object imp_nduNFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_DUP"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object imp_nduNFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_DUP"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
    object imp_nduNFE_TSEQ: TIBStringField
      FieldName = 'NFE_TSEQ'
      Origin = '"NFE_DUP"."NFE_TSEQ"'
      FixedChar = True
      Size = 1
    end
    object imp_nduNFE_PSEQ: TIBStringField
      FieldName = 'NFE_PSEQ'
      Origin = '"NFE_DUP"."NFE_PSEQ"'
      Size = 2
    end
  end
  object cad_tra: TIBDataSet
    Database = FBird.DBERP
    Transaction = IBTra
    AfterDelete = imp_cabAfterDelete
    AfterPost = imp_cabAfterPost
    DeleteSQL.Strings = (
      'delete from CAD_TRA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_TRA'
      
        '  (ID, TRA_BAI, TRA_BAIC, TRA_BAIV, TRA_CCEL, TRA_CCM, TRA_CCON,' +
        ' TRA_CDD2, '
      
        '   TRA_CDD3, TRA_CDD4, TRA_CDD5, TRA_CDD6, TRA_CDDD, TRA_CEL, TR' +
        'A_CEP, '
      
        '   TRA_CEPC, TRA_CEPV, TRA_CFAX, TRA_CICM, TRA_CID, TRA_CIDC, TR' +
        'A_CIDV, '
      
        '   TRA_CMAI, TRA_CMUC, TRA_CMUN, TRA_CMUV, TRA_CNCE, TRA_CNID, T' +
        'RA_CNPJ, '
      
        '   TRA_COMC, TRA_COMP, TRA_COMV, TRA_CONT, TRA_CPAG, TRA_CPF, TR' +
        'A_CRED, '
      
        '   TRA_CTC1, TRA_CTC2, TRA_CTE1, TRA_CTE2, TRA_CTE3, TRA_CTRA, T' +
        'RA_DALT, '
      
        '   TRA_DCAD, TRA_DD2, TRA_DD3, TRA_DD4, TRA_DD5, TRA_DD6, TRA_DD' +
        'D, TRA_DFUN, '
      
        '   TRA_DPAG, TRA_DTRA, TRA_DULT, TRA_ESTA, TRA_ESTC, TRA_ESTV, T' +
        'RA_FANT, '
      
        '   TRA_FAX, TRA_FCEL, TRA_FCON, TRA_FDD2, TRA_FDD3, TRA_FDD4, TR' +
        'A_FDD5, '
      
        '   TRA_FDD6, TRA_FDDD, TRA_FFAX, TRA_FMAI, TRA_FNCE, TRA_FNID, T' +
        'RA_FTC1, '
      
        '   TRA_FTC2, TRA_FTE1, TRA_FTE2, TRA_FTE3, TRA_IDEC, TRA_IDEE, T' +
        'RA_IDEF, '
      
        '   TRA_IDER, TRA_IMUN, TRA_INSC, TRA_LOGC, TRA_LOGR, TRA_LOGV, T' +
        'RA_MAIL, '
      
        '   TRA_NCEL, TRA_NEID, TRA_NUMC, TRA_NUME, TRA_NUMV, TRA_OBSE, T' +
        'RA_OBSO, '
      
        '   TRA_RAMO, TRA_RAZA, TRA_REGI, TRA_REVE, TRA_RG, TRA_RICM, TRA' +
        '_SITE, '
      
        '   TRA_STA, TRA_STAV, TRA_TCE1, TRA_TCE2, TRA_TEL1, TRA_TEL2, TR' +
        'A_TEL3, '
      
        '   TRA_TLOC, TRA_TLOG, TRA_TLOV, TRA_TPVE, TRA_VDSC, TRA_VTCARRO' +
        ', TRA_VTCARRO2, '
      
        '   TRA_VTCARRO3, TRA_VTCARRO4, TRA_VTCARRO5, TRA_VTPLACA, TRA_VT' +
        'PLACA2, '
      
        '   TRA_VTPLACA3, TRA_VTPLACA4, TRA_VTPLACA5, TRA_VTRNTC, TRA_VTR' +
        'NTC2, TRA_VTRNTC3, '
      
        '   TRA_VTRNTC4, TRA_VTRNTC5, TRA_VTUF, TRA_VTUF2, TRA_VTUF3, TRA' +
        '_VTUF4, '
      '   TRA_VTUF5, TRA_VULT)'
      'values'
      
        '  (:ID, :TRA_BAI, :TRA_BAIC, :TRA_BAIV, :TRA_CCEL, :TRA_CCM, :TR' +
        'A_CCON, '
      
        '   :TRA_CDD2, :TRA_CDD3, :TRA_CDD4, :TRA_CDD5, :TRA_CDD6, :TRA_C' +
        'DDD, :TRA_CEL, '
      
        '   :TRA_CEP, :TRA_CEPC, :TRA_CEPV, :TRA_CFAX, :TRA_CICM, :TRA_CI' +
        'D, :TRA_CIDC, '
      
        '   :TRA_CIDV, :TRA_CMAI, :TRA_CMUC, :TRA_CMUN, :TRA_CMUV, :TRA_C' +
        'NCE, :TRA_CNID, '
      
        '   :TRA_CNPJ, :TRA_COMC, :TRA_COMP, :TRA_COMV, :TRA_CONT, :TRA_C' +
        'PAG, :TRA_CPF, '
      
        '   :TRA_CRED, :TRA_CTC1, :TRA_CTC2, :TRA_CTE1, :TRA_CTE2, :TRA_C' +
        'TE3, :TRA_CTRA, '
      
        '   :TRA_DALT, :TRA_DCAD, :TRA_DD2, :TRA_DD3, :TRA_DD4, :TRA_DD5,' +
        ' :TRA_DD6, '
      
        '   :TRA_DDD, :TRA_DFUN, :TRA_DPAG, :TRA_DTRA, :TRA_DULT, :TRA_ES' +
        'TA, :TRA_ESTC, '
      
        '   :TRA_ESTV, :TRA_FANT, :TRA_FAX, :TRA_FCEL, :TRA_FCON, :TRA_FD' +
        'D2, :TRA_FDD3, '
      
        '   :TRA_FDD4, :TRA_FDD5, :TRA_FDD6, :TRA_FDDD, :TRA_FFAX, :TRA_F' +
        'MAI, :TRA_FNCE, '
      
        '   :TRA_FNID, :TRA_FTC1, :TRA_FTC2, :TRA_FTE1, :TRA_FTE2, :TRA_F' +
        'TE3, :TRA_IDEC, '
      
        '   :TRA_IDEE, :TRA_IDEF, :TRA_IDER, :TRA_IMUN, :TRA_INSC, :TRA_L' +
        'OGC, :TRA_LOGR, '
      
        '   :TRA_LOGV, :TRA_MAIL, :TRA_NCEL, :TRA_NEID, :TRA_NUMC, :TRA_N' +
        'UME, :TRA_NUMV, '
      
        '   :TRA_OBSE, :TRA_OBSO, :TRA_RAMO, :TRA_RAZA, :TRA_REGI, :TRA_R' +
        'EVE, :TRA_RG, '
      
        '   :TRA_RICM, :TRA_SITE, :TRA_STA, :TRA_STAV, :TRA_TCE1, :TRA_TC' +
        'E2, :TRA_TEL1, '
      
        '   :TRA_TEL2, :TRA_TEL3, :TRA_TLOC, :TRA_TLOG, :TRA_TLOV, :TRA_T' +
        'PVE, :TRA_VDSC, '
      
        '   :TRA_VTCARRO, :TRA_VTCARRO2, :TRA_VTCARRO3, :TRA_VTCARRO4, :T' +
        'RA_VTCARRO5, '
      
        '   :TRA_VTPLACA, :TRA_VTPLACA2, :TRA_VTPLACA3, :TRA_VTPLACA4, :T' +
        'RA_VTPLACA5, '
      
        '   :TRA_VTRNTC, :TRA_VTRNTC2, :TRA_VTRNTC3, :TRA_VTRNTC4, :TRA_V' +
        'TRNTC5, '
      
        '   :TRA_VTUF, :TRA_VTUF2, :TRA_VTUF3, :TRA_VTUF4, :TRA_VTUF5, :T' +
        'RA_VULT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  TRA_RAZA,'
      '  TRA_FANT,'
      '  TRA_CONT,'
      '  TRA_DCAD,'
      '  TRA_STA,'
      '  TRA_MAIL,'
      '  TRA_DDD,'
      '  TRA_TEL1,'
      '  TRA_TEL2,'
      '  TRA_FAX,'
      '  TRA_CEL,'
      '  TRA_RG,'
      '  TRA_CPF,'
      '  TRA_INSC,'
      '  TRA_CNPJ,'
      '  TRA_TLOG,'
      '  TRA_LOGR,'
      '  TRA_CEP,'
      '  TRA_NUME,'
      '  TRA_COMP,'
      '  TRA_BAI,'
      '  TRA_CID,'
      '  TRA_ESTA,'
      '  TRA_TLOC,'
      '  TRA_LOGC,'
      '  TRA_CEPC,'
      '  TRA_NUMC,'
      '  TRA_COMC,'
      '  TRA_BAIC,'
      '  TRA_CIDC,'
      '  TRA_ESTC,'
      '  TRA_STAV,'
      '  TRA_VULT,'
      '  TRA_TPVE,'
      '  TRA_TLOV,'
      '  TRA_LOGV,'
      '  TRA_CEPV,'
      '  TRA_NUMV,'
      '  TRA_COMV,'
      '  TRA_BAIV,'
      '  TRA_CIDV,'
      '  TRA_ESTV,'
      '  TRA_RICM,'
      '  TRA_CPAG,'
      '  TRA_DPAG,'
      '  TRA_CMUN,'
      '  TRA_DALT,'
      '  TRA_CTRA,'
      '  TRA_DTRA,'
      '  TRA_DFUN,'
      '  TRA_CICM,'
      '  TRA_RAMO,'
      '  TRA_CMUV,'
      '  TRA_CMUC,'
      '  TRA_DD2,'
      '  TRA_DD3,'
      '  TRA_DD4,'
      '  TRA_DD5,'
      '  TRA_DD6,'
      '  TRA_TEL3,'
      '  TRA_TCE1,'
      '  TRA_TCE2,'
      '  TRA_NCEL,'
      '  TRA_NEID,'
      '  TRA_FCON,'
      '  TRA_FMAI,'
      '  TRA_FDDD,'
      '  TRA_FTE1,'
      '  TRA_FDD2,'
      '  TRA_FTE2,'
      '  TRA_FDD3,'
      '  TRA_FTE3,'
      '  TRA_FDD4,'
      '  TRA_FFAX,'
      '  TRA_FDD5,'
      '  TRA_FCEL,'
      '  TRA_FTC1,'
      '  TRA_FDD6,'
      '  TRA_FNCE,'
      '  TRA_FTC2,'
      '  TRA_FNID,'
      '  TRA_CCON,'
      '  TRA_CMAI,'
      '  TRA_CDDD,'
      '  TRA_CTE1,'
      '  TRA_CDD2,'
      '  TRA_CTE2,'
      '  TRA_CDD3,'
      '  TRA_CTE3,'
      '  TRA_CDD4,'
      '  TRA_CFAX,'
      '  TRA_CDD5,'
      '  TRA_CCEL,'
      '  TRA_CTC1,'
      '  TRA_CDD6,'
      '  TRA_CNCE,'
      '  TRA_CTC2,'
      '  TRA_CNID,'
      '  TRA_VDSC,'
      '  TRA_CRED,'
      '  TRA_SITE,'
      '  TRA_REVE,'
      '  TRA_IMUN,'
      '  TRA_CCM,'
      '  TRA_DULT,'
      '  TRA_REGI,'
      '  TRA_VTCARRO,'
      '  TRA_VTPLACA,'
      '  TRA_VTUF,'
      '  TRA_VTRNTC,'
      '  TRA_VTCARRO2,'
      '  TRA_VTPLACA2,'
      '  TRA_VTUF2,'
      '  TRA_VTRNTC2,'
      '  TRA_VTCARRO3,'
      '  TRA_VTPLACA3,'
      '  TRA_VTUF3,'
      '  TRA_VTRNTC3,'
      '  TRA_VTCARRO4,'
      '  TRA_VTPLACA4,'
      '  TRA_VTUF4,'
      '  TRA_VTRNTC4,'
      '  TRA_VTCARRO5,'
      '  TRA_VTPLACA5,'
      '  TRA_VTUF5,'
      '  TRA_VTRNTC5,'
      '  TRA_OBSE,'
      '  TRA_OBSO,'
      '  TRA_IDEC,'
      '  TRA_IDEF,'
      '  TRA_IDEE,'
      '  TRA_IDER'
      'from CAD_TRA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_TRA'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update CAD_TRA'
      'set'
      '  ID = :ID,'
      '  TRA_BAI = :TRA_BAI,'
      '  TRA_BAIC = :TRA_BAIC,'
      '  TRA_BAIV = :TRA_BAIV,'
      '  TRA_CCEL = :TRA_CCEL,'
      '  TRA_CCM = :TRA_CCM,'
      '  TRA_CCON = :TRA_CCON,'
      '  TRA_CDD2 = :TRA_CDD2,'
      '  TRA_CDD3 = :TRA_CDD3,'
      '  TRA_CDD4 = :TRA_CDD4,'
      '  TRA_CDD5 = :TRA_CDD5,'
      '  TRA_CDD6 = :TRA_CDD6,'
      '  TRA_CDDD = :TRA_CDDD,'
      '  TRA_CEL = :TRA_CEL,'
      '  TRA_CEP = :TRA_CEP,'
      '  TRA_CEPC = :TRA_CEPC,'
      '  TRA_CEPV = :TRA_CEPV,'
      '  TRA_CFAX = :TRA_CFAX,'
      '  TRA_CICM = :TRA_CICM,'
      '  TRA_CID = :TRA_CID,'
      '  TRA_CIDC = :TRA_CIDC,'
      '  TRA_CIDV = :TRA_CIDV,'
      '  TRA_CMAI = :TRA_CMAI,'
      '  TRA_CMUC = :TRA_CMUC,'
      '  TRA_CMUN = :TRA_CMUN,'
      '  TRA_CMUV = :TRA_CMUV,'
      '  TRA_CNCE = :TRA_CNCE,'
      '  TRA_CNID = :TRA_CNID,'
      '  TRA_CNPJ = :TRA_CNPJ,'
      '  TRA_COMC = :TRA_COMC,'
      '  TRA_COMP = :TRA_COMP,'
      '  TRA_COMV = :TRA_COMV,'
      '  TRA_CONT = :TRA_CONT,'
      '  TRA_CPAG = :TRA_CPAG,'
      '  TRA_CPF = :TRA_CPF,'
      '  TRA_CRED = :TRA_CRED,'
      '  TRA_CTC1 = :TRA_CTC1,'
      '  TRA_CTC2 = :TRA_CTC2,'
      '  TRA_CTE1 = :TRA_CTE1,'
      '  TRA_CTE2 = :TRA_CTE2,'
      '  TRA_CTE3 = :TRA_CTE3,'
      '  TRA_CTRA = :TRA_CTRA,'
      '  TRA_DALT = :TRA_DALT,'
      '  TRA_DCAD = :TRA_DCAD,'
      '  TRA_DD2 = :TRA_DD2,'
      '  TRA_DD3 = :TRA_DD3,'
      '  TRA_DD4 = :TRA_DD4,'
      '  TRA_DD5 = :TRA_DD5,'
      '  TRA_DD6 = :TRA_DD6,'
      '  TRA_DDD = :TRA_DDD,'
      '  TRA_DFUN = :TRA_DFUN,'
      '  TRA_DPAG = :TRA_DPAG,'
      '  TRA_DTRA = :TRA_DTRA,'
      '  TRA_DULT = :TRA_DULT,'
      '  TRA_ESTA = :TRA_ESTA,'
      '  TRA_ESTC = :TRA_ESTC,'
      '  TRA_ESTV = :TRA_ESTV,'
      '  TRA_FANT = :TRA_FANT,'
      '  TRA_FAX = :TRA_FAX,'
      '  TRA_FCEL = :TRA_FCEL,'
      '  TRA_FCON = :TRA_FCON,'
      '  TRA_FDD2 = :TRA_FDD2,'
      '  TRA_FDD3 = :TRA_FDD3,'
      '  TRA_FDD4 = :TRA_FDD4,'
      '  TRA_FDD5 = :TRA_FDD5,'
      '  TRA_FDD6 = :TRA_FDD6,'
      '  TRA_FDDD = :TRA_FDDD,'
      '  TRA_FFAX = :TRA_FFAX,'
      '  TRA_FMAI = :TRA_FMAI,'
      '  TRA_FNCE = :TRA_FNCE,'
      '  TRA_FNID = :TRA_FNID,'
      '  TRA_FTC1 = :TRA_FTC1,'
      '  TRA_FTC2 = :TRA_FTC2,'
      '  TRA_FTE1 = :TRA_FTE1,'
      '  TRA_FTE2 = :TRA_FTE2,'
      '  TRA_FTE3 = :TRA_FTE3,'
      '  TRA_IDEC = :TRA_IDEC,'
      '  TRA_IDEE = :TRA_IDEE,'
      '  TRA_IDEF = :TRA_IDEF,'
      '  TRA_IDER = :TRA_IDER,'
      '  TRA_IMUN = :TRA_IMUN,'
      '  TRA_INSC = :TRA_INSC,'
      '  TRA_LOGC = :TRA_LOGC,'
      '  TRA_LOGR = :TRA_LOGR,'
      '  TRA_LOGV = :TRA_LOGV,'
      '  TRA_MAIL = :TRA_MAIL,'
      '  TRA_NCEL = :TRA_NCEL,'
      '  TRA_NEID = :TRA_NEID,'
      '  TRA_NUMC = :TRA_NUMC,'
      '  TRA_NUME = :TRA_NUME,'
      '  TRA_NUMV = :TRA_NUMV,'
      '  TRA_OBSE = :TRA_OBSE,'
      '  TRA_OBSO = :TRA_OBSO,'
      '  TRA_RAMO = :TRA_RAMO,'
      '  TRA_RAZA = :TRA_RAZA,'
      '  TRA_REGI = :TRA_REGI,'
      '  TRA_REVE = :TRA_REVE,'
      '  TRA_RG = :TRA_RG,'
      '  TRA_RICM = :TRA_RICM,'
      '  TRA_SITE = :TRA_SITE,'
      '  TRA_STA = :TRA_STA,'
      '  TRA_STAV = :TRA_STAV,'
      '  TRA_TCE1 = :TRA_TCE1,'
      '  TRA_TCE2 = :TRA_TCE2,'
      '  TRA_TEL1 = :TRA_TEL1,'
      '  TRA_TEL2 = :TRA_TEL2,'
      '  TRA_TEL3 = :TRA_TEL3,'
      '  TRA_TLOC = :TRA_TLOC,'
      '  TRA_TLOG = :TRA_TLOG,'
      '  TRA_TLOV = :TRA_TLOV,'
      '  TRA_TPVE = :TRA_TPVE,'
      '  TRA_VDSC = :TRA_VDSC,'
      '  TRA_VTCARRO = :TRA_VTCARRO,'
      '  TRA_VTCARRO2 = :TRA_VTCARRO2,'
      '  TRA_VTCARRO3 = :TRA_VTCARRO3,'
      '  TRA_VTCARRO4 = :TRA_VTCARRO4,'
      '  TRA_VTCARRO5 = :TRA_VTCARRO5,'
      '  TRA_VTPLACA = :TRA_VTPLACA,'
      '  TRA_VTPLACA2 = :TRA_VTPLACA2,'
      '  TRA_VTPLACA3 = :TRA_VTPLACA3,'
      '  TRA_VTPLACA4 = :TRA_VTPLACA4,'
      '  TRA_VTPLACA5 = :TRA_VTPLACA5,'
      '  TRA_VTRNTC = :TRA_VTRNTC,'
      '  TRA_VTRNTC2 = :TRA_VTRNTC2,'
      '  TRA_VTRNTC3 = :TRA_VTRNTC3,'
      '  TRA_VTRNTC4 = :TRA_VTRNTC4,'
      '  TRA_VTRNTC5 = :TRA_VTRNTC5,'
      '  TRA_VTUF = :TRA_VTUF,'
      '  TRA_VTUF2 = :TRA_VTUF2,'
      '  TRA_VTUF3 = :TRA_VTUF3,'
      '  TRA_VTUF4 = :TRA_VTUF4,'
      '  TRA_VTUF5 = :TRA_VTUF5,'
      '  TRA_VULT = :TRA_VULT'
      'where'
      '  ID = :OLD_ID')
    Left = 352
    Top = 104
    object cad_traID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_traTRA_RAZA: TIBStringField
      FieldName = 'TRA_RAZA'
      Origin = '"CAD_TRA"."TRA_RAZA"'
      Size = 60
    end
    object cad_traTRA_FANT: TIBStringField
      FieldName = 'TRA_FANT'
      Origin = '"CAD_TRA"."TRA_FANT"'
      Size = 60
    end
    object cad_traTRA_CONT: TIBStringField
      FieldName = 'TRA_CONT'
      Origin = '"CAD_TRA"."TRA_CONT"'
      Size = 30
    end
    object cad_traTRA_DCAD: TDateField
      FieldName = 'TRA_DCAD'
      Origin = '"CAD_TRA"."TRA_DCAD"'
    end
    object cad_traTRA_STA: TIBStringField
      FieldName = 'TRA_STA'
      Origin = '"CAD_TRA"."TRA_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_MAIL: TIBStringField
      FieldName = 'TRA_MAIL'
      Origin = '"CAD_TRA"."TRA_MAIL"'
      Size = 60
    end
    object cad_traTRA_DDD: TIBStringField
      FieldName = 'TRA_DDD'
      Origin = '"CAD_TRA"."TRA_DDD"'
      Size = 2
    end
    object cad_traTRA_TEL1: TIBStringField
      FieldName = 'TRA_TEL1'
      Origin = '"CAD_TRA"."TRA_TEL1"'
      Size = 9
    end
    object cad_traTRA_TEL2: TIBStringField
      FieldName = 'TRA_TEL2'
      Origin = '"CAD_TRA"."TRA_TEL2"'
      Size = 9
    end
    object cad_traTRA_FAX: TIBStringField
      FieldName = 'TRA_FAX'
      Origin = '"CAD_TRA"."TRA_FAX"'
      Size = 9
    end
    object cad_traTRA_CEL: TIBStringField
      FieldName = 'TRA_CEL'
      Origin = '"CAD_TRA"."TRA_CEL"'
      Size = 9
    end
    object cad_traTRA_RG: TIBStringField
      FieldName = 'TRA_RG'
      Origin = '"CAD_TRA"."TRA_RG"'
      Size = 15
    end
    object cad_traTRA_CPF: TIBStringField
      FieldName = 'TRA_CPF'
      Origin = '"CAD_TRA"."TRA_CPF"'
      Size = 11
    end
    object cad_traTRA_INSC: TIBStringField
      FieldName = 'TRA_INSC'
      Origin = '"CAD_TRA"."TRA_INSC"'
    end
    object cad_traTRA_CNPJ: TIBStringField
      FieldName = 'TRA_CNPJ'
      Origin = '"CAD_TRA"."TRA_CNPJ"'
      Size = 14
    end
    object cad_traTRA_TLOG: TIBStringField
      FieldName = 'TRA_TLOG'
      Origin = '"CAD_TRA"."TRA_TLOG"'
      Size = 15
    end
    object cad_traTRA_LOGR: TIBStringField
      FieldName = 'TRA_LOGR'
      Origin = '"CAD_TRA"."TRA_LOGR"'
      Size = 60
    end
    object cad_traTRA_CEP: TIBStringField
      FieldName = 'TRA_CEP'
      Origin = '"CAD_TRA"."TRA_CEP"'
      Size = 9
    end
    object cad_traTRA_NUME: TIBStringField
      FieldName = 'TRA_NUME'
      Origin = '"CAD_TRA"."TRA_NUME"'
      Size = 10
    end
    object cad_traTRA_COMP: TIBStringField
      FieldName = 'TRA_COMP'
      Origin = '"CAD_TRA"."TRA_COMP"'
      Size = 40
    end
    object cad_traTRA_BAI: TIBStringField
      FieldName = 'TRA_BAI'
      Origin = '"CAD_TRA"."TRA_BAI"'
      Size = 40
    end
    object cad_traTRA_CID: TIBStringField
      FieldName = 'TRA_CID'
      Origin = '"CAD_TRA"."TRA_CID"'
      Size = 40
    end
    object cad_traTRA_ESTA: TIBStringField
      FieldName = 'TRA_ESTA'
      Origin = '"CAD_TRA"."TRA_ESTA"'
      Size = 2
    end
    object cad_traTRA_TLOC: TIBStringField
      FieldName = 'TRA_TLOC'
      Origin = '"CAD_TRA"."TRA_TLOC"'
      Size = 15
    end
    object cad_traTRA_LOGC: TIBStringField
      FieldName = 'TRA_LOGC'
      Origin = '"CAD_TRA"."TRA_LOGC"'
      Size = 60
    end
    object cad_traTRA_CEPC: TIBStringField
      FieldName = 'TRA_CEPC'
      Origin = '"CAD_TRA"."TRA_CEPC"'
      Size = 9
    end
    object cad_traTRA_NUMC: TIBStringField
      FieldName = 'TRA_NUMC'
      Origin = '"CAD_TRA"."TRA_NUMC"'
      Size = 10
    end
    object cad_traTRA_COMC: TIBStringField
      FieldName = 'TRA_COMC'
      Origin = '"CAD_TRA"."TRA_COMC"'
      Size = 40
    end
    object cad_traTRA_BAIC: TIBStringField
      FieldName = 'TRA_BAIC'
      Origin = '"CAD_TRA"."TRA_BAIC"'
      Size = 40
    end
    object cad_traTRA_CIDC: TIBStringField
      FieldName = 'TRA_CIDC'
      Origin = '"CAD_TRA"."TRA_CIDC"'
      Size = 40
    end
    object cad_traTRA_ESTC: TIBStringField
      FieldName = 'TRA_ESTC'
      Origin = '"CAD_TRA"."TRA_ESTC"'
      Size = 2
    end
    object cad_traTRA_OBSO: TMemoField
      FieldName = 'TRA_OBSO'
      Origin = '"CAD_TRA"."TRA_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_traTRA_STAV: TIBStringField
      FieldName = 'TRA_STAV'
      Origin = '"CAD_TRA"."TRA_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_VULT: TIBBCDField
      FieldName = 'TRA_VULT'
      Origin = '"CAD_TRA"."TRA_VULT"'
      Precision = 9
      Size = 2
    end
    object cad_traTRA_TPVE: TIBStringField
      FieldName = 'TRA_TPVE'
      Origin = '"CAD_TRA"."TRA_TPVE"'
      Size = 10
    end
    object cad_traTRA_OBSE: TMemoField
      FieldName = 'TRA_OBSE'
      Origin = '"CAD_TRA"."TRA_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_traTRA_TLOV: TIBStringField
      FieldName = 'TRA_TLOV'
      Origin = '"CAD_TRA"."TRA_TLOV"'
      Size = 15
    end
    object cad_traTRA_LOGV: TIBStringField
      FieldName = 'TRA_LOGV'
      Origin = '"CAD_TRA"."TRA_LOGV"'
      Size = 60
    end
    object cad_traTRA_CEPV: TIBStringField
      FieldName = 'TRA_CEPV'
      Origin = '"CAD_TRA"."TRA_CEPV"'
      Size = 9
    end
    object cad_traTRA_NUMV: TIBStringField
      FieldName = 'TRA_NUMV'
      Origin = '"CAD_TRA"."TRA_NUMV"'
      Size = 10
    end
    object cad_traTRA_COMV: TIBStringField
      FieldName = 'TRA_COMV'
      Origin = '"CAD_TRA"."TRA_COMV"'
      Size = 40
    end
    object cad_traTRA_BAIV: TIBStringField
      FieldName = 'TRA_BAIV'
      Origin = '"CAD_TRA"."TRA_BAIV"'
      Size = 40
    end
    object cad_traTRA_CIDV: TIBStringField
      FieldName = 'TRA_CIDV'
      Origin = '"CAD_TRA"."TRA_CIDV"'
      Size = 40
    end
    object cad_traTRA_ESTV: TIBStringField
      FieldName = 'TRA_ESTV'
      Origin = '"CAD_TRA"."TRA_ESTV"'
      Size = 2
    end
    object cad_traTRA_RICM: TIBStringField
      FieldName = 'TRA_RICM'
      Origin = '"CAD_TRA"."TRA_RICM"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_CPAG: TIBStringField
      FieldName = 'TRA_CPAG'
      Origin = '"CAD_TRA"."TRA_CPAG"'
      Size = 2
    end
    object cad_traTRA_DPAG: TIBStringField
      FieldName = 'TRA_DPAG'
      Origin = '"CAD_TRA"."TRA_DPAG"'
      Size = 50
    end
    object cad_traTRA_CMUN: TIBStringField
      FieldName = 'TRA_CMUN'
      Origin = '"CAD_TRA"."TRA_CMUN"'
      Size = 10
    end
    object cad_traTRA_DALT: TDateField
      FieldName = 'TRA_DALT'
      Origin = '"CAD_TRA"."TRA_DALT"'
    end
    object cad_traTRA_CTRA: TIntegerField
      FieldName = 'TRA_CTRA'
      Origin = '"CAD_TRA"."TRA_CTRA"'
    end
    object cad_traTRA_DTRA: TIBStringField
      FieldName = 'TRA_DTRA'
      Origin = '"CAD_TRA"."TRA_DTRA"'
    end
    object cad_traTRA_DFUN: TDateField
      FieldName = 'TRA_DFUN'
      Origin = '"CAD_TRA"."TRA_DFUN"'
    end
    object cad_traTRA_CICM: TIBStringField
      FieldName = 'TRA_CICM'
      Origin = '"CAD_TRA"."TRA_CICM"'
      FixedChar = True
      Size = 1
    end
    object cad_traTRA_RAMO: TIBStringField
      FieldName = 'TRA_RAMO'
      Origin = '"CAD_TRA"."TRA_RAMO"'
      Size = 120
    end
    object cad_traTRA_CMUV: TIBStringField
      FieldName = 'TRA_CMUV'
      Origin = '"CAD_TRA"."TRA_CMUV"'
      Size = 10
    end
    object cad_traTRA_CMUC: TIBStringField
      FieldName = 'TRA_CMUC'
      Origin = '"CAD_TRA"."TRA_CMUC"'
      Size = 10
    end
    object cad_traTRA_DD2: TIBStringField
      FieldName = 'TRA_DD2'
      Origin = '"CAD_TRA"."TRA_DD2"'
      Size = 2
    end
    object cad_traTRA_DD3: TIBStringField
      FieldName = 'TRA_DD3'
      Origin = '"CAD_TRA"."TRA_DD3"'
      Size = 2
    end
    object cad_traTRA_DD4: TIBStringField
      FieldName = 'TRA_DD4'
      Origin = '"CAD_TRA"."TRA_DD4"'
      Size = 2
    end
    object cad_traTRA_DD5: TIBStringField
      FieldName = 'TRA_DD5'
      Origin = '"CAD_TRA"."TRA_DD5"'
      Size = 2
    end
    object cad_traTRA_DD6: TIBStringField
      FieldName = 'TRA_DD6'
      Origin = '"CAD_TRA"."TRA_DD6"'
      Size = 2
    end
    object cad_traTRA_TEL3: TIBStringField
      FieldName = 'TRA_TEL3'
      Origin = '"CAD_TRA"."TRA_TEL3"'
      Size = 9
    end
    object cad_traTRA_TCE1: TIBStringField
      FieldName = 'TRA_TCE1'
      Origin = '"CAD_TRA"."TRA_TCE1"'
      Size = 10
    end
    object cad_traTRA_TCE2: TIBStringField
      FieldName = 'TRA_TCE2'
      Origin = '"CAD_TRA"."TRA_TCE2"'
      Size = 10
    end
    object cad_traTRA_NCEL: TIBStringField
      FieldName = 'TRA_NCEL'
      Origin = '"CAD_TRA"."TRA_NCEL"'
      Size = 9
    end
    object cad_traTRA_NEID: TIBStringField
      FieldName = 'TRA_NEID'
      Origin = '"CAD_TRA"."TRA_NEID"'
      Size = 15
    end
    object cad_traTRA_FCON: TIBStringField
      FieldName = 'TRA_FCON'
      Origin = '"CAD_TRA"."TRA_FCON"'
      Size = 30
    end
    object cad_traTRA_FMAI: TIBStringField
      FieldName = 'TRA_FMAI'
      Origin = '"CAD_TRA"."TRA_FMAI"'
      Size = 60
    end
    object cad_traTRA_FDDD: TIBStringField
      FieldName = 'TRA_FDDD'
      Origin = '"CAD_TRA"."TRA_FDDD"'
      Size = 2
    end
    object cad_traTRA_FTE1: TIBStringField
      FieldName = 'TRA_FTE1'
      Origin = '"CAD_TRA"."TRA_FTE1"'
      Size = 9
    end
    object cad_traTRA_FDD2: TIBStringField
      FieldName = 'TRA_FDD2'
      Origin = '"CAD_TRA"."TRA_FDD2"'
      Size = 2
    end
    object cad_traTRA_FTE2: TIBStringField
      FieldName = 'TRA_FTE2'
      Origin = '"CAD_TRA"."TRA_FTE2"'
      Size = 9
    end
    object cad_traTRA_FDD3: TIBStringField
      FieldName = 'TRA_FDD3'
      Origin = '"CAD_TRA"."TRA_FDD3"'
      Size = 2
    end
    object cad_traTRA_FTE3: TIBStringField
      FieldName = 'TRA_FTE3'
      Origin = '"CAD_TRA"."TRA_FTE3"'
      Size = 9
    end
    object cad_traTRA_FDD4: TIBStringField
      FieldName = 'TRA_FDD4'
      Origin = '"CAD_TRA"."TRA_FDD4"'
      Size = 2
    end
    object cad_traTRA_FFAX: TIBStringField
      FieldName = 'TRA_FFAX'
      Origin = '"CAD_TRA"."TRA_FFAX"'
      Size = 9
    end
    object cad_traTRA_FDD5: TIBStringField
      FieldName = 'TRA_FDD5'
      Origin = '"CAD_TRA"."TRA_FDD5"'
      Size = 2
    end
    object cad_traTRA_FCEL: TIBStringField
      FieldName = 'TRA_FCEL'
      Origin = '"CAD_TRA"."TRA_FCEL"'
      Size = 9
    end
    object cad_traTRA_FTC1: TIBStringField
      FieldName = 'TRA_FTC1'
      Origin = '"CAD_TRA"."TRA_FTC1"'
      Size = 10
    end
    object cad_traTRA_FDD6: TIBStringField
      FieldName = 'TRA_FDD6'
      Origin = '"CAD_TRA"."TRA_FDD6"'
      Size = 2
    end
    object cad_traTRA_FNCE: TIBStringField
      FieldName = 'TRA_FNCE'
      Origin = '"CAD_TRA"."TRA_FNCE"'
      Size = 9
    end
    object cad_traTRA_FTC2: TIBStringField
      FieldName = 'TRA_FTC2'
      Origin = '"CAD_TRA"."TRA_FTC2"'
      Size = 10
    end
    object cad_traTRA_FNID: TIBStringField
      FieldName = 'TRA_FNID'
      Origin = '"CAD_TRA"."TRA_FNID"'
      Size = 15
    end
    object cad_traTRA_CCON: TIBStringField
      FieldName = 'TRA_CCON'
      Origin = '"CAD_TRA"."TRA_CCON"'
      Size = 30
    end
    object cad_traTRA_CMAI: TIBStringField
      FieldName = 'TRA_CMAI'
      Origin = '"CAD_TRA"."TRA_CMAI"'
      Size = 60
    end
    object cad_traTRA_CDDD: TIBStringField
      FieldName = 'TRA_CDDD'
      Origin = '"CAD_TRA"."TRA_CDDD"'
      Size = 2
    end
    object cad_traTRA_CTE1: TIBStringField
      FieldName = 'TRA_CTE1'
      Origin = '"CAD_TRA"."TRA_CTE1"'
      Size = 9
    end
    object cad_traTRA_CDD2: TIBStringField
      FieldName = 'TRA_CDD2'
      Origin = '"CAD_TRA"."TRA_CDD2"'
      Size = 2
    end
    object cad_traTRA_CTE2: TIBStringField
      FieldName = 'TRA_CTE2'
      Origin = '"CAD_TRA"."TRA_CTE2"'
      Size = 9
    end
    object cad_traTRA_CDD3: TIBStringField
      FieldName = 'TRA_CDD3'
      Origin = '"CAD_TRA"."TRA_CDD3"'
      Size = 2
    end
    object cad_traTRA_CTE3: TIBStringField
      FieldName = 'TRA_CTE3'
      Origin = '"CAD_TRA"."TRA_CTE3"'
      Size = 9
    end
    object cad_traTRA_CDD4: TIBStringField
      FieldName = 'TRA_CDD4'
      Origin = '"CAD_TRA"."TRA_CDD4"'
      Size = 2
    end
    object cad_traTRA_CFAX: TIBStringField
      FieldName = 'TRA_CFAX'
      Origin = '"CAD_TRA"."TRA_CFAX"'
      Size = 9
    end
    object cad_traTRA_CDD5: TIBStringField
      FieldName = 'TRA_CDD5'
      Origin = '"CAD_TRA"."TRA_CDD5"'
      Size = 2
    end
    object cad_traTRA_CCEL: TIBStringField
      FieldName = 'TRA_CCEL'
      Origin = '"CAD_TRA"."TRA_CCEL"'
      Size = 9
    end
    object cad_traTRA_CTC1: TIBStringField
      FieldName = 'TRA_CTC1'
      Origin = '"CAD_TRA"."TRA_CTC1"'
      Size = 10
    end
    object cad_traTRA_CDD6: TIBStringField
      FieldName = 'TRA_CDD6'
      Origin = '"CAD_TRA"."TRA_CDD6"'
      Size = 2
    end
    object cad_traTRA_CNCE: TIBStringField
      FieldName = 'TRA_CNCE'
      Origin = '"CAD_TRA"."TRA_CNCE"'
      Size = 9
    end
    object cad_traTRA_CTC2: TIBStringField
      FieldName = 'TRA_CTC2'
      Origin = '"CAD_TRA"."TRA_CTC2"'
      Size = 10
    end
    object cad_traTRA_CNID: TIBStringField
      FieldName = 'TRA_CNID'
      Origin = '"CAD_TRA"."TRA_CNID"'
      Size = 15
    end
    object cad_traTRA_VDSC: TIBBCDField
      FieldName = 'TRA_VDSC'
      Origin = '"CAD_TRA"."TRA_VDSC"'
      Precision = 9
      Size = 2
    end
    object cad_traTRA_CRED: TIBBCDField
      FieldName = 'TRA_CRED'
      Origin = '"CAD_TRA"."TRA_CRED"'
      Precision = 9
      Size = 2
    end
    object cad_traTRA_SITE: TIBStringField
      FieldName = 'TRA_SITE'
      Origin = '"CAD_TRA"."TRA_SITE"'
      Size = 120
    end
    object cad_traTRA_REVE: TIBStringField
      FieldName = 'TRA_REVE'
      Origin = '"CAD_TRA"."TRA_REVE"'
      Size = 3
    end
    object cad_traTRA_IMUN: TIBStringField
      FieldName = 'TRA_IMUN'
      Origin = '"CAD_TRA"."TRA_IMUN"'
    end
    object cad_traTRA_CCM: TIBStringField
      FieldName = 'TRA_CCM'
      Origin = '"CAD_TRA"."TRA_CCM"'
    end
    object cad_traTRA_DULT: TDateField
      FieldName = 'TRA_DULT'
      Origin = '"CAD_TRA"."TRA_DULT"'
    end
    object cad_traTRA_REGI: TIBStringField
      FieldName = 'TRA_REGI'
      Origin = '"CAD_TRA"."TRA_REGI"'
    end
    object cad_traTRA_VTCARRO: TIBStringField
      FieldName = 'TRA_VTCARRO'
      Origin = '"CAD_TRA"."TRA_VTCARRO"'
      Size = 30
    end
    object cad_traTRA_VTPLACA: TIBStringField
      FieldName = 'TRA_VTPLACA'
      Origin = '"CAD_TRA"."TRA_VTPLACA"'
      Size = 10
    end
    object cad_traTRA_VTUF: TIBStringField
      FieldName = 'TRA_VTUF'
      Origin = '"CAD_TRA"."TRA_VTUF"'
      Size = 2
    end
    object cad_traTRA_VTRNTC: TIBStringField
      FieldName = 'TRA_VTRNTC'
      Origin = '"CAD_TRA"."TRA_VTRNTC"'
      Size = 10
    end
    object cad_traTRA_VTCARRO2: TIBStringField
      FieldName = 'TRA_VTCARRO2'
      Origin = '"CAD_TRA"."TRA_VTCARRO2"'
      Size = 30
    end
    object cad_traTRA_VTPLACA2: TIBStringField
      FieldName = 'TRA_VTPLACA2'
      Origin = '"CAD_TRA"."TRA_VTPLACA2"'
      Size = 10
    end
    object cad_traTRA_VTUF2: TIBStringField
      FieldName = 'TRA_VTUF2'
      Origin = '"CAD_TRA"."TRA_VTUF2"'
      Size = 2
    end
    object cad_traTRA_VTRNTC2: TIBStringField
      FieldName = 'TRA_VTRNTC2'
      Origin = '"CAD_TRA"."TRA_VTRNTC2"'
      Size = 10
    end
    object cad_traTRA_VTCARRO3: TIBStringField
      FieldName = 'TRA_VTCARRO3'
      Origin = '"CAD_TRA"."TRA_VTCARRO3"'
      Size = 30
    end
    object cad_traTRA_VTPLACA3: TIBStringField
      FieldName = 'TRA_VTPLACA3'
      Origin = '"CAD_TRA"."TRA_VTPLACA3"'
      Size = 10
    end
    object cad_traTRA_VTUF3: TIBStringField
      FieldName = 'TRA_VTUF3'
      Origin = '"CAD_TRA"."TRA_VTUF3"'
      Size = 2
    end
    object cad_traTRA_VTRNTC3: TIBStringField
      FieldName = 'TRA_VTRNTC3'
      Origin = '"CAD_TRA"."TRA_VTRNTC3"'
      Size = 10
    end
    object cad_traTRA_VTCARRO4: TIBStringField
      FieldName = 'TRA_VTCARRO4'
      Origin = '"CAD_TRA"."TRA_VTCARRO4"'
      Size = 30
    end
    object cad_traTRA_VTPLACA4: TIBStringField
      FieldName = 'TRA_VTPLACA4'
      Origin = '"CAD_TRA"."TRA_VTPLACA4"'
      Size = 10
    end
    object cad_traTRA_VTUF4: TIBStringField
      FieldName = 'TRA_VTUF4'
      Origin = '"CAD_TRA"."TRA_VTUF4"'
      Size = 2
    end
    object cad_traTRA_VTRNTC4: TIBStringField
      FieldName = 'TRA_VTRNTC4'
      Origin = '"CAD_TRA"."TRA_VTRNTC4"'
      Size = 10
    end
    object cad_traTRA_VTCARRO5: TIBStringField
      FieldName = 'TRA_VTCARRO5'
      Origin = '"CAD_TRA"."TRA_VTCARRO5"'
      Size = 30
    end
    object cad_traTRA_VTPLACA5: TIBStringField
      FieldName = 'TRA_VTPLACA5'
      Origin = '"CAD_TRA"."TRA_VTPLACA5"'
      Size = 10
    end
    object cad_traTRA_VTUF5: TIBStringField
      FieldName = 'TRA_VTUF5'
      Origin = '"CAD_TRA"."TRA_VTUF5"'
      Size = 2
    end
    object cad_traTRA_VTRNTC5: TIBStringField
      FieldName = 'TRA_VTRNTC5'
      Origin = '"CAD_TRA"."TRA_VTRNTC5"'
      Size = 10
    end
    object cad_traTRA_IDEC: TLargeintField
      FieldName = 'TRA_IDEC'
      Origin = '"CAD_TRA"."TRA_IDEC"'
    end
    object cad_traTRA_IDEF: TLargeintField
      FieldName = 'TRA_IDEF'
      Origin = '"CAD_TRA"."TRA_IDEF"'
    end
    object cad_traTRA_IDEE: TLargeintField
      FieldName = 'TRA_IDEE'
      Origin = '"CAD_TRA"."TRA_IDEE"'
    end
    object cad_traTRA_IDER: TLargeintField
      FieldName = 'TRA_IDER'
      Origin = '"CAD_TRA"."TRA_IDER"'
    end
  end
  object NFe: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT NC.ID,EP.ID AS IDEP,EP.FANTASIA,NC.NFE_CNAT,NC.NFE_CFAV,N' +
        'C.NFE_DFAV,NC.NFE_CTRA,NC.NFE_DTRA,'
      
        '       NI.NFE_ITEMPED,NI.NFE_CFOP,NI.NFE_CPROD,NI.NFE_NCM,NI.NFE' +
        '_CEST,NI.NFE_EXTIPI,NI.NFE_XPROD,NI.NFE_ORIG,NI.NFE_CST,'
      
        '       NI.NFE_UCOM,NI.NFE_QCOM,NI.NFE_RCOM,NI.NFE_VUNCOM,NI.NFE_' +
        'VPROD,NI.NFE_VFRETE,NI.NFE_VDESC,'
      '       NI.NFE_INFADPROD,NI.NFE_NFCI'
      'FROM   NFE_CAB_004 AS NC'
      'JOIN   TAB_PAR_SIS AS EP ON (EP.ID = NC.NFE_CDEP)'
      'JOIN   NFE_ITE_004 AS NI ON (NI.NFE_CCAB = NC.ID)'
      'WHERE  NC.NFE_CDNF = :CDNF'
      'ORDER BY NI.NFE_ITEMPED')
    Left = 672
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CDNF'
        ParamType = ptUnknown
      end>
    object NFeID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_CAB_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object NFeIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"TAB_PAR_SIS"."ID"'
    end
    object NFeFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object NFeNFE_CNAT: TIBStringField
      FieldName = 'NFE_CNAT'
      Origin = '"NFE_CAB_004"."NFE_CNAT"'
      Size = 10
    end
    object NFeNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_CAB_004"."NFE_CFAV"'
    end
    object NFeNFE_DFAV: TIBStringField
      FieldName = 'NFE_DFAV'
      Origin = '"NFE_CAB_004"."NFE_DFAV"'
      Size = 60
    end
    object NFeNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_CAB_004"."NFE_CTRA"'
    end
    object NFeNFE_DTRA: TIBStringField
      FieldName = 'NFE_DTRA'
      Origin = '"NFE_CAB_004"."NFE_DTRA"'
      Size = 60
    end
    object NFeNFE_ITEMPED: TIBStringField
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE_004"."NFE_ITEMPED"'
      Size = 6
    end
    object NFeNFE_CFOP: TIBStringField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE_004"."NFE_CFOP"'
      Size = 4
    end
    object NFeNFE_CPROD: TIBStringField
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE_004"."NFE_CPROD"'
    end
    object NFeNFE_NCM: TIBStringField
      FieldName = 'NFE_NCM'
      Origin = '"NFE_ITE_004"."NFE_NCM"'
      Size = 8
    end
    object NFeNFE_CEST: TIBStringField
      FieldName = 'NFE_CEST'
      Origin = '"NFE_ITE_004"."NFE_CEST"'
      Size = 7
    end
    object NFeNFE_EXTIPI: TIBStringField
      FieldName = 'NFE_EXTIPI'
      Origin = '"NFE_ITE_004"."NFE_EXTIPI"'
      Size = 3
    end
    object NFeNFE_XPROD: TIBStringField
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE_004"."NFE_XPROD"'
      Size = 120
    end
    object NFeNFE_ORIG: TIBStringField
      FieldName = 'NFE_ORIG'
      Origin = '"NFE_ITE_004"."NFE_ORIG"'
      FixedChar = True
      Size = 1
    end
    object NFeNFE_CST: TIBStringField
      FieldName = 'NFE_CST'
      Origin = '"NFE_ITE_004"."NFE_CST"'
      Size = 3
    end
    object NFeNFE_UCOM: TIBStringField
      FieldName = 'NFE_UCOM'
      Origin = '"NFE_ITE_004"."NFE_UCOM"'
      Size = 6
    end
    object NFeNFE_QCOM: TIBBCDField
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_ITE_004"."NFE_QCOM"'
      Precision = 18
      Size = 4
    end
    object NFeNFE_RCOM: TIntegerField
      FieldName = 'NFE_RCOM'
      Origin = '"NFE_ITE_004"."NFE_RCOM"'
    end
    object NFeNFE_VUNCOM: TFloatField
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE_004"."NFE_VUNCOM"'
      DisplayFormat = ',##,0.00###'
    end
    object NFeNFE_VPROD: TIBBCDField
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE_004"."NFE_VPROD"'
      Precision = 18
      Size = 2
    end
    object NFeNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_ITE_004"."NFE_VFRETE"'
      Precision = 18
      Size = 2
    end
    object NFeNFE_VDESC: TIBBCDField
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_ITE_004"."NFE_VDESC"'
      Precision = 18
      Size = 2
    end
    object NFeNFE_INFADPROD: TMemoField
      FieldName = 'NFE_INFADPROD'
      Origin = '"NFE_ITE_004"."NFE_INFADPROD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object NFeNFE_NFCI: TIBStringField
      FieldName = 'NFE_NFCI'
      Origin = '"NFE_ITE_004"."NFE_NFCI"'
      Size = 40
    end
  end
  object DTSNFe: TDataSource
    DataSet = NFe
    Left = 672
    Top = 168
  end
  object com_cab: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT PED_COM_CAB.*,CAD_FOR.FOR_FANT,CAD_USU.USU_DUSU,CAD_REP.R' +
        'EP_FANT,PAG_DPAG'
      'FROM   PED_COM_CAB,CAD_FOR,CAD_USU,CAD_REP,TAB_PAG'
      'WHERE  PED_COM_CAB.ROM_CFOR = CAD_FOR.ID'
      'AND    PED_COM_CAB.ROM_CCOM = CAD_USU.USU_CUSU'
      'AND    PED_COM_CAB.ROM_CREP = CAD_REP.ID'
      'AND    PED_COM_CAB.ROM_CPAG = TAB_PAG.ID'
      'AND    PED_COM_CAB.ID = 0'
      'ORDER BY ID DESC')
    Left = 352
    Top = 136
    object com_cabID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_COM_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object com_cabROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_COM_CAB"."ROM_CDOC"'
    end
    object com_cabROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_COM_CAB"."ROM_CDPR"'
    end
    object com_cabROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_COM_CAB"."ROM_CDPD"'
    end
    object com_cabROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_COM_CAB"."ROM_CDRO"'
    end
    object com_cabROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_COM_CAB"."ROM_CDRD"'
    end
    object com_cabROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_COM_CAB"."ROM_CDNF"'
    end
    object com_cabROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_COM_CAB"."ROM_CDBX"'
    end
    object com_cabROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"PED_COM_CAB"."ROM_CDCX"'
    end
    object com_cabROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_COM_CAB"."ROM_DERO"'
      Size = 30
    end
    object com_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"PED_COM_CAB"."ROM_STPD"'
      Size = 30
    end
    object com_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"PED_COM_CAB"."ROM_STCO"'
      Size = 30
    end
    object com_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_COM_CAB"."ROM_STFI"'
      Size = 30
    end
    object com_cabROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"PED_COM_CAB"."ROM_DROM"'
    end
    object com_cabROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"PED_COM_CAB"."ROM_HROM"'
    end
    object com_cabROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_COM_CAB"."ROM_DBAI"'
    end
    object com_cabROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"PED_COM_CAB"."ROM_DCAN"'
    end
    object com_cabROM_DNFS: TDateField
      FieldName = 'ROM_DNFS'
      Origin = '"PED_COM_CAB"."ROM_DNFS"'
    end
    object com_cabROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"PED_COM_CAB"."ROM_DEXP"'
    end
    object com_cabROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"PED_COM_CAB"."ROM_HEXP"'
    end
    object com_cabROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"PED_COM_CAB"."ROM_CEXP"'
    end
    object com_cabROM_CFOR: TIntegerField
      FieldName = 'ROM_CFOR'
      Origin = '"PED_COM_CAB"."ROM_CFOR"'
    end
    object com_cabROM_CCOM: TIntegerField
      FieldName = 'ROM_CCOM'
      Origin = '"PED_COM_CAB"."ROM_CCOM"'
    end
    object com_cabROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_COM_CAB"."ROM_CREP"'
    end
    object com_cabROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_COM_CAB"."ROM_CPAG"'
    end
    object com_cabROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"PED_COM_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object com_cabROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_COM_CAB"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object com_cabROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_COM_CAB"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object com_cabROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"PED_COM_CAB"."ROM_RLVE"'
    end
    object com_cabROM_TSDE: TIBBCDField
      FieldName = 'ROM_TSDE'
      Origin = '"PED_COM_CAB"."ROM_TSDE"'
      Precision = 18
      Size = 2
    end
    object com_cabROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"PED_COM_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object com_cabROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"PED_COM_CAB"."ROM_PDSC"'
      Precision = 9
      Size = 2
    end
    object com_cabROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"PED_COM_CAB"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object com_cabROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"PED_COM_CAB"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object com_cabROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"PED_COM_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
    object com_cabROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_COM_CAB"."ROM_CONC"'
    end
    object com_cabROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"PED_COM_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object com_cabROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_COM_CAB"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object com_cabROM_DPRD: TDateField
      FieldName = 'ROM_DPRD'
      Origin = '"PED_COM_CAB"."ROM_DPRD"'
    end
    object com_cabROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"PED_COM_CAB"."ROM_CTNR"'
    end
    object com_cabROM_DEMB: TDateField
      FieldName = 'ROM_DEMB'
      Origin = '"PED_COM_CAB"."ROM_DEMB"'
    end
    object com_cabROM_DDES: TDateField
      FieldName = 'ROM_DDES'
      Origin = '"PED_COM_CAB"."ROM_DDES"'
    end
    object com_cabROM_RPRD: TDateField
      FieldName = 'ROM_RPRD'
      Origin = '"PED_COM_CAB"."ROM_RPRD"'
    end
    object com_cabROM_REMB: TDateField
      FieldName = 'ROM_REMB'
      Origin = '"PED_COM_CAB"."ROM_REMB"'
    end
    object com_cabROM_RDES: TDateField
      FieldName = 'ROM_RDES'
      Origin = '"PED_COM_CAB"."ROM_RDES"'
    end
    object com_cabROM_CBAI: TIntegerField
      FieldName = 'ROM_CBAI'
      Origin = '"PED_COM_CAB"."ROM_CBAI"'
    end
    object com_cabROM_TBAI: TDateTimeField
      FieldName = 'ROM_TBAI'
      Origin = '"PED_COM_CAB"."ROM_TBAI"'
    end
    object com_cabROM_UPRN: TIntegerField
      FieldName = 'ROM_UPRN'
      Origin = '"PED_COM_CAB"."ROM_UPRN"'
    end
    object com_cabROM_PPRN: TSmallintField
      FieldName = 'ROM_PPRN'
      Origin = '"PED_COM_CAB"."ROM_PPRN"'
    end
    object com_cabROM_TPRN: TDateTimeField
      FieldName = 'ROM_TPRN'
      Origin = '"PED_COM_CAB"."ROM_TPRN"'
    end
    object com_cabROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_COM_CAB"."ROM_RLPD"'
    end
    object com_cabROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_COM_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object com_cabROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"PED_COM_CAB"."ROM_CTRA"'
    end
    object com_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"PED_COM_CAB"."ROM_DTRA"'
      Size = 60
    end
    object com_cabROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"PED_COM_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object com_cabROM_MFRT: TSmallintField
      FieldName = 'ROM_MFRT'
      Origin = '"PED_COM_CAB"."ROM_MFRT"'
    end
    object com_cabROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"PED_COM_CAB"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object com_cabROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"PED_COM_CAB"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object com_cabROM_DTCA: TDateTimeField
      FieldName = 'ROM_DTCA'
      Origin = '"PED_COM_CAB"."ROM_DTCA"'
    end
    object com_cabFOR_FANT: TIBStringField
      FieldName = 'FOR_FANT'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 60
    end
    object com_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object com_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object com_cabPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
  end
  object dtscom_cab: TDataSource
    DataSet = com_cab
    Left = 352
    Top = 168
  end
  object com_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM PED_COM_ITE')
    Left = 384
    Top = 136
    object com_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_COM_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object com_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_COM_ITE"."ROM_CCAB"'
    end
    object com_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_COM_ITE"."ROM_CDOC"'
    end
    object com_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_COM_ITE"."ROM_CDPR"'
    end
    object com_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_COM_ITE"."ROM_CDPD"'
    end
    object com_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_COM_ITE"."ROM_CDRO"'
    end
    object com_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_COM_ITE"."ROM_CDRD"'
    end
    object com_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_COM_ITE"."ROM_CDNF"'
    end
    object com_iteROM_ITEM: TIBStringField
      FieldName = 'ROM_ITEM'
      Origin = '"PED_COM_ITE"."ROM_ITEM"'
      Size = 5
    end
    object com_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_COM_ITE"."ROM_CPRO"'
    end
    object com_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"PED_COM_ITE"."ROM_CPR2"'
    end
    object com_iteROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"PED_COM_ITE"."ROM_CDET"'
      Size = 10
    end
    object com_iteROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      Origin = '"PED_COM_ITE"."ROM_QTDE"'
      Precision = 18
      Size = 4
    end
    object com_iteROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_COM_ITE"."ROM_QTRL"'
    end
    object com_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_COM_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object com_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_COM_ITE"."ROM_RLSP"'
    end
    object com_iteROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_COM_ITE"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object com_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_COM_ITE"."ROM_RLPD"'
    end
    object com_iteROM_UNIT: TFloatField
      FieldName = 'ROM_UNIT'
      Origin = '"PED_COM_ITE"."ROM_UNIT"'
      DisplayFormat = ',##,0.00###'
    end
    object com_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_COM_ITE"."ROM_PREC"'
      DisplayFormat = ',##,0.00###'
    end
    object com_iteROM_VDSC: TIBBCDField
      FieldName = 'ROM_VDSC'
      Origin = '"PED_COM_ITE"."ROM_VDSC"'
      Precision = 9
      Size = 2
    end
    object com_iteROM_TOTA: TIBBCDField
      FieldName = 'ROM_TOTA'
      Origin = '"PED_COM_ITE"."ROM_TOTA"'
      Precision = 18
      Size = 2
    end
    object com_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_COM_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object com_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_COM_ITE"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object com_iteROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"PED_COM_ITE"."ROM_DPRO"'
      Size = 120
    end
    object com_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"PED_COM_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object com_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"PED_COM_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object com_iteROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"PED_COM_ITE"."ROM_DROM"'
    end
    object com_iteROM_QPRD: TSmallintField
      FieldName = 'ROM_QPRD'
      Origin = '"PED_COM_ITE"."ROM_QPRD"'
    end
    object com_iteROM_DPRD: TDateField
      FieldName = 'ROM_DPRD'
      Origin = '"PED_COM_ITE"."ROM_DPRD"'
    end
    object com_iteROM_QEMB: TSmallintField
      FieldName = 'ROM_QEMB'
      Origin = '"PED_COM_ITE"."ROM_QEMB"'
    end
    object com_iteROM_DEMB: TDateField
      FieldName = 'ROM_DEMB'
      Origin = '"PED_COM_ITE"."ROM_DEMB"'
    end
    object com_iteROM_QDES: TSmallintField
      FieldName = 'ROM_QDES'
      Origin = '"PED_COM_ITE"."ROM_QDES"'
    end
    object com_iteROM_DDES: TDateField
      FieldName = 'ROM_DDES'
      Origin = '"PED_COM_ITE"."ROM_DDES"'
    end
    object com_iteROM_QEXP: TSmallintField
      FieldName = 'ROM_QEXP'
      Origin = '"PED_COM_ITE"."ROM_QEXP"'
    end
    object com_iteROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"PED_COM_ITE"."ROM_DEXP"'
    end
    object com_iteROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"PED_COM_ITE"."ROM_CTNR"'
    end
    object com_iteROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_COM_ITE"."ROM_DBAI"'
    end
    object com_iteROM_RPRD: TDateField
      FieldName = 'ROM_RPRD'
      Origin = '"PED_COM_ITE"."ROM_RPRD"'
    end
    object com_iteROM_REMB: TDateField
      FieldName = 'ROM_REMB'
      Origin = '"PED_COM_ITE"."ROM_REMB"'
    end
    object com_iteROM_RDES: TDateField
      FieldName = 'ROM_RDES'
      Origin = '"PED_COM_ITE"."ROM_RDES"'
    end
    object com_iteROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"PED_COM_ITE"."ROM_DUNI"'
      Size = 6
    end
    object com_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"PED_COM_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
    object com_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_COM_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object com_iteROM_PSBR: TIBBCDField
      FieldName = 'ROM_PSBR'
      Origin = '"PED_COM_ITE"."ROM_PSBR"'
      Precision = 18
      Size = 3
    end
    object com_iteROM_PSLQ: TIBBCDField
      FieldName = 'ROM_PSLQ'
      Origin = '"PED_COM_ITE"."ROM_PSLQ"'
      Precision = 18
      Size = 3
    end
    object com_iteSTFI: TIBStringField
      FieldName = 'STFI'
      Origin = '"PED_COM_ITE"."STFI"'
      FixedChar = True
      Size = 1
    end
    object com_iteIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"PED_COM_ITE"."IDCT"'
    end
    object com_iteROM_STAV: TIBStringField
      FieldName = 'ROM_STAV'
      Origin = '"PED_COM_ITE"."ROM_STAV"'
      Size = 30
    end
    object com_iteROM_NFCI: TIBStringField
      FieldName = 'ROM_NFCI'
      Origin = '"PED_COM_ITE"."ROM_NFCI"'
      Size = 40
    end
    object com_iteDGCP: TIBStringField
      FieldName = 'DGCP'
      Origin = '"PED_COM_ITE"."DGCP"'
      Size = 60
    end
  end
  object dtscom_ite: TDataSource
    DataSet = com_ite
    Left = 384
    Top = 168
  end
  object SQLConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 384
    Top = 40
  end
end
