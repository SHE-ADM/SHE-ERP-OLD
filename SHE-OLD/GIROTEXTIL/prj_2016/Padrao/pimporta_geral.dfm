inherited frmimporta_geral: Tfrmimporta_geral
  Left = 390
  Top = 29
  ActiveControl = edTXT
  Caption = 'Importa'#231#227'o Geral'
  ClientHeight = 579
  ClientWidth = 1066
  OldCreateOrder = True
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 1066
    Height = 560
    inherited PaintBox: TPaintBox
      Top = 162
      Width = 1066
      Height = 398
    end
    inherited SBMenuPrincipal: TSpeedBar
      Width = 1066
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 65
      Width = 1066
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
        Left = 16
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
        Left = 16
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
        Left = 16
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
        Left = 67
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
        Left = 67
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
        Left = 67
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
          'PEDIDO DE VENDA'
          'ROMANEIO DE VENDA'
          'PROGRAMA'#199#195'O DE COMPRA'
          'PROGRAMA'#199#195'O DE VENDA'
          'NOTA FISCAL'
          'LAN'#199'AMENTO DE ESTOQUE'
          'OR'#199'AMENTO'
          'XML'
          'XML + CONTAS A PAGAR'
          'DESPACHANTE'
          'TXT'
          #218'LTIMO LAN'#199'AMENTO')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          'PEDIDO DE VENDA'
          'ROMANEIO DE VENDA'
          'PROGRAMA'#199#195'O DE COMPRA'
          'PROGRAMA'#199#195'O DE VENDA'
          'NOTA FISCAL'
          'LAN'#199'AMENTO DE ESTOQUE'
          'OR'#199'AMENTO'
          'XML'
          'XML + CONTAS A PAGAR'
          'DESPACHANTE'
          'TXT'
          #218'LTIMO LAN'#199'AMENTO')
        Height = 24
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 162
      Width = 1066
      Height = 398
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
        Width = 1062
        Height = 380
        ActivePage = tsSUM
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
        object tsSUM: TdxTabSheet
          Caption = 'Pedido de Venda'
          object dbgSUM: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1062
            Height = 354
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
            end
            object dbgSUMROM_CPRO: TdxDBGridMaskColumn
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_CPRO'
            end
            object dbgSUMROM_DCOR: TdxDBGridMaskColumn
              Width = 140
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
            end
            object dbgSUMROM_DPRO: TdxDBGridMaskColumn
              Tag = 350
              Width = 350
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DPRO'
            end
            object dbgSUMROM_DUNI: TdxDBGridMaskColumn
              Width = 25
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
            end
            object dbgSUMROM_UNIT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_UNIT'
            end
            object dbgSUMROM_VDSC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_VDSC'
            end
            object dbgSUMROM_TOTA: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TOTA'
            end
          end
        end
        object tsXML: TdxTabSheet
          Caption = 'XML'
          ImageIndex = 6
          object pcXML: TdxPageControl
            Left = 0
            Top = 0
            Width = 1062
            Height = 354
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
                Width = 1062
                Height = 261
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
                Width = 1062
                Height = 261
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
                Width = 1062
                Height = 261
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
                Width = 1062
                Height = 261
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
                Width = 1062
                Height = 261
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
                DataSource = dtsimp_ntr
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
                Width = 1062
                Align = alClient
                Color = clBtnFace
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                DataField = 'NFE_INFCPL'
                DataSource = dtsimp_nca
                Height = 228
              end
            end
            object tsDUP: TdxTabSheet
              Caption = 'Duplicatas'
              object dxDBGrid4: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1062
                Height = 261
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
    Top = 560
    Width = 1066
  end
  inherited Consulta: TIBQuery
    Top = 64
  end
  inherited IBTra: TIBTransaction
    Top = 0
  end
  inherited ibSP: TIBStoredProc
    Top = 0
  end
  object ped_cab: TIBQuery
    Database = dmDADOS.ibDB
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
    Left = 648
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
    end
    object ped_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"PED_VEN_CAB"."ROM_STPD"'
    end
    object ped_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"PED_VEN_CAB"."ROM_STCO"'
    end
    object ped_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB"."ROM_STFI"'
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
      Size = 40
    end
    object ped_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object ped_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
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
    object ped_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"PED_VEN_CAB"."ROM_DTRA"'
      Size = 40
    end
  end
  object ped_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM PED_VEN_ITE')
    Left = 680
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
      Size = 4
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
    end
    object ped_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_VEN_ITE"."ROM_PREC"'
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
    object ped_iteROM_DCOR: TIBStringField
      FieldName = 'ROM_DCOR'
      Origin = '"PED_VEN_ITE"."ROM_DCOR"'
      Size = 30
    end
    object ped_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"PED_VEN_ITE"."ROM_PCOR"'
      Size = 30
    end
    object ped_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"PED_VEN_ITE"."ROM_DCO2"'
      Size = 30
    end
    object ped_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"PED_VEN_ITE"."ROM_PCO2"'
      Size = 30
    end
    object ped_iteROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"PED_VEN_ITE"."ROM_DUNI"'
      Size = 3
    end
    object ped_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dtsped_ite: TDataSource
    DataSet = ped_ite
    OnDataChange = dtsped_iteDataChange
    Left = 680
    Top = 168
  end
  object rom_cab: TIBQuery
    Database = dmDADOS.ibDB
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
    Left = 712
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
    end
    object rom_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"ROM_CAB"."ROM_STPD"'
    end
    object rom_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"ROM_CAB"."ROM_STCO"'
    end
    object rom_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"ROM_CAB"."ROM_STFI"'
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
      Size = 40
    end
    object rom_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object rom_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
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
    object rom_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"ROM_CAB"."ROM_DTRA"'
      Size = 40
    end
  end
  object rom_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM ROM_ITE')
    Left = 744
    Top = 136
    object rom_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_ITE"."ROM_CCAB"'
    end
    object rom_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"ROM_ITE"."ROM_CDOC"'
    end
    object rom_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"ROM_ITE"."ROM_CDPR"'
    end
    object rom_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"ROM_ITE"."ROM_CDPD"'
    end
    object rom_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"ROM_ITE"."ROM_CDRO"'
    end
    object rom_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"ROM_ITE"."ROM_CDRD"'
    end
    object rom_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"ROM_ITE"."ROM_CDNF"'
    end
    object rom_iteROM_ITEM: TIBStringField
      FieldName = 'ROM_ITEM'
      Origin = '"ROM_ITE"."ROM_ITEM"'
      Size = 4
    end
    object rom_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"ROM_ITE"."ROM_CPRO"'
    end
    object rom_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"ROM_ITE"."ROM_CPR2"'
    end
    object rom_iteROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"ROM_ITE"."ROM_CDET"'
      Size = 10
    end
    object rom_iteROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      Origin = '"ROM_ITE"."ROM_QTDE"'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"ROM_ITE"."ROM_QTRL"'
    end
    object rom_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"ROM_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"ROM_ITE"."ROM_RLSP"'
    end
    object rom_iteROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"ROM_ITE"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"ROM_ITE"."ROM_RLPD"'
    end
    object rom_iteROM_UNIT: TFloatField
      FieldName = 'ROM_UNIT'
      Origin = '"ROM_ITE"."ROM_UNIT"'
    end
    object rom_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"ROM_ITE"."ROM_PREC"'
    end
    object rom_iteROM_VDSC: TIBBCDField
      FieldName = 'ROM_VDSC'
      Origin = '"ROM_ITE"."ROM_VDSC"'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TOTA: TIBBCDField
      FieldName = 'ROM_TOTA'
      Origin = '"ROM_ITE"."ROM_TOTA"'
      Precision = 18
      Size = 2
    end
    object rom_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"ROM_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"ROM_ITE"."ROM_DPRO"'
      Size = 120
    end
    object rom_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"ROM_ITE"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"ROM_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"ROM_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DCOR: TIBStringField
      FieldName = 'ROM_DCOR'
      Origin = '"ROM_ITE"."ROM_DCOR"'
      Size = 30
    end
    object rom_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"ROM_ITE"."ROM_PCOR"'
      Size = 30
    end
    object rom_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"ROM_ITE"."ROM_DCO2"'
      Size = 30
    end
    object rom_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"ROM_ITE"."ROM_PCO2"'
      Size = 30
    end
    object rom_iteROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"ROM_ITE"."ROM_DUNI"'
      Size = 3
    end
    object rom_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"ROM_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dtsrom_ite: TDataSource
    DataSet = rom_ite
    Left = 744
    Top = 168
  end
  object prg_cab: TIBQuery
    Database = dmDADOS.ibDB
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
    Left = 776
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
    end
    object prg_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"PED_PRG_CAB"."ROM_STPD"'
    end
    object prg_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"PED_PRG_CAB"."ROM_STCO"'
    end
    object prg_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_PRG_CAB"."ROM_STFI"'
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
      Size = 40
    end
    object prg_cabUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object prg_cabREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
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
  end
  object prg_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM PED_PRG_ITE')
    Left = 808
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
      Size = 4
    end
    object prg_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_PRG_ITE"."ROM_CPRO"'
    end
    object prg_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"PED_PRG_ITE"."ROM_CPR2"'
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
    end
    object prg_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_PRG_ITE"."ROM_PREC"'
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
    object prg_iteROM_DCOR: TIBStringField
      FieldName = 'ROM_DCOR'
      Origin = '"PED_PRG_ITE"."ROM_DCOR"'
      Size = 30
    end
    object prg_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"PED_PRG_ITE"."ROM_PCOR"'
      Size = 30
    end
    object prg_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"PED_PRG_ITE"."ROM_DCO2"'
      Size = 30
    end
    object prg_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"PED_PRG_ITE"."ROM_PCO2"'
      Size = 30
    end
    object prg_iteROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"PED_PRG_ITE"."ROM_DUNI"'
      Size = 3
    end
    object prg_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_PRG_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dtsprg_ite: TDataSource
    DataSet = prg_ite
    Left = 808
    Top = 168
  end
  object dtsped_cab: TDataSource
    DataSet = ped_cab
    Left = 648
    Top = 168
  end
  object dtsrom_cab: TDataSource
    DataSet = rom_cab
    Left = 712
    Top = 168
  end
  object dtsprg_cab: TDataSource
    DataSet = prg_cab
    Left = 776
    Top = 168
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 496
  end
  object imp_ite: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    OnNewRecord = imp_iteNewRecord
    DeleteSQL.Strings = (
      'delete from IMP_ITE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into IMP_ITE'
      
        '  (ID, ROM_ABCD, ROM_APRC, ROM_CART, ROM_CBAR, ROM_CCAB, ROM_CCO' +
        '2, ROM_CCOR, '
      
        '   ROM_CDET, ROM_CDNF, ROM_CDOC, ROM_CDPD, ROM_CDPR, ROM_CDRO, R' +
        'OM_CGRD, '
      
        '   ROM_CPR2, ROM_CPRO, ROM_CSEP, ROM_CUST, ROM_DCO2, ROM_DCOR, R' +
        'OM_DGRD, '
      
        '   ROM_DPRO, ROM_DSEP, ROM_DUNI, ROM_FLAG, ROM_FOTO, ROM_IPR2, R' +
        'OM_IPRO, '
      
        '   ROM_ITEM, ROM_LDSC, ROM_METR, ROM_PCO2, ROM_PCOM, ROM_PCOR, R' +
        'OM_PEMB, '
      
        '   ROM_PESO, ROM_PIPI, ROM_PPRO, ROM_PRCA, ROM_PREC, ROM_PRPA, R' +
        'OM_PSCN, '
      
        '   ROM_PSMR, ROM_QDIS, ROM_QTDE, ROM_QTPD, ROM_QTRL, ROM_QTSP, R' +
        'OM_RCO2, '
      
        '   ROM_RCOR, ROM_REND, ROM_RLDI, ROM_RLPD, ROM_RLSP, ROM_RPRC, R' +
        'OM_RPRO, '
      
        '   ROM_STFI, ROM_TOTA, ROM_TPRC, ROM_UNIT, ROM_VBCIPI, ROM_VDSC,' +
        ' ROM_VIPI, '
      '   ROM_VPRC, ROM_VPRO)'
      'values'
      
        '  (:ID, :ROM_ABCD, :ROM_APRC, :ROM_CART, :ROM_CBAR, :ROM_CCAB, :' +
        'ROM_CCO2, '
      
        '   :ROM_CCOR, :ROM_CDET, :ROM_CDNF, :ROM_CDOC, :ROM_CDPD, :ROM_C' +
        'DPR, :ROM_CDRO, '
      
        '   :ROM_CGRD, :ROM_CPR2, :ROM_CPRO, :ROM_CSEP, :ROM_CUST, :ROM_D' +
        'CO2, :ROM_DCOR, '
      
        '   :ROM_DGRD, :ROM_DPRO, :ROM_DSEP, :ROM_DUNI, :ROM_FLAG, :ROM_F' +
        'OTO, :ROM_IPR2, '
      
        '   :ROM_IPRO, :ROM_ITEM, :ROM_LDSC, :ROM_METR, :ROM_PCO2, :ROM_P' +
        'COM, :ROM_PCOR, '
      
        '   :ROM_PEMB, :ROM_PESO, :ROM_PIPI, :ROM_PPRO, :ROM_PRCA, :ROM_P' +
        'REC, :ROM_PRPA, '
      
        '   :ROM_PSCN, :ROM_PSMR, :ROM_QDIS, :ROM_QTDE, :ROM_QTPD, :ROM_Q' +
        'TRL, :ROM_QTSP, '
      
        '   :ROM_RCO2, :ROM_RCOR, :ROM_REND, :ROM_RLDI, :ROM_RLPD, :ROM_R' +
        'LSP, :ROM_RPRC, '
      
        '   :ROM_RPRO, :ROM_STFI, :ROM_TOTA, :ROM_TPRC, :ROM_UNIT, :ROM_V' +
        'BCIPI, '
      '   :ROM_VDSC, :ROM_VIPI, :ROM_VPRC, :ROM_VPRO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_CDOC,'
      '  ROM_CDPR,'
      '  ROM_CDPD,'
      '  ROM_CDRO,'
      '  ROM_CDNF,'
      '  ROM_ITEM,'
      '  ROM_CART,'
      '  ROM_IPRO,'
      '  ROM_CPRO,'
      '  ROM_IPR2,'
      '  ROM_CPR2,'
      '  ROM_DPRO,'
      '  ROM_CCOR,'
      '  ROM_RCOR,'
      '  ROM_DCOR,'
      '  ROM_PCOR,'
      '  ROM_CCO2,'
      '  ROM_RCO2,'
      '  ROM_DCO2,'
      '  ROM_PCO2,'
      '  ROM_CGRD,'
      '  ROM_DGRD,'
      '  ROM_DUNI,'
      '  ROM_QTDE,'
      '  ROM_QTRL,'
      '  ROM_QTSP,'
      '  ROM_RLSP,'
      '  ROM_QTPD,'
      '  ROM_RLPD,'
      '  ROM_QDIS,'
      '  ROM_RLDI,'
      '  ROM_PRCA,'
      '  ROM_PRPA,'
      '  ROM_VPRC,'
      '  ROM_VPRO,'
      '  ROM_RPRC,'
      '  ROM_RPRO,'
      '  ROM_PCOM,'
      '  ROM_CUST,'
      '  ROM_UNIT,'
      '  ROM_PREC,'
      '  ROM_VDSC,'
      '  ROM_TOTA,'
      '  ROM_PPRO,'
      '  ROM_PEMB,'
      '  ROM_METR,'
      '  ROM_PESO,'
      '  ROM_REND,'
      '  ROM_PSCN,'
      '  ROM_PSMR,'
      '  ROM_VBCIPI,'
      '  ROM_PIPI,'
      '  ROM_VIPI,'
      '  ROM_CDET,'
      '  ROM_CBAR,'
      '  ROM_TPRC,'
      '  ROM_FLAG,'
      '  ROM_FOTO,'
      '  ROM_ABCD,'
      '  ROM_STFI,'
      '  ROM_CSEP,'
      '  ROM_DSEP,'
      '  ROM_APRC,'
      '  ROM_LDSC'
      'from IMP_ITE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM IMP_ITE'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update IMP_ITE'
      'set'
      '  ID = :ID,'
      '  ROM_ABCD = :ROM_ABCD,'
      '  ROM_APRC = :ROM_APRC,'
      '  ROM_CART = :ROM_CART,'
      '  ROM_CBAR = :ROM_CBAR,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_CCO2 = :ROM_CCO2,'
      '  ROM_CCOR = :ROM_CCOR,'
      '  ROM_CDET = :ROM_CDET,'
      '  ROM_CDNF = :ROM_CDNF,'
      '  ROM_CDOC = :ROM_CDOC,'
      '  ROM_CDPD = :ROM_CDPD,'
      '  ROM_CDPR = :ROM_CDPR,'
      '  ROM_CDRO = :ROM_CDRO,'
      '  ROM_CGRD = :ROM_CGRD,'
      '  ROM_CPR2 = :ROM_CPR2,'
      '  ROM_CPRO = :ROM_CPRO,'
      '  ROM_CSEP = :ROM_CSEP,'
      '  ROM_CUST = :ROM_CUST,'
      '  ROM_DCO2 = :ROM_DCO2,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DGRD = :ROM_DGRD,'
      '  ROM_DPRO = :ROM_DPRO,'
      '  ROM_DSEP = :ROM_DSEP,'
      '  ROM_DUNI = :ROM_DUNI,'
      '  ROM_FLAG = :ROM_FLAG,'
      '  ROM_FOTO = :ROM_FOTO,'
      '  ROM_IPR2 = :ROM_IPR2,'
      '  ROM_IPRO = :ROM_IPRO,'
      '  ROM_ITEM = :ROM_ITEM,'
      '  ROM_LDSC = :ROM_LDSC,'
      '  ROM_METR = :ROM_METR,'
      '  ROM_PCO2 = :ROM_PCO2,'
      '  ROM_PCOM = :ROM_PCOM,'
      '  ROM_PCOR = :ROM_PCOR,'
      '  ROM_PEMB = :ROM_PEMB,'
      '  ROM_PESO = :ROM_PESO,'
      '  ROM_PIPI = :ROM_PIPI,'
      '  ROM_PPRO = :ROM_PPRO,'
      '  ROM_PRCA = :ROM_PRCA,'
      '  ROM_PREC = :ROM_PREC,'
      '  ROM_PRPA = :ROM_PRPA,'
      '  ROM_PSCN = :ROM_PSCN,'
      '  ROM_PSMR = :ROM_PSMR,'
      '  ROM_QDIS = :ROM_QDIS,'
      '  ROM_QTDE = :ROM_QTDE,'
      '  ROM_QTPD = :ROM_QTPD,'
      '  ROM_QTRL = :ROM_QTRL,'
      '  ROM_QTSP = :ROM_QTSP,'
      '  ROM_RCO2 = :ROM_RCO2,'
      '  ROM_RCOR = :ROM_RCOR,'
      '  ROM_REND = :ROM_REND,'
      '  ROM_RLDI = :ROM_RLDI,'
      '  ROM_RLPD = :ROM_RLPD,'
      '  ROM_RLSP = :ROM_RLSP,'
      '  ROM_RPRC = :ROM_RPRC,'
      '  ROM_RPRO = :ROM_RPRO,'
      '  ROM_STFI = :ROM_STFI,'
      '  ROM_TOTA = :ROM_TOTA,'
      '  ROM_TPRC = :ROM_TPRC,'
      '  ROM_UNIT = :ROM_UNIT,'
      '  ROM_VBCIPI = :ROM_VBCIPI,'
      '  ROM_VDSC = :ROM_VDSC,'
      '  ROM_VIPI = :ROM_VIPI,'
      '  ROM_VPRC = :ROM_VPRC,'
      '  ROM_VPRO = :ROM_VPRO'
      'where'
      '  ID = :OLD_ID')
    Left = 432
    Top = 64
    object imp_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_ITE_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_iteROM_ITEM: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'ROM_ITEM'
      Origin = '"ROM_ITE_001"."ROM_ITEM"'
      Size = 4
    end
    object imp_iteROM_CART: TIBStringField
      FieldName = 'ROM_CART'
      Origin = '"ROM_ITE_001"."ROM_CART"'
    end
    object imp_iteROM_IPRO: TIntegerField
      FieldName = 'ROM_IPRO'
      Origin = '"LAN_ORC_001"."ROM_IPRO"'
    end
    object imp_iteROM_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'ROM_CPRO'
      Origin = '"ROM_ITE_001"."ROM_CPRO"'
    end
    object imp_iteROM_IPR2: TIntegerField
      FieldName = 'ROM_IPR2'
      Origin = '"LAN_ORC_001"."ROM_IPR2"'
    end
    object imp_iteROM_CPR2: TIBStringField
      FieldName = 'ROM_CPR2'
      Origin = '"LAN_ORC_001"."ROM_CPR2"'
    end
    object imp_iteROM_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ROM_DPRO'
      Origin = '"ROM_ITE_001"."ROM_DPRO"'
      Size = 120
    end
    object imp_iteROM_CCOR: TIntegerField
      FieldName = 'ROM_CCOR'
      Origin = '"ROM_ITE_001"."ROM_CCOR"'
    end
    object imp_iteROM_RCOR: TIBStringField
      FieldName = 'ROM_RCOR'
      Origin = '"LAN_ORC_001"."ROM_RCOR"'
      Size = 3
    end
    object imp_iteROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"ROM_ITE_001"."ROM_DCOR"'
      Size = 30
    end
    object imp_iteROM_CCO2: TIntegerField
      FieldName = 'ROM_CCO2'
      Origin = '"LAN_ORC_001"."ROM_CCO2"'
    end
    object imp_iteROM_RCO2: TIBStringField
      FieldName = 'ROM_RCO2'
      Origin = '"LAN_ORC_001"."ROM_RCO2"'
      Size = 3
    end
    object imp_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"LAN_ORC_001"."ROM_DCO2"'
      Size = 30
    end
    object imp_iteROM_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'ROM_DUNI'
      Origin = '"ROM_ITE_001"."ROM_DUNI"'
      Size = 3
    end
    object imp_iteROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"ROM_ITE_001"."ROM_QTDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_VDSC: TIBBCDField
      DisplayLabel = 'Desc (%)'
      FieldName = 'ROM_VDSC'
      Origin = '"ROM_ITE_001"."ROM_VDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_TOTA: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TOTA'
      Origin = '"ROM_ITE_001"."ROM_TOTA"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"ROM_ITE_001"."ROM_CDET"'
      Size = 10
    end
    object imp_iteROM_CBAR: TIBStringField
      FieldName = 'ROM_CBAR'
      Origin = '"ROM_ITE_001"."ROM_CBAR"'
    end
    object imp_iteROM_FOTO: TBlobField
      FieldName = 'ROM_FOTO'
      Origin = '"ROM_ITE_001"."ROM_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object imp_iteROM_QDIS: TIBBCDField
      DisplayLabel = 'Quantidade Dispon'#237'vel'
      FieldName = 'ROM_QDIS'
      Origin = '"ROM_ITE_001"."ROM_QDIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_PPRO: TIBBCDField
      FieldName = 'ROM_PPRO'
      Origin = '"ROM_ITE_001"."ROM_PPRO"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_PEMB: TIBBCDField
      FieldName = 'ROM_PEMB'
      Origin = '"ROM_ITE_001"."ROM_PEMB"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_CGRD: TIBStringField
      FieldName = 'ROM_CGRD'
      Origin = '"ROM_PIT_001"."ROM_CGRD"'
      Size = 2
    end
    object imp_iteROM_DGRD: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'ROM_DGRD'
      Origin = '"ROM_PIT_001"."ROM_DGRD"'
      Size = 15
    end
    object imp_iteROM_FLAG: TSmallintField
      FieldName = 'ROM_FLAG'
      Origin = '"ROM_PIT_001"."ROM_FLAG"'
    end
    object imp_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"LAN_ORC_001"."ROM_CDOC"'
    end
    object imp_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_VEN_ITE"."ROM_CCAB"'
    end
    object imp_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_ITE"."ROM_CDPR"'
    end
    object imp_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_ITE"."ROM_CDPD"'
    end
    object imp_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_ITE"."ROM_CDRO"'
    end
    object imp_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_ITE"."ROM_CDNF"'
    end
    object imp_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_ITE"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object imp_iteROM_QTRL: TIntegerField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_ITE"."ROM_QTRL"'
    end
    object imp_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_VEN_ITE"."ROM_RLSP"'
    end
    object imp_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_ITE"."ROM_RLPD"'
    end
    object imp_iteROM_RLDI: TIntegerField
      DisplayLabel = 'Pe'#231'a Dispon'#237'vel'
      FieldName = 'ROM_RLDI'
      Origin = '"PED_VEN_ITE"."ROM_RLDI"'
    end
    object imp_iteROM_METR: TIBBCDField
      FieldName = 'ROM_METR'
      Origin = '"PED_VEN_ITE"."ROM_METR"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"PED_VEN_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_REND: TIBBCDField
      FieldName = 'ROM_REND'
      Origin = '"PED_VEN_ITE"."ROM_REND"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_PSCN: TIBBCDField
      FieldName = 'ROM_PSCN'
      Origin = '"PED_VEN_ITE"."ROM_PSCN"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_PSMR: TIBBCDField
      FieldName = 'ROM_PSMR'
      Origin = '"PED_VEN_ITE"."ROM_PSMR"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_VBCIPI: TIBBCDField
      FieldName = 'ROM_VBCIPI'
      Origin = '"PED_VEN_ITE"."ROM_VBCIPI"'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_PIPI: TIBBCDField
      DisplayLabel = '% Ipi'
      FieldName = 'ROM_PIPI'
      Origin = '"PED_VEN_ITE"."ROM_PIPI"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_VIPI: TIBBCDField
      DisplayLabel = 'Valor Ipi'
      FieldName = 'ROM_VIPI'
      Origin = '"PED_VEN_ITE"."ROM_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object imp_iteROM_TPRC: TIBStringField
      DisplayLabel = 'Tipo de Pre'#231'o'
      FieldName = 'ROM_TPRC'
      Origin = '"PED_VEN_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 25
    end
    object imp_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"PED_VEN_ITE"."ROM_PCOR"'
      Size = 30
    end
    object imp_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"PED_VEN_ITE"."ROM_PCO2"'
      Size = 30
    end
    object imp_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"PED_VEN_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object imp_iteROM_PRCA: TFloatField
      FieldName = 'ROM_PRCA'
      Origin = '"IMP_ITE"."ROM_PRCA"'
    end
    object imp_iteROM_PRPA: TFloatField
      FieldName = 'ROM_PRPA'
      Origin = '"IMP_ITE"."ROM_PRPA"'
    end
    object imp_iteROM_VPRC: TFloatField
      FieldName = 'ROM_VPRC'
      Origin = '"IMP_ITE"."ROM_VPRC"'
    end
    object imp_iteROM_VPRO: TFloatField
      FieldName = 'ROM_VPRO'
      Origin = '"IMP_ITE"."ROM_VPRO"'
    end
    object imp_iteROM_RPRC: TFloatField
      FieldName = 'ROM_RPRC'
      Origin = '"IMP_ITE"."ROM_RPRC"'
    end
    object imp_iteROM_RPRO: TFloatField
      FieldName = 'ROM_RPRO'
      Origin = '"IMP_ITE"."ROM_RPRO"'
    end
    object imp_iteROM_PCOM: TFloatField
      FieldName = 'ROM_PCOM'
      Origin = '"IMP_ITE"."ROM_PCOM"'
    end
    object imp_iteROM_CUST: TFloatField
      FieldName = 'ROM_CUST'
      Origin = '"IMP_ITE"."ROM_CUST"'
    end
    object imp_iteROM_UNIT: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'ROM_UNIT'
      Origin = '"IMP_ITE"."ROM_UNIT"'
      DisplayFormat = '#,0.00'
    end
    object imp_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"IMP_ITE"."ROM_PREC"'
    end
    object imp_iteROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"IMP_ITE"."ROM_STFI"'
    end
    object imp_iteROM_CSEP: TIntegerField
      FieldName = 'ROM_CSEP'
      Origin = '"IMP_ITE"."ROM_CSEP"'
    end
    object imp_iteROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"IMP_ITE"."ROM_DSEP"'
      Size = 15
    end
    object imp_iteROM_APRC: TIBStringField
      FieldName = 'ROM_APRC'
      Origin = '"IMP_ITE"."ROM_APRC"'
      FixedChar = True
      Size = 1
    end
    object imp_iteROM_LDSC: TIBBCDField
      FieldName = 'ROM_LDSC'
      Origin = '"IMP_ITE"."ROM_LDSC"'
      Precision = 9
      Size = 2
    end
    object imp_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"IMP_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object consulta_s: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 496
    Top = 32
  end
  object pro_cab: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAD_PRO_ENC'
      'WHERE ID = 0')
    Left = 840
    Top = 136
    object pro_cabID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_ENC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pro_cabPRO_CDEP: TIntegerField
      FieldName = 'PRO_CDEP'
      Origin = '"CAD_PRO_ENC"."PRO_CDEP"'
    end
    object pro_cabPRO_CFOR: TIntegerField
      FieldName = 'PRO_CFOR'
      Origin = '"CAD_PRO_ENC"."PRO_CFOR"'
    end
    object pro_cabPRO_CUSU: TIntegerField
      FieldName = 'PRO_CUSU'
      Origin = '"CAD_PRO_ENC"."PRO_CUSU"'
    end
    object pro_cabPRO_DCAD: TDateField
      FieldName = 'PRO_DCAD'
      Origin = '"CAD_PRO_ENC"."PRO_DCAD"'
    end
    object pro_cabPRO_DNFS: TDateField
      FieldName = 'PRO_DNFS'
      Origin = '"CAD_PRO_ENC"."PRO_DNFS"'
    end
    object pro_cabPRO_CDNF: TIBStringField
      FieldName = 'PRO_CDNF'
      Origin = '"CAD_PRO_ENC"."PRO_CDNF"'
      Size = 6
    end
    object pro_cabPRO_OPER: TIBStringField
      FieldName = 'PRO_OPER'
      Origin = '"CAD_PRO_ENC"."PRO_OPER"'
      Size = 15
    end
    object pro_cabPRO_PECA: TIntegerField
      FieldName = 'PRO_PECA'
      Origin = '"CAD_PRO_ENC"."PRO_PECA"'
    end
    object pro_cabPRO_QTDE: TIBBCDField
      FieldName = 'PRO_QTDE'
      Origin = '"CAD_PRO_ENC"."PRO_QTDE"'
      Precision = 18
      Size = 4
    end
    object pro_cabPRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO_ENC"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object pro_cabPRO_STA: TIBStringField
      FieldName = 'PRO_STA'
      Origin = '"CAD_PRO_ENC"."PRO_STA"'
      FixedChar = True
      Size = 1
    end
    object pro_cabPRO_DUSU: TIBStringField
      FieldName = 'PRO_DUSU'
      Origin = '"CAD_PRO_ENC"."PRO_DUSU"'
      Size = 40
    end
    object pro_cabPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = '"CAD_PRO_ENC"."PRO_TIPO"'
      Size = 40
    end
    object pro_cabPRO_DMAP: TIBStringField
      FieldName = 'PRO_DMAP'
      Origin = '"CAD_PRO_ENC"."PRO_DMAP"'
    end
    object pro_cabPRO_CTNR: TIBStringField
      FieldName = 'PRO_CTNR'
      Origin = '"CAD_PRO_ENC"."PRO_CTNR"'
    end
  end
  object pro_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAD_PRO_ENI'
      'WHERE PRO_CDRO = :CDRO'
      'ORDER BY PRO_CPRO')
    Left = 872
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'CDRO'
        ParamType = ptInput
      end>
    object pro_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_ENI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pro_itePRO_CDEP: TIntegerField
      FieldName = 'PRO_CDEP'
      Origin = '"CAD_PRO_ENI"."PRO_CDEP"'
    end
    object pro_itePRO_CDRO: TIntegerField
      FieldName = 'PRO_CDRO'
      Origin = '"CAD_PRO_ENI"."PRO_CDRO"'
    end
    object pro_itePRO_ITEM: TIBStringField
      FieldName = 'PRO_ITEM'
      Origin = '"CAD_PRO_ENI"."PRO_ITEM"'
      Size = 4
    end
    object pro_itePRO_CPRO: TIntegerField
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO_ENI"."PRO_CPRO"'
    end
    object pro_itePRO_CPR2: TIntegerField
      FieldName = 'PRO_CPR2'
      Origin = '"CAD_PRO_ENI"."PRO_CPR2"'
    end
    object pro_itePRO_CDET: TIBStringField
      FieldName = 'PRO_CDET'
      Origin = '"CAD_PRO_ENI"."PRO_CDET"'
      Size = 10
    end
    object pro_itePRO_QTDE: TIBBCDField
      FieldName = 'PRO_QTDE'
      Origin = '"CAD_PRO_ENI"."PRO_QTDE"'
      Precision = 18
      Size = 4
    end
    object pro_itePRO_DMAP: TIBStringField
      FieldName = 'PRO_DMAP'
      Origin = '"CAD_PRO_ENI"."PRO_DMAP"'
    end
    object pro_itePRO_CTNR: TIBStringField
      FieldName = 'PRO_CTNR'
      Origin = '"CAD_PRO_ENI"."PRO_CTNR"'
    end
    object pro_itePRO_LOTE: TIBStringField
      FieldName = 'PRO_LOTE'
      Origin = '"CAD_PRO_ENI"."PRO_LOTE"'
    end
  end
  object dtspro_ite: TDataSource
    DataSet = pro_ite
    Left = 872
    Top = 168
  end
  object dtspro_cab: TDataSource
    DataSet = pro_cab
    Left = 840
    Top = 168
  end
  object imp_cab: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
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
      
        '   ROM_CREP, ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DCLI, ROM_DERO, R' +
        'OM_DEXP, '
      
        '   ROM_DNFS, ROM_DPAG, ROM_DREP, ROM_DROM, ROM_DTRA, ROM_DVEN, R' +
        'OM_HEXP, '
      
        '   ROM_HROM, ROM_OBSE, ROM_PDSC, ROM_QTPD, ROM_QTSP, ROM_QTVE, R' +
        'OM_RLVE, '
      
        '   ROM_STA, ROM_STCO, ROM_STFI, ROM_STPD, ROM_TCDE, ROM_TDSC, RO' +
        'M_TSDE, '
      '   ROM_VFRT)'
      'values'
      
        '  (:ID, :ROM_ADSC, :ROM_CCLI, :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :' +
        'ROM_CDOC, '
      
        '   :ROM_CDPD, :ROM_CDPR, :ROM_CDRD, :ROM_CDRO, :ROM_CDSC, :ROM_C' +
        'EXP, :ROM_CONC, '
      
        '   :ROM_CPAG, :ROM_CREP, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN, :ROM_D' +
        'CLI, :ROM_DERO, '
      
        '   :ROM_DEXP, :ROM_DNFS, :ROM_DPAG, :ROM_DREP, :ROM_DROM, :ROM_D' +
        'TRA, :ROM_DVEN, '
      
        '   :ROM_HEXP, :ROM_HROM, :ROM_OBSE, :ROM_PDSC, :ROM_QTPD, :ROM_Q' +
        'TSP, :ROM_QTVE, '
      
        '   :ROM_RLVE, :ROM_STA, :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TC' +
        'DE, :ROM_TDSC, '
      '   :ROM_TSDE, :ROM_VFRT)')
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
      '  ROM_STPD,'
      '  ROM_STCO,'
      '  ROM_STFI,'
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
      '  ROM_OBSE,'
      '  ROM_STA,'
      '  ROM_VFRT,'
      '  ROM_DTRA'
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
      '  ROM_OBSE = :ROM_OBSE,'
      '  ROM_PDSC = :ROM_PDSC,'
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
    Left = 400
    Top = 64
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
    end
    object imp_cabROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"IMP_CAB"."ROM_STPD"'
    end
    object imp_cabROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"IMP_CAB"."ROM_STCO"'
    end
    object imp_cabROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"IMP_CAB"."ROM_STFI"'
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
      Size = 40
    end
    object imp_cabROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"IMP_CAB"."ROM_CVEN"'
    end
    object imp_cabROM_DVEN: TIBStringField
      FieldName = 'ROM_DVEN'
      Origin = '"IMP_CAB"."ROM_DVEN"'
      Size = 30
    end
    object imp_cabROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"IMP_CAB"."ROM_CREP"'
    end
    object imp_cabROM_DREP: TIBStringField
      FieldName = 'ROM_DREP'
      Origin = '"IMP_CAB"."ROM_DREP"'
      Size = 40
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
    object imp_cabROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"IMP_CAB"."ROM_DTRA"'
      Size = 40
    end
  end
  object dtsimp_cab: TDataSource
    DataSet = imp_cab
    OnDataChange = dtsimp_iteDataChange
    Left = 400
    Top = 96
  end
  object openARQ: TOpenDialog
    InitialDir = 'C:\Sheild\Documentos'
    Left = 264
    Top = 48
  end
  object imp_ntr: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    DeleteSQL.Strings = (
      'delete from NFE_TRA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_TRA'
      
        '  (ID, NFE_BAI, NFE_CCAB, NFE_CEP, NFE_CFOP, NFE_CID, NFE_CMUNFG' +
        ', NFE_CNPJ, '
      
        '   NFE_COMP, NFE_CPF, NFE_CTRA, NFE_ESP, NFE_FANT, NFE_INSC, NFE' +
        '_LOGR, '
      
        '   NFE_MARCA, NFE_MODFRETE, NFE_NLACRE, NFE_NUME, NFE_NVOL, NFE_' +
        'PICMSRET, '
      
        '   NFE_PLACA, NFE_PSBR, NFE_PSLQ, NFE_QVOL, NFE_RAZA, NFE_RETTRA' +
        'NSP, NFE_RG, '
      
        '   NFE_RNTC, NFE_TLOG, NFE_UF, NFE_VBCRET, NFE_VICMSRET, NFE_VSE' +
        'RV)'
      'values'
      
        '  (:ID, :NFE_BAI, :NFE_CCAB, :NFE_CEP, :NFE_CFOP, :NFE_CID, :NFE' +
        '_CMUNFG, '
      
        '   :NFE_CNPJ, :NFE_COMP, :NFE_CPF, :NFE_CTRA, :NFE_ESP, :NFE_FAN' +
        'T, :NFE_INSC, '
      
        '   :NFE_LOGR, :NFE_MARCA, :NFE_MODFRETE, :NFE_NLACRE, :NFE_NUME,' +
        ' :NFE_NVOL, '
      
        '   :NFE_PICMSRET, :NFE_PLACA, :NFE_PSBR, :NFE_PSLQ, :NFE_QVOL, :' +
        'NFE_RAZA, '
      
        '   :NFE_RETTRANSP, :NFE_RG, :NFE_RNTC, :NFE_TLOG, :NFE_UF, :NFE_' +
        'VBCRET, '
      '   :NFE_VICMSRET, :NFE_VSERV)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CCAB,'
      '  NFE_CTRA,'
      '  NFE_FANT,'
      '  NFE_RAZA,'
      '  NFE_RG,'
      '  NFE_CPF,'
      '  NFE_INSC,'
      '  NFE_CNPJ,'
      '  NFE_MODFRETE,'
      '  NFE_RETTRANSP,'
      '  NFE_VSERV,'
      '  NFE_VBCRET,'
      '  NFE_PICMSRET,'
      '  NFE_VICMSRET,'
      '  NFE_CFOP,'
      '  NFE_CMUNFG,'
      '  NFE_PLACA,'
      '  NFE_TLOG,'
      '  NFE_LOGR,'
      '  NFE_CEP,'
      '  NFE_NUME,'
      '  NFE_COMP,'
      '  NFE_BAI,'
      '  NFE_CID,'
      '  NFE_UF,'
      '  NFE_RNTC,'
      '  NFE_QVOL,'
      '  NFE_ESP,'
      '  NFE_MARCA,'
      '  NFE_NVOL,'
      '  NFE_PSLQ,'
      '  NFE_PSBR,'
      '  NFE_NLACRE'
      'from NFE_TRA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM NFE_TRA'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update NFE_TRA'
      'set'
      '  ID = :ID,'
      '  NFE_BAI = :NFE_BAI,'
      '  NFE_CCAB = :NFE_CCAB,'
      '  NFE_CEP = :NFE_CEP,'
      '  NFE_CFOP = :NFE_CFOP,'
      '  NFE_CID = :NFE_CID,'
      '  NFE_CMUNFG = :NFE_CMUNFG,'
      '  NFE_CNPJ = :NFE_CNPJ,'
      '  NFE_COMP = :NFE_COMP,'
      '  NFE_CPF = :NFE_CPF,'
      '  NFE_CTRA = :NFE_CTRA,'
      '  NFE_ESP = :NFE_ESP,'
      '  NFE_FANT = :NFE_FANT,'
      '  NFE_INSC = :NFE_INSC,'
      '  NFE_LOGR = :NFE_LOGR,'
      '  NFE_MARCA = :NFE_MARCA,'
      '  NFE_MODFRETE = :NFE_MODFRETE,'
      '  NFE_NLACRE = :NFE_NLACRE,'
      '  NFE_NUME = :NFE_NUME,'
      '  NFE_NVOL = :NFE_NVOL,'
      '  NFE_PICMSRET = :NFE_PICMSRET,'
      '  NFE_PLACA = :NFE_PLACA,'
      '  NFE_PSBR = :NFE_PSBR,'
      '  NFE_PSLQ = :NFE_PSLQ,'
      '  NFE_QVOL = :NFE_QVOL,'
      '  NFE_RAZA = :NFE_RAZA,'
      '  NFE_RETTRANSP = :NFE_RETTRANSP,'
      '  NFE_RG = :NFE_RG,'
      '  NFE_RNTC = :NFE_RNTC,'
      '  NFE_TLOG = :NFE_TLOG,'
      '  NFE_UF = :NFE_UF,'
      '  NFE_VBCRET = :NFE_VBCRET,'
      '  NFE_VICMSRET = :NFE_VICMSRET,'
      '  NFE_VSERV = :NFE_VSERV'
      'where'
      '  ID = :OLD_ID')
    Left = 496
    Top = 64
    object imp_ntrID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_ntrNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_TRA"."NFE_CCAB"'
    end
    object imp_ntrNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_TRA"."NFE_CTRA"'
    end
    object imp_ntrNFE_FANT: TIBStringField
      FieldName = 'NFE_FANT'
      Origin = '"NFE_TRA"."NFE_FANT"'
      Size = 40
    end
    object imp_ntrNFE_RAZA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'NFE_RAZA'
      Origin = '"NFE_TRA"."NFE_RAZA"'
      Size = 60
    end
    object imp_ntrNFE_RG: TIBStringField
      FieldName = 'NFE_RG'
      Origin = '"NFE_TRA"."NFE_RG"'
      Size = 15
    end
    object imp_ntrNFE_CPF: TIBStringField
      FieldName = 'NFE_CPF'
      Origin = '"NFE_TRA"."NFE_CPF"'
      Size = 11
    end
    object imp_ntrNFE_INSC: TIBStringField
      FieldName = 'NFE_INSC'
      Origin = '"NFE_TRA"."NFE_INSC"'
    end
    object imp_ntrNFE_CNPJ: TIBStringField
      FieldName = 'NFE_CNPJ'
      Origin = '"NFE_TRA"."NFE_CNPJ"'
      Size = 14
    end
    object imp_ntrNFE_MODFRETE: TIBStringField
      FieldName = 'NFE_MODFRETE'
      Origin = '"NFE_TRA"."NFE_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object imp_ntrNFE_RETTRANSP: TIBStringField
      FieldName = 'NFE_RETTRANSP'
      Origin = '"NFE_TRA"."NFE_RETTRANSP"'
      FixedChar = True
      Size = 1
    end
    object imp_ntrNFE_VSERV: TIBBCDField
      FieldName = 'NFE_VSERV'
      Origin = '"NFE_TRA"."NFE_VSERV"'
      Precision = 18
      Size = 2
    end
    object imp_ntrNFE_VBCRET: TIBBCDField
      FieldName = 'NFE_VBCRET'
      Origin = '"NFE_TRA"."NFE_VBCRET"'
      Precision = 18
      Size = 2
    end
    object imp_ntrNFE_PICMSRET: TIBBCDField
      FieldName = 'NFE_PICMSRET'
      Origin = '"NFE_TRA"."NFE_PICMSRET"'
      Precision = 9
      Size = 2
    end
    object imp_ntrNFE_VICMSRET: TIBBCDField
      FieldName = 'NFE_VICMSRET'
      Origin = '"NFE_TRA"."NFE_VICMSRET"'
      Precision = 18
      Size = 2
    end
    object imp_ntrNFE_CFOP: TIBStringField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_TRA"."NFE_CFOP"'
      Size = 4
    end
    object imp_ntrNFE_CMUNFG: TIBStringField
      FieldName = 'NFE_CMUNFG'
      Origin = '"NFE_TRA"."NFE_CMUNFG"'
      Size = 7
    end
    object imp_ntrNFE_PLACA: TIBStringField
      FieldName = 'NFE_PLACA'
      Origin = '"NFE_TRA"."NFE_PLACA"'
      Size = 8
    end
    object imp_ntrNFE_TLOG: TIBStringField
      FieldName = 'NFE_TLOG'
      Origin = '"NFE_TRA"."NFE_TLOG"'
      Size = 15
    end
    object imp_ntrNFE_LOGR: TIBStringField
      FieldName = 'NFE_LOGR'
      Origin = '"NFE_TRA"."NFE_LOGR"'
      Size = 60
    end
    object imp_ntrNFE_CEP: TIBStringField
      FieldName = 'NFE_CEP'
      Origin = '"NFE_TRA"."NFE_CEP"'
      Size = 9
    end
    object imp_ntrNFE_NUME: TIBStringField
      FieldName = 'NFE_NUME'
      Origin = '"NFE_TRA"."NFE_NUME"'
      Size = 10
    end
    object imp_ntrNFE_COMP: TIBStringField
      FieldName = 'NFE_COMP'
      Origin = '"NFE_TRA"."NFE_COMP"'
      Size = 40
    end
    object imp_ntrNFE_BAI: TIBStringField
      FieldName = 'NFE_BAI'
      Origin = '"NFE_TRA"."NFE_BAI"'
      Size = 40
    end
    object imp_ntrNFE_CID: TIBStringField
      FieldName = 'NFE_CID'
      Origin = '"NFE_TRA"."NFE_CID"'
      Size = 40
    end
    object imp_ntrNFE_UF: TIBStringField
      FieldName = 'NFE_UF'
      Origin = '"NFE_TRA"."NFE_UF"'
      Size = 2
    end
    object imp_ntrNFE_RNTC: TIBStringField
      FieldName = 'NFE_RNTC'
      Origin = '"NFE_TRA"."NFE_RNTC"'
    end
    object imp_ntrNFE_QVOL: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFE_QVOL'
      Origin = '"NFE_TRA"."NFE_QVOL"'
    end
    object imp_ntrNFE_ESP: TIBStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'NFE_ESP'
      Origin = '"NFE_TRA"."NFE_ESP"'
      Size = 60
    end
    object imp_ntrNFE_MARCA: TIBStringField
      FieldName = 'NFE_MARCA'
      Origin = '"NFE_TRA"."NFE_MARCA"'
      Size = 60
    end
    object imp_ntrNFE_NVOL: TIBStringField
      FieldName = 'NFE_NVOL'
      Origin = '"NFE_TRA"."NFE_NVOL"'
      Size = 60
    end
    object imp_ntrNFE_PSLQ: TIBBCDField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'NFE_PSLQ'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 3
    end
    object imp_ntrNFE_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'NFE_PSBR'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 3
    end
    object imp_ntrNFE_NLACRE: TIBStringField
      FieldName = 'NFE_NLACRE'
      Origin = '"NFE_TRA"."NFE_NLACRE"'
      Size = 60
    end
  end
  object dtsimp_ntr: TDataSource
    DataSet = imp_ntr
    Left = 496
    Top = 96
  end
  object imp_nit: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
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
    Left = 528
    Top = 64
    object imp_nitID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object imp_nitNFE_CDEP: TSmallintField
      FieldName = 'NFE_CDEP'
      Origin = '"NFE_ITE"."NFE_CDEP"'
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
    object imp_nitNFE_IPRO: TIntegerField
      FieldName = 'NFE_IPRO'
      Origin = '"NFE_ITE"."NFE_IPRO"'
    end
    object imp_nitNFE_ITEMPED: TSmallintField
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE"."NFE_ITEMPED"'
    end
    object imp_nitNFE_XPED: TIBStringField
      FieldName = 'NFE_XPED'
      Origin = '"NFE_ITE"."NFE_XPED"'
      Size = 15
    end
    object imp_nitNFE_CFOP: TIBStringField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE"."NFE_CFOP"'
      Size = 4
    end
    object imp_nitNFE_CART: TIBStringField
      FieldName = 'NFE_CART'
      Origin = '"NFE_ITE"."NFE_CART"'
    end
    object imp_nitNFE_CPROD: TIBStringField
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE"."NFE_CPROD"'
    end
    object imp_nitNFE_CEAN: TIBStringField
      FieldName = 'NFE_CEAN'
      Origin = '"NFE_ITE"."NFE_CEAN"'
      Size = 14
    end
    object imp_nitNFE_NCM: TIBStringField
      FieldName = 'NFE_NCM'
      Origin = '"NFE_ITE"."NFE_NCM"'
      Size = 8
    end
    object imp_nitNFE_NVE: TIBStringField
      FieldName = 'NFE_NVE'
      Origin = '"NFE_ITE"."NFE_NVE"'
      Size = 6
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
    object imp_nitNFE_CEST: TIBStringField
      FieldName = 'NFE_CEST'
      Origin = '"NFE_ITE"."NFE_CEST"'
      Size = 7
    end
    object imp_nitNFE_DCOR: TIBStringField
      FieldName = 'NFE_DCOR'
      Origin = '"NFE_ITE"."NFE_DCOR"'
      Size = 30
    end
    object imp_nitNFE_XPROD: TIBStringField
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE"."NFE_XPROD"'
      Size = 120
    end
    object imp_nitNFE_XPROX: TIBStringField
      FieldName = 'NFE_XPROX'
      Origin = '"NFE_ITE"."NFE_XPROX"'
      Size = 120
    end
    object imp_nitNFE_UCOM: TIBStringField
      FieldName = 'NFE_UCOM'
      Origin = '"NFE_ITE"."NFE_UCOM"'
      Size = 6
    end
    object imp_nitNFE_RCOM: TIntegerField
      FieldName = 'NFE_RCOM'
      Origin = '"NFE_ITE"."NFE_RCOM"'
    end
    object imp_nitNFE_QCOM: TIBBCDField
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_ITE"."NFE_QCOM"'
      Precision = 18
      Size = 4
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
    object imp_nitNFE_VUNCOM: TFloatField
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE"."NFE_VUNCOM"'
    end
    object imp_nitNFE_PREC: TFloatField
      FieldName = 'NFE_PREC'
      Origin = '"NFE_ITE"."NFE_PREC"'
    end
    object imp_nitNFE_VPROD: TIBBCDField
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE"."NFE_VPROD"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VNF: TIBBCDField
      FieldName = 'NFE_VNF'
      Origin = '"NFE_ITE"."NFE_VNF"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VDESC: TIBBCDField
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_ITE"."NFE_VDESC"'
      Precision = 18
      Size = 2
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
    object imp_nitNFE_CLISTSERV: TIntegerField
      FieldName = 'NFE_CLISTSERV'
      Origin = '"NFE_ITE"."NFE_CLISTSERV"'
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
    object imp_nitNFE_VBCSTRET: TIBBCDField
      FieldName = 'NFE_VBCSTRET'
      Origin = '"NFE_ITE"."NFE_VBCSTRET"'
      Precision = 18
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
    object imp_nitNFE_CMUNFGISSQN: TIBStringField
      FieldName = 'NFE_CMUNFGISSQN'
      Origin = '"NFE_ITE"."NFE_CMUNFGISSQN"'
      Size = 7
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
    object imp_nitNFE_VICMSSTRET: TIBBCDField
      FieldName = 'NFE_VICMSSTRET'
      Origin = '"NFE_ITE"."NFE_VICMSSTRET"'
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
    object imp_nitNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_ITE"."NFE_VOUTRO"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_EXTIPI: TIBStringField
      FieldName = 'NFE_EXTIPI'
      Origin = '"NFE_ITE"."NFE_EXTIPI"'
      Size = 3
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
    object imp_nitNFE_VBCIMP: TIBBCDField
      FieldName = 'NFE_VBCIMP'
      Origin = '"NFE_ITE"."NFE_VBCIMP"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VDESCDI: TIBBCDField
      FieldName = 'NFE_VDESCDI'
      Origin = '"NFE_ITE"."NFE_VDESCDI"'
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
    object imp_nitNFE_VMULTA: TIBBCDField
      FieldName = 'NFE_VMULTA'
      Origin = '"NFE_ITE"."NFE_VMULTA"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_VAFRMM: TIBBCDField
      FieldName = 'NFE_VAFRMM'
      Origin = '"NFE_ITE"."NFE_VAFRMM"'
      Precision = 18
      Size = 2
    end
    object imp_nitNFE_NDI: TIBStringField
      FieldName = 'NFE_NDI'
      Origin = '"NFE_ITE"."NFE_NDI"'
      Size = 12
    end
    object imp_nitNFE_DDI: TDateField
      FieldName = 'NFE_DDI'
      Origin = '"NFE_ITE"."NFE_DDI"'
    end
    object imp_nitNFE_NADICAO: TSmallintField
      FieldName = 'NFE_NADICAO'
      Origin = '"NFE_ITE"."NFE_NADICAO"'
    end
    object imp_nitNFE_NSEQADIC: TSmallintField
      FieldName = 'NFE_NSEQADIC'
      Origin = '"NFE_ITE"."NFE_NSEQADIC"'
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
    object imp_nitNFE_CFABRICANTE: TIBStringField
      FieldName = 'NFE_CFABRICANTE'
      Origin = '"NFE_ITE"."NFE_CFABRICANTE"'
      Size = 60
    end
    object imp_nitNFE_UFTERCEIRO: TIBStringField
      FieldName = 'NFE_UFTERCEIRO'
      Origin = '"NFE_ITE"."NFE_UFTERCEIRO"'
      Size = 2
    end
    object imp_nitNFE_CNPJ: TIBStringField
      FieldName = 'NFE_CNPJ'
      Origin = '"NFE_ITE"."NFE_CNPJ"'
      Size = 14
    end
    object imp_nitNFE_TIPO: TIBStringField
      FieldName = 'NFE_TIPO'
      Origin = '"NFE_ITE"."NFE_TIPO"'
      Size = 30
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
    object imp_nitNFE_PIMP: TIBBCDField
      FieldName = 'NFE_PIMP'
      Origin = '"NFE_ITE"."NFE_PIMP"'
      Precision = 9
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
    object imp_nitNFE_FRET: TIBStringField
      FieldName = 'NFE_FRET'
      Origin = '"NFE_ITE"."NFE_FRET"'
      FixedChar = True
      Size = 1
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
  end
  object dtsimp_nit: TDataSource
    DataSet = imp_nit
    Left = 528
    Top = 96
  end
  object imp_nca: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
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
    Left = 464
    Top = 64
    object imp_ncaID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_CAB"."ID"'
      Required = True
    end
    object imp_ncaNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB"."NFE_CDNF"'
    end
    object imp_ncaNFE_AAMM: TIBStringField
      FieldName = 'NFE_AAMM'
      Origin = '"NFE_CAB"."NFE_AAMM"'
      Size = 4
    end
    object imp_ncaNFE_DEMI: TDateField
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object imp_ncaNFE_DSAI: TDateField
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
      FieldName = 'NFE_VBC'
      Origin = '"NFE_CAB"."NFE_VBC"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VICMS: TIBBCDField
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_CAB"."NFE_VICMS"'
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
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_CAB"."NFE_VPROD"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_CAB"."NFE_VFRETE"'
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
      FieldName = 'NFE_VII'
      Origin = '"NFE_CAB"."NFE_VII"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VIPI: TIBBCDField
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_CAB"."NFE_VIPI"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VPIS: TIBBCDField
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_CAB"."NFE_VPIS"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VCOFINS: TIBBCDField
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_CAB"."NFE_VCOFINS"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_CAB"."NFE_VOUTRO"'
      Precision = 18
      Size = 2
    end
    object imp_ncaNFE_VNF: TIBBCDField
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB"."NFE_VNF"'
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
    object imp_ncaNFE_CPAIS: TSmallintField
      FieldName = 'NFE_CPAIS'
      Origin = '"NFE_CAB"."NFE_CPAIS"'
    end
    object imp_ncaNFE_XPAIS: TIBStringField
      FieldName = 'NFE_XPAIS'
      Origin = '"NFE_CAB"."NFE_XPAIS"'
      Size = 60
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
  end
  object dtsimp_nca: TDataSource
    DataSet = imp_nca
    Left = 464
    Top = 96
  end
  object dtsimp_ite: TDataSource
    DataSet = imp_ite
    OnDataChange = dtsimp_iteDataChange
    Left = 432
    Top = 96
  end
  object dtsimp_ndu: TDataSource
    DataSet = imp_ndu
    Left = 560
    Top = 96
  end
  object imp_ndu: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    DeleteSQL.Strings = (
      'delete from NFE_DUP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_DUP'
      
        '  (ID, NFE_CCAB, NFE_CDNF, NFE_CDRO, NFE_CFAV, NFE_DNFE, NFE_DPA' +
        'G, NFE_DROM, '
      
        '   NFE_DVEN, NFE_OBSE, NFE_PARC, NFE_STA, NFE_STCO, NFE_STFI, NF' +
        'E_STPD, '
      '   NFE_TITU, NFE_VDUP, NFE_VPAG, NFE_VPEN)'
      'values'
      
        '  (:ID, :NFE_CCAB, :NFE_CDNF, :NFE_CDRO, :NFE_CFAV, :NFE_DNFE, :' +
        'NFE_DPAG, '
      
        '   :NFE_DROM, :NFE_DVEN, :NFE_OBSE, :NFE_PARC, :NFE_STA, :NFE_ST' +
        'CO, :NFE_STFI, '
      '   :NFE_STPD, :NFE_TITU, :NFE_VDUP, :NFE_VPAG, :NFE_VPEN)')
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
      '  NFE_OBSE,'
      '  NFE_STA'
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
      '  NFE_STA = :NFE_STA,'
      '  NFE_STCO = :NFE_STCO,'
      '  NFE_STFI = :NFE_STFI,'
      '  NFE_STPD = :NFE_STPD,'
      '  NFE_TITU = :NFE_TITU,'
      '  NFE_VDUP = :NFE_VDUP,'
      '  NFE_VPAG = :NFE_VPAG,'
      '  NFE_VPEN = :NFE_VPEN'
      'where'
      '  ID = :OLD_ID')
    Left = 560
    Top = 66
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
    end
    object imp_nduNFE_STPD: TIBStringField
      FieldName = 'NFE_STPD'
      Origin = '"NFE_DUP"."NFE_STPD"'
    end
    object imp_nduNFE_STCO: TIBStringField
      FieldName = 'NFE_STCO'
      Origin = '"NFE_DUP"."NFE_STCO"'
    end
    object imp_nduNFE_STFI: TIBStringField
      FieldName = 'NFE_STFI'
      Origin = '"NFE_DUP"."NFE_STFI"'
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
  end
  object cad_tra: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
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
      
        '   TRA_FTC2, TRA_FTE1, TRA_FTE2, TRA_FTE3, TRA_IMUN, TRA_INSC, T' +
        'RA_LOGC, '
      
        '   TRA_LOGR, TRA_LOGV, TRA_MAIL, TRA_NCEL, TRA_NEID, TRA_NUMC, T' +
        'RA_NUME, '
      
        '   TRA_NUMV, TRA_OBSE, TRA_OBSO, TRA_RAMO, TRA_RAZA, TRA_REGI, T' +
        'RA_REVE, '
      
        '   TRA_RG, TRA_RICM, TRA_SITE, TRA_STA, TRA_STAV, TRA_TCE1, TRA_' +
        'TCE2, TRA_TEL1, '
      
        '   TRA_TEL2, TRA_TEL3, TRA_TLOC, TRA_TLOG, TRA_TLOV, TRA_TPVE, T' +
        'RA_VDSC, '
      '   TRA_VULT)'
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
        'TE3, :TRA_IMUN, '
      
        '   :TRA_INSC, :TRA_LOGC, :TRA_LOGR, :TRA_LOGV, :TRA_MAIL, :TRA_N' +
        'CEL, :TRA_NEID, '
      
        '   :TRA_NUMC, :TRA_NUME, :TRA_NUMV, :TRA_OBSE, :TRA_OBSO, :TRA_R' +
        'AMO, :TRA_RAZA, '
      
        '   :TRA_REGI, :TRA_REVE, :TRA_RG, :TRA_RICM, :TRA_SITE, :TRA_STA' +
        ', :TRA_STAV, '
      
        '   :TRA_TCE1, :TRA_TCE2, :TRA_TEL1, :TRA_TEL2, :TRA_TEL3, :TRA_T' +
        'LOC, :TRA_TLOG, '
      '   :TRA_TLOV, :TRA_TPVE, :TRA_VDSC, :TRA_VULT)')
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
      '  TRA_OBSO,'
      '  TRA_STAV,'
      '  TRA_VULT,'
      '  TRA_TPVE,'
      '  TRA_OBSE,'
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
      '  TRA_REGI'
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
      '  TRA_VULT = :TRA_VULT'
      'where'
      '  ID = :OLD_ID')
    Left = 592
    Top = 64
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
      Size = 40
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
  end
end
