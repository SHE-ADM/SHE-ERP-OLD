inherited frmcad_cli_inf: Tfrmcad_cli_inf
  Left = -8
  Top = -8
  HelpType = htKeyword
  HelpKeyword = '3'
  AlphaBlend = True
  AlphaBlendValue = 0
  Caption = 'Informa'#231#245'es Comerciais'
  ClientHeight = 1017
  ClientWidth = 1920
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Top = 75
    Width = 1920
    Height = 923
    inherited PaintBox: TPaintBox
      Width = 1920
      Height = 854
    end
    object pnlpri: TPanel
      Left = 0
      Top = 0
      Width = 1920
      Height = 854
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object GBFinanceiro: TGroupBox
        Left = 0
        Top = 415
        Width = 1920
        Height = 439
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
          Width = 1916
          Height = 418
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
              object Bevel2: TBevel
                Left = 0
                Top = 0
                Width = 1916
                Height = 0
                Align = alClient
              end
              object DBFBINFADCAD: TdxDBMemo
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
        Width = 1920
        Height = 415
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object GBVendas: TGroupBox
          Left = 0
          Top = 18
          Width = 1920
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
            Width = 1916
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
                Width = 1916
                Height = 349
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBGPedidos: TdxDBGrid
                  Left = 0
                  Top = 0
                  Width = 1916
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
                  object DBGPedidosDEPV: TdxDBGridMaskColumn
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
                    FieldName = 'DEPV'
                    SummaryFooterType = cstCount
                    SummaryFooterField = 'ID'
                    SummaryFooterFormat = '0'
                  end
                  object DBGPedidosDTPV: TdxDBGridColumn
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
                    FieldName = 'DTPV'
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
                  object DBGPedidosDTNF: TdxDBGridColumn
                    DisableEditor = True
                    Width = 70
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'DTNF'
                  end
                  object DBGPedidosDTSA: TdxDBGridDateColumn
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
                    FieldName = 'DTSA'
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
                  object DBGPedidosSTFI: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Width = 107
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'STFI'
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
                  object DBGPedidosDECO: TdxDBGridColumn
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 120
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'DECO'
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
                  Width = 1916
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
                    Width = 1912
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
              object PNLLOG_PRN_DEEV: TPanel
                Left = 0
                Top = 349
                Width = 1916
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
                  Width = 1912
                  Height = 46
                  Align = alClient
                end
                object DBLOG_PRN_DEEV: TdxDBMemo
                  Left = 2
                  Top = 2
                  Width = 1912
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
                  DataField = 'LOG_PRN_DEEV'
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
          Width = 1920
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
      Top = 854
      Width = 1920
      Height = 69
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object GBSumario: TGroupBox
        Left = 0
        Top = 0
        Width = 1920
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
  inherited sbMSG: TStatusBar
    Top = 998
    Width = 1920
    Panels = <
      item
        Text = 'Consulta'
        Width = 100
      end
      item
        Width = 50
      end>
    Visible = False
  end
  inherited SpeedBar2: TSpeedBar
    Width = 1920
    Height = 75
    BtnWidth = 84
    BtnHeight = 68
    inherited SpeedbarSection5: TSpeedbarSection
      Caption = 'Menu'
    end
    inherited siVAL: TSpeedItem [4]
      SectionName = 'Menu'
    end
    inherited siSAIR: TSpeedItem [5]
      ImageIndex = 2
      Left = 171
      SectionName = 'Menu'
    end
    inherited siSAV: TSpeedItem [6]
      Visible = False
      SectionName = 'Menu'
    end
    inherited siCAN: TSpeedItem [7]
      Left = 122
      Visible = False
      SectionName = 'Menu'
    end
    object siLIB: TSpeedItem
      BtnCaption = 'Faturamento'
      Cursor = crHandPoint
      Hint = 'Libera'#231#227'o de Cliente para Faturamento'
      ImageIndex = 0
      Spacing = -3
      Left = 3
      Top = 3
      Visible = True
      OnClick = siLIBClick
      SectionName = 'Menu'
    end
    object siSEP: TSpeedItem
      BtnCaption = 'Separa'#231#227'o'
      Cursor = crHandPoint
      Hint = 'Libera'#231#227'o de Cliente para Separa'#231#227'o'
      ImageIndex = 1
      Spacing = -3
      Left = 87
      Top = 3
      Visible = True
      OnClick = siSEPClick
      SectionName = 'Menu'
    end
  end
  inherited Consulta: TIBQuery
    Left = 1752
    Top = 624
  end
  inherited IBTra: TIBTransaction
    Left = 1752
    Top = 592
  end
  inherited ibSP: TIBStoredProc
    Left = 1784
    Top = 592
  end
  inherited imageOPC: TImageList
    Height = 48
    Width = 48
    Left = 372
    Top = 30
    Bitmap = {
      494C010103000400040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0CFF00FE46
      FD00FB35EF00FB35ED00FB35EE00FB35EE00FB35EE00FA33EB00FE3FFC00FF51
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF07FF00FF4D
      FF00F53CFA00E132EC00D41ADC00C5A5CF009CD0B100A0CBB400A0CBB4009FCB
      B400A5CDB700C5F2CE00D614DF00E132EB00FD40FF00FF50FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000585F2300495222004C53
      24004C5324004C5324004C5324004C5324004C5324004C5324004C5324004C53
      24004C5324004C5324004C5324004C5324004C5324004C5324004C5324004C53
      24004C5324004C5324004C5324004C5324004C5324004C5324004C5324004C53
      24004C5324004C5324004C5324004C5324004C5324004C5324004C5324004C53
      24004C5324004C5324004C5324004C5324004A532400495223004E562500565C
      2B0068613000836E3C009073480098784D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF80FF00F49FD400EA78AE00DE798900D8B2
      6F00CA864C00C47A4500C5784600C6784600C5774500CA804400D9A86D00DFC4
      8700EA6BA900F594D000FFCEFF00FF2BFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF79FF00C2BBD50092DC
      A40057B67500279A50000279250000601C0000551A0000531900005319000053
      19000056190000571900077C2D0025994E0068C180008BE1A500D798E500FFCE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A673420000520000005A00000056
      0000005700000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005700000057
      0000005600000055000000550000005500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF32
      FF00FE3EFC00F7CCE400DBC48200C57F4600B04919009D220000880800008304
      00007F0000007F000000790000007501000074000000760100007A0400008003
      0000911C0000A7441100BE784200D0B77800ECFFDA00F482F300FF4AFF00FF08
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2E0F60091ECAA003FA360000A702E00004E
      0E000041080000410C000042100000420F0000401000003F0F00003F0F00003E
      0F0000410F000042100000420E0000410C0000420A0000501000167C38003E99
      5D00B2FFC500F086F400FF2BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE6C530000530000005800000054
      0000005500000056000000570000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005800000055000000580000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC9FF00FCF0
      F200E2C69100C2663400A32407008D0800007E01000080010000820500008409
      00008A0C00007C130000403205002C3C09002F4A2E0030422E00221D06002215
      01002E281D0034332C00353D0200444F0C00547A490077CBA400B2F5CC00FBE2
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF21FF00FFC4FF00C2B3D40049AC6E0006682700004E120000420F000043
      1100004312000044140000471400004614000047140000471400004714000047
      140000471400004713000046120000431200004312000044110000420F00004E
      1300127135004CB07400E5ECEC00FFC6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE6C53000052000000590000006B
      0500147806000D7608000A7509000A7509000A7509000A7509000A7509000A75
      09000A7509000A7509000A7509000A7509000A7509000A7509000A7509000A75
      09000A7509000A7509000A7509000A7509000A7509000A7509000A7509000A75
      09000A7509000A7509000A7509000A7509000A7509000A7509000A7509000A75
      09000A7509000A7509000A7509000A7509000A7509000A7509000A7509000B75
      09000877090000650000005A0000005700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF09FF00FFE9FF00E5CFA400C460
      2C00940B0000840000007E020000890E0100931801009B2202009C230300A021
      0200822B04002A704400007A5E0000420A00119DA10044F0FF001C9A8F00004A
      11000E8068004FEEFF0019958B0000410F00005A39002AB5BD0021B2A00062B9
      8E00FFE8FF00FF48FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF22
      FF00E9FFF00083CBA2000067190000490D0000400E0000431200004B1500004E
      1500004E1500004E1500004E1500004E1500004E1500004E1500004E1500004C
      1500004D1500004D1500004D1500004D1500004D1500004C1500004713000043
      110000410E00004A0C0000742C007FD09E00FBE5FE00FF08FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE6C5300004F000020762900AEE0
      C0009ED6A7009DD6AE009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6
      B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6
      B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6
      B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6
      B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B1009AD6B10099D6
      B000A0D6B200F6FFFF0000640000005500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF40FF00E4CE8F00B23507008D0A
      00007D000000911301009C2103009F2503009E2403009D2403009D250300A421
      00006343100023B197004DE0FF00045D46000037010034AFB7005EF2FF002696
      9300002F0000137562007EFFFF001E877C0000310000095E3F0048DCE6000D8F
      6100EF9E7000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFBE
      FF0064BA860000672000003F0E0000451200004F170000511700005217000051
      1700005117000051170000511700005117000051170000511700005117000051
      1700005117000051170000521700004F1700004E1500004E1600004E1600004D
      1600004A15000043110000450F0000621B0089E4AA00FF41FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE6C5300005000002E8D33002379
      2700004E00000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000055
      000000510000B6E2D20000670600005400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF1CFF00D5B15700AC2C0000840000008E0F
      0000A42D0400A52B0500A42A0500A42A0500A42A0500A42B0500A42A0500AC26
      030064460B0008784C0036C5E0005EF2FF00045F45000035000035B0B40064F5
      FF002B9B9500003904001379650075F8FF00268D7F00003B0B0001643800008B
      5000B9150000D1875400FDE2F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EF8EF50066CA
      880000510E00003F0E00004F170000561A000057190000581900005819000058
      1900005819000058190000581900005819000058190000581900005819000058
      1900005719000056190000541900005519000055190000541800005318000054
      18000053180000531800004A150000400C000064240061DF8A00FF1DFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE6C5300004E00002B9C26002679
      2600005500000058000000570000005700000057000000570000005700000057
      0000005700000057000000570000005700000057000000570000005700000057
      0000005700000057000000570000005700000057000000570000005700000057
      0000005700000057000000570000005700000057000000570000005700000057
      0000005700000057000000570000005700000057000000570000005700000056
      00000055000098E0B100006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF1FFF00E9C19800AF3404008F0D0000981B0200A62B
      0500A72E0500A62D0500A62D0500A72D0500A82D0500A82D0500A82D0500B029
      0300684D1300076C2E000761480040CDE3005CE1F900106E51000154260038B1
      AF006AF3FF0032A29C0000410600218B760071E9FA0033958C00004F1C00008C
      490093000000A8240000E4BB8B00FEE3FC000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7AFF007FE0A100066F
      2E000044100000501700005A1C00005A1B0000591B00005B1B00005B1B00005B
      1B00005B1B00005B1B00005B1B00005B1B00005B1B00005B1B00005B1B00005A
      1B0000591B0000591B0000591B0000581B0000581B0000581B0000581A000057
      1900005719000055190000551900004C15000048130005743000AFE2C600FF24
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B100006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFC8FF00EFF5BF00BA4812008F0C00009B1F0200AD330600AB33
      0600AA340600AC340600AC340600AC340600AC340600AC340600AC340600B42F
      03006D5616000F924D0000622400027C4D0034D9D2001CB9A100007333000075
      3A002CC2AB003BDCD500007C3E00006A2A0026B18C003FD6C3000A98660002A1
      5700AB11000087060000B9451200E8DA9E00FF28FF0000000000000000000000
      000000000000000000000000000000000000FF07FF00D1C5E100097F3C000049
      12000052170000601D00005F1C00005E1C00005E1C00005E1C00005F1C00005E
      1C00005E1D00005E1D00005E1D00005E1D00005E1D00005E1C00005F1C00005E
      1C00005E1C00005E1C00005F1C00005E1C00005E1C00005E1C00005C1C00005B
      1C00005B1C00005B1C00005B1C00005B1B00004E1600004910001E8C4D00C7C4
      9200F9DDAC00FFFFD700FF2FF400FF55FE000000000000000000000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF2FFF00FFFFFF00D4854E009F210000981B0200AC340500AE370500AE36
      0500AE370500AF380500AF380500AF380500AF370500AF370500AF370500B733
      0200715B190019B1610000984C000097490004A45D0004A65C00019E4F00009B
      4B0002A1560007A8610002A35300019F4D0001A1510007AA5D0008B3640006B5
      6500BB230000921600009B180000CD7B4000FFC0FF0000000000000000000000
      000000000000000000000000000000000000FF4CFF007ADE9F00005A1900004B
      120000611D0000611E0000611E0000601E0000601E0000601D0000621E000063
      20000063200000632000006320000063200000631F000063200000621F000060
      1D0000601E0000611E0000611E0000611E0000611E00005F1E00005F1E000060
      1C00005F1C00005E1C00005F1C00005D1C0000581A0000481300006527002B42
      1A0082170F00AF341900DC905900FAD7A300FFA2EF00FFCFFF00000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000058000000570000005700000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF4FFF00F7FFDC00B12A000094150000AE360500B23C0700B23A0700B13C
      0700B23B0700B33B0700B33B0700B33B0700B33C0700B33C0700B33C0700BA37
      030079611E002BC16E0000AD550004AE570003AC550003AE550005B0570005B0
      580005AF570004AF560005B2590005B2590005B1580003AF56000EC168000DC4
      6F00BF290000AC3305008F110000B03B0300EE9BAF00FF0EFF00000000000000
      000000000000000000000000000000000000E737F1002CAE610000450E000059
      1C00006621000065200000652000006722000066210000662200006622000066
      2200006622000066220000662200006622000066220000662200006622000066
      2200006723000065200000652000006420000065200000652000006420000063
      1F0000621E0000631E0000611E0000611E0000621E000056180000531A00006A
      260091000000580200004B0000005B000000B4491C00FDA77B00FFFFFF00FF97
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000058000000580000005700000057000000570000005700000057
      0000005700000057000000570000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000058000000590000005E0000005C00000057
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF4BFF00E6C28A00A62600009B220300B53E0600B53E0600B53D0600B53E
      0600B53E0600B43F0600B43F0600B63F0600B63F0600B63F0600B63F0600BD3A
      02007E65200039CA7A0002B85F0008BA620008BA620009BB630009BC64000ABC
      640009BC65000ABE65000ABD66000BBE66000BBF670009BE650020CE760018CD
      7800C12A0000B33C0700991C02009F180000E4C78700FF56FF00000000000000
      000000000000000000000000000000000000CC2BDE00008D3400004913000062
      2100006823000069230000682300006926000069260000682600006826000069
      2600006A2600006A2600006A2500006A2500006A250000692500006825000068
      2500006826000068240000682200006823000068230000672300006623000066
      22000067210000662100006521000064210000642100005E1C00004E1500007F
      3800E0230100F61D0200D3190100A21000004C00000055050000FF7D5300FFFF
      E20000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005500000056000000570000005700000056000000550000005500000055
      0000005500000054000000570000005700000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005400002277260092D7AB0062AF6F00004C
      0000005800000059000000580000005800000058000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FE4AFF00D59649009D210000A72F0400BB440800B8410800B8420800B842
      0800BA420800BA420800BA420800BA420800BA420800BA420800BA420800C13D
      0400846A24004DD6900015CD74001CCE76001DCD77001ECF77001ED077001FD0
      780021D07A0022D0790023D17B0024D17B0025D27C0024D27A003EDD910027D8
      8600C32D0000B63F0700A52C050098190000D99F5300FB3FED00000000000000
      000000000000000000000000000000000000C829D800007D220000571800006C
      2600006D2700006C2700006E2700006E2800006E2800006F2800006E2800006E
      2800006E2800006E2800006E2900006F2900006F2900006F2900006F2900006F
      2900006F2900006E2800006F2800006D2700006C2700006C2700006D2700006A
      2700006B2500006A2400006A2400006824000069250000652100004B1600007B
      3700AB3C0700EF210300EF230400F2230400ED220400B21100005D000000DF4C
      1A00FFCCD600000000000000000000000000AE6C5300004E00002C9B2700267B
      270000550000004D00005CAC6500FFFFFF00E1FFFF00E1FFFF00E1FFFF00E1FF
      FF00E1FFFF00E6FFFF00AEEDBF00107105000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005300003F834400F7FFFF0091D3BB000053
      0000005A00000058000000590000005900000059000000580000005800000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF4AFF00D28B3E00A0240000AF360600BC450800BA430900BB430900BB44
      0900BB440900BB440900BB440900BB440900BC440900BC440900BC440900C33F
      04008A6C28005FDD9F002FDA820036D9850037D9860039DA870039DA86003ADA
      89003BDB89003CDB88003DDB8B003EDC8B003FDC8C003FDD8B0054E6A10037E0
      9100C6300000B8410700A8310500971A0000D4964C00FB3EEA00000000000000
      000000000000000000000000000000000000C928D9000082270000601C00006D
      2800006F2900006F2A0000702C0000702B0000702B0000702B0000712B000071
      2B0000712D0000722D0000732E0000732F0000732F0000732F0000732F000073
      2F0000732E0000722D0000712D0000712D0000712A00006F2900006D2800006E
      2900006E2800006C2600006D2700006C2700006C2600006A2300004E1700007B
      3A008F4D0A00F3260400EF260500EF270400EF280400F0270400C01601008E06
      0000F38A5400FFD9EB000000000000000000AE6C5300004E00002C9B2700267B
      270000540000004F000048A96E00E3FFFF00D3FFFF00D4FFFE00D4FFFE00D4FF
      FE00D4FFFE00DBFFFF00A9E8B700136E06000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005300003A814100E9FFFF0090D0B600004E
      000000580000004F0000004C0000004D0000004D0000004B0000005000000059
      00000055000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF4AFF00D58D4100AC310000B43F0800BC460900BE450900BE450900BE47
      0900BE470900BE470900BE470900BE470900BF480900C0480900C0480900C642
      030093712E0077E4B4004CE59D0051E5A00053E5A00055E4A20056E4A20056E6
      A30057E5A50057E5A50057E5A60059E7A60059E6A50058E6A6006DEEBB004FE8
      A200C7320000BB440900AD3607009E210000D6994B00FC31EB00000000000000
      000000000000000000000000000000000000C929D900008D2E00006622000072
      2C0000742D000074300000743000007630000075300000773100007731000077
      3000007832000079320000793200007932000079320000793200007932000079
      320000793200007932000078320000773200007831000076300000752F000073
      2D0000722E0000722C0000702A00006F2A0000702B00006E270000561A000082
      3E00CC430800F8300600F42F0700F42E0500F32E0600F32E0600F92D0600CC1A
      0100BA190000F8B36A00FF2BFF0000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AB6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DEFFFF00B0E4B8001A6C08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000053000034814100E6FFFF0097CFB400004C
      0000005B00001A91400057B6920052B68A0052B58A0062BA92003B9A55000054
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FE4AFF00DCA55E00B63A0000BA420700BF470900BF470900C0470800C048
      0800C0480800C0480800C0480800C0480800C1480800C0480800C0480800C543
      030099712C0086EAC00073F1C20069ECB7006BEDB9006CEDB9006DEDB8006EED
      BB006FEEBB0070EEBC0070EDBD0071EDBC0070EDBD0073EFBE0095FADA0066D7
      9800C5360000BD440900B23A0400AA320400E1AC7B00FAC1F100FABBFC00FE35
      FE0000000000000000000000000000000000D12FE20007A44D00006B26000073
      2F000077300000773200007831000079320000793400007A3400007A3400007A
      3500007B3500007E3500007D3500007D3700007D3700007D3700007D3700007D
      3700007D3500007D3500007B3500007A3500007A3400007A3400007934000079
      32000077310000752E0000742D0000722D0000732E00006E290000642000008A
      4400FD380200FA360600F8370600F8350600F8330600F7340600F6320600F733
      0600C1120000EE653000FFC1F70000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000053000035814100E6FFFF0095C9B2000047
      0000005B000083C67D00E4FFFF00E6FFFF00E3FFFF00EFFFFF009ED5AE000049
      00000052000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF4BFF00ECD7A300C3440000BD460800C1490800C1490800C1490900C149
      0900C14A0A00C14A0A00C24A0A00C14A0A00C24A0A00C2490A00C24B0A00C449
      0800B7550E008FA76100A6FBE00098FEE60099FCE30099FCE4009AFDE4009BFD
      E3009AFDE3009BFDE3009AFAE00099F8DC009BF9DF009FFFE80096E0BC009074
      3900C5410100C0480900B4390000BC673D00F1FFFF00F1F9F300DCFCDC00FF4F
      FF0000000000000000000000000000000000F443F90045CF800000762D000079
      3200007C3600007C370000803800007F3900007F39000080390000803B000080
      3C0000803B0000813B0000833B0000833B0000833B0000833B0000833B000083
      3B0000833B0000823B0000803B0000803C0000803B0000803900007F3900007F
      390000803800007D3500007934000076320000763000006E2900007833002183
      3200FF370300FD400800FB3E0700FB3E0700FB3C0700FA3B0700FB3A0700FC3B
      0700EA230100E53B0C00FF8FBF0000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000053000036814300E7FFFF009FD5C0000050
      00000056000067B86D00DFFFFF00BEF0D900C2F0D600C7F5E1007EBF8700004A
      00000054000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF56FF00FBFFEC00C7440000C34A0700C0480900C14A0900C24A0900C34B
      0A00C34C0A00C34C0A00C34C0A00C34D0A00C34C0A00C44C0A00C44D0A00C44D
      0A00C54A0800BA500A00AA7534009C8D52009591540096905300969053009590
      5300968F5300948C4C009FC3A200D2FDF000AADCC3009B915600AA5E1C00BF46
      0600C1480800C0470800B93E0000CB703A00F1FBFF00F2F2F200E2F8E200FF4C
      FF0000000000000000000000000000000000FF08FF0080A3AF00008F3E000080
      3900007F3A0000803B0000833B0000833B0000833D0000843E0000843E000084
      3E0000843E0000853E0000873E0000863F000086410000864100008641000086
      400000863E0000863E0000843E0000843E0000843E0000843E0000833D000083
      3B0000833B0000813C0000803A00007E37000078320000743000008E49009669
      1F00FF3F0600FE440800FE420900FE420800FE420800FE410800FD410800FD42
      0800F02C0300EA3A0600FF87B50000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000530000307F3800D9FFFE00E1FFFF004DAB
      66000066000064B66A00CBF4EC00238C2900117E0E00158413000C720B000051
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFB1FF00E4AC6E00CB520900C54F0B00C44D0B00C44E0B00C54E
      0B00C54E0B00C54F0C00C54F0C00C54F0C00C6500C00C7520C00C7510C00C751
      0C00C7510C00C9500A00CA4B0500C84B0400C84B0500C84B0500C84B0500C84A
      0400C7480400C5430000D19A8300FFFFFF00E5D3CB00C7551500C6470300C54D
      0A00C34C0A00C0470700CB520900D6895500F3FCFF00EEEEEE00EBFFEB00FF4B
      FF000000000000000000000000000000000000000000FDBFFF002CB67000008F
      4500008B450000864000008740000088420000884300008A4300008A4300008A
      440000894400008B4500008B4400008B4400008B4400008B4400008B4400008B
      4400008B4400008B440000894500008A4400008A4300008A4300008943000088
      420000874100008640000087410000853F0000823B00008D47004D813200F250
      0900FF4A0900FF4B0A00FF4A0A00FF490A00FF470A00FF460900FF450900FF46
      0900F9350400F4430700FF88B50000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000025F000036923200B3F1EA00F1FF
      FF00BBEACA0088C59100A3EAE30000621400004E000000530000005500000058
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCDFF00F7FFD800D8773100CE530700CB550E00C6500B00C750
      0C00C7500C00C8520C00C8520C00C9520C00C9520C00C9530D00C9530D00C953
      0D00C9530D00CA530D00CA530D00C9530D00C9530D00C9530D00C9530D00C952
      0C00C9510B00C74C0400D28A6100FCFFFF00E9DCD400C9632700C54B0500C44F
      0B00C54F0C00C54C0500D76D2B00E5C6B000F6FAFD00EEEEEE00F6FFF600FF56
      FF000000000000000000000000000000000000000000FF24FF009EFDC20008A0
      5D0000944A0000934B0000874200008B4400008B4400008D4600008E4600008E
      4800008E4800008E4700008F4700008F4700008F4700008F4700008F4700008F
      4700008F4700008E4700008E4700008E4800008E4700008D4600008B4500008B
      4500008B440000894400008A4200008B460000914B0002964C00C0611900FF4C
      0800FF4D0A00FF4D0A00FF4D0A00FF4B0A00FF4B0A00FF4B0900FF490900FF49
      0A00FD3B0400FC591400FF94C80000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005200000056
      0000005800000058000000580000005800000058000000580000005800000058
      00000058000000590000005800000058000000560000004600004BA86100EAFF
      FF00E1FFFB00E1F8EF00AAEDE100066717000054000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF1EFF00F4E1C500D9712400D7621600D5621800CC57
      1000CB540D00CC560E00CC570F00CC560F00CC580F00CD581000CD581000CD58
      1000CD581000CE581000CE581000CE581000CE581000CD581000CD581000CD58
      0F00CD580F00CB520600D0794100F5F7F900F8F5F300D6956C00C94B0100CE57
      0D00CF580D00D5611300EFCEB800F2F4F600FDFDFE00E9FAE900FF6AFF000000
      0000000000000000000000000000000000000000000000000000FFE6FF00A5ED
      C90003A35E0000A2570001A0550000944C000090490000914B0000944B000094
      4B0000944B0000944C0000934D0000954D0000954D0000954D0000954D000095
      4D0000944D0000944C0000944B0000944B0000944B0000934B0000904A000090
      490000904A0000914A00009A5000009D550023934700B26D1E00FF500800FF52
      0B00FF530C00FF530C00FF520C00FF520C00FF520C00FF500A00FF4D0B00FF4B
      0900FF460400FF8C4400FFC4FF0000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C080000550000004E00001B9637000267
      0A00005700000059000000590000005900000059000000590000005900000059
      0000005700000056000000550000005800000059000000570000005D00006AD2
      9700DAFFFD00DCFFFF00A3E8DD000A6A17000055000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF1EFF00EAE28500DC762C00DD6C2000DF6F
      2700D15E1500CD590D00CE580D00CF5A1000CF5B1000D05B1100D05A1100CF5B
      1000D05B1200D15B1200D15B1200D15B1200D15B1000CF5B1100D05A1100D05B
      1100D05B1100CF560B00CE672400ECD9CB00FFFFFF00EAD5CA00D5793500D76A
      1F00D7641B00E7B07F00F6FEF700F5F7F700FEFEFE00ECFFEC00000000000000
      000000000000000000000000000000000000000000000000000000000000FFE7
      FF007DE3AF000BAC640000A8590001AB6000019D540000964F0000964B000097
      4C0000974F000097500000975000009850000098500000985000009850000098
      5000009750000097500000974F0000974E0000984D0000954D0000934C000096
      4F00009D540000A45B0000A65E0000A05500B8701E00FF5A0B00FF580C00FF58
      0D00FF580D00FF580D00FF570D00FF570D00FF560C00FF550C00FF520B00FF4C
      0600FF5F1200FFDA9100FF28FF0000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000054000000520000B2DEC2002F8C
      0F00157F00001880000018800000188000001880000018800000188000001880
      0000187F0000005E00000280000016810000198100001B810000006B000062BD
      7F00DBFFFF00D6FFFD0098E7D30003640A000056000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF20FF00F6E6CE00E0803D00E276
      2D00EC8D4800E5843800D8682000D35E1300D35E1300D5611400D5611400D561
      1600D5611500D5611500D5611500D5611500D5611600D5611400D5611400D35F
      1400D35F1400D35F1200D1560800DD956300FAFCFB00FFFFFF00F6ACEC00EDF4
      C100EDE8BA00F6C7F900FAB5FD00FFFFFF00F4FFF400F8DFF800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFC6FF00CAE8E10032CA7E0000AB5F0001B96A0004B56B0003AA610001A1
      5900009A5000009B5200009B5200009B5200009B5200009B5200009B5200009B
      5200009B5200009B5200009B5200009C520000995200009E540001A95E0002B1
      650000B3670000AD64004B904000C8701B00FF5E0B00FF610F00FF610F00FF61
      0F00FF610F00FF600F00FF5E0F00FF5E0F00FF5D0E00FF5C0D00FF600E00FF5C
      0300FFBC7900FFE4FA000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196E070000540000A3D4AB00E3FFFF00F2FF
      FF00F9FFFF00F9FFFF00F9FFFF00F9FFFF00F9FFFF00F9FFFF00F9FFFF00FCFF
      FF00E6FFFF0000743400FFFFFF00F9FFFF00F7FFFF00E7FFFF00F8FFFF00F1FF
      FF00D6FFFF00EEFFFF007CC0920000490000005B000000580000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF1DFF00F8FFD800E9A8
      7200E0641400E9874000EFA25700EA974E00DC6B2500D6601500D7631900D864
      1900D8641A00D8641A00D8641A00D8641A00D8641A00D7641900D7641900D663
      1900D6611500DA651C00E88C4400EB974700EAC09500F3FFEE00FF74FF00FF28
      FF00FF36FF0000000000FBC9FB00F2FFF200F7D0F700FE00FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF2AFF00EA80F30088F0B50000AA5E0000AC5C0005C378000ECB
      860004AE6400009D5300009F5500009F5700009F5700009F5700009F5700009F
      5700009F5600009F5500009F5500009E550002A85F0008C1760000BB6E0000B5
      69000FA356009A833000FA691400FF651000FF681300FF681300FF681300FF67
      1200FF661100FF651100FF630F00FF600D00FF600D00FF6E1600FF6A0800FF94
      3F00FFD0F100000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C080000530000047200009AE9B9005EBD
      8E0053B4870057B5880056B5880056B5880056B5880056B5880056B5880058B7
      8B0055AC7B000067050055BA9C004CB1830087D4B200D5FFF900CBFDF200CBFD
      F400D3FFFF00DFFFFF0008730000005100000058000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF1CFF00FFFF
      FF00F8FFDB00EAAA7100E5824200EA8E4B00F1B06600E3823A00DA671D00DC6B
      2000DC6B2000DC6B2100DC6B2100DC6B2100DC6B2000DB6B2000DB6A2000DB68
      1D00E0762E00F0A85D00EB914B00E6814200E8A26900F2E9B900F7FFFD00F4FF
      F400F5FFF500F4FFF400F8FFF800FDD6FD00FF78FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF2FFF00FFBCFF00F3FFF80096E6C1002CBB7D000BB7
      70001DD8990003AD650000A45A0001A65C0001A65C0001A65C0001A65C0001A6
      5C0001A65C0001A65C0001A45A0001A2580011CE8A0000BA71003FAA5F009B97
      4900FF711800FF6C1300FF6F1700FF711800FF711900FF711800FF711800FF6F
      1800FF6F1700FF6E1600FF792300FF883200FF933F00FF8E3B00FFC58F00FFFF
      FD00FF74FF00000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C080000550000005F000058C466001B88
      3C00117B3500147C3600147C3600147C3600147C3600147C3600147C3600147D
      370016792F00006000000D7B3F0006752D0052B27400D8FFFD00CEFEF200CDFE
      F300D3FFFF00D1FBF200005F0000005D00000059000000580000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF2F
      FF00FF41FF00FED7FE00F6E0C300E9976100EC974F00ED9D5A00DC6A2000DE6F
      2600DE6F2700DF6F2600DF6F2600DF6F2700DF6F2600DE6F2500DE6E2600DD69
      2200E7894300F1AC6100E4814300F4DBBA00FEC8FD00FE3CFF00FF4AFF00FE4A
      FE00FF4AFF00FF4AFF00FE51FE00FF07FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF36FF00FFC2FF0087DFB5000AB6
      6F0039E2A90005B36C0001A65C0002A85E0002A85E0002A85E0002A85E0002A8
      5E0002A85E0002A85E0001A75E0001A65C0016D3930000BF780094A75C00FFA9
      6500FF9F5700FF7C2400FF781C00FF7A1D00FF7A1D00FF7A1D00FF791D00FF78
      1E00FF761B00FF883500FFA45B00FFA15400FFB97300FFF2B400FFE1FF00FF48
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000520000006900000055
      0000005100000052000000520000005200000052000000520000005200000052
      0000005300000057000000510000004B000034953B00DAFFFF00D0FFFB00D5FF
      FE00C8FCF700358F4600036405007AC776000370000000560000005800000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF07FF00F5E6AC00EA995C00F1B16900EC985600E0712B00E175
      3000E2763000E2763000E2763000E2763000E2753000E1753000E1752E00E172
      2C00E6823E00F1B26B00E98E4B00F3CEA300FFADFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FE89FF00A5F8C90012C280003EDD
      A80022CD900001AC610001AC600001AC610001AC610001AC610001AC610001AC
      610001AC610001AC610001AC610000AB5E000EBE7A0021DB9E0016B67000A3A9
      6200FFB97B00FF964A00FF832900FF852E00FF852E00FF852E00FF852D00FF84
      2D00FF802500FFAD6700FFAC6A00FFDBB200FFAAFF00FF25FF00000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000560000005400000058
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000052000039984100DAFFFF00D0FFFE00D7FF
      FF00BDE9D00004520000206F1F00DAFFFF0096D7B70000510000005800000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF2AFF00FAF5E600EB9D5A00F1B16A00F0A96400E5813E00E3793500E57B
      3700E57B3700E57C3800E57C3800E57C3700E57A3700E47B3700E47A3700E479
      3400E4793600EB985200F2B56E00EA944E00FAE5E100FF1BFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0FFE30030C489003ADBA5002ED3
      9A0000AF630002AF620002AF630002AF630002AF630002AF630002AF630002AF
      630002AF630002AF630002AF630001AE620001AE630026D193001ED396003EBA
      7400FFB77900FF954700FF8C3700FF8D3900FF8D3900FF8D3900FF8D3900FF8C
      3900FF893300FFA55C00FFB87E00FFD99E00FF59FF0000000000000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000560000005D0000005B
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000570000004D0000399A4300E3FFFF00D6FFFF00D9FF
      FF0098DFCD0023904E0068B99400CDFFFF002F8E4C0000510000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FE8AF700EFBA7400F1B36A00F2B67200E57A3900E77F3C00E7833F00E783
      4000E7823F00E7833F00E7833F00E7833F00E7824000E7833F00E7823E00E781
      3F00E67F3D00E57A3700F1AD6700F1AD6200EEAE7800FDFFEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFCDFF004AD796003BD69C004FDDAE0000B4
      670002B2640003B4660004B4660004B3660004B3660004B4660004B4660004B3
      660004B3660003B4660003B4660003B4660002B0650000B1650044E0AA0018D3
      950078A35100FF964600FF994A00FF994A00FF994A00FF994A00FF994A00FF98
      4B00FF984800FF924100FFB77900FFBB8100FFFFC200FF57FF00000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005800000058
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005900000050000033943A008DD59B0089D29400CEFF
      FF00DBFFFF00DBFFFF00D8FFFF0068C883000048000000580000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF75
      FF00F8FECD00ED9D5400F5CB8600ED985400E8844100E9884400E9894500E98A
      4500E9894500E9894500E9894500E9894500E9894500E9894500E9884400E988
      4400E9864300E8834000EB8C4800F4C47C00ED9E5700F4EAA500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE9DE4001FCF820069E9C30015C6820000B4
      640004B6680004B6680003B7680003B8680003B8690003B86A0003B8690003B8
      680003B8680004B6680004B6680004B6680004B5680000B2630020CA89004DE6
      B5001ABB6F00DEA45700FFA25700FFA45800FFA45800FFA45800FFA25800FFA1
      5600FFA05500FF9E5200FFA65C00FFC18B00FFDB9300FF2DF100000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AA6E00E2FFFF00D1FFFD00D3FFFE00D3FFFE00D3FF
      FE00D2FFFE00DDFFFF00B0E4B800196C08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000570000247F1F00C2EED100BAF0DA00ACD7A800FFFF
      FF00FDFFFF00FFFFFF00D7FCFA00257824000052000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF07FF00FFD9
      FF00EEAC5F00F6C78700F1B16D00EC914A00EC904A00EC934B00ED954C00ED94
      4D00ED954E00ED964D00ED964D00ED964E00ED954D00ED944C00EC944C00EC93
      4B00EC914A00EB904A00EA8B4600EFA66100F5C17800EFB46900FCB9EE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF55FF0058EF9C0055E2B20060E2B60000B3630003BA
      6C0004BA6C0004BA6C0004BA6C0004BB6D0004BA6E0004BA6E0004BA6E0004BA
      6C0004BA6C0004BA6C0004BA6C0003BA6C0003B96C0003B86B0002BA6F0038DB
      A4003FDAA2005DB66900FFAF6700FFB06800FFB06800FFB06800FFB06800FFB0
      6600FFAE6500FFAC6400FFA95F00FFBB7D00FFCF9A00FFFFBA00000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000051000047AB6F00E2FFFF00D2FFFF00D4FFFF00D3FFFF00D3FF
      FF00D3FFFF00DEFFFF00B1E5BA001A6D08000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000050000014844300E5FFFF00E1FFFF0080CFAF00004D
      0000005300000058000000530000005400000058000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF4BFF00FBFF
      E400EF9E5100F8D79800EFA25900EE994E00EE9B5000EE9D5100EE9D5100EE9D
      5200EE9F5300EEA05300EEA05300EEA05300EE9E5200EE9D5100EE9D5200EE9B
      5000EE9B5000EE9A4F00EE974E00ED994F00F6C88300F2B66500F8CFB800FF31
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB2BEA0023E18A0086ECCE0026D0910000B9690004BB
      6E0005BC6E0004BC6E0004BC6E0004BE6E0004BE6E0004BE6E0004BE6E0004BE
      6E0004BD6E0004BC6E0005BC6E0004BB6E0004BC6E0004BB6E0001BA6A0021C9
      87005EEBBF0010C27900FFB56E00FFB77100FFB77100FFB77100FFB77100FFB6
      7000FFB66F00FFB56E00FFB46A00FFB77100FFD4A600FFD39400FFBDFF00FF35
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      270000540000005100004FAB6300EDFFFF00D8FEFA00D9FEFA00D9FEFA00D9FE
      FA00D9FEFA00E1FFFF00B1E6B300176D06000055000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000550000258B3F00F5FFFF00E5FFFF0095D2B100004D
      0000005400000056000000560000005800000057000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FE8AFE00F5D5
      9600F7C68100F6C98D00EFA15200F1A35700F1A35700F1A45800F1A45800F1A4
      5800F1A55800F1A65800F1A55800F1A65800F1A55800F1A45800F1A45800F1A4
      5700F1A35700F0A45700F0A35400EE9D4F00F4BB7200F5C88200F4D68400FE47
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCBFF00A4FFC9003FD79F0078EDC8000FC2770003BE6E0006C0
      700005C0700005C0700006C1700006C0700006C0700006C0700006C0700006C0
      700006C0700005C0700005C0700006C0700006BF700006BF6F0003BE6D0001C0
      710063E6BC002AD69A00B2BA7100FFBD7A00FFBD7A00FFBD7A00FFBD7A00FFBD
      7A00FFBA7A00FFBB7900FFBB7800FFB67100FFD2A000FFCC9500FFFFF400FF4E
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005500000052000015770D0053A14E00479D4E00459B4C00459B4C00459B
      4C00459B4C00459D4F00368E3000005F00000057000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000530000036609009BCE9500B2E3B400378F34000053
      0000005A00000058000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFF800F3B4
      7700FADEA300F5BF7A00F0A45500F1A85A00F0A85A00F0A85B00F0A75B00F0A9
      5B00F0A85B00F0A85C00F0A85C00F0A85B00F0A95B00F0A75B00F0A75B00F0A8
      5A00F1A85B00F0A75A00F0A45900F0A35700F1AE6500F6CF8F00F2CF7100FD26
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFB7FF006AE3AC0078E2BC0057E5B70006C3760005C0720007C1
      750006C1750006C3750008C5760008C4770008C4770008C4770008C4770008C4
      770008C5770006C3750006C2750007C1750007C1740006C0740005C0710000BE
      6A0056DEAE0051E9BA004DBB6F00FFC08200FFC08100FFC08100FFC08100FFC0
      8000FFBF8000FFBE7E00FFBE7F00FFBB7900FFCE9A00FFD8AC00FFFFD600FF4B
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      270000540000005C000000580000005100000050000000510000005100000051
      0000005100000050000000500000005700000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005500000051000000670200167C0900005800000058
      0000005700000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFFDF00F1B0
      6D00FCE9C300F2B76A00F0A85B00F0AB5E00F1AB5E00F1AB5F00F1AB5F00F1AD
      5F00F1AD5F00F1AD5F00F1AD5F00F1AD5F00F1AD5F00F1AD5F00F1AC5F00F1AB
      5E00F1AB5E00F0AA5D00F0AA5D00F0A85B00F1AD6100F8CF8900F4BB7300F9FF
      CA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFB5FF004BE4A60094F0D60048E1AF0005C77B000AC77C000AC8
      7D000BC97E000BC97F000CC980000CCA80000CCA80000CCA80000CCA80000CCA
      80000CC980000BC980000BC97D000AC77E000AC77C0009C77D0009C67B0000C2
      720053DEAC0084F4D60034BE7100FFC78B00FFC68B00FFC68B00FFC68B00FFC7
      8B00FFC68A00FFC38900FFC48600FFC08000FFD7A900FFDCB400FFFFE300FF4A
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      270000540000005A0000005A0000005800000058000000580000005800000058
      00000058000000580000005A0000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000580000005900000056000000540000005800000058
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFFD000F2AE
      6800FDE9C900F2B46600F1AC6000F1AD6100F2AE6200F1AE6200F1AF6200F1AF
      6300F2AF6300F2AF6300F2AF6300F2AF6300F1AF6300F1AF6200F1AF6200F1AE
      6200F2AE6200F1AE6200F1AD6000F1AD5F00F2B06300F7CE8A00F4BF7B00F6F6
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFB5FF004EE5AA0099F0D70057E5B5000ACC83000DCA82000DCC
      84000ECD85000ECD86000FCD85000ECE85000ECE85000FCE85000FCE85000ECE
      85000FCD85000ECD86000ECD85000DCD85000DCB82000DCB83000CCA810002C6
      7A005EE1B4009AF6E20035C07400FFCA9300FFC99200FFC99200FFC99200FFC9
      9200FFC89000FFC79100FFC78F00FFC48600FFDDBE00FFD5AB00FFFFF600FF55
      FF0000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000058000000580000005900000059000000590000005900000059
      0000005900000059000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFFE800F3B8
      7700FFEFD300F5BD7400F2B06200F3B46700F3B36600F3B36700F3B56700F3B4
      6700F3B46700F3B46700F3B46700F3B46700F3B46700F3B46700F3B36600F3B3
      6700F3B36600F3B36600F3B36500F2AF6300F2B46900F8D69700F5C38000FAFF
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFB7FF0063E6AF0092E5C60075ECC40012D18B0011D18B0012D3
      8D0012D28E0014D38E0013D38F0014D38F0014D38F0014D38F0014D38F0014D3
      8F0013D48F0014D28F0013D28E0012D38E0012D18B0012D08C0010D1890005CC
      82006DE6BF007CF2CF0048C77F00FFD09C00FFD09B00FFD09B00FFD09A00FFD0
      9B00FFCF9A00FFCE9900FFCD9700FFD09C00FFEBDA00FFEAB100FF6EFF000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFF000F3BA
      7700FEF1D400F6C98A00F2B36400F2B66900F2B66900F2B56A00F2B86900F2B7
      6A00F2B76B00F2B76B00F2B76B00F2B76B00F2B76A00F2B76900F2B76A00F2B5
      6A00F2B66900F2B56900F2B56800F2B36500F4B97200FADEAE00F4D27E00FC78
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCCFF009BFFCA0073E4BD00B5F6E6001FD5970012D3910017D5
      940017D5950018D7960018D7960017D7960018D7960018D7960018D7960017D7
      960018D7960018D6960017D5950016D5950016D5920015D3930013D390000BD1
      8C0095EFD50069ECC4009CCB8C00FFD2A400FFD1A400FFD2A400FFD2A300FFD2
      A100FFD2A100FFD09F00FFCF9C00FFE0BF00FFEBD800FFFFCC00000000000000
      000000000000000000000000000000000000AE6C5300004E00002C9B2700267B
      2700005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEDDFE00F5D1
      9400FBE5B900F9D7AB00F3B66700F4B96D00F4BA6E00F4BA6F00F4BB6E00F4BB
      6F00F4BB6F00F4BB6F00F4BB7000F4BB6F00F4BB6F00F4BB6E00F4BB6F00F4BA
      6F00F4BA6E00F4B96E00F4B96E00F2B66700F6C88900FCDFB500F6DB8700FD39
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D32BE80050F8AF00D6FBEF0050E5B30015D998001EDA
      9C0020DC9D0020DD9D0021DD9F0021DD9F0022DD9F0022DD9F0022DD9F0022DD
      9F0021DD9E0020DD9D0020DC9D001FDA9D001DDB9B001CDA9A0015D8960038E0
      A800CBFCF40037DBA300FFD4A300FFD7AE00FFD8AC00FFD7AC00FFD6AD00FFD7
      AC00FFD6AA00FFD4A600FFDFBD00FFF2E400FFF4CA00FFDFF100000000000000
      000000000000000000000000000000000000AF6E5400004F00002C9A2700267B
      2700005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF40FF00F9FA
      C500F6C88800FDEFD500F4BE7400F3BA6F00F3BC7100F4BC7300F4BF7200F4BE
      7200F4BE7300F4BE7300F4BE7300F4BE7300F4BE7300F4BF7200F4BE7200F4BC
      7300F3BC7100F3BC7200F3BC6F00F3B66700FADFB300F9D9AB00F7EE9E00FE52
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F653FA004CFDAA00C6F6E700ADF5E20017DC9B0027DE
      A1002ADFA3002CE1A2002FE0A40030E0A60030E0A60030E0A60030E0A60030E0
      A6002FE0A5002CE1A2002ADFA30028DEA20026DFA20023DDA0001EDC9E0078EC
      C600BCF8E8004BDA9D00FFD8AF00FFDBB000FFDCB100FFDCB200FFDAB100FFD9
      AF00FFD9B000FFE3C300FFF5EA00FFF0D200FFC8E00000000000000000000000
      000000000000000000000000000000000000AE6D5300004E00002C9A2700267B
      2700005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000095E1B200006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF2EFF00FEF6
      FF00F4C17900FEF0DC00F9D8A800F4C07500F5C17600F4C27700F4C27700F4C2
      7800F4C27800F4C27800F4C27800F4C27800F4C27800F4C27800F4C37700F5C1
      7600F5C17700F5C07500F4BF7200F6CA8A00FDEAD100F6D48800FBA6D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFA8DB005EF0BA00E8FCF50068EABE0036E2
      A70040E5AB0040E5AC0043E5AB0042E5AD0042E5AD0042E5AD0042E5AD0042E5
      AD0043E5AC0041E5AC0040E5AC003FE4AB003DE3AB0032E1A50064EABF00DFFD
      F70066E5B800C1EECD00FFEFDE00FFFAD500FFF9C100FFF7BC00FFF5CA00FFEC
      D800FFF3E900FFFAF600FFEFD400FFFFDD00FF73FF0000000000000000000000
      000000000000000000000000000000000000B06E5300004E00002C9B2700267B
      2700005500000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000057
      00000056000093E2B100006F0000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC5
      FF00F9ECB200F8D49C00FEF8E700F7D08E00F4C07300F5C37B00F5C47B00F5C4
      7B00F5C47B00F5C67C00F5C57C00F5C57B00F5C47B00F5C47B00F5C47C00F4C3
      7B00F4C37A00F4C17700F5C47800FDEDD100FAD9A700F5E39000FF22FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF21FF005AFBB500A5F3D700F3FDFC0055E8
      B70044E6AE004CE8B3004FE8B3004FE8B3004FE8B3004FE8B3004FE8B3004FE8
      B3004FE8B3004EE8B3004CE8B2004BE7B10042E6AC0043E5AE00DAFBF300B1F5
      E50065E0A700F9ECC100FFFFEB00FF6BFF00FF21F900FF20F700FF6AFF00FFFF
      FF00FFE9C600FFF7CB00FFCAF000FF47FF000000000000000000000000000000
      000000000000000000000000000000000000BA725700005300002E9A25002879
      2300004F00000057000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000056
      0000005600000056000000560000005600000056000000560000005600000055
      000000530000A7D5B800006E0000005400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEE3FB00F6DB9700FBE6C800FDFBF000F7D29400F5C67A00F6C98000F6C9
      8200F6C98100F6CA8100F6CA8100F6CA8100F6CA8100F6C98200F6CA8000F6C7
      7F00F6C67C00F6CA8100FDECCB00FCEFD500F6CA9000FCFFE300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDFFEF005BE6B800BFF8E800FFFF
      FF006BEBBE005AEAB9005CEAB9005FEABB005FEABB0061EABA0061EABB005FEA
      BB005FEABB005EEABA005BEAB80051E8B4007AEEC900E4FBF600CDF8E9005BE9
      B800DAF1EF00FFA4FF00FFFFE800FFFFD600FFFFC400FFFFC200FFFFCD00FFFF
      DC00FFF4F900FFB4FF00FF7DFF00000000000000000000000000000000000000
      000000000000000000000000000000000000CE806300004F0000308C34002F85
      4000005A02000062070000630800006308000063080000630800006308000063
      0800006308000063080000630800006308000063080000630800006308000063
      0800006308000063080000630800006308000063080000630800006308000063
      0800006308000063080000630800006308000063080000630800006308000063
      0800006308000063080000630800006308000063080000630800006308000062
      0700005F0100DAE6DE0000610400005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDCBE800F6D28C00FCE8C900FEF8EB00FADEB200F6C67500F6CA
      7F00F6CB8200F6CC8300F6CC8300F6CC8300F6CC8300F6CB8200F6CA8000F6C8
      7900F8D49800FDF0D900FEF5E400F6C98A00FCFFD200FF94FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF95FF00D1FFE9006BE9C100B3F5
      E100FFFFFF00B2F6E2006DEDC4005EEBBC0062EBBE0065ECC10066ECC00065EC
      BF0062EBBD005BEBB9006FEEC500A1F2D800FDFFFF00CDF9ED006BECC000BDFF
      E200FF1AFF0000000000FF55FF00FF4AFE00FF4AFE00FF4AFE00FF49FE00FF4D
      FE00FF2EFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D08D6F00005700001375230084DC
      C40092D9A1008DD8A7008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6
      AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6
      AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6
      AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6
      AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008ED6AB008DD6
      A90091DBB800F1FFEC0000620000005300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF74FF00FCFFDC00F7DBA100FAE2BF00FFF9F100FCF0DD00FBE0
      B300F8D59300F7D39200F7D28F00F7D18D00F7D39100F7D29100F9DDA900FCEC
      D100FEF7EB00FCEACA00F7CE9500FAFFCD00FE6BFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF6BFF00D4FFEA0077F3
      C4008CEECF00EAFEFB00E3FBF500DAFBF100B4F7E7008EF1D30083F0CC008EF1
      D100B2F6E300D7FBF100E4FCF400F4FDFA0092F1D50074EEC500DAFFEE00FF19
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DA9E7F00095E0000004F00000054
      0000006400000065000000650000006500000065000000650000006500000065
      0000006500000065000000650000006500000065000000650000006500000065
      0000006500000065000000650000006500000065000000650000006500000065
      0000006500000065000000650000006500000065000000650000006500000065
      0000006500000065000000650000006500000065000000650000006500000065
      000000620000004B000000570000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF47FF00FDD5ED00F8E9A700F8DA9C00FDF2E200FDF6
      E900FEFAEE00FEF5E700FDEDD400FDEBC900FEF4E300FEF8EC00FEF7EC00FDF1
      E100F9DFAD00F7DB9200FCFFDE00FE95FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF47FF00F1DC
      F80091FFCF0075F6C400B0FCE100DAFAEF00DEFBF400E0FBF300DFFBF300E1FB
      F400DDFBF100DEFBF300ADFFE10076F7C4009DFFD500E4FFF200FF19FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6A17E0005560000005700000058
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005A00000059000000580000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEC3FF00FCE8E100F7ED9F00F9EC
      A300FBEDB600FAE4C000FAE5C400FAE5C500FAE4C100FAE0B700FAEEAA00F7EC
      9E00FAE1CF00FEC2FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF21FF00F6BCFA00B1C4DD0085FFCA0083FFCB0091FFD50081FFCD0091FF
      D6007FFFCA0083FFC900B69FE000EDC6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7A37B0000530000005700000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF29FF00FF43FF00FD31
      EF00FC68DA00FAF4C700FAE5C400FAE5C500FAE5C500FBFFD200FD21EC00FE41
      FC00FF29FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF04FF00FF47FF00F43DFA00EB3CF600E13BF100E93C
      F500F43EFB00FF4AFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FECECB00B77A6100A6725700A974
      5900A9745900A9745900A9745900A9745900A9745900A9745900A9745900A974
      5900A9745900A9745900A9745900A9745900A9745900A9745900A9745900A974
      5900A9745900A9745900A9745900A9745900A9745900A9745900A9745900A974
      5900A9745900A9745900A9745900A9745900A9745900A9745900A9745900A974
      5900A9745900A9745900A9745900A9745900A9745900A9745900A9745900A974
      5900A9745900A9745900A9745900A97458000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFC00FFFFFFFC0003FFFFF80000000
      0000000000000000FFFE0000FFFFFF80000FFFFF000000000000000000000000
      FFE000000FFFFE000001FFFF000000000000000000000000FFC000000FFFF000
      0000FFFF000000000000000000000000FF00000003FFE00000003FFF00000000
      0000000000000000FF00000003FFE00000003FFF000000000000000000000000
      FE00000001FFC00000001FFF000000000000000000000000FC00000000FF8000
      00000FFF000000000000000000000000F8000000007F0000000000FF00000000
      0000000000000000F0000000007F00000000003F000000000000000000000000
      F0000000003F00000000000F000000000000000000000000F0000000003F0000
      0000000F000000000000000000000000F0000000003F00000000000700000000
      0000000000000000F0000000003F000000000003000000000000000000000000
      F0000000003F000000000001000000000000000000000000F0000000000F0000
      00000001000000000000000000000000F0000000000F00000000000100000000
      0000000000000000F0000000000F000000000001000000000000000000000000
      F8000000000F800000000001000000000000000000000000F8000000000F8000
      00000001000000000000000000000000FC000000001FC0000000000100000000
      0000000000000000FE000000003FE00000000001000000000000000000000000
      FF000000003FF00000000003000000000000000000000000FF800000043FF800
      00000007000000000000000000000000FFC00000007FFC000000000700000000
      0000000000000000FFE0000000FFFF000000000F000000000000000000000000
      FFF800007FFFFF000000003F000000000000000000000000FFF000003FFFFF00
      0000007F000000000000000000000000FFF000003FFFFE000000003F00000000
      0000000000000000FFE000003FFFFE000000003F000000000000000000000000
      FFC000001FFFFC000000003F000000000000000000000000FFC000000FFFFC00
      0000000F000000000000000000000000FFC000000FFFF8000000000F00000000
      0000000000000000FFC000000FFFF8000000000F000000000000000000000000
      FFC000000FFFF8000000000F000000000000000000000000FFC000000FFFF800
      0000000F000000000000000000000000FFC000000FFFF8000000001F00000000
      0000000000000000FFC000000FFFF8000000003F000000000000000000000000
      FFC000000FFFFC000000003F000000000000000000000000FFC000000FFFFC00
      0000007F000000000000000000000000FFC000001FFFFE000000007F00000000
      0000000000000000FFE000001FFFFE00000000FF000000000000000000000000
      FFF000003FFFFF00000001FF000000000000000000000000FFF800003FFFFF00
      000407FF000000000000000000000000FFF800007FFFFF80000FFFFF00000000
      0000000000000000FFFC0000FFFFFFC0001FFFFF000000000000000000000000
      FFFF0003FFFFFFF000FFFFFF000000000000000000000000FFFF8007FFFFFFFC
      03FFFFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited imageITEM: TImageList
    Left = 400
    Top = 30
  end
  inherited ConsultaAux: TIBQuery
    Left = 1752
    Top = 656
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
    Top = 16
  end
  object DTSPedidos: TDataSource
    DataSet = Pedidos
    OnDataChange = DTSPedidosDataChange
    Left = 1784
    Top = 720
  end
  object Pedidos: TIBQuery
    Tag = 1
    Database = FBird.DBErp
    Transaction = IBTra
    AfterClose = PedidosAfterClose
    AfterOpen = PedidosAfterOpen
    AfterScroll = PedidosAfterScroll
    BeforeOpen = PedidosBeforeOpen
    OnCalcFields = PedidosCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID  ,PK.IDPK,PK.IDEP,PK.DEEP,'
      '         PK.CDPV,PK.DEPV,PK.DTPV,'
      '         PK.CDNF,PK.DTNF,PK.DTSA,'
      '         PK.IDCD,PK.DECD,PK.RZCD,PK.FIN_VCRD,'
      '         PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.QTDE,PK.QTRL,'
      
        '         PK.PDSC,PK.VDSC,PK.TCDE,PK.D_TCDE,PK.VTSP,PK.VNF ,PK.VT' +
        'FA,'
      
        '         PK.STPD,PK.STCO,PK.TPCO,PK.RECO  ,PK.DECO,PK.DEPG,PK.ST' +
        'FI,'
      '         PK.VIPI,PK.VST,'
      
        '         PK.IDCT,PK.DECT,PK.MFRT,PK.D_MFRT,PK.VFRT,PK.PSBR,PK.PS' +
        'LQ,'
      '         PK.LOG_PRN_CDEV,PK.LOG_PRN_DEEV,PK.LOG_PRN_QTEV,'
      '         PK.INFADCAD'
      'FROM     VW_PED_VEN_CAB AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDCD = :IDCD'
      'ORDER BY DTCA DESC')
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
    object PedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      ProviderFlags = []
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
    object PedidosCDPV: TIntegerField
      FieldName = 'CDPV'
      Origin = '"VW_PED_VEN_CAB"."CDPV"'
    end
    object PedidosDEPV: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPV'
      Origin = '"VW_PED_VEN_CAB"."DEPV"'
      Size = 30
    end
    object PedidosDTPV: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTPV'
      Origin = '"VW_PED_VEN_CAB"."DTPV"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
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
      DisplayFormat = 'dd/mm/yy'
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
    object PedidosDTSA: TDateTimeField
      DisplayLabel = 'Entrega'
      FieldName = 'DTSA'
      Origin = '"VW_PED_VEN_CAB"."DTSA"'
      DisplayFormat = 'dd.mm hh:mm'
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
    object PedidosSTCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB"."STCO"'
      Size = 60
    end
    object PedidosTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB"."TPCO"'
    end
    object PedidosDECO: TIBStringField
      DisplayLabel = 'Prazo'
      FieldKind = fkInternalCalc
      FieldName = 'DECO'
      Origin = '"VW_PED_VEN_CAB_004"."DECO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 74
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
    object PedidosSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'STFI'
      Origin = '"VW_PED_VEN_CAB"."STFI"'
      Size = 60
    end
    object PedidosSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB"."STPD"'
      Size = 60
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
    object PedidosLOG_PRN_DEEV: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'LOG_PRN_DEEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_DEEV"'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object PedidosLOG_PRN_QTEV: TSmallintField
      FieldName = 'LOG_PRN_QTEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_QTEV"'
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
    Database = FBird.DBErp
    Transaction = IBTra
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
    Database = FBird.DBErp
    Transaction = IBTra
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
    Database = FBird.DBErp
    Transaction = IBTra
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
    Database = FBird.DBErp
    Transaction = IBTra
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
  object SQLConsulta: TIBSQL
    Database = FBird.DBErp
    Transaction = IBTra
    Left = 1784
    Top = 624
  end
  object FC: TIBQuery
    Database = FBird.DBErp
    Transaction = IBTra
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
  object SQLEdicao: TIBSQL
    Database = FBird.DBErp
    Transaction = IBTra
    Left = 1784
    Top = 656
  end
end
