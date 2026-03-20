inherited frmimporta_geral: Tfrmimporta_geral
  Left = 390
  Top = 29
  ActiveControl = edTXT
  AlphaBlendValue = 0
  Caption = 'Importa'#231#227'o Geral'
  ClientHeight = 627
  ClientWidth = 982
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 982
    Height = 527
    inherited PaintBox: TPaintBox
      Top = 97
      Width = 982
      Height = 430
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 982
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
      Width = 982
      Height = 430
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
        Width = 978
        Height = 412
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
            Width = 978
            Height = 386
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
            Width = 978
            Height = 386
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
  inherited PNLSBRodape: TPanel
    Top = 602
    Width = 982
    inherited SBRodape: TdxStatusBar
      Width = 976
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
          Width = 700
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
    inherited PNLSBRodapeSynchronize: TPanel
      Width = 976
      inherited PNLSynchronize: TPanel
        Width = 915
      end
      inherited PNLGF: TPanel
        inherited GFSynchronize: TRxGIFAnimator
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
      end
    end
  end
  inherited SBPrincipal: TSpeedBar
    Width = 982
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Top = 8
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
    Transaction = TEdicao
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
    Transaction = TConsulta
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
end
