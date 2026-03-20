inherited frmcad_cli_inf_new: Tfrmcad_cli_inf_new
  Left = -8
  Top = -8
  HelpType = htKeyword
  HelpKeyword = '3'
  ActiveControl = DBGPedidos
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
    Top = 78
    Width = 1920
    Height = 920
    inherited PaintBox: TPaintBox
      Width = 1920
      Height = 920
    end
    object pnlpri: TPanel
      Left = 0
      Top = 0
      Width = 1920
      Height = 920
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object GBFinanceiro: TGroupBox
        Left = 0
        Top = 400
        Width = 1920
        Height = 520
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
          Height = 499
          ActivePage = TSFC
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
              Height = 472
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
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = 'T'#237'tulos: 0'
              end
              object DBGFBTITULO: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 90
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITULO'
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
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_PEN'
                SummaryFooterFormat = 'Abertos: 0'
              end
              object DBGFBSTFI: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 100
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'STFI'
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_VEN'
                SummaryFooterFormat = 'Vencidos: 0'
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
              object DBGFBFIN_VEN: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_VEN'
              end
              object DBGFBAPI_ST: TdxDBGridColumn
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
                DisableEditor = True
                Width = 110
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_DTCA'
              end
              object DBGFBAPI_DTED: TdxDBGridColumn
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
                Width = 80
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DECV'
              end
              object DBGFBDECR: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 160
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DECR'
              end
              object DBGFBDEEP: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 150
                BandIndex = 7
                RowIndex = 0
                FieldName = 'DEEP'
              end
            end
            object PNLFBINFADCAD: TPanel
              Left = 0
              Top = 472
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
              Height = 472
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
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = 'T'#237'tulos: 0'
              end
              object DBGFCTITULO: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 90
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITULO'
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
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_PEN'
                SummaryFooterFormat = 'Abertos: 0'
              end
              object DBGFCSTFI: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 100
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'STFI'
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_VEN'
                SummaryFooterFormat = 'Vencidos: 0'
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
              object DBGFCFIN_VEN: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_VEN'
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
              Top = 472
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
        Height = 400
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object PNLCliente: TPanel
          Left = 0
          Top = 0
          Width = 1920
          Height = 62
          Cursor = crHandPoint
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Segoe Print'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object PNLCliente_CRD: TPanel
            Left = 0
            Top = 0
            Width = 1102
            Height = 62
            Align = alLeft
            Color = clHighlightText
            TabOrder = 0
            object Shape8: TShape
              Left = 5
              Top = 3
              Width = 125
              Height = 27
              Brush.Color = 16577773
              Pen.Color = clBtnShadow
            end
            object Label4: TLabel
              Left = 10
              Top = 8
              Width = 93
              Height = 14
              Caption = 'Limite de Cr'#233'dito'
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Shape7: TShape
              Left = 133
              Top = 3
              Width = 130
              Height = 27
              Pen.Color = clBtnShadow
            end
            object Shape1: TShape
              Left = 5
              Top = 30
              Width = 125
              Height = 27
              Brush.Color = 16577773
              Pen.Color = clBtnShadow
            end
            object Label1: TLabel
              Left = 10
              Top = 35
              Width = 86
              Height = 14
              Caption = 'Saldo Dispon'#237'vel'
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Shape2: TShape
              Left = 133
              Top = 30
              Width = 130
              Height = 27
              Pen.Color = clBtnShadow
            end
            object Shape3: TShape
              Left = 479
              Top = 3
              Width = 130
              Height = 27
              Brush.Color = 16577773
              Pen.Color = clBtnShadow
            end
            object Label2: TLabel
              Left = 479
              Top = 8
              Width = 130
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Ticket M'#233'dio'
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Shape4: TShape
              Left = 479
              Top = 30
              Width = 130
              Height = 27
              Pen.Color = clBtnShadow
            end
            object Shape5: TShape
              Left = 266
              Top = 3
              Width = 210
              Height = 27
              Brush.Color = 16577773
              Pen.Color = clBtnShadow
            end
            object Label3: TLabel
              Left = 266
              Top = 8
              Width = 210
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pedidos em aberto'
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Shape6: TShape
              Left = 266
              Top = 30
              Width = 210
              Height = 27
              Pen.Color = clBtnShadow
            end
            object Shape9: TShape
              Left = 612
              Top = 3
              Width = 240
              Height = 27
              Brush.Color = 16577773
              Pen.Color = clBtnShadow
            end
            object LAQPFB: TLabel
              Left = 612
              Top = 8
              Width = 240
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Banc'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Shape10: TShape
              Left = 612
              Top = 30
              Width = 240
              Height = 27
              Pen.Color = clBtnShadow
            end
            object Shape11: TShape
              Left = 855
              Top = 3
              Width = 240
              Height = 27
              Brush.Color = 16577773
              Pen.Color = clBtnShadow
            end
            object LAQPFC: TLabel
              Left = 855
              Top = 8
              Width = 240
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Carteira'
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Shape12: TShape
              Left = 855
              Top = 30
              Width = 240
              Height = 27
              Pen.Color = clBtnShadow
            end
            object CEVCRD: TdxCurrencyEdit
              Left = 135
              Top = 5
              Width = 126
              Color = 14789952
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
              Style.HotTrack = True
              Style.Shadow = True
              TabOrder = 0
              Alignment = taRightJustify
              AutoSize = False
              ReadOnly = False
              OnValidate = CEVCRDValidate
              DisplayFormat = 'R$ ,##,0.00'
              UseThousandSeparator = True
              Height = 23
              StoredValues = 65
            end
            object DBSCRD: TdxDBEdit
              Left = 134
              Top = 33
              Width = 126
              Cursor = crHandPoint
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowFrame
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparence = ebtNone
              Style.Edges = []
              Style.HotTrack = False
              Style.Shadow = False
              TabOrder = 1
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'SCRD'
              DataSource = DTSPedidos
              ReadOnly = True
              Height = 23
              StoredValues = 65
            end
            object DBPED_TKT_TCDE: TdxDBEdit
              Left = 479
              Top = 32
              Width = 130
              Cursor = crHandPoint
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = 14723640
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparence = ebtNone
              Style.Edges = []
              Style.HotTrack = False
              Style.Shadow = False
              TabOrder = 2
              Alignment = taCenter
              AutoSize = False
              DataField = 'PED_TKT_TCDE'
              DataSource = DTSPedidos
              ReadOnly = True
              Height = 23
              StoredValues = 65
            end
            object DBPED_PEN_TCDE: TdxDBEdit
              Left = 266
              Top = 32
              Width = 210
              Cursor = crHandPoint
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = 14723640
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparence = ebtNone
              Style.Edges = []
              Style.HotTrack = False
              Style.Shadow = False
              TabOrder = 3
              Alignment = taCenter
              AutoSize = False
              DataField = 'C_PED_PEN_TCDE'
              DataSource = DTSPedidos
              ReadOnly = True
              Height = 23
              StoredValues = 65
            end
            object DBBAN_PAG_PERC: TdxDBEdit
              Left = 612
              Top = 32
              Width = 240
              Cursor = crHandPoint
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowFrame
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparence = ebtNone
              Style.Edges = []
              Style.HotTrack = False
              Style.Shadow = False
              TabOrder = 4
              Alignment = taCenter
              AutoSize = False
              DataField = 'C_BAN_PAG_PERC'
              DataSource = DTSPedidos
              ReadOnly = True
              Height = 23
              StoredValues = 65
            end
            object DBCAR_PAG_PERC: TdxDBEdit
              Left = 855
              Top = 32
              Width = 240
              Cursor = crHandPoint
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowFrame
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.ButtonStyle = btsDefault
              Style.ButtonTransparence = ebtNone
              Style.Edges = []
              Style.HotTrack = False
              Style.Shadow = False
              TabOrder = 5
              Alignment = taCenter
              AutoSize = False
              DataField = 'C_CAR_PAG_PERC'
              DataSource = DTSPedidos
              ReadOnly = True
              Height = 23
              StoredValues = 65
            end
          end
          object PNLCliente_ID: TPanel
            Left = 1102
            Top = 0
            Width = 818
            Height = 62
            Align = alClient
            Color = clHighlightText
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Segoe Print'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object PNLCliente_NO: TPanel
              Left = 1
              Top = 1
              Width = 816
              Height = 28
              Align = alTop
              BevelOuter = bvNone
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -27
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
            end
            object PNLCliente_RZ: TPanel
              Left = 1
              Top = 29
              Width = 816
              Height = 28
              Align = alTop
              BevelOuter = bvNone
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object PCPedidos: TdxPageControl
          Left = 0
          Top = 62
          Width = 1920
          Height = 338
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
          TabOrder = 1
          TabPosition = dxtpBottom
          TabWidth = 0
          object TSPedidos: TdxTabSheet
            Caption = 'Pedidos'
            object DBGPedidos: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1920
              Height = 311
              Bands = <
                item
                  Caption = 'Pedidos'
                end
                item
                  Caption = 'Cobran'#231'a'
                end
                item
                  Caption = 'Vendedores'
                end
                item
                  Caption = 'Nota Fiscal'
                end
                item
                  Caption = 'Log'#237'stica'
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
              DataSource = DTSPedidos
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
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
              object DBGPedidosDEPK: TdxDBGridMaskColumn
                Alignment = taLeftJustify
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DEPK'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGPedidosDTCA: TdxDBGridDateColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTCA'
              end
              object DBGPedidosDTSA: TdxDBGridDateColumn
                Alignment = taLeftJustify
                DisableEditor = True
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
              object DBGPedidosTCDE: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HeaderAlignment = taRightJustify
                Width = 106
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TCDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'TCDE'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGPedidosVDSC: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 99
                BandIndex = 0
                RowIndex = 0
                FieldName = 'VDSC'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDSC'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGPedidosSTPD: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 84
                BandIndex = 0
                RowIndex = 0
                FieldName = 'STPD'
              end
              object DBGPedidosDEST: TdxDBGridMaskColumn
                Color = clBtnFace
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 72
                BandIndex = 1
                RowIndex = 0
                FieldName = 'DEST'
              end
              object DBGPedidosD_STCO: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 96
                BandIndex = 1
                RowIndex = 0
                FieldName = 'D_STCO'
              end
              object DBGPedidosD_MFRT: TdxDBGridColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 53
                BandIndex = 1
                RowIndex = 0
                FieldName = 'D_MFRT'
              end
              object DBGPedidosVFRT: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VFRT'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VFRT'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGPedidosDECV: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 80
                BandIndex = 2
                RowIndex = 0
                FieldName = 'DECV'
              end
              object DBGPedidosDECR: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 130
                BandIndex = 2
                RowIndex = 0
                FieldName = 'DECR'
              end
              object DBGPedidosCDNF: TdxDBGridColumn
                Alignment = taRightJustify
                Color = clBtnFace
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 3
                RowIndex = 0
                FieldName = 'CDNF'
              end
              object DBGPedidosDTNF: TdxDBGridColumn
                Color = clBtnFace
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 110
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTNF'
              end
              object DBGPedidosVNF: TdxDBGridMaskColumn
                Color = clBtnFace
                HeaderAlignment = taRightJustify
                Width = 105
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VNF'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VNF'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGPedidosVIPI: TdxDBGridCurrencyColumn
                Alignment = taRightJustify
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 3
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
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 3
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
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 160
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DECT'
              end
              object DBGPedidosPSBR: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 4
                RowIndex = 0
                FieldName = 'PSBR'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PSBR'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGPedidosPSLQ: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 4
                RowIndex = 0
                FieldName = 'PSLQ'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PSLQ'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
            end
            object PNLINFADCAD: TPanel
              Left = 0
              Top = 311
              Width = 1920
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
                Width = 1916
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
                DataField = 'INFADPED'
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
              Width = 1914
              Height = 308
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
              Color = 15131619
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
    Height = 78
    BtnWidth = 100
    BtnHeight = 72
    inherited SpeedbarSection5: TSpeedbarSection
      Caption = 'Menu'
    end
    inherited siVAL: TSpeedItem [4]
      SectionName = 'Menu'
    end
    inherited siSAIR: TSpeedItem [5]
      ImageIndex = 2
      Spacing = 0
      Left = 203
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
    object SIFAT: TSpeedItem
      BtnCaption = 'Faturar'
      Cursor = crHandPoint
      Hint = 'Autorizar Faturamento'
      ImageIndex = 0
      Spacing = 0
      Left = 3
      Top = 3
      Visible = True
      OnClick = SIFATClick
      SectionName = 'Menu'
    end
    object SIEXP: TSpeedItem
      BtnCaption = 'Separar'
      Cursor = crHandPoint
      Hint = 'Autorizar separa'#231#227'o dos produtos'
      ImageIndex = 1
      Spacing = 0
      Left = 103
      Top = 3
      Visible = True
      OnClick = SIEXPClick
      SectionName = 'Menu'
    end
  end
  inherited Consulta: TIBQuery
    Left = 1304
    Top = 608
  end
  inherited IBTra: TIBTransaction
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    Left = 1304
    Top = 576
  end
  inherited ibSP: TIBStoredProc
    Left = 1336
    Top = 576
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
      000000000000000000000000000000000000FCFEFF00EAF7FF00D2EDFF00B8E4
      FF0092D6FF0072CCFF0062C9FF0053B4E8004AA4D60056ACDD0068B5E1008AC6
      E600B3D9EF00D0E7F500EBF4F900FCFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F300F2F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEFD00BABCCA00C4C5CD00C2C2CC00C1C1
      CA00C0C1CA00C0C1CA00C0C1C900C2C1CB00C4CCDF00C5D2E400C6CEE200C4CF
      E200C6CEE100C5D0E200C5CEE100C6CCE100C5CBDE00C5CCE100C6CCE100C6C8
      DC00C5C7D600C6C8D200C6C8D000C4C6CE00C3C4CC00C2C3CD00C1C2CB00BBBB
      C800E1E1E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6F5FF00A8DFFF0078CEFF004FBFFF0036B5FF0032B4
      FF003DB8FF0046BFFE0041A8E2003E9ED30041A2D9003EA1D800399ED7002F9A
      D5002393D3002897D30043A3D90070B8E100A4D2EC00E7F3F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100FBFCFD00FBFCFC00E6E5
      E400E4E3E300FBFBFC00FCFDFD00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000066668D000000420000004500000044000002
      4C0000004A000000490000004900031658000F4B9400164E98001B4B9700164A
      9600184B9700134C950013499400174895001747930016489200164791001746
      8D0013488800164A85001949840011427B000A387100052F6B00002463000011
      58001E296600757A950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFF0085D2FF004EBEFF0043BAFF0043BBFF0049BDFF0050C0FF0052C0
      FF0053C5FF0045A9DE0042A0D50044A3D90044A4DA0044A4DA0044A4DA0045A4
      DA0046A5DA0043A4D9003DA0D800369DD700359DD70041A2D7007EC0E400FDFD
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FBFCFD00908A86004D423A00453A
      3200453A32004C4038008B847F00F8F9F900F4F4F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE008685A500000050000016660000045E003E4784007C82
      A400757EA300737B9D0075769E0062729D003B74B0003B71AB00346CAB00366C
      A900356CA9003569A700366BA900346CA500356FA6003269A5003168A500326B
      A700326AA8003169A800316BA900366FAC003A75B1003C77B3003A78B3003572
      B10019458800000C5F00847C9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFF00A9DF
      FF0040B9FF003DB8FF004DBEFF004FBFFF0050C0FF0050BFFF0050C0FF0050C3
      FF0046A9DF00419FD40044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0043A4DA0044A4DA0044A4DA0044A4DA0043A3D90040A1D9002F99D500329A
      D500A8D3EC00FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F2F200F8F8F800554A43004D423B004B403800493D
      3400483C33004B4038004E433C0051463F00F0F1F100F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B7D10003025B0000126300000C620057588D00DBDDD100E1DF
      D500D8D6CC00D6CFC800D5D1C20092A2B1005588BE003F73AC002D65A8003469
      A8003468A8003268A6003469A8003269A500326AA5003167A6003266A3003168
      A5003065A2002F66A3002F66A4003067A5003066A1002E66A4002E67A300326C
      A7003671AB002D66A900001C6000828292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3F4FF0061C5FF0036B6
      FF004ABEFF0051C0FF0050C0FF0050C0FF004FBFFF004FBFFF0050C2FE0046AB
      E000429FD40044A4D90044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0045A4DA003EA1
      D8002795D4005BADDC00E1F0F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00726A630050453E004C413900D1C9C200FDFF
      FF00FCFFFF00D4CDC6004C41390051463F00675D5700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADAECB000000580000106400262A7600C3C9CA00DFDCD300C1C3
      C500C1C1C200BCBBBD00BCBAB300879AB0006B97CB003269A8003468A900366B
      AA00366BA9003468A800346BAA003468A600346AA8003369A700336AA6003368
      A5003268A5003167A4003166A2003268A5003066A4003065A1002F66A4003065
      A3002F66A5003874AF00205592003D4365000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7EAFF004CBDFF003EB9FF0051C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF004FBFFF0051C3FF0047ABE20041A0
      D40044A4D90044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0045A4D900309AD5003FA1D700C7E3F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400DBDBD90044383100473C3400F0EAE40099BFE100598F
      BF005A8FBF0093BBDE00F7F2ED00463B3300463B3300D0CECC00F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0B0CB0000005800000A6400464A8200D9D8D500CECFCE00C5C6
      C700C5C3C500BEBFBE00C1BCB600899AAF006F99CD003069AA003668AA00356A
      A800346AAA003369A800346AA8003267A7003469A8003269A600306BA4003168
      A4002F66A3003066A3003066A3003166A3002F67A4002F64A1003067A3003068
      A4002E65A3003066A4002962A2004F5E7D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B9E4FF003CB9FF0047BCFF0051C0FF0050C0
      FF0050C0FF0050C0FF004FC0FF0050BFFF0053C8FF0045A7DF0042A0D40043A3
      D90044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0045A4DA003B9FD7002E99D400BDDCF00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9FA00A49F9B004A3F3800796F6600D5EAFD005C91BF006D9C
      C6006D9CC6005D91C000CEE5FA0080766D004B3F38009E9A9500FBFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB2CC0000005C00000A6700474B8600D7D6D300CFCFCC00C5C6
      C500C3C3C300BDBEBE00BEBAB6008A9CB0007099CE00316BAC003569AB00356C
      AA00336EAB00366AA800366BAA003568A700346BAA003368A700356AA7003269
      A6003467A5003267A4003166A3003167A4003267A4003269A6003165A2003266
      A3003065A3003068A600235F9F00526280000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8E4FF001EAEFF004FBEFF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050BFFF0051C2FF0044A9DF00419FD30044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0042A2D9000C88CE00BCDCEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9FAFB009C969200493E3600968B8300B0CFEA006596C2006D9C
      C6006D9CC6006597C300A8C9E7009D938B004C413900827B7600FDFDFE00FFFF
      FF00F9FAFB00F4F5F50000000000EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB1CC0000005E00000F6900464A8700D4D6D100CFCFCE00C6C6
      C700C3C1C100BEBDBE00BDBAB7008B9DB2007299CD00316BAC003469AA00346E
      AB00336DAB00336AA900356AAA003368A700366BAA003368A7003369A8003169
      A800316BA5003167A4003066A3003068A5003068A500306AA7003267A3002F66
      A3002E65A2003268A5002461A0004F6180000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6E9FF003CB8FF004FBFFF0050C0FF0050C0FF0050C0FF0050C0
      FF0050BFFF0050C0FF0050C2FE0045ABE20041A0D50044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0043A3D9002D99D500C7E2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F900AEA9A6004A3F3800685E5500ECFBFF00578DBD006B9A
      C5006B9AC500588DBE00E9F9FF006C615900554B440051474000493E36006B62
      5C00A09A9600D3D2D000FFFFFF00FEFFFF00F8F9F900F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB1CD0000005E00000E6900464A8900D6D6D000CFCFCC00C6C6
      C700C3C1C100BEBEBE00BDBAB7008B9DB2007299CD00316BAC003569A900346C
      AA00326BAA003569A900376BA9003368A7003569A8003468A7003268A6003468
      A8003168A5003167A5003167A4003067A4003068A5003068A5003266A2003066
      A2002F65A2003068A600245F9F004F6180000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2F4FF0049BCFF0048BCFF0050C0FF0050C0FF0050C0FF0050C0FF004FC0
      FF0050BFFF0052C6FF0045A9DF0041A1D50043A3D90044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA003A9FD7003FA1D800E1F0
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200EBEBEA0043383000493E3600C6BEB700D0E7FC006A9C
      C900689BC800CBE4F900D0C9C100493E3600574D46004D433A00493E36004C41
      39004C413900483D36004C41390079716B00ADA8A500E1E0DF00FFFFFF00FCFD
      FD00F7F7F800F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB2CE0000046200000E6A00464A8900D5D6D000CFCFCC00C6C6
      C700C3C1C100BEBEBE00BDBAB7008A9DB3007199CD00316CAC00366CAA003670
      AE00366EAD00336BA900366DAC003569A800356BAA00346AA9003569A800366A
      A800356AA900336AA9003369A500346AA9003268A6003168A5003367A4003267
      A3003065A3003068A500245F9F004F6182000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FF005EC3FF003FB9FF0051C0FF0050C0FF0050C0FF0050C0FF004FBFFF0050C0
      FF0050C2FF0045A9DF00429FD40044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0045A4DA00319AD60059AD
      DC00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFE00948E8A0050463E00473C3400988F8700E7E1
      DB00E7E1DB009D948C00463A3300574D460050453D00FFFFFF00E2DDD900AEA6
      9D00756A61004C4038004A3F37004C4139004B413900483C3400534840008780
      7B00BBB7B500EFEEEE00FFFFFF00FAFBFC00F5F6F600F1F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB3CF000004610000126A00464A8900D6D5D000CFCFCD00C6C6
      C600C3C1C100BDBEBE00BFBAB600889CB2007099CD00316AAC00356CAA00356F
      AC00366FAD00336CA900326CAB003569A800356BAA003369A900346AA900346A
      A9003269A8003369A800336CA500336CA700336BA6003068A5003268A5002F67
      A3003066A3003068A600245F9F004F6182000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6DE
      FF0035B5FF0050C0FF0050C0FF0050C0FF0050C0FF004FBFFF004FC0FF0051C1
      FD0047AAE00042A0D50044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4
      DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0044A4DA0045A5DA002795
      D300A6D2EB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00463B3300584E47004C413A00493D
      3600483D36004C413A00584E4700534841008B817900A2BBD4004473A30084A4
      C400BFD2E400EFF1F400D8D1CA009F958D00665A5100493D35004B4039004C41
      39004B403800473C34006157500096908B00C9C6C400F9FAFA00FFFFFF00F9FA
      FA00F4F4F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4B8D2000009660000136D00464C8B00D6D5D200CFCFCE00C6C6
      C600C3C1C100BEBEBE00BDBAB6008A9CAF00719ACE00336CAC00366CAC00366F
      AB00366FAE00346DAB00336DAB00366EAB00386FAC00376CAB00366BAA00366D
      AC003369A8003469A8003469A700346CA800346AA7003367A4003369A6003267
      A5003167A4003068A700245E9E004F6185000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9FDFF003EB8
      FF004BBEFF0050C0FF0050C0FF0050C0FF0050C0FF004FBFFF0051C3FE0046A9
      DE00419FD30044A3D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2
      D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2
      D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2D70044A2
      D70044A2D70044A2D70044A2D70044A2D80044A4DA0044A4DA0044A4DA003EA1
      D800329BD400FCFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F5F500D2D0CF004A3F3700544A4300807973005349
      4200544A420080787300594F48004D423B00C3BBB4006D93B9004C77A3004B77
      A3004673A0003E6E9D005883AD0092AFCC00CFDEED00F0EFEE00CBC2BB009287
      7F00584C4300473B33004B4139004B4139004A3F3800473C340070686200A29D
      9900D7D5D400FFFFFF00F3F4F400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F4F200BA997800CCB8
      9500FFFFFE008A94C100000F690000146F00464E8B00D5D5D200CFCFCE00C6C6
      C600C3C1C100BEBEBE00BDBAB6008B9CB000719ACD00336EAC00366BAC003671
      AD00376FAD00356EAC00356EAC00356DAC003470AF00366DAC00376AA900386C
      AB00336AA900336AA9003268A700336BAA003469A600316BA7003369A6003068
      A5003068A3003068A700245E9C00506185000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000081D1FF003DB8
      FF0051C0FF0050C0FF0050C0FF0050C0FF0050BEFF004FCEFF0041B5F6003DAA
      EC003EADF0003EADF0003EADF0003EADF0003EADF0003EADF0003EADF0003EAD
      F0003EADF0003EADF0003EADF0003EADF0003EADF0003EADF0003EADF0003EAD
      F0003EADF0003EADF0003EADF0003EADF0003EADF0003EADF0003EADF0003EAD
      F0003EADF0003EADF0003EADF0003FAAE90043A4D90044A4DA0044A4DA0045A4
      DA003099D3007CBEE40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFB009E9895004B40390070686200FFFFFF00FFFF
      FF00FFFFFF00F9FAFA00463B3300483D3400F0EDEB003F6F9E00517BA500527C
      A600527CA600527CA6004F7AA4004A76A20045729F003E6E9E00668DB400A1BA
      D400DEE9F400EDEAE600BCB3AB007B736C00574D4600584E47004E443C004B40
      3900483D360044383000DCDBD900F3F3F4000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F1EB009F7537009364
      0E00C2AB6A006F76AE00001182000013700046518900D6D6D100CFCFCC00C6C6
      C600C3C1C100BEBEBE00BDBAB6008B9CB100719BCD00326DAD00386BAC003771
      AE003970AE003770AE00366FAD00356EAC003570AD00346EAB00376EAC00386F
      AB00376BAA00366AA9003469A800356AA8003669A800346AA9003369A6003369
      A6003268A5003368A800255F9F004F6188000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FF004DBDFF004BBE
      FF0050C0FF0050C0FF0050C0FF004FBEFF0047CDFF004F848D0053656000546C
      6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C
      6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C
      6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C6B00546C
      6B00546C6B00536C6B00596C6600527A890041A4DC0044A3D90044A4DA0044A4
      DA0040A1D80041A1D800E6F2F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF006C635D004B403900A5A09C00F9F9FA000000
      0000F7F8F800B4B0AD004B40390063564E00D3E1EE0044729F00527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA5004E79A4004975
      A10042709E004674A3006D93B900FFFFFF005E544C0051463F0089827C006F67
      6100473C34003A2E2500C5C2C000F5F5F6000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F6F300A6824200A17B
      2600A3781200826C26004247590000127B00424C9300D6D6D000CFCFCC00C6C3
      C700C3C2C300BEBEBE00BDBAB6008B9BB000719BD0003470AE003A6EAD003A73
      B1003A73B1003871AF003871AF00366FAD003971B000366FAD003670AE00336F
      AD00386BAB00356AA9003569A800366DAC00346AAA00336AAA003369A800316C
      A8003369A500366BA9002661A1004F6189000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5DEFF0043BBFF004FC0
      FF0050C0FF0050C0FF004FC0FF004EBEF80046BDFB005F5B40006D3700006B3D
      04006B3D03006A3D02006A3D02006A3D02006A3D02006A3D02006A3D02006A3D
      02006A3D02006A3D02006A3D02006A3D02006A3D02006A3D02006A3D02006A3D
      02006A3D02006A3D02006A3D02006A3D02006A3D03006B3D03006B3D03006B3D
      03006B3D03006D4006006B3400006253370042A5DC0043A3DB0044A4DA0044A4
      DA0043A4DA00359CD600A4D2EB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F7F7F700473C3400473C3400DAD8D700F4F4F4000000
      0000FDFEFE00827B75004B4039009A91880099B4D0004A76A200527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600527CA600507BA5003F6F9F00EBE8E500483C340044383000F8F8F900FFFF
      FF00F4F4F400DFDEDD00F8F8F80000000000CFC29700D1C29600D0C29600D1C2
      9600D1C29600D0C29600D0C19700D2C49800D1C39700D3C29700A6803100A67F
      2D00A7812E00B0832400AC8533004C4556003E4B9600D1D5D900CFCECC00C5C4
      C500C4C3C300BDBEBF00BEB9B5008B9CB100719BCE00336EAE00396DAD003A72
      B0003871AF003770AE003770AE00366FAD003770AE00366FAD00356EAC00346F
      AD00366AAA00356AAA00356AA900366AA900346BAA003469A8003369A900346B
      A5003269A500346AA9002661A0004F6187000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFDFF0075CCFF0043BAFF0050C0
      FF0050C0FF0050C0FF004AC0FF0065BAD200D0AB6000C1A56100C2A35E00C1A4
      5F00C2A56100C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB
      6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C6AB
      6A00C6AB6A00C6AB6A00C6AB6A00C6AB6A00C5A96700C1A45F00C1A45F00C1A4
      5F00C1A45E00D3B56F005C3803005D5D430042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA00369DD6006FB8E100FBFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F700C3C1BE004A3F370050463E00FEFFFF00000000000000
      0000FFFFFF0052473F004B403800D4CCC5005D86B0004F79A400527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600527CA6004D78A3007498BC00BCB3AB004B403900645A5300FFFFFF000000
      0000F1F1F100F3F3F3000000000000000000A77B2500A67A2400A57A2400A67A
      2400A67A2400A57A2400A57A2500A77B2600A47A2200A87D2800AA843000AC85
      3300AA863500AC873500B88D3200B1842700877B5F00CDD0D100D0D5E100C2C4
      C500C0C4C000BCBEBF00BDB9B5008A9CAF00719CD0003571B0003A6FAE003B74
      B0003972B1003770AE003A73B1003770AE003871AF003770AE00366FAD003770
      AC00366CAE00366CAC00366BAA00356DAA00376BAA00356BAA00366BA9003668
      A7003368A700326AA8002761A1004F6289000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7F6FF004BBDFF004BBDFF0050C0
      FF0050C0FF0050C0FF004BC0FF0066BBCF00E0A84C00CDAD6600CDAE6600CDAE
      6800CDAF6700BA933C00BD933C00BD933C00BD933C00BD933C00BD933C00BD93
      3C00BD933C00BD933C00BD943C00BD943C00BD933C00BD933C00BD933C00BD93
      3C00BD933C00BD933C00BD943C00BB913900C19C4A00CEAF6900CDAE6700CDAE
      6600CBAC6400E4C47900583400005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA003CA0D80042A1D700EBF3F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFCFC00928C87004B40390080787300FDFEFF0000000000F4F4
      F400DCDBDA00473C3400483B3300F0F2F4003F6F9E00527CA500527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600527CA6004774A100B0C6DC0082786F004B40390096908C00FAFBFC000000
      000000000000000000000000000000000000AE893800AF8A3800AE8A3800AE89
      3800AE893800AE893800AE8A3800AE8A3800AF883800AC8A3800AF8A3700AD88
      3700AF893700AF893700AC863800B0893500B8872400B28A3800C3B9A200CFD1
      D700C1C7C800B9BEBC00BEB9B3008B9CAF00729CCF003572B000396FB1003972
      B0003A73B1003871AF003871AF00356EAC003871AF003770AE00366FAD00376F
      AD00336EAD00356EAC00376BA900356CAC00366CAA00356AAA003368A800336A
      A9003468A900316AA9002864A1004D6389000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0EEFF0033B5FF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD000DDA84F00CBAD6500CCAC6500CDB0
      6C00C4A25500A0680000A46D0000A46D0000A46D0000A46D0000A46D0000A46D
      0000A46D0000A46D0000A26C0000A46C0000A46E0000A46D0000A46D0000A46D
      0000A46D0000A46D0000A46E0000A26A0000A7730B00CBAC6500CBAC6600CCAD
      6600CAAA6400E0C27600593400005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0043A3DA002895D300CFE7F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF005E544D004B403900B3AFAB00F7F8F80000000000F9F9
      FA00A8A39F004B40390071665E00C2D4E5004673A000527CA600527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600517BA50042709E00E8EFF7004F433A004A3F3700CAC8C500F5F6F6000000
      000000000000000000000000000000000000B38C3B00B28A3900B48C3900B38B
      3900B38B3900B38B3900B38B3900B38B3900B38A3900B48C3900B28B3900B48C
      3900B38B3A00B38C3900B38B3800B08B3C00B28B3B00AF842B00B1883100C0AF
      8400C3C1BB00BDC0CC00C0BCB8008A9AB000739BCF003771B1003A6FB2003A72
      B1003B74B2003770AE003972B0003770AE003972B0003770AE00366FAD003770
      AE00366FAD00366EAC00366FAB00366FAD00356CAB00356CAB00356CA900356A
      A900356AA800346AA8002962A3004E648C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2E3FF0033B5FF0051C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD000DDA84F00CBAD6500CBAC6600D0B4
      7300B3862E00A7720000AA770000AA770000AA770000AA770000AA770000AA77
      0000AA770000AA770000A8740900A9730200A9760000AA770000AA770000AA77
      0000AA770000AA770000AA770000AA770000A36D0000BF9A4A00D0B47200CAAB
      6400CAAA6400E0C27600593400005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0046A5DA002292D300B3DAEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200EAE9E900473C340045393100E9E8E800F2F2F30000000000FFFF
      FF00746C65004B403900ABA29A0088A7C7004B77A200527CA600527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600507BA5004B79A600E6DED800493E3600473C3400FAFBFC00F1F1F1000000
      000000000000000000000000000000000000B9903E00B78E3C00B68E3C00B68E
      3C00B68E3C00B68E3C00B68E3C00B68E3C00B68E3C00B68E3C00B68E3C00B68E
      3C00B68E3C00B68E3C00B78E3C00B68E3D00B78E3D00B78E3D00B58C3700B888
      3300B8934900B8A58000C0BEBB008BA0B800739DCE003773B0003A71B0003A74
      B2003D74B4003971AE003A73B1003972AE003972B0003871AF003871AF003770
      AE003770AE00366FAD00356EAB00356FAE00356FAD00346DAB00346BA900356A
      A900346AA8003569AC002964A6004F6490000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089D2FF003FBAFF0051C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD000DEA84F00CBAD6700D1B67500BF98
      4700A6700000A9760000AA770000AA770000AA770000AA770000AA770000AA77
      0000A67100009C630000DCC7A400B98E4900A26C0000AA770000AA770000AA77
      0000AA770000AA770000AA770000AA770000A9760000A36D0000CBAC6500CFB3
      7100CAAC6600E0C27600593400005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0045A4DA00309AD60089C4E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F8F800B7B4B0004B403800574D4600FFFFFF0000000000F1F1F100FAFB
      FC00493E36004A3F3700E1DAD4004977A500507AA500527CA600527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A6004B77A30085A5C500ACA39B004B40390070676100FFFFFF00000000000000
      000000000000000000000000000000000000BB934000B8904000B8913E00B891
      3F00B8913F00B8913F00B8913F00B8913F00B8913F00B8913F00B8913F00B891
      3F00B8913F00B8913F00B9903F00B9903E00B8903E00B9903E00B9914000B88D
      4200B6923700B6892500B8A578008BA1C100739CCE003670B1003B70B1003A74
      B0003972B1003973AE003971B1003A73AF003770AE003871AF00366FAD003871
      AF00356EAC00346DAB00356DAB00346DAB00356EAC00336CAA00336CA9003568
      A8003468A900376BAE002B66A700516590000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006AC7FF0047BDFF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD100DFA95100CBAB6600BA903A00A46D
      0000A9750000AA770000AA770000AA770000AA770000AA770000AA770000A670
      0000B5893500D8C08E00F2E8D500E0CFAB00AA782800A5700000A9760000AA77
      0000AA770000AA770000AA770000AA770000AA770000A8740000A66F0000C09C
      4C00CAAB6400E1C37800583400005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0044A4DA00389FD70067B2DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFE00857D78004B4039008D878200FBFCFD0000000000F5F5F500CFCC
      CA00493E37004F433B00FFFFFF006A91B8004271A10043719F004874A1004875
      A1004875A1004875A1004875A1004875A1004875A1004875A1004875A1004875
      A1003D6C9C00BDCFE1006C61570042372F00A39D9900F9FAFA00000000000000
      000000000000000000000000000000000000BC954400BB934200BB934100BB93
      4100BB934100BB934100BB934100BB934100BB934100BB934100BB934100BB93
      4100BB934100BB934100BB934100BB934100BB934100BC934200BE964400BA90
      3E00B18B3700C59A4400CCA246008997A60074A0D8003972B2003F73B4003E76
      B2003A7AB5003F7BB7003C78B3003771AF003B73B0003972B0003871AF003972
      B000366FAD00366FAD00356EAC003871AF00366FAD00356FAD00346EAC00356E
      AB00336BAA00346BA8002B65A600516492000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005AC2FF004BBEFF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BDD500DBA74A00AA791000A16B0000A977
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A16A
      0000D4BA8400E1CEAA00C4A05600DDC89900F9F5EC00B3852800A6700000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000A8740000A16A
      0000AE801C00E4C67F00583400005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0044A4DA003EA1D80054AADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF004F443D004A3F3800C0BDBA00F6F7F70000000000FAFBFB009B95
      900050453E00574E46007E767000BFB6AE00EFEBE700D9E6F200A0B8CF00ABC2
      DA00ABC2DA00ABC2DA00ABC2DA00ABC2DA00ABC2DA00ABC2DA00ABC2DA00ABC2
      DA00A2BCD600FFFFFF00A49F9A00A6A29E00EEEEEE00FFFFFF00FFFFFF00FFFF
      FF00FBFCFC00000000000000000000000000BF984600BE974300BE974400BE97
      4400BE974400BE974400BE974400BE974400BE974400BE974400BE974400BE97
      4400BE974400BE974400BE974400C0984500BE964400BF994400B88D3700BB9B
      5100D3BC7700DDC07800C8AD81008C9DB800769ED4003A72B1004173B0003F7C
      BA00294D940013246C003165A8003C78B6003872AF003972B0003871AF003770
      AE003871AF00366FAD00356EAC003770AE003770AE00356EAC00356CAB00326E
      AB00326BAA003669A7002C65A500516593000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052C0FF004EBEFF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0067BDD600D9A44600A8760900A9760000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A874
      0000A7740500A46F0000A06700008841000000000000C9A96900A46F0000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A873
      0000AB7B1200E4C68100583300005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0044A4DA0040A2D8004AA5D8000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F4
      F400DEDDDC00483D3500473D3500F2F3F300F1F1F20000000000FFFFFF00655C
      5600554B44004E433B004B4039004B403900493D350054473E00E0DCD800685D
      520071675C006F6559006F6559006F6559006F6559006F6559006F6559006F65
      59006F655900675F56006E6760006E68600067605800645D5500645D5500655D
      5500847E7800FBFCFC000000000000000000C59B4D00C3984B00C3984C00C398
      4C00C3984C00C3984C00C3984C00C3984C00C3984C00C3984C00C3984B00C398
      4B00C3984B00C3984B00C4984C00C1984700BD9C4600B9873A00CCA75600CFAE
      7100C8A35700B7B39E00BBBCC4008A9EB200759FD3003472B2003C77B6004174
      B20007135B00000557001B3680003F78B5003A73B1003A73B1003972B0003972
      B0003871AF003871AF003770AE003770AE003871AF00366FAD00366FAD00356E
      AC00366EAC00386EAB002B67A700526597000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051C0FF004EBEFF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0067BDD600DAA44800A9790B00A9760000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000AA77
      0000A5710000A6700800B2842C00EFE5CE00F0E7D400B9913E00A5700000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A873
      0000AC7D1400E5C68100583300005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0044A4DA003F9FD5004EAADE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F9
      F900A9A4A1004B403900675D5600FFFFFF00EFEFEF00F1F1F100F5F5F6004338
      2F004C413900C2BCB900A2999200685D5400483C34003F332B00CCCAC9004138
      2E00645C5400756E6700726B6400726B6400726B6400726B6400726B6400726B
      6400726B6400726B6400726B6400726B6400726B6400726B640076706800534B
      410070696100FEFFFF000000000000000000C69B4E00C89B4C00C89B4C00C99B
      4C00C99B4C00C99B4C00C89B4C00C89B4B00C99B4B00C99B4B00C89D4D00C89D
      4E00C89D4D00CA9D4D00C8A04F00C89B4D00D0984E00E9C57200E3C38E00BDB3
      A800BED1E100BFC3CA00BDB8B2008B9CB10074A0D3003672B3003E73B9003D6F
      AF0008308100002C88001D4A90003E78B4003972B0003972B0003C75B3003871
      AF003871AF003871AF00366FAD003A73B100366FAD00366FAD00356EAC00376D
      AC00346DAB003570AD002964A700516496000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005AC1FF004BBEFF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0067BDD600DAA44800A9790B00A9760000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A671
      0000A9771600E1CDAA00FDFBF500ECE0C500BC954800A46E0000A9750000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A873
      0000AC7D1400E5C68100583300005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0044A4DA0042A0D5003FA3DA0062C6FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFF000FFFF
      FF00766E68004B40390099949000FAFBFB0000000000F6F7F700C0BCB9004B40
      3800594E4500E1ECF70085A5C500CDDDEC00F2F2F000C5BCB400DBD9D6003B32
      2700B7B4B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00716B
      63006F696100FEFFFF000000000000000000C99F4F00CB9E4C00CC9E4D00CB9E
      4C00CB9E4C00CB9E4D00CC9F4C00CCA14D00CC9F4E00CC9E4D00CA9E5000CB9F
      5300CC9F5100CB9E4D00C8994900D0A75800E3CC8000D9C08900C7C2BE00C4CC
      D800C4C3C000BDBFBA00BDB9B3008B9DB20073A0D2003774B3004073B500447C
      BA00265FA900124C9E00356BAF003D76B3003A73B2003A72B0003871AF003A73
      B1003871AF003770AE003770AE003871AF003770AE00366FAD003770AE00346E
      AC00356EAC00376FAC002A64A600516599000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000068C7FF0047BDFF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0067BDD600DAA44800A9790B00A9760000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A169
      0000D0B67B00F6F0E100BB945800A66F07009F670000A7740000AA770000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A873
      0000AC7D1500E5C68100583300005D5C420042A6DF0043A3DB0044A4DA0044A4
      DA0041A0D40044A4DA0045BCFB0072CCFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FE004B403800493E3600CFCDCB00F5F5F50000000000FCFCFD008B8580004B40
      390090867E00A1BBD40042709E0045729F003F6F9F005F89B300DCE0E3003C31
      2600AFABA800FFFFFF00EBF2EC00FAF6F500FDF7F600F9F6F400F9F6F400FFFE
      FC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFFFF006E67
      60006F696100FEFFFF000000000000000000E1C48300E5C68000E5C68300E4C6
      8200E4C68200E4C68300E5C78200E6CA8400E6C98500E3C48100CEA25400CFA0
      5000CBA05100CD9D4A00D0A65400F9D68300D0B87E00C6C2BC00CDD4DD00C8C6
      C100C1C3C500BCBEBF00BDB9B2008E9DB400739ED1003875B6003E76B500407B
      B600447CB6004079B200407BB7003C74B2003D76B4003C75B3003B74B2003C75
      B3003A73B1003871AF003770AE003972B0003972B0003770AE003871AF003671
      AD003770AF00396FAC002C66A50051659A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088D2FF003FBAFF0051C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0067BED600D9A24500A6730600A6730000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA7700009F67
      0000D1B78200F3EAD900AC791D009F680000BA903B00A9770A00A8750000AA77
      0000AA770000AA770000AA770000AA770000AA770000AA770000AA770000A56F
      0000A9790E00E4C78000583300005D5C420042A6DF0043A3DB0044A4DA0042A1
      D50043A3D90051C1FF003EB9FF0091D7FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F5F500D1CE
      CD00493E36004A3F3800FBFCFC00F0F1F10000000000FFFFFF00595049004B40
      3800C9C1BA00678EB5004E79A400527CA600517BA5004171A000CED4DA003D33
      2700B3ACAA00EDFBF30022BE7C0037C48800FFFBFE00FDF8F700FFFCFB00B2AC
      A800B5B0AC00B6B1AC00B6B1AC00B6B1AC00B5B0AC00B0ABA500FFFFFF006E68
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF7F100D2A96100D19E
      4A00CDA45400E5C57200F5D98200A996780054599600CAD4D800D2D3CC00C6C5
      C700C3C3C400BEBCBE00BDB9B1008D9DB300729ED1003775B3003F75B5003E76
      B5003F78B6003F78B6003B74B2003A73B1003C75B3003A73B1003A73B1003972
      B0003A73B1003871AF003770AE003972B0003972B0003771AE00376EAE00356F
      AC00376FAF00396EAD002A67A50051659A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFE2FF0034B5FF0051C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0065BCD200DEA95200BE973F00A9761300A671
      0000A9760000AA770000AA770000AA770000AA770000AA770000AA770000A772
      0000A7750900E3D3B500F0E7D100EEE5CF00ECE0C700B0822600A6710000AA77
      0000AA770000AA770000AA770000AA770000AA770000A9760000A6710000AE7E
      1C00C09B4900E3C57B00583400005D5C420042A6DF0044A4DB00419FD50044A4
      DB004FC0FC0052C1FF0031B4FF00B8E4FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFB009A95
      91004B403900746C6600FFFFFF0000000000F3F3F300E6E6E500463A3300463A
      3200F1F0EF004271A000517BA500527CA600527CA6004573A100CFD5DB003D33
      2700B5ADAB00C7F1DE00E0F0E700B2E4CD0027C07F00FCF7F600FFFDFC00928D
      870099948E009A948F009A948F009A948F0099948F00918B8500FFFFFF006F68
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F5EC00D2A24F00D4A4
      4C00EBC77700BCAC8A005D678000032385003852A300D3D7D000D1CDCF00C6C6
      C600C4C1C200BDBDBE00BDB9B1008D9EB300729FD2003975B4004174B6004078
      B6003E78B6003C75B3003C75B3003C75B3003D76B4003B74B2003A73B1003C75
      B3003A73B1003972B0003871AF003972B0003871AF003871AF003872AF003670
      AE003870AE00396FAE002A68A50050659A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEECFF0033B4FF0050C0FF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD000DEA84F00CFB47300CCAF6A00B182
      1F00A5700000AA770000AA770000AA770000AA770000AA770000AA770000AA77
      0000A67100009E660000E4D3B700D0B48400A7741400A7730000A9760000AA77
      0000AA770000AA770000AA770000AA770000AA770000A36C0000BA923900D0B4
      7300CDB06D00E0C27600593400005D5C420042A6DF0042A2D80044A4DB004FBF
      FB0050C0FF0050BFFF0035B5FF00D1EEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00685E
      58004B403900A8A39F00F9F9FA0000000000F8F8F900B1ADAA004B403800685D
      5400CDDCEA004572A000527CA600527CA600527CA6004573A100CFD5DB003D33
      2700AFABA800FFFFFF00FFF8F700FFFBFE00B3E4CD00E9F2EB00FCF7F600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFBF800F0DDBF00F3E6
      C500FFF6D800939FC500001B8B0000278B00485F9F00D5D6D100D0CECF00C6C6
      C500C4C1C100BDBDBD00BCB8B1008B9EB40073A0D3003975B5003F75B600407A
      B7004079B7003F78B6003F78B6003E77B5003E77B5003C75B3003C75B3003B74
      B2003A73B1003A73B1003871AF003A73B1003972B0003871AF003871AF003770
      AE00386FAF003A72AF002A69A70050669E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6F5FF004ABDFF004BBDFF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD000DDA84F00CAAC6400CDAF6B00CCAF
      6B00AA781500A8740000AA770000AA770000AA770000AA770000AA770000AA77
      0000AA770000A6720000B68B3700AD7C1800A46F0000AA770000AA770000AA77
      0000AA770000AA770000AA770000AA770000A56D0000B2842600D1B57700CBAD
      6600C9AA6300E0C27600593501005D5C420040A5DD0042A2D9004FBFFB0050C1
      FF0050BFFF0049BDFF004FBEFF00EBF7FF000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F200F3F3F300483D
      3500473B3300DEDDDC00F3F4F40000000000FDFEFF007D7570004B4039009F95
      8D0092B0CC004A76A200527CA600527CA600527CA6004573A100CFD5DB003D33
      2700AFABA800FFFFFF00FFFAFB00FFF9F900FFF9F900FCF7F600FAF7F500F9F6
      F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0BDDE0000228700002E8A004860A200D4D7D100D2CFD000C6C6
      C500C4C2C300BDBEBF00BEB9B3008C9EB500749ED3003877B6003F76B6003F77
      B6003F79B7003D76B4003E77B5004079B7003E77B5003D76B4003C75B3003B74
      B2003972B0003B74B2003972B0003972B0003871AF003871AF003970AE003670
      AE00366FAE003B71B0002D6BA80051669E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFDFF0073CBFF0043BAFF0050C0
      FF0050C0FF0050C0FF004AC0FF0066BBD000DDA84F00CBAD6500CBAC6500CEB1
      6E00C19C4A00A36C0000A7730000A7730000A7730000A7730000A7730000A773
      0000A7730000A7730000A36D0000A56F0000A7730000A7730000A7730000A773
      0000A7730000A7730000A7730000A5700000A6720000CBAC6500CBAC6600CCAD
      6600C9AA6400E0C277005C2E00005D55370042A4DC0051C6FF004FC1FF0050BF
      FF0050C0FF0044BBFF0078CDFF00FCFEFF000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F700C1BEBC004A3F
      38004F443D00FFFFFF000000000000000000FFFFFF004F453D004A3F3800DAD2
      CA005782AD004F7AA400527CA600527CA600527CA6004573A100CFD5DB003D33
      2700AFABA800FFFFFF007FD7B000B6E5CE00FFFBFE00F9F6F400FAF7F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEBBDB0000258A00002D90004862A300D5D7D200D1CFD000C5C6
      C500C4C3C300BEBEC000BFBBB60090A1B300729FD3003C77B8004277B500427B
      B800427BB9003E77B500417AB8003C75B3004079B7003D76B4003E77B5003B74
      B2003D76B4003B74B2003972B0003D76B4003B74B2003A73B0003872B1003970
      AF003671B0003872AF00316AA8005166A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4DDFF0042BAFF004FC0
      FF0050C0FF0050C0FF004BC0FF0065BBD100DDA95000CBAC6600CBAC6600CBAE
      6700C9AA6300AB7A1D00AC7E1A00AC7E1B00AC7E1B00AC7E1B00AC7E1B00AC7E
      1B00AC7E1B00AC7E1B00AD7E1B00AC7E1B00AC7E1B00AC7E1B00AC7E1B00AC7E
      1B00AC7E1B00AC7E1B00AC7E1B00AA7A1700B3873000CBAD6700CBAC6600CBAC
      6600C9AB6600E4BA67004B574D0055777A004EC1F7004EC1FF0050BFFF0050C0
      FF004FC0FF0043BAFF00AADFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFD008E8883004B40
      3900837C7600FCFDFE0000000000F4F4F500D6D5D300483D35004A3E3500EAF1
      F700336599004975A1004E79A400517BA500527CA6004573A100CFD5DB003D33
      2700B8AEAD00A4E8CA0062CF9F0033C38500BBE6D100FFFAFC00FFFFFF004239
      2F004B4239004B4339004B4339004B4339004B4339003D342A00FFFFFF006F69
      61006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFBBDB0000248C00002D90004861A500D5D7D100D2CFD000C7C6
      C500C4C3C300BEBEC000BFBBB7008FA1B300719FD2003B76B7004278B500427A
      B700437AB8003E77B5003E77B5003C75B3004079B7003D76B4003D76B4003C75
      B3003B74B2003C75B3003A73B1003B74B2003A73B1003972AF003770AF003770
      AE003671B0003872AF00306AA8005166A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0F3FF004CBDFF004CBE
      FF0050C0FF0050C0FF0049C0FF006AB9CA00F0A63B00DCA95100DDA95100DDA9
      5100DDAA5200DBA95000DBAA5100DBAA5100DBAA5100DBAA5100DBAA5100DBAA
      5100DBAA5100DBAA5100DBAA5100DBAA5100DBAA5100DBAA5100DBAA5100DBAA
      5100DBAA5100DBAA5100DBAA5100DBA95000DCA95200DDAA5200DDA95100DDA9
      5100DAA95400FEAA340031A8EF004CC3FC004FC1FF004FBFFF0050C0FF0050C0
      FF004CBEFF004EBEFF00E6F5FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF005A5048004B40
      3800B6B2AF00F7F8F80000000000F9FAFA00A19B98004D423B0062595100EEEE
      ED00D9E4F0009FB9D300628BB3004271A00045729F003E6E9E00CED4DB003D33
      2700B0ACA800FFFFFF00FFFAFD00FFFAFC0023BF7D00E2F0E700FFF9F800FFFF
      FD00FFFEFD00FFFFFD00FFFFFD00FFFFFD00FFFFFD00FFFEFD00FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFBCDB0000278C00003193004660A400D6D5D100D2CED000C5C6
      C500C4C3C300BEBEC000BEBBB7008FA0B40075A0D4003878B9004178B9004079
      B7003F79B7004079B7003F78B6003F78B6003E77B5003F78B6003D76B4003E77
      B5003D76B4003D76B4003A73B1003C75B3003A73B1003A73B1003972AF003A73
      B1003871B0003972AF00306AA80051669F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007DCFFF003FB8
      FF0051C0FF0050C0FF004DC0FF0054BDEF0074B9C1006EB9CA006EB9C9006EB9
      C9006EB9C9006FB9CB006FBACB006FBACB006FBACB006FBACB006FBACB006FBA
      CB006FBACB006FBACB006FBACB006FBACB006FBACB006FBACB006FBACB006FBA
      CB006FBACB006FBACB006FBACB006FBACB006FB9CA006EB9C9006EB9C9006EB9
      C9006DBACB0076B8BD0049C2FF0050C0FF0050C0FF0050C0FF0050C0FF0051C0
      FF003EB8FF0085D3FF0000000000000000000000000000000000F7F8F800F5F6
      F600F1F1F100000000000000000000000000F2F2F300EAEAE900463B3300473C
      3400E9E9E800F2F2F30000000000FCFDFD0079716B004A3F370053494200473B
      33005D524900948A8200CCC4BC00F2F3F300CBDBEA0084A5C600D0D7DD003C32
      2600AFABA800FFFFFF00FCF7F600FDF8F700FFFAFB00FDF7F600FAF7F500FAF7
      F500FBF7F500FBF7F500FBF7F500FBF7F500FBF7F500FAF7F500FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFBCDC0000288C00003394004661A400D4D5D100D2CFD000C7C6
      C500C5C3C300BEBEC000BEBBB700909FB50078A0D4003879B7003F78BA003E7A
      B8003D7CBA004179B7004179B7004279B7003D75B3003D76B4003E77B5003F78
      B6003A73B1003C75B3003A73B1003D76B4003B74B2003A73B1003A73B1003B74
      B3003773B1003974B100306AA9005166A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5FBFF003CB8
      FF004CBEFF0050C0FF0050C0FF004CBFFF0042C0FF0042C0FF0042C0FF0042C0
      FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0
      FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0
      FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0FF0042C0
      FF0043C0FF0041C0FF004FBEFF0050C0FF0050C0FF0050C0FF0050C0FF004BBE
      FF0040B8FF00FBFDFF00000000000000000000000000F7F8F800ACA7A400C5C2
      C000F9F9FA00FFFFFF00F9FAFA00F4F5F500FFFFFF00B3AEAB004B4139005B51
      4A00FFFFFF000000000000000000F2F2F200E7E7E600938D8800635953004439
      31004B4039004B4039004B403900453930006A5E5600A1978F00E7E5E3003A31
      2700AFABA800FFFFFF00F4F5F100FFF8F900FCF7F600FAF7F500FAF7F500FFFD
      FC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFDFB00FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEBCDC0000298E00003595004663A600D4D6D100D1CFD000C7C6
      C500C5C3C300BEBEC000BEB9B700909FB50078A1D400397AB8004178B900407A
      B8003F7BB9003F79B700407AB8003F78B6003E7AB8003D78B6003D76B4003E78
      B6004079B7003D76B4003C75B3003B74B2003B74B2003A73B1003A73B1003B73
      B0003873B1003B74B200336CAB005267A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A1DB
      FF0037B5FF0050C0FF0050C0FF0050C0FF0050BFFF0050BFFF0050BFFF0050BF
      FF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BF
      FF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BF
      FF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BFFF0050BF
      FF0050BFFF0050BFFF0050BFFF0050C0FF0050C0FF0050C0FF0050C0FF0036B6
      FF00AADFFF00000000000000000000000000F6F6F700B7B3B0003B2F27004A3F
      3700483D35006E666000A29D9900D8D6D500C1BFBC0050463E004D423A009690
      8C00FAFBFB00000000000000000000000000F2F2F200FAFBFC00FFFFFF000000
      0000B9B6B30088817B00554B4300473C34004B4039003F342C00CDCBC9003D34
      2A00B3ACAA00F5FEF80022BE7C0041C68E00FFFCFF00FCF7F600FFFCFA00BCB8
      B300BDB9B500BEBAB500BEBAB500BEBAB500BEB9B500B9B4B000FFFFFF006E68
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFBDDD00002B9100003797004664A700D5D5D100D1CFD000C6C6
      C500C4C3C300BFBEC000BEBAB6008F9FB50078A2D500397AB9004179BA00417C
      B900417CBA003E7AB8003F7BB9003D78B6003D7AB8003D79B7004177B5004078
      B6003D77B5003D76B4003C75B3003D76B4003C75B3003C75B3003A74B2003A72
      B0003973B2003E71B100326CAA005169A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FF005BC2FF0041BAFF0051C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0051C0FF003EB8FF0061C6
      FF00FDFEFF00000000000000000000000000F1F2F200EDECEC00766D6800493E
      3600493E37004B4139004B413900493E36004B4039004E433B0053484100F7F7
      F800F1F1F100000000000000000000000000000000000000000000000000F2F2
      F200F7F7F800FCFDFE00FFFFFF00E1E0DF00ACA8A4006E655F00CCCAC8003C33
      2900B6ADAB00BFEFD900D5EDE0009EDEC10036C38700FFF9F900FFFEFD00847E
      76008C857D008C857E008C857E008C857E008C857E00837C7400FFFFFF006F68
      61006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFBDDD00002C9000003899004666A800D5D6D100D1CFCF00C5C5
      C500C3C3C300BDBEBF00BEB9B300909FB50077A2D5003A7ABA004179BA00407A
      B800417DBB003E79B700407BB9003D78B6003E7AB8003E7AB8003F77B5004079
      B7003D75B3003D76B4003E77B5003F78B6003B74B2003A73B1003A73B1003972
      B0003A72B2003D72B200316CAA005168A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF3FF0047BBFF0048BDFF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0047BCFF004BBDFF00E2F4
      FF000000000000000000000000000000000000000000F1F2F200FDFEFF00FFFF
      FF00D1CFCE009E9894006B625B004B40380050453D008B847F00F7F7F700F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300F8F9F900FFFFFF00ECECED00392F
      2500AFABA800FFFFFF00FFF8F800FFFCFF00A1DFC300E5F1E900FCF8F600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEBFDE00002E9400003A9C004669AC00D2D7D200CED0CC00C6C7
      C700C3C4C100BDBDBD00BFB9B30090A2B60077A3D6003F7BBD00447ABB00437E
      BC00437EBC00407BB900427DBB003F7AB800417CBA003F7BB9003D7BB9003E7A
      B8004279B700417AB800427BB900427BB9004079B7003F78B6003E77B6003E77
      B5003D76B5003D77B600326DAE005268AA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0E8FF003BB8FF0050BFFF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF004FBFFF003CB8FF00C7EAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F5F500FAFAFB00FFFFFF00FCFCFD00FDFEFF00FBFCFD00F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200E9E8E800392F
      2500AFABA800FFFFFF00F9F6F400F9F6F400FFF9F900FCF7F600F9F6F400F9F6
      F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400FFFFFF006E67
      60006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEBFDE00002F9500003A9C004769AE00D2D6D200CFD0CC00C6C7
      C600C3C4C100BDBDBE00BFB9B3008FA1B60076A2D7003E7CBC00447ABB00427D
      BB00427DBB00407BB900407BB9003F7AB800407BB9003F7AB8003F7AB8003C78
      B6004279B7004178B6003F79B7003F79B7004079B7003F78B6003D76B4003D76
      B4003C75B5003D73B500316EAE005169A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADE0FF0021AEFF004FBFFF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF004FBEFF001EAEFF00B9E4FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200E9E8E800392F
      2500AFABA800FFFFFF00FFFFFF00FAF7F500FFFFFE00FFFFFF00F9F5F300FFFF
      FF00FFFEFC00FBF8F500FFFFFF00FCF9F700FFFCFB00FFFFFF00FFFFFF006E67
      5F006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADC0DE0000329600003C9E004666AD00D4D5D300D2CFCE00C8C5
      C600C3C3C200BEBFBE00BDB8B3008FA0B50077A1D5003E7CBB00447ABB00417B
      BA00407BB900417CBA003F7AB8003F7AB800417CBA003F7AB8003E79B7003F79
      B8004178B6004078B6003E78B6003E78B6003E77B5003D76B4003E77B6003D76
      B4003E76B6003D76B400306CAC005369AA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADE1FF003CB7FF0049BDFF0051C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0051C0FF0047BCFF003CB8FF00B8E4FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200E9E8E800392F
      2500B5B2AE00FFFFFF007B756D00FFFFFF00C8C6C4009D989400FFFFFF009590
      8A00D1CFCD00FFFFFF0077706900FFFFFF00DFDEDC0086807900FFFFFF006F69
      61006F696100FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAC1DE00003397000244A300224F9F00C2C3C500DDD8D400C3C5
      C600C3C2C200BFBEBF00BCB7B3008FA1B50077A2D400417DBD00437ABB00447E
      BB00447FBD00417CBA00437EBC00437EBC00447FBD00417DBA00437EBB003F7B
      BA00407CB900407CB8004278B600437DBA00427AB700427AB8003F78B7003E76
      B5003B75B5003D77B300326DAF005368AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFE7FF0047BCFF0041BAFF0051C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0051C0FF003EBAFF0049BDFF00C6EAFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200E9E8E8003D33
      290097928C00A29C96003A312700C0BDB900746C640049403700E0DDDA00443B
      31007D766F00B8B4B0003C322800ABA6A20088837C00392F2500D4D2CF00665E
      5600716A6300FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFC2DF0000399C00064AA300053FA0005A76A400D9D6CA00DED8
      D000D6D0CA00D0CCC500D1C4B8009AA9B90078A2D4003B7CBE00447ABB00447D
      BB00437FBC00417DBB00427DBB00447FBC00437EBB00427DB9003F7BB900417B
      BB00407ABB003B78B6003C75B5003874B5003673B300336FB100346FAF003A75
      B400497EB9004C84BA002262A8005063AE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFF3FF005BC3FF0036B5
      FF004CBEFF0051C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0051C0FF004BBE
      FF0036B6FF005FC5FF00E1F4FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200E6E6E6003329
      1E003F362C00443B3100574F46003E342A004D443B00534B4200392F2500554D
      44004A41380040372D00574F460041382E0049403700574F46003A3126003E35
      2A0068615800FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1C4E2000F4DAB001151AC000346A8000342A0003E6396007889
      A00071849F006D869D006E7993005B7BA50085ABDA003F7EBE00417FC0004A83
      C0004881BE004480BD00447FBE00407CBB003F7BBA003A79B8003676B5003877
      B4003876B4003E76B600457CB9004C81BF00598BC6006495C900739EC90074A0
      CE005C8DC6002B65B800174CA3006474B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFDFF00A0DD
      FF003CB7FF003FBAFF004DBEFF004FBFFF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF004FBFFF004DBEFF003EBAFF003EB9
      FF00A6DEFF00FDFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDA
      D800E5E4E300A8A39F00352C2100DCDBD900746D660050483E00FAFAFB003930
      26008E898200C6C4C000372D2300C5C3BF008F898400362D2200EAE9E800DEDD
      DC00E2E1E000F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3C5E300114FAF00326BB900053FA100054BAC000041A200003B
      9400003A9300003F960000379800124EA30097BCE6004E85BC002873B6004380
      BE00447EBE003C79B9003878B9002C6EB1002D70B2002C70B6003A76B6005A8A
      BB007DA3D00092B5E4009BBAE300A1BDE50098B4DA0089ADD300769DC9005786
      BF002158A90009359B003465B5005C6EB4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6FAFF007ED0FF004CBFFF0044BAFF0042BBFF004BBEFF0050C0FF0051C0
      FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0050C0FF0051C0
      FF0051C0FF0050C0FF004ABDFF0043BBFF0042BAFF004DBDFF0082D2FF00F9FD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F400F5F6F600E7E6E500908B8600FFFFFF00C4C2BF00AFACA800FFFFFF00A09C
      9700D6D4D200F8F8F9008A847E00F7F8F800DBD9D8009B969100FBFCFD00F3F3
      F400F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3DCED00436AB1003864B4003362B3001047A5000648A9000845
      A8000743A8000743A7000641AC000C4BAA006697CC0090B2DA004882B5003F7D
      BA00417FC0004D86C4005C8BC3006996C700739FD0007AA2D5007BA3D600719C
      D3005C8EC8004E84BD003A78BD002F6DB5002263AF000F51A7000848A7000746
      A700244BA6004778B200355DB5007F8AC7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFF4FF00A5DDFF0074CCFF004ABCFF0033B5FF0034B5
      FF0040BAFF0047BDFF004CBEFF004FBFFF004FBFFF004CBEFF0047BDFF003FB9
      FF0033B5FF0033B4FF004BBEFF0076CDFF00A5DEFF00E2F4FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200F9FAFA0000000000F5F5F600F7F7F80000000000F8F8
      F900F3F4F400F1F1F100FAFAFB00F1F1F100F3F3F400F8F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFF1F600647CBE007391C90079A5D50076A1D4007BA1
      D4007CA4D6007CA3D4007FA6D0007DA3D3006096C90091B6D600B5CAE300A7C2
      E4009BBBDE0098B9DE008AAEDC0076A1D200739CCE00769ECF007FA4D00084A6
      D3007AA0D400769ECE006F9BCB007299CF00739CD200749CD3007FA2D60081A5
      D5007BA4D2007087C0007079BD00FCF9FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFDFF00E6F4FF00CEEDFF00AFE2
      FF0088D3FF0069C8FF0059C2FF0051BFFF0051BFFF0059C1FF0069C8FF0089D3
      FF00B2E2FF00D0EEFF00E7F6FF00FCFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFC00F4F4F800F9FBFC00FBFDFE00FBFC
      FE00FBFDFE00FCFDFE00FCFDFE00FCFDFE00F7F9FC00F4F7F900F7FAFB00F9FC
      FD00F7FAFB00F4F7FB00F2F6FB00F2F6FA00F4F8FB00F8F9FD00FCFCFF00FDFC
      FE00FCFDFF00FDFEFF00FEFFFE00FEFFFE00FEFFFF0000000000000000000000
      0000F5F9FB00F3F2F700FCFBFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFF0000FFFFFFFFE7FFFFFFFFFE0000
      0007000000000000FFFC00003FFFFFFF00FFFFFFFFFE00000003000000000000
      FFF000000FFFFFFE007FFFFFFFF800000001000000000000FFC0000003FFFFFC
      003FFFFFFFF800000000000000000000FF80000001FFFFFC003FFFFFFFF80000
      0000000000000000FF00000000FFFFF8001FFFFFFFF800000000000000000000
      FE000000007FFFF8001FFFFFFFF800000000000000000000FC000000003FFFF8
      0002FFFFFFF800000000000000000000F8000000001FFFF800003FFFFFF80000
      0000000000000000F0000000000FFFF8000003FFFFF800000000000000000000
      E00000000007FFFC0000003FFFF800000000000000000000E00000000007FFFE
      00000007FFF800000000000000000000C00000000003FFFC00000001FF800000
      0000000000000000C00000000003FFFC00000000FF8000000000000000000000
      800000000001FFFC10000000FF8000000000000000000000800000000001FFF8
      10000001000000000000000000000000000000000000FFF83000001300000000
      0000000000000000000000000000FFF82000001F000000000000000000000000
      000000000000FFF82000001F000000000000000000000000000000000000FFF0
      2000001F000000000000000000000000000000000000FFF04000003F00000000
      0000000000000000000000000000FFF04000003F000000000000000000000000
      000000000000FFF040000007000000000000000000000000000000800000FFE0
      40000003000000000000000000000000000000000000FFE00000000300000000
      0000000000000000000000000000FFC080000003000000000000000000000000
      000000000000FFE080000003000000000000000000000000000000000000FFC0
      80000003FF8000000000000000000000000000000000FFC100000003FF800000
      0000000000000000000000000000FFC100000003FF8000000000000000000000
      000000000000FF8100000003FFF800000000000000000000000000000000FF83
      00000003FFF800000000000000000000800000000001FF8200000003FFF80000
      0000000000000000800000000001FF8200000003FFF800000000000000000000
      C00000000003C70200000003FFF800000000000000000000C000000000038006
      00000003FFF800000000000000000000E00000000007000710000003FFF80000
      0000000000000000E000000000070007E0000003FFF800000000000000000000
      F0000000000F800FFE000003FFF800000000000000000000F8000000001FF01F
      FF800003FFF800000000000000000000FC000000003FFFFFFF800003FFF80000
      0000000000000000FE000000007FFFFFFF800003FFF800000000000000000000
      FF00000000FFFFFFFF800003FFF800000000000000000000FF80000001FFFFFF
      FF800003FFF800000000000000000000FFC0000003FFFFFFFFE00003FFF80000
      0000000000000000FFF000000FFFFFFFFFE00007FFF800000000000000000000
      FFFC00003FFFFFFFFFF9203FFFFC00000000000000000000FFFF0000FFFFFFFF
      FFFFFFFFFFFE0000007100000000000000000000000000000000000000000000
      000000000000}
  end
  inherited imageITEM: TImageList
    Left = 400
    Top = 30
  end
  inherited ConsultaAux: TIBQuery
    Left = 1304
    Top = 640
  end
  inherited TEvent: TIBTransaction
    Left = 1368
    Top = 576
  end
  inherited SPEvent: TIBStoredProc
    Left = 1400
    Top = 576
  end
  inherited EEvent: TIBEvents
    Left = 1432
    Top = 576
  end
  object DTSPedidos: TDataSource
    DataSet = Pedidos
    OnDataChange = DTSPedidosDataChange
    Left = 1336
    Top = 704
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
      'SELECT   PK.ID  ,PK.IDEP,PK.DEEP,'
      '         PK.IDCA,PK.DTCA,'
      '         PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST,'
      '         PK.IDPK,PK.DTPK,PK.DEPK,'
      '         PK.IDCD,PK.DECD,PK.RZCD,'
      '         PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      ''
      '         PK.VCRD,PK.SCRD,'
      ''
      
        '         PK.PED_TCDE,PK.PED_QTDE,PK.PED_QTRL,PK.PED_PEN_TCDE,PK.' +
        'PED_PEN_QTDE,PK.PED_PEN_QTRL,PK.PED_PEN_PERC,PK.PED_TKT_TCDE,'
      '         PK.BAN_VDUP,PK.BAN_QTDE,PK.BAN_PERC,'
      
        '         PK.BAN_PEN_VDUP,PK.BAN_PEN_QTDE,PK.BAN_PEN_PERC,PK.BAN_' +
        'PAG_VDUP,PK.BAN_PAG_QTDE,PK.BAN_PAG_PERC,'
      
        '         PK.BAN_AVC_VDUP,PK.BAN_AVC_QTDE,PK.BAN_AVC_PERC,PK.BAN_' +
        'NVC_VDUP,PK.BAN_NVC_QTDE,PK.BAN_NVC_PERC,PK.BAN_DVC_VDUP,PK.BAN_' +
        'DVC_QTDE,PK.BAN_DVC_PERC,'
      ''
      '         PK.CAR_VDUP,PK.CAR_QTDE,PK.CAR_PERC,'
      
        '         PK.CAR_PEN_VDUP,PK.CAR_PEN_QTDE,PK.CAR_PEN_PERC,PK.CAR_' +
        'PAG_VDUP,PK.CAR_PAG_QTDE,PK.CAR_PAG_PERC,'
      
        '         PK.CAR_AVC_VDUP,PK.CAR_AVC_QTDE,PK.CAR_AVC_PERC,PK.CAR_' +
        'NVC_VDUP,PK.CAR_NVC_QTDE,PK.CAR_NVC_PERC,PK.CAR_DVC_VDUP,PK.CAR_' +
        'DVC_QTDE,PK.CAR_DVC_PERC,'
      
        '         PK.QTDE,PK.QTRL,PK.QTSP,PK.RLSP,PK.PDSC,PK.VDSC,PK.TCDE' +
        ','
      ''
      
        '         PK.CDNF,PK.D_DTNF AS DTNF,PK.DTSA,PK.VNF,PK.VIPI,PK.VST' +
        ','
      '         PK.CDBX,PK.DTBX,'
      
        '         PK.DECT,PK.MFRT,PK.DFRT AS D_MFRT,PK.VFRT,PK.PSBR,PK.PS' +
        'LQ,'
      '         PK.STPD,PK.RECO || '#39' - '#39' || PK.DECO AS D_STCO,'
      '         PK.INFADPED'
      'FROM     VW_PED_VEN_CAB AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDCD = :IDCD'
      'AND      PK.FAPD = 1'
      'ORDER BY PK.DTCA DESC')
    Left = 1304
    Top = 704
    ParamData = <
      item
        DataType = ftString
        Name = 'IDEP'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'IDCD'
        ParamType = ptUnknown
        Value = '0'
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
    object PedidosIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_CAB_004"."IDCA"'
    end
    object PedidosDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_CAB_004"."DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object PedidosIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_PED_VEN_CAB_004"."IDST"'
    end
    object PedidosDTST: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTST'
      Origin = '"VW_PED_VEN_CAB_004"."DTST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PED_VEN_CAB_004"."CDST"'
    end
    object PedidosREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PED_VEN_CAB_004"."REST"'
      Size = 10
    end
    object PedidosDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB_004"."DEST"'
      Size = 60
    end
    object PedidosDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB_004"."DEPK"'
      Size = 30
    end
    object PedidosDTPK: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTPK'
      Origin = '"VW_PED_VEN_CAB_004"."DTPK"'
      ProviderFlags = []
      ReadOnly = True
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
    object PedidosVCRD: TIBBCDField
      FieldName = 'VCRD'
      Origin = '"VW_PED_VEN_CAB_004"."VCRD"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosSCRD: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'SCRD'
      Origin = '"VW_PED_VEN_CAB"."SCRD"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosPED_TCDE: TIBBCDField
      FieldName = 'PED_TCDE'
      Origin = '"VW_PED_VEN_CAB"."PED_TCDE"'
      Precision = 18
      Size = 2
    end
    object PedidosPED_QTDE: TIntegerField
      FieldName = 'PED_QTDE'
      Origin = '"VW_PED_VEN_CAB"."PED_QTDE"'
    end
    object PedidosPED_QTRL: TLargeintField
      FieldName = 'PED_QTRL'
      Origin = '"VW_PED_VEN_CAB"."PED_QTRL"'
    end
    object PedidosPED_PEN_TCDE: TIBBCDField
      FieldName = 'PED_PEN_TCDE'
      Origin = '"VW_PED_VEN_CAB"."PED_PEN_TCDE"'
      Precision = 18
      Size = 2
    end
    object PedidosPED_PEN_QTDE: TIntegerField
      FieldName = 'PED_PEN_QTDE'
      Origin = '"VW_PED_VEN_CAB"."PED_PEN_QTDE"'
    end
    object PedidosPED_PEN_QTRL: TLargeintField
      FieldName = 'PED_PEN_QTRL'
      Origin = '"VW_PED_VEN_CAB"."PED_PEN_QTRL"'
    end
    object PedidosPED_PEN_PERC: TIBBCDField
      FieldName = 'PED_PEN_PERC'
      Origin = '"VW_PED_VEN_CAB"."PED_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosPED_TKT_TCDE: TIBBCDField
      FieldName = 'PED_TKT_TCDE'
      Origin = '"VW_PED_VEN_CAB"."PED_TKT_TCDE"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_VDUP: TIBBCDField
      FieldName = 'BAN_VDUP'
      Origin = '"VW_PED_VEN_CAB"."BAN_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_QTDE: TIntegerField
      FieldName = 'BAN_QTDE'
      Origin = '"VW_PED_VEN_CAB"."BAN_QTDE"'
    end
    object PedidosBAN_PERC: TIBBCDField
      FieldName = 'BAN_PERC'
      Origin = '"VW_PED_VEN_CAB"."BAN_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosBAN_PEN_VDUP: TIBBCDField
      FieldName = 'BAN_PEN_VDUP'
      Origin = '"VW_PED_VEN_CAB"."BAN_PEN_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_PEN_QTDE: TIntegerField
      FieldName = 'BAN_PEN_QTDE'
      Origin = '"VW_PED_VEN_CAB"."BAN_PEN_QTDE"'
    end
    object PedidosBAN_PEN_PERC: TIBBCDField
      FieldName = 'BAN_PEN_PERC'
      Origin = '"VW_PED_VEN_CAB"."BAN_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosBAN_PAG_VDUP: TIBBCDField
      FieldName = 'BAN_PAG_VDUP'
      Origin = '"VW_PED_VEN_CAB"."BAN_PAG_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_PAG_QTDE: TIntegerField
      FieldName = 'BAN_PAG_QTDE'
      Origin = '"VW_PED_VEN_CAB"."BAN_PAG_QTDE"'
    end
    object PedidosBAN_PAG_PERC: TIBBCDField
      FieldName = 'BAN_PAG_PERC'
      Origin = '"VW_PED_VEN_CAB"."BAN_PAG_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosBAN_AVC_VDUP: TIBBCDField
      FieldName = 'BAN_AVC_VDUP'
      Origin = '"VW_PED_VEN_CAB"."BAN_AVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_AVC_QTDE: TIntegerField
      FieldName = 'BAN_AVC_QTDE'
      Origin = '"VW_PED_VEN_CAB"."BAN_AVC_QTDE"'
    end
    object PedidosBAN_AVC_PERC: TIBBCDField
      FieldName = 'BAN_AVC_PERC'
      Origin = '"VW_PED_VEN_CAB"."BAN_AVC_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosBAN_NVC_VDUP: TIBBCDField
      FieldName = 'BAN_NVC_VDUP'
      Origin = '"VW_PED_VEN_CAB"."BAN_NVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_NVC_QTDE: TIntegerField
      FieldName = 'BAN_NVC_QTDE'
      Origin = '"VW_PED_VEN_CAB"."BAN_NVC_QTDE"'
    end
    object PedidosBAN_NVC_PERC: TIBBCDField
      FieldName = 'BAN_NVC_PERC'
      Origin = '"VW_PED_VEN_CAB"."BAN_NVC_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosBAN_DVC_VDUP: TIBBCDField
      FieldName = 'BAN_DVC_VDUP'
      Origin = '"VW_PED_VEN_CAB"."BAN_DVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosBAN_DVC_QTDE: TIntegerField
      FieldName = 'BAN_DVC_QTDE'
      Origin = '"VW_PED_VEN_CAB"."BAN_DVC_QTDE"'
    end
    object PedidosBAN_DVC_PERC: TIBBCDField
      FieldName = 'BAN_DVC_PERC'
      Origin = '"VW_PED_VEN_CAB"."BAN_DVC_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosCAR_VDUP: TIBBCDField
      FieldName = 'CAR_VDUP'
      Origin = '"VW_PED_VEN_CAB"."CAR_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosCAR_QTDE: TIntegerField
      FieldName = 'CAR_QTDE'
      Origin = '"VW_PED_VEN_CAB"."CAR_QTDE"'
    end
    object PedidosCAR_PERC: TIBBCDField
      FieldName = 'CAR_PERC'
      Origin = '"VW_PED_VEN_CAB"."CAR_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosCAR_PEN_VDUP: TIBBCDField
      FieldName = 'CAR_PEN_VDUP'
      Origin = '"VW_PED_VEN_CAB"."CAR_PEN_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosCAR_PEN_QTDE: TIntegerField
      FieldName = 'CAR_PEN_QTDE'
      Origin = '"VW_PED_VEN_CAB"."CAR_PEN_QTDE"'
    end
    object PedidosCAR_PEN_PERC: TIBBCDField
      FieldName = 'CAR_PEN_PERC'
      Origin = '"VW_PED_VEN_CAB"."CAR_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosCAR_PAG_VDUP: TIBBCDField
      FieldName = 'CAR_PAG_VDUP'
      Origin = '"VW_PED_VEN_CAB"."CAR_PAG_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosCAR_PAG_QTDE: TIntegerField
      FieldName = 'CAR_PAG_QTDE'
      Origin = '"VW_PED_VEN_CAB"."CAR_PAG_QTDE"'
    end
    object PedidosCAR_PAG_PERC: TIBBCDField
      FieldName = 'CAR_PAG_PERC'
      Origin = '"VW_PED_VEN_CAB"."CAR_PAG_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosCAR_AVC_VDUP: TIBBCDField
      FieldName = 'CAR_AVC_VDUP'
      Origin = '"VW_PED_VEN_CAB"."CAR_AVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosCAR_AVC_QTDE: TIntegerField
      FieldName = 'CAR_AVC_QTDE'
      Origin = '"VW_PED_VEN_CAB"."CAR_AVC_QTDE"'
    end
    object PedidosCAR_AVC_PERC: TIBBCDField
      FieldName = 'CAR_AVC_PERC'
      Origin = '"VW_PED_VEN_CAB"."CAR_AVC_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosCAR_NVC_VDUP: TIBBCDField
      FieldName = 'CAR_NVC_VDUP'
      Origin = '"VW_PED_VEN_CAB"."CAR_NVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosCAR_NVC_QTDE: TIntegerField
      FieldName = 'CAR_NVC_QTDE'
      Origin = '"VW_PED_VEN_CAB"."CAR_NVC_QTDE"'
    end
    object PedidosCAR_NVC_PERC: TIBBCDField
      FieldName = 'CAR_NVC_PERC'
      Origin = '"VW_PED_VEN_CAB"."CAR_NVC_PERC"'
      Precision = 9
      Size = 2
    end
    object PedidosCAR_DVC_VDUP: TIBBCDField
      FieldName = 'CAR_DVC_VDUP'
      Origin = '"VW_PED_VEN_CAB"."CAR_DVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object PedidosCAR_DVC_QTDE: TIntegerField
      FieldName = 'CAR_DVC_QTDE'
      Origin = '"VW_PED_VEN_CAB"."CAR_DVC_QTDE"'
    end
    object PedidosCAR_DVC_PERC: TIBBCDField
      FieldName = 'CAR_DVC_PERC'
      Origin = '"VW_PED_VEN_CAB"."CAR_DVC_PERC"'
      Precision = 9
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
    object PedidosCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB"."CDNF"'
      DisplayFormat = '0'
    end
    object PedidosDTNF: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTNF"'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object PedidosVNF: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VNF'
      Origin = '"VW_PED_VEN_CAB_004"."VNF"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVIPI: TIBBCDField
      DisplayLabel = 'Total IPI'
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_CAB"."VIPI"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVST: TIBBCDField
      DisplayLabel = 'Total ST'
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
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object PedidosCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"VW_PED_VEN_CAB_004"."CDBX"'
    end
    object PedidosDTBX: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_PED_VEN_CAB_004"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
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
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_CAB"."QTRL"'
      DisplayFormat = '0'
    end
    object PedidosQTSP: TIBBCDField
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_CAB_004"."QTSP"'
      Precision = 18
      Size = 2
    end
    object PedidosRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_CAB_004"."RLSP"'
    end
    object PedidosPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_CAB_004"."PDSC"'
      Precision = 9
      Size = 2
    end
    object PedidosVDSC: TIBBCDField
      DisplayLabel = 'Total Descontos'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_CAB_004"."VDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosTCDE: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB"."TCDE"'
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
    object PedidosD_STCO: TIBStringField
      DisplayLabel = 'Tipo + Prazo'
      FieldName = 'D_STCO'
      ProviderFlags = []
      Size = 74
    end
    object PedidosDECT: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'DECT'
      Origin = '"VW_PED_VEN_CAB"."DECT"'
      Size = 60
    end
    object PedidosMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"VW_PED_VEN_CAB_004"."MFRT"'
    end
    object PedidosD_MFRT: TIBStringField
      DisplayLabel = 'Frete'
      FieldKind = fkInternalCalc
      FieldName = 'D_MFRT'
      Origin = '"VW_PED_VEN_CAB_004"."DFRT"'
      ReadOnly = True
      Size = 24
    end
    object PedidosVFRT: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VFRT'
      Origin = '"VW_PED_VEN_CAB_004"."VFRT"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosPSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_CAB"."PSBR"'
      DisplayFormat = ',##,0.00#'
      Precision = 18
      Size = 3
    end
    object PedidosPSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_CAB"."PSLQ"'
      DisplayFormat = ',##,0.00#'
      Precision = 18
      Size = 3
    end
    object PedidosINFADPED: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADPED'
      Origin = '"VW_PED_VEN_CAB"."INFADPED"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object PedidosC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
    object PedidosC_PED_PEN_TCDE: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_PED_PEN_TCDE'
      Size = 50
      Calculated = True
    end
    object PedidosC_BAN_PAG_PERC: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_BAN_PAG_PERC'
      Size = 50
      Calculated = True
    end
    object PedidosC_CAR_PAG_PERC: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_CAR_PAG_PERC'
      Size = 50
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
    Left = 1304
    Top = 768
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
    Left = 1336
    Top = 768
  end
  object FB: TIBQuery
    Database = FBird.DBErp
    Transaction = IBTra
    AfterOpen = FBAfterOpen
    AfterScroll = FBAfterScroll
    BeforeOpen = FBBeforeOpen
    OnCalcFields = FBCalcFields
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.DEEP,'
      '         PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,'
      
        '         IIF(PK.REST = '#39'C'#39' OR (PK.REST = '#39'B'#39' AND POSITION(LEFT(P' +
        'K.TIPO,3) IN '#39'ABADEV'#39') = 0),0,PK.VDUP * IIF(PK.TPCO > 0,PK.TPCO,' +
        '1)) AS VDUP,'
      '         PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,'
      '         PK.VJUR,PK.VMUL,PK.VDSC,'
      
        '         PK.DTPG,PK.VPAG * IIF(PK.TPCO > 0,PK.TPCO,1) AS VPAG,PK' +
        '.VPEN * IIF(PK.TPCO > 0,PK.TPCO,1) AS VPEN,PK.DEST,PK.STFI,PK.DT' +
        'BX,'
      
        '         PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,IIF(PK.STFI = '#39'VENCIDO' +
        #39',1,0) AS FIN_VEN,'
      
        '         PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,P' +
        'K.API_ST,PK.API_MT,PK.API_INFADCAD,'
      '         PK.INFADCAD'
      'FROM     VW_FIN_REC_BAN AS PK'
      'WHERE    PK.IDEP = 0'
      'AND      PK.IDCD = 0'
      'ORDER BY PK.DTCA DESC')
    Left = 1304
    Top = 800
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
    object FBIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_FIN_REC_BAN"."IDCV"'
    end
    object FBDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"VW_FIN_REC_BAN"."DECV"'
      Size = 30
    end
    object FBIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_FIN_REC_BAN"."IDCR"'
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
    object FBFIN_VEN: TIntegerField
      FieldName = 'FIN_VEN'
      ProviderFlags = []
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
    Left = 1336
    Top = 800
  end
  object Prazo: TIBQuery
    Database = FBird.DBErp
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT SUM((PAG_D001+PAG_D002+PAG_D003+PAG_D004+PAG_D005+PAG_D00' +
        '6+PAG_D007+PAG_D008+PAG_D009+PAG_D010)/PAG_PARC) "PAG_PRAZ" FROM' +
        ' TAB_PAG'
      'WHERE ID = :ID')
    Left = 1304
    Top = 672
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
    DataSource = DTSPedidos
    SQL.Strings = (
      'SELECT   PK.*'
      'FROM     VW_PED_VEN_ITE AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 1304
    Top = 736
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDPK'
        ParamType = ptUnknown
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
    Left = 1336
    Top = 736
  end
  object SQLConsulta: TIBSQL
    Database = FBird.DBErp
    Transaction = IBTra
    Left = 1336
    Top = 608
  end
  object FC: TIBQuery
    Database = FBird.DBErp
    Transaction = IBTra
    AfterOpen = FCAfterOpen
    AfterScroll = FCAfterScroll
    BeforeOpen = FCBeforeOpen
    OnCalcFields = FCCalcFields
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.DEEP,'
      '         PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,'
      
        '         IIF(PK.REST = '#39'C'#39' OR (PK.REST = '#39'B'#39' AND POSITION(LEFT(P' +
        'K.TIPO,3) IN '#39'ABADEV'#39') = 0),0,PK.VDUP * IIF(PK.TPCO > 0,PK.TPCO,' +
        '1)) AS VDUP,'
      '         PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,'
      '         PK.VJUR,PK.VMUL,PK.VDSC,'
      
        '         PK.DTPG,PK.VPAG * IIF(PK.TPCO > 0,PK.TPCO,1) AS VPAG,PK' +
        '.VPEN * IIF(PK.TPCO > 0,PK.TPCO,1) AS VPEN,PK.DEST,PK.STFI,PK.DT' +
        'BX,'
      
        '         PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,IIF(PK.STFI = '#39'VENCIDO' +
        #39',1,0) AS FIN_VEN,'
      
        '         PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,P' +
        'K.API_ST,PK.API_MT,PK.API_INFADCAD,'
      '         PK.INFADCAD'
      'FROM     VW_FIN_REC_CAR AS PK'
      'WHERE    PK.IDEP = 0'
      'AND      PK.IDCD = 0'
      'ORDER BY PK.DTCA DESC')
    Left = 1304
    Top = 832
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
    object FCIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_FIN_REC_CAR"."IDCV"'
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
    object FCIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_FIN_REC_CAR"."IDCR"'
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
    object FCFIN_VEN: TIntegerField
      FieldName = 'FIN_VEN'
      ProviderFlags = []
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
    Left = 1336
    Top = 832
  end
  object TEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBErp
    DefaultAction = TARollback
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1392
    Top = 656
  end
  object SQLEdicao: TIBSQL
    Database = FBird.DBErp
    Transaction = TEdicao
    Left = 1424
    Top = 656
  end
end
