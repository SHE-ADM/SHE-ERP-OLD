inherited frmcad_cli_inf: Tfrmcad_cli_inf
  Left = 22
  Top = 39
  HelpType = htKeyword
  HelpKeyword = '3'
  AlphaBlend = True
  AlphaBlendValue = 0
  Caption = 'Informa'#231#245'es Comerciais'
  ClientHeight = 936
  ClientWidth = 1526
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 1526
    Height = 836
    inherited PaintBox: TPaintBox
      Width = 1526
      Height = 767
    end
    object pnlpri: TPanel
      Left = 0
      Top = 0
      Width = 1526
      Height = 767
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object GBFinanceiro: TGroupBox
        Left = 0
        Top = 415
        Width = 1526
        Height = 352
        Align = alClient
        Caption = '  Financeiro  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object PCFinanceiro: TdxPageControl
          Left = 2
          Top = 19
          Width = 1522
          Height = 331
          ActivePage = TSFB
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
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
          object TSFB: TdxTabSheet
            Caption = 'Banc'#225'rio'
            object DBGFB: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1522
              Height = 304
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'T'#237'tulos'
                end
                item
                  Caption = 'Encargos R$'
                end
                item
                  Caption = 'Descontos R$'
                  Width = 93
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Recebimentos R$'
                end
                item
                  Caption = 'Status Recebimentos'
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Instru'#231#245'es Banc'#225'rias'
                  Width = 145
                end
                item
                  Caption = 'Vendedores'
                end
                item
                  Caption = 'Empresa'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 13421258
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
              BandColor = clGray
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSFB
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = [fsItalic]
              ShowBands = True
              ShowGrid = False
              OnCustomDrawCell = DBGFBCustomDrawCell
              object DBGFBC_ID: TdxDBGridColumn
                DisableEditor = True
                Visible = False
                BandIndex = -1
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGFBDOCUMENTO: TdxDBGridColumn
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DOCUMENTO'
              end
              object DBGFBTITULO: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 90
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITULO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGFBCTNR: TdxDBGridColumn
                DisableEditor = True
                Visible = False
                Width = 80
                BandIndex = -1
                RowIndex = 0
                FieldName = 'CTNR'
              end
              object DBGFBDTFA: TdxDBGridColumn
                DisableEditor = True
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTFA'
              end
              object DBGFBD_TIPO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'D_TIPO'
              end
              object DBGFBRECO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RECO'
              end
              object DBGFBDTVC: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTVC'
              end
              object DBGFBVDUP: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 0
                RowIndex = 0
                FieldName = 'VDUP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDUP'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVJUR: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VJUR'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VJUR'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVMUL: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VMUL'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VMUL'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVDSC: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 85
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VDSC'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDSC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBDTPG: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 75
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTPG'
              end
              object DBGFBVPAG: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPAG'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVPEN: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPEN'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPEN'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBDEST: TdxDBGridColumn
                DisableEditor = True
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DEST'
              end
              object DBGFBSTFI: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 100
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'STFI'
              end
              object DBGFBDTBX: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Visible = False
                Width = 70
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DTBX'
              end
              object DBGFBFIN_PEN: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_PEN'
              end
              object DBGFBFIN_LIQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_LIQ'
              end
              object DBGFBFIN_BLQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_BLQ'
              end
              object DBGFBAPI_ST: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 125
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_ST'
              end
              object DBGFBAPI_CA: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_CA'
              end
              object DBGFBAPI_NN: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 110
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_NN'
              end
              object DBGFBAPI_DTCA: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Width = 110
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_DTCA'
              end
              object DBGFBAPI_DTED: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_DTED'
              end
              object DBGFBAPI_INFADCAD: TdxDBGridBlobColumn
                Color = 13816016
                HeaderAlignment = taCenter
                Width = 20
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_INFADCAD'
                PictureTransparency = gtOpaque
                PopupHeight = 500
                PopupWidth = 600
              end
              object DBGFBAPI_MT: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 100
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_MT'
              end
              object DBGFBDECV: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 90
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DECV'
              end
              object DBGFBDECR: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 150
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DECR'
              end
              object DBGFBDEEP: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 150
                BandIndex = 7
                RowIndex = 0
                FieldName = 'DEEP'
              end
            end
            object PNLFBINFADCAD: TPanel
              Left = 0
              Top = 304
              Width = 1522
              Height = 0
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es Adicionais'
              Align = alBottom
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              object Bevel2: TBevel
                Left = 0
                Top = 0
                Width = 1522
                Height = 0
                Align = alClient
              end
              object DBFBINFADCAD: TdxDBMemo
                Left = 0
                Top = 0
                Width = 1522
                Cursor = crHandPoint
                Hint = 'Informa'#231#245'es Adicionais'
                Align = alClient
                ParentColor = True
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Edges = []
                Style.Shadow = False
                TabOrder = 0
                DataField = 'INFADCAD'
                DataSource = DTSFB
                HideSelection = False
                OEMConvert = True
                ReadOnly = False
                HideScrollBars = False
                ScrollBars = ssVertical
                Height = 0
                StoredValues = 64
              end
            end
          end
          object TSFC: TdxTabSheet
            Caption = 'Carteira'
            object DBGFC: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1916
              Height = 391
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'T'#237'tulos'
                end
                item
                  Caption = 'Encargos R$'
                end
                item
                  Caption = 'Descontos R$'
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Recebimentos R$'
                end
                item
                  Caption = 'Status Recebimentos'
                end
                item
                  Caption = 'Vendedores'
                end
                item
                  Caption = 'Empresa'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 15131619
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
              BandColor = clGray
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSFC
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = [fsItalic]
              ShowBands = True
              ShowGrid = False
              OnCustomDrawCell = DBGFCCustomDrawCell
              object DBGFCC_ID: TdxDBGridColumn
                DisableEditor = True
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGFCDOCUMENTO: TdxDBGridColumn
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DOCUMENTO'
              end
              object DBGFCTITULO: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 90
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITULO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGFCCTNR: TdxDBGridColumn
                Visible = False
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CTNR'
              end
              object DBGFCDTFA: TdxDBGridColumn
                DisableEditor = True
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTFA'
              end
              object DBGFCD_TIPO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'D_TIPO'
              end
              object DBGFCRECO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RECO'
              end
              object DBGFCDTVC: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTVC'
              end
              object DBGFCVDUP: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 0
                RowIndex = 0
                FieldName = 'VDUP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDUP'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVJUR: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VJUR'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VJUR'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVMUL: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VMUL'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VMUL'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVDSC: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VDSC'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDSC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCDTPG: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 75
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTPG'
              end
              object DBGFCVPAG: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPAG'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVPEN: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPEN'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPEN'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCDEST: TdxDBGridColumn
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DEST'
              end
              object DBGFCSTFI: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 100
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'STFI'
              end
              object DBGFCDTBX: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Visible = False
                Width = 70
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DTBX'
              end
              object DBGFCFIN_PEN: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_PEN'
              end
              object DBGFCFIN_LIQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_LIQ'
              end
              object DBGFCFIN_BLQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_BLQ'
              end
              object DBGFCDECV: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 80
                BandIndex = 5
                RowIndex = 0
                FieldName = 'DECV'
              end
              object DBGFCDECR: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 160
                BandIndex = 5
                RowIndex = 0
                FieldName = 'DECR'
              end
              object DBGFCDEEP: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 150
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DEEP'
              end
            end
            object PNLFCINFADCAD: TPanel
              Left = 0
              Top = 391
              Width = 1916
              Height = 0
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es Adicionais'
              Align = alBottom
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              object Bevel1: TBevel
                Left = 0
                Top = 0
                Width = 1916
                Height = 0
                Align = alClient
              end
              object DBFCINFADCAD: TdxDBMemo
                Left = 0
                Top = 0
                Width = 1916
                Cursor = crHandPoint
                Hint = 'Informa'#231#245'es Adicionais'
                Align = alClient
                ParentColor = True
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Edges = []
                Style.Shadow = False
                TabOrder = 0
                DataField = 'INFADCAD'
                DataSource = DTSFB
                HideSelection = False
                OEMConvert = True
                ReadOnly = False
                HideScrollBars = False
                ScrollBars = ssVertical
                Height = 0
                StoredValues = 64
              end
            end
          end
        end
      end
      object PNLCabecalho: TPanel
        Left = 0
        Top = 0
        Width = 1526
        Height = 415
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object GBVendas: TGroupBox
          Left = 0
          Top = 18
          Width = 1526
          Height = 397
          Align = alClient
          Caption = '  Vendas  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object PCPedidos: TdxPageControl
            Left = 2
            Top = 19
            Width = 1522
            Height = 376
            ActivePage = TSPedidos
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            ParentFont = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpBottom
            TabWidth = 0
            object TSPedidos: TdxTabSheet
              Caption = 'Pedidos'
              object PNLPedidos: TPanel
                Left = 0
                Top = 0
                Width = 1522
                Height = 349
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBGPedidos: TdxDBGrid
                  Left = 0
                  Top = 0
                  Width = 1522
                  Height = 349
                  Bands = <
                    item
                      Caption = 'Pedidos'
                    end
                    item
                      Caption = 'Nota Fiscal'
                    end
                    item
                      Caption = 'Vendedores'
                    end
                    item
                      Caption = 'Totais R$'
                    end
                    item
                      Caption = 'Cobran'#231'a'
                    end
                    item
                      Caption = 'Impostos R$'
                    end
                    item
                      Caption = 'Frete'
                    end
                    item
                      Caption = 'Volume'
                    end>
                  DefaultLayout = False
                  HeaderPanelRowCount = 1
                  KeyField = 'ID'
                  ShowSummaryFooter = True
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
                  BandColor = clGray
                  BandFont.Charset = ANSI_CHARSET
                  BandFont.Color = clWhite
                  BandFont.Height = -13
                  BandFont.Name = 'Segoe UI Semibold'
                  BandFont.Style = [fsBold, fsItalic]
                  DataSource = DTSPedidos
                  Filter.Active = True
                  Filter.Criteria = {00000000}
                  GridLineColor = clSilver
                  HeaderFont.Charset = ANSI_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -13
                  HeaderFont.Name = 'Segoe UI'
                  HeaderFont.Style = [fsItalic]
                  HideSelectionColor = 14789952
                  HighlightColor = 14789952
                  LookAndFeel = lfUltraFlat
                  OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                  OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                  OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                  OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                  PreviewFont.Charset = DEFAULT_CHARSET
                  PreviewFont.Color = clBlue
                  PreviewFont.Height = -13
                  PreviewFont.Name = 'Segoe UI'
                  PreviewFont.Style = [fsItalic]
                  ShowBands = True
                  ShowGrid = False
                  OnCustomDrawCell = DBGPedidosCustomDrawCell
                  object DBGPedidosC_ID: TdxDBGridColumn
                    Visible = False
                    Width = 78
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'C_ID'
                  end
                  object DBGPedidosLOG_PRN_CDEV: TdxDBGridMaskColumn
                    Visible = False
                    Width = 103
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'LOG_PRN_CDEV'
                  end
                  object DBGPedidosLOG_PRN_QTEV: TdxDBGridMaskColumn
                    Visible = False
                    Width = 103
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'LOG_PRN_QTEV'
                  end
                  object DBGPedidosDEPk: TdxDBGridMaskColumn
                    Alignment = taLeftJustify
                    Color = clGray
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clHighlightText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 75
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'DEPK'
                    SummaryFooterType = cstCount
                    SummaryFooterField = 'ID'
                    SummaryFooterFormat = '0'
                  end
                  object DBGPedidosDTPK: TdxDBGridColumn
                    Color = clGray
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clHighlightText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 70
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'DTPK'
                  end
                  object DBGPedidosSTPD: TdxDBGridMaskColumn
                    Color = clGray
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clHighlightText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 75
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'STPD'
                  end
                  object DBGPedidosCDNF: TdxDBGridColumn
                    Alignment = taLeftJustify
                    DisableEditor = True
                    Width = 69
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'CDNF'
                  end
                  object DBGPedidosD_DTNF: TdxDBGridColumn
                    DisableEditor = True
                    Width = 70
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'D_DTNF'
                  end
                  object DBGPedidosD_DTSA: TdxDBGridDateColumn
                    Alignment = taLeftJustify
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 70
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'D_DTSA'
                  end
                  object DBGPedidosDECV: TdxDBGridMaskColumn
                    DisableEditor = True
                    Width = 85
                    BandIndex = 2
                    RowIndex = 0
                    FieldName = 'DECV'
                  end
                  object DBGPedidosDECR: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 120
                    BandIndex = 2
                    RowIndex = 0
                    FieldName = 'DECR'
                  end
                  object DBGPedidosQTRL: TdxDBGridMaskColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 50
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'QTRL'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'QTRL'
                    SummaryFooterFormat = '0'
                    DisableFilter = True
                  end
                  object DBGPedidosVDSC: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 82
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VDSC'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VDSC'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosTCDE: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'TCDE'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'D_TCDE'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisplayFormat = ',##,0.00'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosD_TCDE: TdxDBGridColumn
                    Visible = False
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'D_TCDE'
                  end
                  object DBGPedidosVTSP: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VTSP'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VTSP'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosVNF: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VNF'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VNF'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosVTFA: TdxDBGridColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VTFA'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VTFA'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosDEST: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Width = 107
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'DEST'
                  end
                  object DBGPedidosTPCO: TdxDBGridMaskColumn
                    Visible = False
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'TPCO'
                  end
                  object DBGPedidosRECO: TdxDBGridMaskColumn
                    Alignment = taCenter
                    DisableEditor = True
                    Width = 47
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'RECO'
                  end
                  object DBGPedidosD_STCO: TdxDBGridColumn
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 120
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'D_STCO'
                  end
                  object DBGPedidosVIPI: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 85
                    BandIndex = 5
                    RowIndex = 0
                    FieldName = 'VIPI'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VIPI'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisplayFormat = ',##,0.00'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosVST: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 75
                    BandIndex = 5
                    RowIndex = 0
                    FieldName = 'VST'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VST'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisplayFormat = ',##,0.00'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosDECT: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 185
                    BandIndex = 6
                    RowIndex = 0
                    FieldName = 'DECT'
                  end
                  object DBGPedidosVFRT: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 80
                    BandIndex = 6
                    RowIndex = 0
                    FieldName = 'VFRT'
                    DisableFilter = True
                  end
                  object DBGPedidosPSBR: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderAlignment = taRightJustify
                    Width = 80
                    BandIndex = 7
                    RowIndex = 0
                    FieldName = 'PSBR'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'PSBR'
                    SummaryFooterFormat = ',##,0.00'
                    DisplayFormat = ',##,0.000'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosPSLQ: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderAlignment = taRightJustify
                    Width = 80
                    BandIndex = 7
                    RowIndex = 0
                    FieldName = 'PSLQ'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'PSLQ'
                    SummaryFooterFormat = ',##,0.00'
                    DisplayFormat = ',##,0.000'
                    Nullable = False
                    DisableFilter = True
                  end
                end
                object PNLINFADCAD: TPanel
                  Left = 0
                  Top = 349
                  Width = 1522
                  Height = 0
                  Cursor = crHandPoint
                  Hint = 'Informa'#231#245'es adicionais do pedido ...'
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
                    Width = 1518
                    Cursor = crHandPoint
                    Hint = 'Informa'#231#245'es adicionais do pedido ...'
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
                    DataField = 'INFADCAD'
                    DataSource = DTSPedidos
                    ReadOnly = True
                    ScrollBars = ssBoth
                    Height = 46
                    StoredValues = 64
                  end
                end
              end
              object PNLINFADPRN: TPanel
                Left = 0
                Top = 349
                Width = 1522
                Height = 0
                Cursor = crHandPoint
                Hint = 'Log de registro do '#250'ltimo relat'#243'rio emitido'
                Align = alBottom
                Alignment = taLeftJustify
                BevelInner = bvLowered
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                object Bevel3: TBevel
                  Left = 2
                  Top = 2
                  Width = 1518
                  Height = 46
                  Align = alClient
                end
                object DBINFADPRN: TdxDBMemo
                  Left = 2
                  Top = 2
                  Width = 1518
                  Cursor = crHandPoint
                  Hint = 'Log de registro do '#250'ltimo relat'#243'rio emitido'
                  Align = alClient
                  Color = clGray
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
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
                  DataField = 'INFADPRN'
                  DataSource = DTSPedidos
                  ReadOnly = True
                  ScrollBars = ssBoth
                  Height = 46
                  StoredValues = 64
                end
              end
            end
            object TSFKPedidos: TdxTabSheet
              Caption = 'Itens'
              object DBGFKPedidos: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1551
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
                BorderStyle = bsNone
                Color = 16316664
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
                DataSource = DTSFKPedidos
                Filter.Active = True
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -13
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = [fsItalic]
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -13
                PreviewFont.Name = 'Segoe UI'
                PreviewFont.Style = [fsItalic]
                ShowGrid = False
                OnCustomDrawCell = DBGFKPedidosCustomDrawCell
                object DBGFKPedidosITEM: TdxDBGridColumn
                  Width = 50
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'ITEM'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object DBGFKPedidosSKU: TdxDBGridMaskColumn
                  Width = 110
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SKU'
                end
                object DBGFKPedidosDECP: TdxDBGridColumn
                  Width = 400
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DECP'
                end
                object DBGFKPedidosDGCP: TdxDBGridColumn
                  Width = 250
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DGCP'
                end
                object DBGFKPedidosUCOM: TdxDBGridColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'UCOM'
                end
                object DBGFKPedidosUCON: TdxDBGridColumn
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'UCON'
                end
                object DBGFKPedidosQTDE: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'QTDE'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'QTDE'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosQTRL: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 40
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'QTRL'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'QTRL'
                  SummaryFooterFormat = '0'
                  DisableFilter = True
                end
                object DBGFKPedidosVPRC_COM: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VPRC_COM'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'VPRC_COM'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosPDSC: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 50
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PDSC'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'PDSC'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosTCDE: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 90
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TCDE'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'TCDE'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosC_ID: TdxDBGridColumn
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'C_ID'
                end
              end
            end
            object TSNotasFiscais: TdxTabSheet
              Caption = 'Notas Fiscais'
              object DBGNF: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1551
                Height = 326
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'ID'
                ShowSummaryFooter = True
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                BorderStyle = bsNone
                Color = 16316664
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
                DataSource = DTSNF
                Filter.Active = True
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -13
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = [fsItalic]
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -13
                PreviewFont.Name = 'Segoe UI'
                PreviewFont.Style = [fsItalic]
                PreviewLines = 1
                ShowGrid = False
                OnCustomDrawCell = DBGNFCustomDrawCell
                object DBGNFCDNF: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 65
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CDNF'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                  DisableFilter = True
                end
                object DBGNFDTNF: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DTNF'
                end
                object DBGNFDTSA: TdxDBGridDateColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 95
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DTSA'
                end
                object DBGNFDESA: TdxDBGridMaskColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DESA'
                end
                object DBGNFVNF: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 110
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VNF'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'VNF'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                  StoredRowIndex = 1
                end
                object DBGNFVIPI: TdxDBGridColumn
                  Color = clInfoBk
                  HeaderAlignment = taRightJustify
                  Visible = False
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VIPI'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'VIPI'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGNFVST: TdxDBGridColumn
                  Color = clInfoBk
                  HeaderAlignment = taRightJustify
                  Visible = False
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VST'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'VST'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGNFECFOP: TdxDBGridColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CFOP'
                end
                object DBGNFD_CFOP: TdxDBGridMaskColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 104
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'D_CFOP'
                  StoredRowIndex = 1
                end
                object DBGNFD_FINNFE: TdxDBGridColumn
                  Width = 79
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'D_FINNFE'
                end
                object DBGNFDECT: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 210
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DECT'
                  StoredRowIndex = 1
                end
                object DBGNFDVOL: TdxDBGridColumn
                  Alignment = taRightJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taCenter
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DVOL'
                  StoredRowIndex = 1
                end
                object DBGNFPSBR: TdxDBGridColumn
                  Alignment = taRightJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PSBR'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'PESOB'
                  SummaryFooterFormat = ',##,0.000'
                  DisableFilter = True
                  StoredRowIndex = 1
                end
                object DBGNFPSLQ: TdxDBGridColumn
                  Alignment = taRightJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PSLQ'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'PESOL'
                  SummaryFooterFormat = ',##,0.000'
                  DisableFilter = True
                  StoredRowIndex = 1
                end
                object DBGNFMOTORISTA: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MOTORISTA'
                end
                object DBGNFPLACA: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PLACA'
                end
                object DBGNFAJUDANTES: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AJUDANTES'
                end
                object DBGNFDEST: TdxDBGridColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEST'
                  StoredRowIndex = 1
                end
                object DBGNFDEEP: TdxDBGridColumn
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEEP'
                end
                object DBGNFC_ID: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'C_ID'
                end
              end
            end
          end
        end
        object PNLCliente: TPanel
          Left = 0
          Top = 0
          Width = 1526
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = 7492630
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object pnlbot: TPanel
      Left = 0
      Top = 767
      Width = 1526
      Height = 69
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object GBSumario: TGroupBox
        Left = 0
        Top = 0
        Width = 1526
        Height = 69
        Align = alClient
        Caption = '  Sum'#225'rio  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object LAVCRD: TLabel
          Left = 8
          Top = 16
          Width = 94
          Height = 17
          Cursor = crHandPoint
          Hint = 'Click aqui para atualizar o limite de cr'#233'dito'
          Caption = 'Limite de Cr'#233'dito'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic, fsUnderline]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = LAVCRDClick
        end
        object LDVCRD: TLabel
          Left = 152
          Top = 16
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'R$ 0.00'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAPrazo: TLabel
          Left = 32
          Top = 48
          Width = 70
          Height = 17
          Hint = 'Prazo m'#233'dio em dias para pagamentos'
          Caption = 'Prazo M'#233'dio'
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
        object LDPrazo: TLabel
          Left = 174
          Top = 48
          Width = 21
          Height = 17
          Alignment = taRightJustify
          Caption = '999'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LDSCRD: TLabel
          Left = 152
          Top = 32
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'R$ 0.00'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LASCRD: TLabel
          Left = 69
          Top = 32
          Width = 33
          Height = 17
          Cursor = crHandPoint
          Hint = 'Saldo Dispon'#237'vel'
          Caption = 'Saldo'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = LAVCRDClick
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 911
    Width = 1526
    inherited SBRodape: TdxStatusBar
      Width = 1520
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
          Width = 1250
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
      Width = 1520
      inherited PNLSynchronize: TPanel
        Width = 1459
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
    Width = 1526
  end
  inherited TEvent: TIBTransaction
    Left = 1816
    Top = 592
  end
  inherited SPEvent: TIBStoredProc
    Left = 1848
    Top = 592
  end
  inherited EEvent: TIBEvents
    Left = 1880
    Top = 592
  end
  inherited SQLEvent: TIBSQL
    Left = 440
    Top = 32
  end
  object DTSPedidos: TDataSource
    DataSet = Pedidos
    OnDataChange = DTSPedidosDataChange
    Left = 1784
    Top = 720
  end
  object Pedidos: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterClose = PedidosAfterClose
    AfterOpen = PedidosAfterOpen
    AfterScroll = PedidosAfterScroll
    BeforeOpen = PedidosBeforeOpen
    OnCalcFields = PedidosCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEP,PK.DEEP,'
      '         PK.IDPK,PK.DEPK,PK.DTPK,'
      '         PK.CDNF,PK.DTNF,PK.D_DTNF,PK.DTSA,PK.D_DTSA,'
      '         PK.IDCD,PK.DECD,PK.RZCD,PK.FIN_VCRD,'
      '         PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.QTDE,PK.QTRL,'
      
        '         PK.PDSC,PK.VDSC,PK.TCDE  ,PK.D_TCDE,PK.VTSP,PK.VNF ,PK.' +
        'VTFA,'
      
        '         PK.STPD,PK.STCO,PK.D_STCO,PK.TPCO,PK.RECO  ,PK.DEPG,PK.' +
        'DEST,'
      '         PK.VIPI,PK.VST,'
      
        '         PK.IDCT,PK.DECT,PK.MFRT,PK.D_MFRT,PK.VFRT,PK.PSBR,PK.PS' +
        'LQ,'
      '         PK.LOG_PRN_CDEV,PK.INFADPRN,PK.LOG_PRN_QTEV,'
      '         PK.INFADCAD'
      'FROM     VW_PED_VEN_CAB AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDCD = :IDCD'
      'ORDER BY PK.DTCA DESC')
    Left = 1752
    Top = 720
    ParamData = <
      item
        DataType = ftString
        Name = 'IDEP'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'IDCD'
        ParamType = ptUnknown
        Value = '33'
      end>
    object PedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_CAB"."ID"'
    end
    object PedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_CAB"."IDEP"'
    end
    object PedidosDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      ProviderFlags = []
      Size = 60
    end
    object PedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      ProviderFlags = []
    end
    object PedidosDEPK: TIBStringField
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB"."DEPK"'
      Size = 30
    end
    object PedidosDTPK: TDateField
      FieldName = 'DTPK'
      Origin = '"VW_PED_VEN_CAB"."DTPK"'
    end
    object PedidosIDCD: TIntegerField
      FieldName = 'IDCD'
      ProviderFlags = []
    end
    object PedidosDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"VW_PED_VEN_CAB_004"."DECD"'
      Size = 60
    end
    object PedidosRZCD: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RZCD'
      Origin = '"VW_PED_VEN_CAB_004"."RZCD"'
      Size = 60
    end
    object PedidosCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB"."CDNF"'
    end
    object PedidosDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosD_DTNF: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'D_DTNF'
      Origin = '"VW_PED_VEN_CAB"."D_DTNF"'
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosDTSA: TDateField
      DisplayLabel = 'Entrega'
      FieldKind = fkInternalCalc
      FieldName = 'DTSA'
      Origin = '"VW_PED_VEN_CAB"."DTSA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosD_DTSA: TDateTimeField
      DisplayLabel = 'Entrega'
      FieldName = 'D_DTSA'
      Origin = '"VW_PED_VEN_CAB"."D_DTSA"'
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosVIPI: TIBBCDField
      DisplayLabel = 'IPI'
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_CAB"."VIPI"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVST: TIBBCDField
      DisplayLabel = 'Sub. Tribut'#225'ria'
      FieldName = 'VST'
      Origin = '"VW_PED_VEN_CAB"."VST"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosFIN_VCRD: TIBBCDField
      FieldName = 'FIN_VCRD'
      Origin = '"VW_PED_VEN_CAB"."FIN_VCRD"'
      Precision = 18
      Size = 2
    end
    object PedidosIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_PED_VEN_CAB"."IDCV"'
    end
    object PedidosDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"VW_PED_VEN_CAB"."DECV"'
      Size = 30
    end
    object PedidosIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_PED_VEN_CAB"."IDCR"'
    end
    object PedidosDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"VW_PED_VEN_CAB"."DECR"'
      Size = 60
    end
    object PedidosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_CAB"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosQTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_CAB"."QTRL"'
      DisplayFormat = '0'
    end
    object PedidosTCDE: TIBBCDField
      DisplayLabel = 'Produtos'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB"."TCDE"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosD_TCDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_TCDE'
      Origin = '"VW_PED_VEN_CAB"."D_TCDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object PedidosPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_CAB"."PDSC"'
      Precision = 9
      Size = 2
    end
    object PedidosVDSC: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_CAB"."VDSC"'
      Precision = 18
      Size = 2
    end
    object PedidosVTSP: TIBBCDField
      DisplayLabel = 'Separados'
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_CAB_004"."VTSP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVNF: TIBBCDField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'VNF'
      Origin = '"VW_PED_VEN_CAB"."VNF"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVTFA: TIBBCDField
      DisplayLabel = 'Faturados'
      FieldKind = fkInternalCalc
      FieldName = 'VTFA'
      Origin = '"VW_PED_VEN_CAB"."VTFA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB"."STPD"'
      Size = 60
    end
    object PedidosSTCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB"."STCO"'
      Size = 60
    end
    object PedidosD_STCO: TIBStringField
      DisplayLabel = 'Prazo'
      FieldKind = fkInternalCalc
      FieldName = 'D_STCO'
      Origin = '"VW_PED_VEN_CAB"."D_STCO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 84
    end
    object PedidosTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB"."TPCO"'
    end
    object PedidosRECO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'RECO'
      Origin = '"VW_PED_VEN_CAB"."RECO"'
      Size = 3
    end
    object PedidosDEPG: TIBStringField
      DisplayLabel = 'Prazo'
      FieldName = 'DEPG'
      Origin = '"VW_PED_VEN_CAB"."DEPG"'
      Size = 50
    end
    object PedidosDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB"."DEST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"VW_PED_VEN_CAB"."IDCT"'
    end
    object PedidosDECT: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'DECT'
      Origin = '"VW_PED_VEN_CAB"."DECT"'
      Size = 60
    end
    object PedidosMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"VW_PED_VEN_CAB"."MFRT"'
    end
    object PedidosD_MFRT: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_MFRT'
      Origin = '"VW_PED_VEN_CAB"."D_MFRT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object PedidosVFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VFRT'
      Origin = '"VW_PED_VEN_CAB"."VFRT"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosPSBR: TIBBCDField
      DisplayLabel = 'Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_CAB"."PSBR"'
      DisplayFormat = ',##,0.00#'
      Precision = 18
      Size = 3
    end
    object PedidosPSLQ: TIBBCDField
      DisplayLabel = 'L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_CAB"."PSLQ"'
      DisplayFormat = ',##,0.00#'
      Precision = 18
      Size = 3
    end
    object PedidosLOG_PRN_CDEV: TSmallintField
      FieldName = 'LOG_PRN_CDEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_CDEV"'
    end
    object PedidosLOG_PRN_QTEV: TSmallintField
      FieldName = 'LOG_PRN_QTEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_QTEV"'
    end
    object PedidosINFADPRN: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADPRN'
      Origin = '"VW_PED_VEN_CAB"."INFADPRN"'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object PedidosINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_CAB_004"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object PedidosC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object dtscad_cli_inf: TDataSource
    Left = 1920
    Top = 608
  end
  object NF: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterScroll = NFAfterScroll
    OnCalcFields = NFCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT    PK.ID  ,PK.IDPK  ,PK.IDEP,PK.DEEP,'
      
        '          PK.CDST,PK.REST  ,PK.DEST,PK.CDNF,PK.DTNF  ,PK.IDSA,PK' +
        '.DTSA,PK.DESA,'
      '          PK.CFOP,PK.D_CFOP,PK.TPNF,PK.D_FINNFE,'
      '          PK.VNF ,PK.VIPI  ,PK.VST,'
      
        '          PK.IDCT,PK.DECT  ,PK.D_FRT,PK.VFRT,PK.DVOL,PK.PSBR,PK.' +
        'PSLQ,'
      '          PK.MOTORISTA     ,PK.PLACA,PK.AJUDANTES,'
      '          PK.INFADCAD'
      'FROM      VW_NFE_CAB_004 AS PK'
      'WHERE     PK.IDEP  = 4'
      'AND       PK.CDST  = 30 -- Ativos'
      'AND       PK.TPCHV = 44 -- Tipo Chave (44 = nosso xml)'
      'AND       PK.IDCD  = 12192'
      'ORDER BY  PK.DTCA DESC')
    Left = 1752
    Top = 784
    object NFID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_NFE_CAB_004"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object NFIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_NFE_CAB_004"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object NFDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkInternalCalc
      FieldName = 'DEEP'
      Origin = '"VW_NFE_CAB_004"."DEEP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object NFCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'CDNF'
      Origin = '"VW_NFE_CAB_004"."CDNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0'
    end
    object NFDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_NFE_CAB_004"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object NFDTSA: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldKind = fkInternalCalc
      FieldName = 'DTSA'
      Origin = '"VW_NFE_CAB_004"."DTSA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object NFDESA: TIBStringField
      DisplayLabel = 'Conferente'
      FieldName = 'DESA'
      Origin = '"VW_NFE_CAB_004"."DESA"'
      Size = 40
    end
    object NFCFOP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CFOP'
      Origin = '"VW_NFE_CAB_004"."CFOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object NFD_CFOP: TIBStringField
      DisplayLabel = 'Natureza Opera'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'D_CFOP'
      Origin = '"VW_NFE_CAB"."D_CFOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object NFTPNF: TIBStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'TPNF'
      Origin = '"VW_NFE_CAB"."TPNF"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object NFD_FINNFE: TIBStringField
      DisplayLabel = 'Finalidade'
      FieldKind = fkInternalCalc
      FieldName = 'D_FINNFE'
      Origin = '"VW_NFE_CAB"."D_FINNFE"'
      ProviderFlags = []
      ReadOnly = True
    end
    object NFVNF: TIBBCDField
      DisplayLabel = 'Total NF R$'
      FieldKind = fkInternalCalc
      FieldName = 'VNF'
      Origin = '"VW_NFE_CAB_004"."VNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object NFVIPI: TIBBCDField
      DisplayLabel = 'IPI R$'
      FieldKind = fkInternalCalc
      FieldName = 'VIPI'
      Origin = '"VW_NFE_CAB_004"."VIPI"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object NFVST: TIBBCDField
      DisplayLabel = 'ST R$'
      FieldKind = fkInternalCalc
      FieldName = 'VST'
      Origin = '"VW_NFE_CAB_004"."VST"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object NFDECT: TIBStringField
      DisplayLabel = 'Transporte'
      FieldKind = fkInternalCalc
      FieldName = 'DECT'
      Origin = '"VW_NFE_CAB_004"."DECT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object NFVFRT: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'VFRT'
      Origin = '"VW_NFE_CAB_004"."VFRT"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object NFD_FRT: TIBStringField
      DisplayLabel = 'Frete'
      FieldKind = fkInternalCalc
      FieldName = 'D_FRT'
      Origin = '"VW_NFE_CAB"."D_FRT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 24
    end
    object NFDVOL: TIBStringField
      DisplayLabel = 'Volume'
      FieldKind = fkInternalCalc
      FieldName = 'DVOL'
      Origin = '"VW_NFE_CAB_004"."DVOL"'
      ProviderFlags = []
      ReadOnly = True
      Size = 67
    end
    object NFPSBR: TIBBCDField
      DisplayLabel = 'Peso Br'
      FieldKind = fkInternalCalc
      FieldName = 'PSBR'
      Origin = '"VW_NFE_CAB_004"."PSBR"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object NFPSLQ: TIBBCDField
      DisplayLabel = 'Peso Lq'
      FieldKind = fkInternalCalc
      FieldName = 'PSLQ'
      Origin = '"VW_NFE_CAB_004"."PSLQ"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object NFDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_NFE_CAB_004"."DEST"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object NFMOTORISTA: TIBStringField
      DisplayLabel = 'Motorista'
      FieldName = 'MOTORISTA'
      Origin = '"VW_NFE_CAB_004"."MOTORISTA"'
      Size = 40
    end
    object NFPLACA: TIBStringField
      DisplayLabel = 'Carro'
      FieldName = 'PLACA'
      Origin = '"VW_NFE_CAB_004"."PLACA"'
      Size = 10
    end
    object NFAJUDANTES: TIBStringField
      DisplayLabel = 'Ajudante(s)'
      FieldName = 'AJUDANTES'
      Origin = '"VW_NFE_CAB_004"."AJUDANTES"'
      Size = 81
    end
    object NFC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSNF: TDataSource
    DataSet = NF
    Left = 1784
    Top = 784
  end
  object FB: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = FBAfterOpen
    AfterScroll = FBAfterScroll
    BeforeOpen = FBBeforeOpen
    OnCalcFields = FBCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.DEEP,'
      
        '         PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,PK.VDUP,' +
        'PK.D_VDUP,PK.DECV,PK.DECR,'
      '         PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,'
      '         PK.VJUR,PK.VMUL,PK.VDSC,'
      '         PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,'
      '         PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,'
      
        '         PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,P' +
        'K.API_ST,PK.API_MT,PK.API_INFADCAD,'
      '         PK.INFADCAD'
      'FROM     VW_FIN_REC_BAN_004 AS PK'
      'WHERE    PK.IDEP = 4'
      'AND      PK.DOCUMENTO like '#39'183804%'#39
      'ORDER BY PK.DTCA DESC')
    Left = 1752
    Top = 816
    object FBID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_FIN_REC_BAN"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_FIN_REC_BAN"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      Origin = '"VW_FIN_REC_BAN"."DEEP"'
      Size = 60
    end
    object FBDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldKind = fkInternalCalc
      FieldName = 'DOCUMENTO'
      Origin = '"VW_FIN_REC_BAN"."DOCUMENTO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FBD_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'D_TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FBRECO: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'RECO'
      ProviderFlags = []
      Size = 3
    end
    object FBCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldKind = fkInternalCalc
      FieldName = 'CTNR'
      Origin = '"VW_FIN_REC_BAN_TMP"."CTNR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBDTFA: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTFA'
      Origin = '"VW_FIN_REC_BAN"."DTFA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBTITULO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'TITULO'
      Origin = '"VW_FIN_REC_BAN"."TITULO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBDTVC: TDateField
      DisplayLabel = 'Vencto'
      FieldKind = fkInternalCalc
      FieldName = 'DTVC'
      Origin = '"VW_FIN_REC_BAN"."DTVC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBVDUP: TIBBCDField
      DisplayLabel = 'Vl. T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'VDUP'
      Origin = '"VW_FIN_REC_BAN"."VDUP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"VW_FIN_REC_BAN"."DECV"'
      Size = 30
    end
    object FBDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldName = 'DECR'
      Origin = '"VW_FIN_REC_BAN"."DECR"'
      Size = 60
    end
    object FBVJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldKind = fkInternalCalc
      FieldName = 'VJUR'
      Origin = '"VW_FIN_REC_BAN"."VJUR"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBVMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldKind = fkInternalCalc
      FieldName = 'VMUL'
      Origin = '"VW_FIN_REC_BAN"."VMUL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBVDSC: TIBBCDField
      DisplayLabel = 'Vl. Desc.'
      FieldKind = fkInternalCalc
      FieldName = 'VDSC'
      Origin = '"VW_FIN_REC_BAN"."VDSC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBDTPG: TDateField
      DisplayLabel = 'Dt. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'DTPG'
      Origin = '"VW_FIN_REC_BAN"."DTPG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBVPAG: TIBBCDField
      DisplayLabel = 'Vl. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'VPAG'
      Origin = '"VW_FIN_REC_BAN"."VPAG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBVPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldKind = fkInternalCalc
      FieldName = 'VPEN'
      Origin = '"VW_FIN_REC_BAN"."VPEN"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_FIN_REC_BAN"."DEST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Financeira'
      FieldKind = fkInternalCalc
      FieldName = 'STFI'
      Origin = '"VW_FIN_REC_BAN"."STFI"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FBFIN_PEN: TSmallintField
      FieldName = 'FIN_PEN'
      Origin = '"VW_FIN_REC_BAN_004"."FIN_PEN"'
    end
    object FBFIN_LIQ: TSmallintField
      FieldName = 'FIN_LIQ'
      Origin = '"VW_FIN_REC_BAN_004"."FIN_LIQ"'
    end
    object FBFIN_BLQ: TSmallintField
      FieldName = 'FIN_BLQ'
      Origin = '"VW_FIN_REC_BAN_004"."FIN_BLQ"'
    end
    object FBDTBX: TDateField
      DisplayLabel = 'Baixa'
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_FIN_REC_BAN_TMP"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBAPI_ID: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_ID'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBAPI_DTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'API_DTCA'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_DTCA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object FBAPI_DTED: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'API_DTED'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_DTED"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object FBAPI_INFADCAD: TMemoField
      DisplayLabel = '?'
      FieldKind = fkInternalCalc
      FieldName = 'API_INFADCAD'
      Origin = '"VW_FIN_REC_BAN"."API_INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
      Size = 8
    end
    object FBAPI_MT: TIBStringField
      DisplayLabel = 'Motivo'
      FieldKind = fkInternalCalc
      FieldName = 'API_MT'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_MT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object FBAPI_NN: TLargeintField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'API_NN'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_NN"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBAPI_CA: TSmallintField
      DisplayLabel = 'Carteira'
      FieldName = 'API_CA'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_CA"'
    end
    object FBAPI_ST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Banc'#225'ria'
      FieldKind = fkInternalCalc
      FieldName = 'API_ST'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_ST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_FIN_REC_BAN"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object FBC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSFB: TDataSource
    DataSet = FB
    OnDataChange = DTSFBDataChange
    Left = 1784
    Top = 816
  end
  object Prazo: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      
        'SELECT SUM((PAG_D001+PAG_D002+PAG_D003+PAG_D004+PAG_D005+PAG_D00' +
        '6+PAG_D007+PAG_D008+PAG_D009+PAG_D010)/PAG_PARC) "PAG_PRAZ" FROM' +
        ' TAB_PAG'
      'WHERE ID = :ID')
    Left = 1752
    Top = 688
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object PrazoPAG_PRAZ: TLargeintField
      FieldName = 'PAG_PRAZ'
      ProviderFlags = []
    end
  end
  object FKPedidos: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    OnCalcFields = FKPedidosCalcFields
    BufferChunks = 4500
    DataSource = DTSPedidos
    SQL.Strings = (
      'SELECT   PK.*'
      'FROM     VW_PED_VEN_ITE AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 1752
    Top = 752
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftLargeint
        Name = 'IDPK'
        ParamType = ptUnknown
        Size = 8
      end>
    object FKPedidosC_ID: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
    object FKPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_ITE"."ID"'
    end
    object FKPedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_ITE"."IDEP"'
    end
    object FKPedidosIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_ITE"."IDCA"'
    end
    object FKPedidosDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_ITE"."DTCA"'
    end
    object FKPedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_ITE"."IDPK"'
    end
    object FKPedidosITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_PED_VEN_ITE"."ITEM"'
      DisplayFormat = '0'
    end
    object FKPedidosIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_PED_VEN_ITE"."IDCP"'
    end
    object FKPedidosCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_PED_VEN_ITE"."CP_IDEP"'
    end
    object FKPedidosCP_DEEP: TIBStringField
      FieldName = 'CP_DEEP'
      Origin = '"VW_PED_VEN_ITE"."CP_DEEP"'
      Size = 60
    end
    object FKPedidosARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"VW_PED_VEN_ITE"."ARTIGO"'
    end
    object FKPedidosSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"VW_PED_VEN_ITE"."SKU"'
    end
    object FKPedidosCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_PED_VEN_ITE"."CEAN"'
    end
    object FKPedidosDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_PED_VEN_ITE"."DECP"'
      Size = 120
    end
    object FKPedidosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_PED_VEN_ITE"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FKPedidosUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"VW_PED_VEN_ITE"."UCOM"'
      Size = 10
    end
    object FKPedidosUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldKind = fkInternalCalc
      FieldName = 'UCON'
      Origin = '"VW_PED_VEN_ITE"."UCON"'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FKPedidosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_ITE"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKPedidosQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_ITE"."QTRL"'
      DisplayFormat = '0'
    end
    object FKPedidosQTSP: TIBBCDField
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_ITE"."QTSP"'
      Precision = 18
      Size = 2
    end
    object FKPedidosRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_ITE"."RLSP"'
    end
    object FKPedidosVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD"'
    end
    object FKPedidosVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD_INI"'
    end
    object FKPedidosVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD_FIM"'
    end
    object FKPedidosPDSC: TIBBCDField
      DisplayLabel = 'Desc'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_ITE"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKPedidosVPRC_COM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'VPRC_COM'
      Origin = '"VW_PED_VEN_ITE"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKPedidosTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_ITE"."TSDE"'
      Precision = 18
      Size = 2
    end
    object FKPedidosTCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_ITE"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKPedidosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_PED_VEN_ITE"."NCM"'
      FixedChar = True
      Size = 8
    end
    object FKPedidosPIPI: TIBBCDField
      FieldName = 'PIPI'
      Origin = '"VW_PED_VEN_ITE"."PIPI"'
      Precision = 9
      Size = 2
    end
    object FKPedidosCEST: TIBStringField
      FieldName = 'CEST'
      Origin = '"VW_PED_VEN_ITE"."CEST"'
      Size = 7
    end
    object FKPedidosEXTIPI: TIBStringField
      FieldName = 'EXTIPI'
      Origin = '"VW_PED_VEN_ITE"."EXTIPI"'
      Size = 3
    end
    object FKPedidosRCOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'RCOM'
      Origin = '"VW_PED_VEN_ITE"."RCOM"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FKPedidosPCOM: TIBBCDField
      FieldName = 'PCOM'
      Origin = '"VW_PED_VEN_ITE"."PCOM"'
      Precision = 9
      Size = 2
    end
    object FKPedidosPSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_ITE"."PSBR"'
      Precision = 18
      Size = 3
    end
    object FKPedidosPSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_ITE"."PSLQ"'
      Precision = 18
      Size = 3
    end
    object FKPedidosORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"VW_PED_VEN_ITE"."ORIG"'
    end
    object FKPedidosCPAIS: TSmallintField
      FieldName = 'CPAIS'
      Origin = '"VW_PED_VEN_ITE"."CPAIS"'
    end
    object FKPedidosIP: TIBStringField
      FieldName = 'IP'
      Origin = '"VW_PED_VEN_ITE"."IP"'
      Size = 30
    end
    object FKPedidosHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"VW_PED_VEN_ITE"."HOST"'
      Size = 30
    end
  end
  object DTSFKPedidos: TDataSource
    DataSet = FKPedidos
    Left = 1784
    Top = 752
  end
  object FC: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = FCAfterOpen
    AfterScroll = FCAfterScroll
    BeforeOpen = FCBeforeOpen
    OnCalcFields = FCCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.DEEP,'
      
        '         PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,PK.VDUP,' +
        'PK.DECV,PK.DECR,'
      '         PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,'
      '         PK.VJUR,PK.VMUL,PK.VDSC,'
      '         PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,'
      '         PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,'
      
        '         PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,P' +
        'K.API_ST,PK.API_MT,PK.API_INFADCAD,'
      '         PK.INFADCAD'
      'FROM     VW_FIN_REC_CAR_004 AS PK'
      'WHERE    PK.IDEP = 0'
      'AND      PK.IDCD = 0'
      'AND      PK.CDST <> 46 -- Cancelado'
      'ORDER BY PK.DTCA DESC')
    Left = 1752
    Top = 848
    object FCID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_FIN_REC_CAR_TMP"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_FIN_REC_CAR_TMP"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkInternalCalc
      FieldName = 'DEEP'
      Origin = '"VW_FIN_REC_CAR_TMP"."DEEP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldKind = fkInternalCalc
      FieldName = 'DOCUMENTO'
      Origin = '"VW_FIN_REC_CAR"."DOCUMENTO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldKind = fkInternalCalc
      FieldName = 'CTNR'
      Origin = '"VW_FIN_REC_CAR_TMP"."CTNR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCDTFA: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTFA'
      Origin = '"VW_FIN_REC_CAR_TMP"."DTFA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCTITULO: TIBStringField
      DisplayLabel = 'Titulo'
      FieldKind = fkInternalCalc
      FieldName = 'TITULO'
      Origin = '"VW_FIN_REC_CAR"."TITULO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCDTVC: TDateField
      DisplayLabel = 'Vencto'
      FieldKind = fkInternalCalc
      FieldName = 'DTVC'
      Origin = '"VW_FIN_REC_CAR"."DTVC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCVDUP: TIBBCDField
      DisplayLabel = 'Vl. T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'VDUP'
      Origin = '"VW_FIN_REC_CAR_TMP"."VDUP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldKind = fkInternalCalc
      FieldName = 'DECV'
      Origin = '"VW_FIN_REC_CAR_TMP"."DECV"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldKind = fkInternalCalc
      FieldName = 'DECR'
      Origin = '"VW_FIN_REC_CAR_TMP"."DECR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'TIPO'
      Origin = '"VW_FIN_REC_CAR_TMP"."TIPO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCD_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'D_TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FCRECO: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldKind = fkInternalCalc
      FieldName = 'RECO'
      Origin = '"VW_FIN_REC_CAR_TMP"."RECO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object FCVJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldKind = fkInternalCalc
      FieldName = 'VJUR'
      Origin = '"VW_FIN_REC_CAR_TMP"."VJUR"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCVMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldKind = fkInternalCalc
      FieldName = 'VMUL'
      Origin = '"VW_FIN_REC_CAR_TMP"."VMUL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCVDSC: TIBBCDField
      DisplayLabel = 'Vl. Desc.'
      FieldKind = fkInternalCalc
      FieldName = 'VDSC'
      Origin = '"VW_FIN_REC_CAR_TMP"."VDSC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCDTPG: TDateField
      DisplayLabel = 'Dt. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'DTPG'
      Origin = '"VW_FIN_REC_CAR_TMP"."DTPG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCVPAG: TIBBCDField
      DisplayLabel = 'Vl. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'VPAG'
      Origin = '"VW_FIN_REC_CAR_TMP"."VPAG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCVPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldKind = fkInternalCalc
      FieldName = 'VPEN'
      Origin = '"VW_FIN_REC_CAR_TMP"."VPEN"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_FIN_REC_CAR"."DEST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Financeira'
      FieldKind = fkInternalCalc
      FieldName = 'STFI'
      Origin = '"VW_FIN_REC_CAR_TMP"."STFI"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCFIN_PEN: TSmallintField
      FieldName = 'FIN_PEN'
      Origin = '"VW_FIN_REC_CAR_004"."FIN_PEN"'
    end
    object FCFIN_LIQ: TSmallintField
      FieldName = 'FIN_LIQ'
      Origin = '"VW_FIN_REC_CAR_004"."FIN_LIQ"'
    end
    object FCFIN_BLQ: TSmallintField
      FieldName = 'FIN_BLQ'
      Origin = '"VW_FIN_REC_CAR_004"."FIN_BLQ"'
    end
    object FCDTBX: TDateField
      DisplayLabel = 'Baixa'
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_FIN_REC_CAR_TMP"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCAPI_ID: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_ID'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_DTCA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'API_DTCA'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_DTCA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_DTED: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'API_DTED'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_DTED"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_NN: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'API_NN'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_NN"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_CA: TSmallintField
      DisplayLabel = 'Carteira'
      FieldName = 'API_CA'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_CA"'
    end
    object FCAPI_ST: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_ST'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_ST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCAPI_MT: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_MT'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_MT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object FCAPI_INFADCAD: TMemoField
      FieldKind = fkInternalCalc
      FieldName = 'API_INFADCAD'
      Origin = '"VW_FIN_REC_CAR"."API_INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
      Size = 8
    end
    object FCINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_FIN_REC_CAR"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object FCC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSFC: TDataSource
    DataSet = FC
    OnDataChange = DTSFCDataChange
    Left = 1784
    Top = 848
  end
  object ConsultaAux: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 1752
    Top = 656
  end
end
