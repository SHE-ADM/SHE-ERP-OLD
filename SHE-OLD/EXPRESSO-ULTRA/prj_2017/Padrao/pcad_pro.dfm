inherited frmcad_pro: Tfrmcad_pro
  Left = 475
  Top = 73
  HelpType = htKeyword
  HelpKeyword = '5'
  HelpContext = 95
  Caption = 'Cadastro de Produtos'
  ClientHeight = 673
  ClientWidth = 1184
  OldCreateOrder = True
  Position = poDesigned
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMSG: TStatusBar
    Top = 654
    Width = 1184
    ParentFont = False
  end
  inherited pnldir: TPanel
    Left = 1183
    Width = 1
    Height = 579
    ParentFont = False
  end
  inherited SBMenu: TSpeedBar
    Width = 1184
    ParentFont = False
    inherited siSAIR: TSpeedItem [6]
      Left = 339
    end
    object SIFCP: TSpeedItem [7]
      BtnCaption = 'Ficha T'#233'cnica'
      Cursor = crHandPoint
      Hint = 'Ficha T'#233'cnica de Produtos'
      ImageIndex = 4
      Spacing = 1
      Left = 171
      Top = 3
      Visible = True
      OnClick = SIFCPClick
      SectionName = 'Movimento'
    end
    inherited siREL: TSpeedItem [8]
      Left = 255
    end
  end
  inherited pnlpri: TPanel
    Width = 1183
    Height = 579
    ParentFont = False
    inherited pnlbot: TPanel
      Top = 217
      Width = 1183
      Height = 362
      Align = alClient
      Font.Height = -12
      ParentFont = False
      Visible = True
      object GBEstoque: TGroupBox
        Left = 0
        Top = 0
        Width = 1183
        Height = 362
        Align = alClient
        Caption = '  Estoque  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object PCPrincipal: TdxPageControl
          Left = 2
          Top = 19
          Width = 1179
          Height = 341
          ActivePage = TSProntaEntrega
          Align = alClient
          Font.Charset = ANSI_CHARSET
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
          object TSProntaEntrega: TdxTabSheet
            Caption = 'Pronta Entrega'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            object DBGCAD_PRO_EST: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1179
              Height = 317
              Bands = <
                item
                  Caption = 'Produtos'
                end
                item
                  Caption = 'Saldos de Estoque'
                end
                item
                  Caption = 'Pre'#231'os'
                end
                item
                  Caption = 'Pedidos'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'IDCP'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 16053492
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = clSilver
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSCAD_PRO_EST
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              IndentDesc = 1000
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = clBlack
              PreviewFont.Height = -11
              PreviewFont.Name = 'Segoe UI Semibold'
              PreviewFont.Style = [fsBold, fsItalic]
              ShowBands = True
              ShowGrid = False
              ShowRowFooter = True
              OnCustomDrawCell = DBGCAD_PRO_ESTCustomDrawCell
              object DBGCAD_PRO_ESTC_ID: TdxDBGridColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGCAD_PRO_ESTSKU: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGCAD_PRO_ESTDGCP: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGCAD_PRO_ESTREST: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REST'
              end
              object DBGCAD_PRO_ESTDEST: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DEST'
              end
              object DBGCAD_PRO_ESTEPE_QTDE: TdxDBGridColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EPE_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'EPE_QTDE'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTERS_QTDE: TdxDBGridColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 1
                RowIndex = 0
                FieldName = 'ERS_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'ERS_QTDE'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTESP_QTDE: TdxDBGridColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 1
                RowIndex = 0
                FieldName = 'ESP_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'ESP_QTDE'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTEST_QTDE: TdxDBGridColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EST_QTDE'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTDTEK: TdxDBGridDateColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 1
                RowIndex = 0
                FieldName = 'DTEK'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTVPRC_PAD: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 65
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VPRC_PAD'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'PRO_PREC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTVPRC_VAR: TdxDBGridMaskColumn
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 65
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VPRC_VAR'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'PRO_VPRC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTVPRC_REP: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VPRC_REP'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'PRO_RPRC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTDTPV: TdxDBGridDateColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTPV'
                DisableFilter = True
              end
              object DBGCAD_PRO_ESTDTSP: TdxDBGridDateColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTSP'
              end
            end
          end
          object TSReservados: TdxTabSheet
            Caption = 'Reservados'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            object DBGCAD_PRO_RES: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1179
              Height = 317
              Bands = <
                item
                  Caption = 'Produtos'
                end
                item
                  Caption = 'Pedidos'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 13158600
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = clSilver
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSCAD_PRO_RES
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -12
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              ShowGrid = False
              ShowRowFooter = True
              object DBGCAD_PRO_RESSKU: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGCAD_PRO_RESDGCP: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGCAD_PRO_RESQTDE: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'QTDE'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_RESEST_DOCU: TdxDBGridMaskColumn
                Color = 15658734
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 80
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EST_DOCU'
              end
              object DBGCAD_PRO_RESDTCA: TdxDBGridDateColumn
                Color = 15658734
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 1
                RowIndex = 0
                FieldName = 'DTCA'
                DisableFilter = True
              end
              object DBGCAD_PRO_RESEST_DFAV: TdxDBGridMaskColumn
                Color = 15658734
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 250
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EST_DFAV'
              end
              object DBGCAD_PRO_RESEST_DUSU: TdxDBGridMaskColumn
                Color = 15658734
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 100
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EST_DUSU'
              end
            end
          end
          object TSSeparados: TdxTabSheet
            Caption = 'Separados'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            object DBGCAD_PRO_SEP: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1179
              Height = 317
              Bands = <
                item
                  Caption = 'Produtos'
                end
                item
                  Caption = 'Expedi'#231#227'o'
                end
                item
                  Caption = 'Pedidos'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 13158600
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = clSilver
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DSTCAD_PRO_SEP
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -12
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              ShowGrid = False
              ShowRowFooter = True
              object DBGCAD_PRO_SEPSKU: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGCAD_PRO_SEPDGCP: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGCAD_PRO_SEPQTDE: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'QTDE'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_SEPEST_DSEP: TdxDBGridMaskColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 100
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EST_DSEP'
              end
              object DBGCAD_PRO_SEPEDTCA: TdxDBGridDateColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 100
                BandIndex = 1
                RowIndex = 0
                FieldName = 'DTCA'
                DisableFilter = True
              end
              object DBGCAD_PRO_SEPEST_DOCU: TdxDBGridMaskColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 80
                BandIndex = 2
                RowIndex = 0
                FieldName = 'EST_DOCU'
              end
              object DBGCAD_PRO_SEPEST_DCAD: TdxDBGridDateColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 80
                BandIndex = 2
                RowIndex = 0
                FieldName = 'EST_DCAD'
              end
              object DBGCAD_PRO_SEPEST_DFAV: TdxDBGridMaskColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 250
                BandIndex = 2
                RowIndex = 0
                FieldName = 'EST_DFAV'
              end
              object DBGCAD_PRO_SEPEST_DUSU: TdxDBGridMaskColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 100
                BandIndex = 2
                RowIndex = 0
                FieldName = 'EST_DUSU'
              end
            end
          end
          object TSFisico: TdxTabSheet
            Caption = 'F'#237'sico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            object DBGCAD_PRO_EST_FIS: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1179
              Height = 317
              Bands = <
                item
                  Caption = 'Produtos'
                end
                item
                  Caption = 'Lan'#231'amentos'
                end
                item
                  Caption = 'Estoque / Vendas'
                end
                item
                  Caption = 'Expedi'#231#227'o'
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
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = clSilver
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSCAD_PRO_EST_FIS
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -12
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              ShowGrid = False
              ShowRowFooter = True
              OnCustomDrawCell = DBGCAD_PRO_EST_FISCustomDrawCell
              object DBGCAD_PRO_EST_FISC_ID: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGCAD_PRO_EST_FISSKU: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGCAD_PRO_EST_FISDGCP: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 60
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGCAD_PRO_EST_FISDTPK: TdxDBGridDateColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 92
                BandIndex = 1
                RowIndex = 0
                FieldName = 'DTPK'
              end
              object DBGCAD_PRO_EST_FISQTDE: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 1
                RowIndex = 0
                FieldName = 'QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'QTDE'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_EST_FISQTDS: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 1
                RowIndex = 0
                FieldName = 'QTDS'
                SummaryFooterType = cstSum
                SummaryFooterField = 'QTDS'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGCAD_PRO_EST_FISEST_QTDE: TdxDBGridColumn
                Color = clBtnFace
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 1
                RowIndex = 0
                FieldName = 'EST_QTDE'
                DisableFilter = True
              end
              object DBGCAD_PRO_EST_FISD_DEOP: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 70
                Width = 117
                BandIndex = 1
                RowIndex = 0
                FieldName = 'D_DEOP'
              end
              object DBGCAD_PRO_EST_FISREOP: TdxDBGridColumn
                Visible = False
                BandIndex = 1
                RowIndex = 0
                FieldName = 'REOP'
              end
              object DBGCAD_PRO_EST_FISDEPK: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                MinWidth = 70
                Width = 70
                BandIndex = 2
                RowIndex = 0
                FieldName = 'DEPK'
              end
              object DBGCAD_PRO_EST_FISDECE: TdxDBGridMaskColumn
                MinWidth = 150
                Width = 150
                BandIndex = 2
                RowIndex = 0
                FieldName = 'DECE'
              end
              object DBGCAD_PRO_EST_FISLGCA: TdxDBGridMaskColumn
                MinWidth = 100
                Width = 100
                BandIndex = 2
                RowIndex = 0
                FieldName = 'LGCA'
              end
              object DBGCAD_PRO_EST_FISDESP: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 100
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DESP'
              end
              object DBGCAD_PRO_EST_FISDTSP: TdxDBGridDateColumn
                Width = 100
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTSP'
              end
            end
          end
        end
      end
    end
    inherited pnldbg: TPanel
      Width = 1183
      Height = 217
      Align = alTop
      ParentFont = False
      inherited gbDET: TGroupBox
        Width = 973
        Height = 217
        Caption = '  Artigos  '
        Font.Height = -12
        ParentFont = False
        inherited SBEdicao: TSpeedBar
          Top = 16
          Height = 199
          Font.Height = -12
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited DBGConsulta: TdxDBGrid
          Top = 16
          Width = 925
          Height = 199
          KeyField = 'IDCP'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'ID'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end
                item
                  SummaryField = 'PRO_QEST'
                  SummaryFormat = '0'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'PRO_QRES'
                  SummaryFormat = '0'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'PRO_QDIS'
                  SummaryFormat = '0'
                  SummaryType = cstSum
                end
                item
                  SummaryField = 'PRO_CUST'
                  SummaryFormat = '#,0.00'
                  SummaryType = cstAvg
                end
                item
                  SummaryField = 'PRO_PCOM'
                  SummaryFormat = '#,0.00'
                  SummaryType = cstAvg
                end
                item
                  SummaryField = 'PRO_PREC'
                  SummaryFormat = '#,0.00'
                  SummaryType = cstAvg
                end>
              Name = 'dbgConsultaSummaryGroup1'
            end>
          Font.Height = -12
          ParentFont = False
          BandFont.Height = -12
          Filter.Active = True
          Filter.Criteria = {00000000}
          HeaderFont.Height = -12
          IndentDesc = 10
          PreviewFieldName = 'D_ORIG'
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Height = -13
          PreviewFont.Name = 'Segoe UI Semibold'
          PreviewFont.Style = [fsBold, fsItalic]
          ShowGrid = False
          ShowRowFooter = True
          object dbgConsultaID: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
            DisableFilter = True
          end
          object dbgConsultaARTIGO: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARTIGO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaDECP: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 300
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DECP'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaUCOM: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UCOM'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaGRP_NO: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GRP_NO'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaCF_NO: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CF_NO'
          end
          object dbgConsultaDTCA: TdxDBGridDateColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DTCA'
          end
          object dbgConsultaDTED: TdxDBGridDateColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DTED'
          end
          object dbgConsultaDECA: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DECA'
          end
        end
      end
      object PNLAmostras: TPanel
        Left = 973
        Top = 0
        Width = 210
        Height = 217
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object PCAmostras: TdxPageControl
          Left = 0
          Top = 0
          Width = 210
          Height = 217
          Cursor = crHandPoint
          ActivePage = TSIMG_PAD
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = True
          OwnerDraw = False
          ParentShowHint = False
          RaggedRight = False
          ScrollOpposite = False
          ShowHint = True
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpBottom
          TabWidth = 0
          object TSIMG_PAD: TdxTabSheet
            Caption = 'Amostra'
            ParentShowHint = False
            ShowHint = True
            object EDIMG_PAD: TdxEdit
              Tag = 2
              Left = 6
              Top = 179
              Width = 199
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Style.BorderColor = clGray
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 1
              Alignment = taCenter
              AutoSelect = False
              AutoSize = False
              MaxLength = 120
              ReadOnly = True
              Height = 16
              StoredValues = 67
            end
            object PNLIMG_PAD: TPanel
              Left = 7
              Top = 10
              Width = 198
              Height = 173
              Cursor = crHandPoint
              Hint = 'Click na imagem para ver em tamanho maior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = IMG_PADClick
              object IMG_PAD: TImage
                Left = 7
                Top = 7
                Width = 183
                Height = 159
                Cursor = crHandPoint
                Hint = 'Click na imagem para ver em tamanho maior'
                Center = True
                ParentShowHint = False
                ShowHint = True
                Stretch = True
                OnClick = IMG_PADClick
              end
            end
          end
          object TSILA: TdxTabSheet
            Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
            Caption = 'Instru'#231#245'es de Lavagem'
            object PNLILA_BMP: TPanel
              Left = 7
              Top = 10
              Width = 198
              Height = 173
              Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
              TabOrder = 0
              object BILA_BMP1: TBevel
                Left = 4
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP2: TBevel
                Left = 42
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP3: TBevel
                Left = 80
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP4: TBevel
                Left = 118
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP5: TBevel
                Left = 156
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP6: TBevel
                Left = 4
                Top = 68
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP7: TBevel
                Left = 42
                Top = 68
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP8: TBevel
                Left = 4
                Top = 126
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object DBILA_BMP1: TDBImage
                Left = 6
                Top = 12
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP1'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 0
              end
              object DBILA_BMP2: TDBImage
                Left = 44
                Top = 12
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP2'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 1
              end
              object DBILA_BMP3: TDBImage
                Left = 82
                Top = 12
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP3'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 2
              end
              object DBILA_BMP4: TDBImage
                Left = 120
                Top = 12
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP4'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 3
              end
              object DBILA_BMP5: TDBImage
                Left = 158
                Top = 12
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP5'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 4
              end
              object DBILA_BMP6: TDBImage
                Left = 6
                Top = 70
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP6'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 5
              end
              object DBILA_BMP7: TDBImage
                Left = 44
                Top = 70
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP7'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 6
              end
              object DBILA_BMP8: TDBImage
                Left = 6
                Top = 128
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP8'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 7
              end
            end
          end
        end
      end
    end
  end
  inherited Consulta: TIBQuery
    BufferChunks = 2500
    Left = 616
    Top = 176
  end
  inherited DTSCadastro: TDataSource
    Left = 680
    Top = 208
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT   MAX(CP.IDCP) AS IDCP ,'
      '         CP.IDEP    ,CP.IDAK  ,CP.IDSK,'
      '         CP.ARTIGO  ,CP.DECP  ,'
      '         CP.CMP_PAD ,CP.UCOM  ,'
      '         CP.GRP_ID  ,CP.GRP_NO,'
      '         CP.CAT_ID  ,CP.CAT_NO,'
      '         CP.ORIG    ,CP.D_ORIG,'
      '         CP.CF_ID   ,CP.CF_NO ,'
      '         CP.XPAIS   ,CP.FPAIS ,'
      '         CP.INFADCAD,'
      '         MAX(DECA) AS DECA,MAX(DTCA) AS DTCA,MAX(DTED) AS DTED'
      'FROM     VW_CAD_PRO_PSQ     AS CP'
      'WHERE    CP.ARTIGO = '#39'11868'#39
      'GROUP BY IDEP    ,IDAK,IDSK,IDAK,'
      '         ARTIGO  ,DECP,'
      '         CMP_PAD ,UCOM,'
      '         GRP_ID  ,GRP_NO,'
      '         CAT_ID  ,CAT_NO,'
      '         ORIG    ,D_ORIG,'
      '         CF_ID   ,CF_NO,'
      '         XPAIS   ,FPAIS,'
      '         INFADCAD'
      'ORDER BY ARTIGO')
    Left = 680
    Top = 176
    object CadastroIDCP: TIntegerField
      FieldName = 'IDCP'
      ProviderFlags = []
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO"."IDEP"'
    end
    object CadastroIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_CAD_PRO_PSQ"."IDAK"'
    end
    object CadastroIDSK: TLargeintField
      FieldName = 'IDSK'
      Origin = '"VW_CAD_PRO_PSQ"."IDSK"'
    end
    object CadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object CadastroDECP: TIBStringField
      DisplayLabel = 'Descricao'
      FieldName = 'DECP'
      Origin = '"VW_CAD_PRO"."DECP"'
      Size = 120
    end
    object CadastroCMP_PAD: TIBStringField
      FieldName = 'CMP_PAD'
      Origin = '"VW_CAD_PRO_PSQ"."CMP_PAD"'
      Size = 120
    end
    object CadastroUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"VW_CAD_PRO"."UCOM"'
      Size = 10
    end
    object CadastroCF_ID: TSmallintField
      FieldName = 'CF_ID'
      Origin = '"VW_CAD_PRO_PSQ"."CF_ID"'
    end
    object CadastroCF_NO: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'CF_NO'
      Origin = '"VW_CAD_PRO_PSQ"."CF_NO"'
      Size = 40
    end
    object CadastroGRP_ID: TIntegerField
      FieldName = 'GRP_ID'
      Origin = '"VW_CAD_PRO_PSQ"."GRP_ID"'
    end
    object CadastroGRP_NO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRP_NO'
      Origin = '"VW_CAD_PRO_PSQ"."GRP_NO"'
      Size = 30
    end
    object CadastroCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = '"VW_CAD_PRO_PSQ"."CAT_ID"'
    end
    object CadastroCAT_NO: TIBStringField
      FieldName = 'CAT_NO'
      Origin = '"VW_CAD_PRO_PSQ"."CAT_NO"'
      Size = 30
    end
    object CadastroORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"VW_CAD_PRO"."ORIG"'
    end
    object CadastroD_ORIG: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ORIG'
      Origin = '"VW_CAD_PRO"."D_ORIG"'
      ProviderFlags = []
      ReadOnly = True
      Size = 135
    end
    object CadastroDECA: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'DECA'
      ProviderFlags = []
      Size = 30
    end
    object CadastroDTCA: TDateTimeField
      DisplayLabel = 'Cadastro'
      FieldName = 'DTCA'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroDTED: TDateTimeField
      DisplayLabel = 'Altera'#231#227'o'
      FieldName = 'DTED'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_CAD_PRO"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object CadastroXPAIS: TIBStringField
      FieldName = 'XPAIS'
      Origin = '"VW_CAD_PRO_PSQ"."XPAIS"'
      Size = 60
    end
    object CadastroFPAIS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FPAIS'
      Origin = '"VW_CAD_PRO_PSQ"."FPAIS"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited ILMenu: TImageList
    Left = 444
    Top = 222
    Bitmap = {
      494C010105000900040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000535254002E2D30002A29
      2C0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002A29
      2C002E2D30005352540000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A494C00242326003C3B3E009292
      9300939294009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300939294009292
      93003C3B3E00242326004A494C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2D300044434600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00444446002E2D3000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282C009D9D9E00FFFFFF00FCFC
      FC00DDDDDD00DADADB00DADADB00E2E2E200E0E0E000DADADB00DAD9DA00E3E3
      E400DEDEDE00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00D9D9DA00E8E8
      E800D9D9DA00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00D9D9DA00E8E8
      E800D9D9DA00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00D9D9DA00E8E8
      E800D9D9DA00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00DDDDDD00FCFC
      FC00FFFFFF009D9D9E0029282C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00F7F7
      F700F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F7F7
      F700FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00F7F7
      F700F0F0F000F7F7F800F6F6F700FDFDFD00FBFBFB00F6F6F70000000000FEFE
      FE00F9F9F900F6F6F70000000000FFFFFF0000000000F7F7F70000000000FFFF
      FF0000000000F7F7F70000000000FFFFFF0000000000F7F7F70000000000FFFF
      FF0000000000F7F7F70000000000FFFFFF0000000000F7F7F70000000000FFFF
      FF0000000000F7F7F70000000000FFFFFF0000000000F7F7F800F0F0F000F7F7
      F700FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FFFF
      FF00E3E3E300E3E3E400E3E3E400E5E5E500E5E5E500E3E3E400E3E3E400E5E5
      E600E4E4E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E400E7E6
      E700E3E3E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E400E7E6
      E700E3E3E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E400E7E6
      E700E3E3E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E300FFFF
      FF00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00FCFDFF00C6C0A700C9C4AC00C9C4AD00C9C4
      AD00C9C4AC00C5BFA600F9FAFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00E6DECC00E2D1A400E2D2A800E2D2A800E2D2A800E2D1A400E6DECC00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00BDCFA800BDD0A700BDD1
      A800BDD1A800BDD0A700BED0AB00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B5AB84007B620000826A0100826A0100826A
      0100826A01007C620000AEA47800FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFF
      FF00DB950000F1AB0000F0AA0000F0AA0000F0AA0000F1AB0000DB940000FBFF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF00A0C07D00429E00004CA200004CA2
      00004CA200004CA20000419D0000AAC58C00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AE8800836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009ABF710050A4000059A8000059A8
      000059A8000059A800004FA40000A3C37F00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AF8900836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009BC0730050A4000059A8000059A8
      000059A8000059A800004FA40000A4C48100FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AF8900836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009BC0730050A4000059A8000059A8
      000059A8000059A800004FA40000A4C48100FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AE8800836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009BC0730050A4000059A8000059A8
      000059A8000059A800004FA40000A4C38100FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B4AA81008169000088710D0088710D008871
      0D0088710D00826A0000AEA47500FFFFFF00FEFEFE00FEFEFE00FEFEFE00F7FF
      FF00E19A0000F2AF0000F0AE0000F0AE0000F0AE0000F2AF0000E19A0000F7FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF0096BC6B004BA3000055A7000055A7
      000055A7000055A700004AA200009FC07900FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00DCDACE00877528008E7D34008E7D34008E7D
      34008E7D340087752800D7D3C500FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00D3AC4500DBA92000DAAA2500DAAA2500DAAA2500DBA92000D3AC4500FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF00E3E8DE0063A11E0068A4240069A4
      250069A4250068A4240064A11F00E9EBE600FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F6F6F700636264006F6E70007A797B00FFFFFF00FEFEFE00FFFF
      FF006F6F7100706F710071717300717173007171730071717300717173007171
      7300717173007171730071717300717173007171730071717300717173007171
      7300717173007171730071717300717173007171730071717300717173007171
      730071717300717173007171730069696B00B4B4B500FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D000F0D110087878800FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00FCFCFC00C0BFC000C5C5C600C9C8C900FFFFFF00FEFEFE00FFFF
      FF00C4C4C500C6C6C600C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C3C2C300E1E1E100FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00D8D8D800DCDCDC00DDDDDE00FFFFFF00FEFEFE00FFFF
      FF00DBDADB00DCDCDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DADADA00ECECED00FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D000F0D110087878800FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F4F5F5004B4A4D0058575A0065646700FFFFFF00FEFEFE00FFFF
      FF0059585B0059595B005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A
      5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A
      5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A
      5D005B5A5D005B5A5D005B5A5D0052515400A9A9AA00FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F4F4F5003E3D40004D4C4E005B5A5C00FFFFFF00FEFEFE00FFFF
      FF004E4D50004E4D5000504F5100504F5100504F5100504F5100504F5100504F
      5100504F5100504F5100504F5100504F5100504F5100504F5100504F5100504F
      5100504F5100504F5100504F5100504F5100504F5100504F5100504F5100504F
      5100504F5100504F5100504F510046454800A3A3A400FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D000F0D110087878800FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00E4E4E400E7E7E800E8E8E800FFFFFF00FEFEFE00FFFF
      FF00E6E6E600E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E6E6E600F2F2F200FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F4F4F5004544470053525400605F6200FFFFFF00FEFEFE00FFFF
      FF00545355005453550055555700555557005555570055555700555557005555
      570055555700555557005555570055555700555557005554570045444700FFFF
      FF00C5BEC60093826A008E7B4F008F7D53008E7C53008F7D5300917F52008E7C
      53008D7B54008D7B54008C794F008E7E7600FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001A191D0006050800FFFF
      FF00ADA4B100B3A46600836B000088710A008973090081690300624809008D77
      060088710A0088710A008871020074604400FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00DEDEDE00E2E2E200E3E2E300FFFFFF00FEFEFE00FFFF
      FF00E0E0E100E2E2E200E2E2E300E2E2E300E2E2E300E2E2E300E2E2E300E2E2
      E300E2E2E300E2E2E300E2E2E300E2E2E300E2E2E300E2E2E300DEDEDE00FFFF
      FF00B0A7B400B2A36900856E09008B7513007F680E0077657000CBC5DA005B42
      14008D7711008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B0A7B400B2A36900856E09008C7612005E440C00FFFFFF00FFFFFF009889
      8500877007008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F3F3F40038373A004746490055545700FFFFFF00FEFEFE00FFFF
      FF0048474A0048474A004A494B004A494B004A494B004A494B004A494B004A49
      4B004A494B004A494B004A494B004A494B004A494B0049484B0039373A00FFFF
      FF00B0A7B400B1A36900856E09008B751300735A0300DEDBE800FFFFFF007E6A
      460089730C008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001A191D0006050800FFFF
      FF00B0A7B400B1A36900856E09008A741300846C0000B7ADBB00FFFFFF00644B
      0F008C7611008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00F3F3F30000000000F5F5F500FFFFFF00FEFEFE00FFFF
      FF00F4F4F40000000000F6F6F700F6F6F700F6F6F700F6F6F700F6F6F700F6F6
      F700F6F6F700F6F6F700F6F6F700F6F6F700F6F6F70000000000F3F3F300FFFF
      FF00B0A7B400AEA06200856E0A008A7513008C76000084736B00CBC4D4007259
      00008E780F008A7413008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00FCFCFC00BFBFC000C5C5C600C8C8C900FFFFFF00FEFEFE00FFFF
      FF00C4C4C500C6C6C600C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700BFBFC000FFFF
      FF00B1A7B500A999570087700A00836C0A0043293A00BDB4BC00FCFBFD005C46
      5100604824008E780F008A730B0077634A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001A191D0006050800FFFF
      FF00B0A7B500AA9A5700897100006B554B00FFFFFF0095868D008E7F8600F9F9
      FB00C6BFD0006F5600008B750A0078644900FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F6F6F70068676900737274007E7D7F00FFFFFF00FEFEFE00FFFF
      FF00747375007473750075757700757577007575770075757700757577007575
      770075757700757577007575770075757700757577007574770068676900FFFF
      FF00ADA3B000B8AB6A005D420100F5F5FF00FFFFFF00998B92009A8C9300DEDA
      DC00FFFFFF007C696900897100006F593E00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0088777A005F495400FFFFFF008E7F8600FFFFFF00FFFFFF00B4A9
      AE00CEC7CA00ABA0AA007A675C00C7BFC600FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00644F5900BDB5B900B3A9AE00B2A8AD00BCB3
      B70085747C00B8AFB300FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282C009D9D9E00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009D9D9E0029282C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2D300044444600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00444446002E2D3000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A494C00242326003C3B3E009292
      9300939294009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300939294009292
      93003C3B3E00242326004A494C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000535254002E2D30002A29
      2C0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002A29
      2C002E2D30005352540000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F6F6F600F6F6F600F1F1F100ECECEC00E7E7E700E7E7E700E3E3
      E300DFDFDF00DBDBDB00DBDBDB00D7D7D700D4D4D400D0D0D000D0D0D000CDCD
      CD00CBCBCB00CACACA00CACACA00CFCDCE00D1CFD100CECECE00CECECE00D1D1
      D100D4D4D400DBDBDB00DBDBDB00E5E5E500EFEFEF00F7F7F700F7F7F700FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9F9F009F9F9F009A9A
      9A00959595009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600969696009595
      95009B9B9B00A1A1A100A1A1A100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600B6B6B600B0B0
      B000AEAEAE00AAAAAA00AAAAAA00A9A9A900A9A9A900A6A6A600A6A6A600A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A4A4A400A4A4A400A3A3
      A300A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A6A6A600A6A6A600A9A9A900A9A9A900AAAAAA00AAAAAA00AEAE
      AE00B0B0B000B6B6B600B6B6B600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F5F5F500F5F5F500F0F0F000EBEBEB00E6E6E600E6E6E600E1E1
      E100DEDEDE00D9D9D900D9D9D900D5D5D500D2D2D200CECECE00CECECE00CBCB
      CB00C8C8C800CBC9CB00CBC9CB00A7B8AC0061886E00D6D2D500D6D2D500CFCF
      CF00D2D2D200DADADA00DADADA00E4E4E400EEEEEE00F6F6F600F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100A7A7A700A7A7A7007171
      7100717171007171710071717100707070006F6F6F006E6E6E006E6E6E006E6E
      6E006D6D6D006C6C6C006C6C6C006B6B6B006B6B6B006A6A6A006A6A6A006969
      6900686868006767670067676700676767006666660065656500656565006464
      6400616161009E9E9E009E9E9E00838383000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400DADADA00DADADA00D5D5
      D500CDCDCD00CACACA00CACACA00C8C8C8000000000000000000000000000000
      0000BEBEBE00B7B7B700B7B7B700B6B6B600B9B9B800C0BFBC00C0BFBC00C1C0
      BC00C1C0BC00C1C0BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C5C1BC00C0BD
      BA00C5C1BC00C8C3BD00C8C3BD00C4C0BC00C1BEBB00BFBDBB00BFBDBB00C5C4
      C200C9C7C500C8C7C500C8C7C500C9C8C600D2D1CE00D3D2D000D3D2D000D7D6
      D300DEDDDA00DDDDDC00DDDDDC00E4E4E4000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F5F5F500F5F5F500F0F0F000EBEBEB00E6E6E600E6E6E600E1E1
      E100DEDEDE00D9D9D900D9D9D900D5D5D500D2D2D200CECECE00CECECE00CBCB
      CB00C8C8C800CBC9CB00CBC9CB00A7B8AC0061886E00D6D2D500D6D2D500CFCF
      CF00D2D2D200DADADA00DADADA00E4E4E400EEEEEE00F6F6F600F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100A7A7A700A7A7A7007171
      7100717171007171710071717100707070006F6F6F006E6E6E006E6E6E006E6E
      6E006D6D6D006C6C6C006C6C6C006B6B6B006B6B6B006A6A6A006A6A6A006969
      6900686868006767670067676700676767006666660065656500656565006464
      6400616161009E9E9E009E9E9E00838383000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400DADADA00DADADA00D5D5
      D500CDCDCD00CACACA00CACACA00C8C8C8000000000000000000000000000000
      0000BEBEBE00B7B7B700B7B7B700B6B6B600B9B9B800C0BFBC00C0BFBC00C1C0
      BC00C1C0BC00C1C0BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C5C1BC00C0BD
      BA00C5C1BC00C8C3BD00C8C3BD00C4C0BC00C1BEBB00BFBDBB00BFBDBB00C5C4
      C200C9C7C500C8C7C500C8C7C500C9C8C600D2D1CE00D3D2D000D3D2D000D7D6
      D300DEDDDA00DDDDDC00DDDDDC00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000083B59000789D860000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6EF
      E900E7D2C200E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4
      C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4
      C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C600E8D4C600E8D4
      C600E9D5C600F3E9E100F3E9E100B87B4E00881F0000A14E1300A14E13000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D2009C9C9C007C7E80007C7E80008385
      880082858700818486008184860081838600808385007F8284007F8284007E81
      83007E8083007D7F82007D7F82007C7F81007B7E80007B7D80007B7D80007A7C
      7F00797C7E00787B7E00787B7E00787A7D00777A7C0076797B0076797B007578
      7B00747779006A6C6E006A6C6E0097979700D4D4D40000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ADB5CC00ADB5CC00A7AF
      C900A5AEC800A5ADC800A5ADC800A4ADC800ACB3CA006A94BF006A94BF003A70
      AC004679B1005E89B8005E89B80081A1C3009BB3D000C0CEDD00C0CEDD00CDD4
      E000C3CBDB00BFC5D700BFC5D700BCC0D300BFC3D600BFC4D700BFC4D700C0C5
      D800C4CADC00F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FBFB
      FB0000000000A8CAB200A8CAB20084B990006F8F7B000000000000000000FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FDFDFD00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5B09600D5B09600A458
      2400C08F6E00BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C
      6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C
      6900BE8C6900BE8C6900BE8C6900BE8C6900BF8C6900BF8C6900BF8C6900BF8D
      6B00C9A1850091300000913000009437000099400000973B0000973B00009B44
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B600A6AFB80094857600948576009684
      7300968473009583720095837200948271009482710093817000938170009281
      700092806F00917F6E00917F6E00917F6E00907E6D008F7D6D008F7D6D008F7D
      6C008E7C6B008E7C6B008E7C6B008D7B6A008C7B6A008C7A69008C7A69008B79
      68008B79670084786C0084786C0099A1A900B8B8B80000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000008600000045E0000045E000000
      5900001567000017680000176800001364000C3783002E6BAB002E6BAB00326B
      AA003069A8002D66A7002D66A7002964A5002661A300235FA200235FA200215D
      A0001F5A9E001B549A001B549A00164D95000E418B0007358200073582000029
      78000012680000035C0000035C00D4D9E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FFFE
      FF00F6F7F60062A7740062A7740083BE920066776B0000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A14F1600A14F16000000
      0000F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F9FFFF00F9FFFF000000
      0000B474490095380000953800009A4101009A410100983E0000983E0000A552
      1600A04D11000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBC3CA00BC732B00E28F3E00E28F3E00E59E
      5600E59D5400E59D5400E59D5400E59D5400E59D5400E59D5500E59D5500E59D
      5500E59D5500E59D5500E59D5500E59D5500E69D5500E69D5500E69D5500E69D
      5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E
      5500E7A05800E1893200E1893200B77B4100BBC1C80000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00010297500001165000013680000136800AFB3
      BF00DAD7D000CECCC600CECCC600CDC7BC00678AAF005081BC005081BC00326B
      AA00346CAA00346BA900346BA900336BA900336BA900326AA800326AA800326A
      A8003269A700326AA700326AA700336AA800336BA900346DAA00346DAA00356E
      AB003772AD0017448B0017448B00112873000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FFFE
      FF00F6F7F60062A7740062A7740083BE920066776B0000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A14F1600A14F16000000
      0000F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F9FFFF00F9FFFF000000
      0000B474490095380000953800009A4101009A410100983E0000983E0000A552
      1600A04D11000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBC3CA00BC732B00E28F3E00E28F3E00E59E
      5600E59D5400E59D5400E59D5400E59D5400E59D5400E59D5500E59D5500E59D
      5500E59D5500E59D5500E59D5500E59D5500E69D5500E69D5500E69D5500E69D
      5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E
      5500E7A05800E1893200E1893200B77B4100BBC1C80000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00010297500001165000013680000136800AFB3
      BF00DAD7D000CECCC600CECCC600CDC7BC00678AAF005081BC005081BC00326B
      AA00346CAA00346BA900346BA900336BA900336BA900326AA800326AA800326A
      A8003269A700326AA700326AA700336AA800336BA900346DAA00346DAA00356E
      AB003772AD0017448B0017448B00112873000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9E3DC0082A78A0082A78A006794700051825C00447A5000447A50003771
      43002F6B3D00266334002663340012512000FFFEFF0000000000000000000000
      000080B790006EB580006EB580007ABE8C0079B5890076AE850076AE850097BD
      A10065967200B2C1B600B2C1B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FBFF
      FF00F4F4F300F5F7F900F5F7F900F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FA
      FC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FA
      FC00F6FAFC00F6FAFC00F6FAFC00F6F9FC00F6FAFD000000000000000000AF6A
      3B00923200009A4101009A4101009A4101009A410100963B0000963B0000B267
      3200912E0000F4EBE500F4EBE5000000000000000000DADADA00DADADA008282
      8200898989007F7F7F007F7F7F0072798200D8761500FFF6E800FFF6E800F3D5
      BC00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F3D4BC00FFFCEF00FFFCEF00C4610100828C960078787800787878008A8A
      8A0083838300D0D0D000D0D0D00000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000000B6200000E65007380A4007380A400E2DF
      D700CACAC900C1C1C100C1C1C100C0BCB7006C8CB200608EC400608EC400316A
      A900356DAB00346DAB00346DAB00346CAA00336BA900336BA900336BA900326A
      A800326AA8003168A6003168A6003268A6003269A7003269A7003269A7003269
      A7003269A7003873AE003873AE00012070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F6E
      3D0000240000002B0600002B0600003B0B00004C0F00005A1200005A12000061
      1300005D13000058120000581200003D0000FFFEFF000000000000000000D5E3
      D80057BB74006FBF86006FBF860073BF88007AC78F007BC68F007BC68F0097CE
      A500107F2E00003D0700003D0700003A0E00E3EAE60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FCFF
      FF00F5F7F900E8D3C500E8D3C500DEBBA200DFBDA600DFBDA600DFBDA600DFBD
      A600DFBEA600DFBEA600DFBEA600DFBEA700DFBEA700DFBFA700DFBFA700E0BF
      A800E0BFA800E0BFA800E0BFA800E0C0AA00EAD2C100AD663400AD6634009333
      00009A4101009A4101009A4101009A410100983E0000A24E1200A24E1200A856
      1B00B26E3E00000000000000000000000000E5E5E5008484840084848400B0B0
      B00094949400B8B9B900B8B9B900616A7300D1721400FDE8D400FDE8D400E7BB
      9A00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E7BB9900FFF1DE00FFF1DE00B95D0300717A8300B3B3B300B3B3B3009494
      9400ADADAD008B8B8B008B8B8B00D9D9D900F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000106600000C6500969FB600969FB600D8D7
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8EB300608FC500608FC500326B
      AA00356DAB00356DAB00356DAB00346CAA00356CAA00336BA900336BA900346B
      A900326AA800326AA800326AA8003168A6003168A6003269A7003269A7003269
      A7003269A700356FAB00356FAB000F3480000000000000000000000000000000
      00000000000000000000000000000000000000000000397F4800397F48000014
      00000426130005311700053117000544190004551C0004611D0004611D00046A
      1D0004691D0004631B0004631B000048000000000000000000000000000061C0
      82006FD896006ECA8B006ECA8B006EC4860073CA8B0077CB8F0077CB8F007CC6
      900051AB6B0012752F0012752F0007491A000046180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FCFF
      FF00F6F9FB00E4C9B600E4C9B600D7A88600D8AB8B00D8AB8B00D8AB8B00D8AC
      8B00D8AC8C00D8AC8C00D8AC8C00D8AC8D00D9AD8D00D9AD8E00D9AD8E00D9AE
      8E00D9AE8F00DAAF9100DAAF9100E4C3AC00A6531A0094360000943600009A41
      01009A4101009A4101009A410100993F00009C450700A8571D00A8571D00AC65
      32000000000000000000000000000000000094949400B4B4B400B4B4B4009393
      930096969600AAAAAA00AAAAAA00767F8800BC5D0100FFF9E400FFF9E400F3C8
      A700F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F4C9A900FFEDCD00FFEDCD00BC6818006B737B00B0B0B000B0B0B0009696
      960094949400AFAFAF00AFAFAF0091919100F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500929CB500D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB300608EC400608EC400326C
      AB00366EAC00356EAC00356EAC00366DAB00346CAA00356CAA00356CAA00336C
      AA00336AA800336AA800336AA800326AA8003169A7003168A6003168A6003269
      A7003269A700356EAB00356EAB000F3580000000000000000000000000000000
      00000000000000000000000000000000000000000000397F4800397F48000014
      00000426130005311700053117000544190004551C0004611D0004611D00046A
      1D0004691D0004631B0004631B000048000000000000000000000000000061C0
      82006FD896006ECA8B006ECA8B006EC4860073CA8B0077CB8F0077CB8F007CC6
      900051AB6B0012752F0012752F0007491A000046180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FCFF
      FF00F6F9FB00E4C9B600E4C9B600D7A88600D8AB8B00D8AB8B00D8AB8B00D8AC
      8B00D8AC8C00D8AC8C00D8AC8C00D8AC8D00D9AD8D00D9AD8E00D9AD8E00D9AE
      8E00D9AE8F00DAAF9100DAAF9100E4C3AC00A6531A0094360000943600009A41
      01009A4101009A4101009A410100993F00009C450700A8571D00A8571D00AC65
      32000000000000000000000000000000000094949400B4B4B400B4B4B4009393
      930096969600AAAAAA00AAAAAA00767F8800BC5D0100FFF9E400FFF9E400F3C8
      A700F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F4C9A900FFEDCD00FFEDCD00BC6818006B737B00B0B0B000B0B0B0009696
      960094949400AFAFAF00AFAFAF0091919100F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500929CB500D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB300608EC400608EC400326C
      AB00366EAC00356EAC00356EAC00366DAB00346CAA00356CAA00356CAA00336C
      AA00336AA800336AA800336AA800326AA8003169A7003168A6003168A6003269
      A7003269A700356EAB00356EAB000F3580000000000000000000000000000000
      00000000000000000000000000000000000097C8A500356F4400356F44000016
      0B00052C1500053618000536180006441D0005551E000563200005632000066C
      2200056F210004681E0004681E00004C030000000000ABD1B800ABD1B80073EF
      B30075DFA6006DD292006DD292006AC987006DCB890071CF8C0071CF8C0075CB
      8E0064BA7D00188C3D00188C3D0012662E00004615007C9F89007C9F89000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A4572000FDFF
      FF00F5F5F500F7FAFC00F7FAFC00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FD
      FF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FD
      FF00F9FEFF000000000000000000B2724600933500009A4101009A4101009A41
      01009A41010099400000994000009A410100A8571E00AD653300AD6533000000
      0000000000000000000000000000000000009A9A9A00A0A0A000A0A0A0009F9F
      9F009F9F9F009C9C9C009C9C9C00BCBCBD008B8D900090898200908982008A7E
      74008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008A7E75008F857A008F857A0088878600BEBFC0009B9B9B009B9B9B009F9F
      9F009F9F9F009F9F9F009F9F9F0096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000146B0000106A00939DB500939DB500D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB4005F8EC5005F8EC500336C
      AB00376FAD00376FAD00376FAD00356EAC00366DAB00346DAB00346DAB00356C
      AA00346BA900346AA800346AA800336AA8003369A7003169A7003169A7003168
      A6003269A700356EAB00356EAB000F3682000000000000000000000000000000
      0000000000000000000000000000FFFEFF00188F390073A07E0073A07E000013
      0700062E170006391B0006391B0006431E00075522000662230006622300066C
      240005712400066D2200066D220000500600FFFEFF0061D8AC0061D8AC0087F6
      D30079E3B1006DD599006DD5990065CC870067CC85006CD18A006CD18A006ECE
      8B006EC689001E9746001E9746001A843F000F602C000041100000411000FDFB
      FC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A4572000FEFF
      FF00F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F7
      F70000000000AF6A3B00AF6A3B00923200009A4101009A4101009A4101009A41
      010099400000983E0000983E0000A5541A00A3531A0000000000000000000000
      00000000000000000000000000000000000099999900AAAAAA00AAAAAA00A7A7
      A700A8A8A800A8A8A800A8A8A800A5A5A500ADAEAE00BFC0C100BFC0C100C0C2
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C2C300C0C1C300C0C1C300AFB0B000A4A4A400A7A7A700A7A7A700A7A7
      A700A8A8A800A9A9A900A9A9A90096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000166D0000126C00939DB600939DB600D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB500618FC500618FC500346D
      AC003770AE00376FAD00376FAD00376EAC00366EAC00366EAC00366EAC00356D
      AB00356CAA00346BA900346BA900346BA900336AA8003369A7003369A7003269
      A7003168A600356EAA00356EAA00103783000000000000000000000000000000
      00000000000000000000000000005EA974003CA95C0081C8930081C893000018
      0800072E1A00073B1D00073B1D0007462000065223000762260007622600066B
      2600067026000670250006702500005208000000000082D0AC0082D0AC0085F6
      D80076E1B10068D3960068D3960060C9850062CC840067D1890067D1890069D1
      8B0070CE8E0024A24F0024A24F0021934B0016773C000559260005592600477B
      5C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A45720000000
      0000F7F7F700F8FBFD00F8FBFD00FAFFFF00FAFFFF00FAFFFF00FAFFFF00FAFF
      FF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFFFF00FAFFFF000000
      0000AF6B3B0092320000923200009A4101009A4101009A4101009A4101009940
      0000983E0000A14D1000A14D1000B2704300B16C3D0000000000000000000000
      00000000000000000000000000000000000098989800B3B3B300B3B3B300AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ACABAC00BBB3BE00BBB4BE00BBB4BE00AFAD
      AF00AFAFAF00B2B2B200B2B2B20096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700939DB700D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB5006190C6006190C600346E
      AD003871AF003770AE003770AE00376FAD00366FAD00366EAC00366EAC00366E
      AC00356CAA00356CAA00356CAA00346CAA00346BA900336BA900336BA9003369
      A7003269A700356EAA00356EAA00103885000000000000000000000000000000
      00000000000000000000000000005EA974003CA95C0081C8930081C893000018
      0800072E1A00073B1D00073B1D0007462000065223000762260007622600066B
      2600067026000670250006702500005208000000000082D0AC0082D0AC0085F6
      D80076E1B10068D3960068D3960060C9850062CC840067D1890067D1890069D1
      8B0070CE8E0024A24F0024A24F0021934B0016773C000559260005592600477B
      5C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A45720000000
      0000F7F7F700F8FBFD00F8FBFD00FAFFFF00FAFFFF00FAFFFF00FAFFFF00FAFF
      FF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFFFF00FAFFFF000000
      0000AF6B3B0092320000923200009A4101009A4101009A4101009A4101009940
      0000983E0000A14D1000A14D1000B2704300B16C3D0000000000000000000000
      00000000000000000000000000000000000098989800B3B3B300B3B3B300AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ACABAC00BBB3BE00BBB4BE00BBB4BE00AFAD
      AF00AFAFAF00B2B2B200B2B2B20096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700939DB700D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB5006190C6006190C600346E
      AD003871AF003770AE003770AE00376FAD00366FAD00366EAC00366EAC00366E
      AC00356CAA00356CAA00356CAA00346CAA00346BA900336BA900336BA9003369
      A7003269A700356EAA00356EAA00103885000000000000000000000000000000
      000000000000D9E7DE00D9E7DE0029984B0055B8740057C87A0057C87A000745
      1B00062A1800073B1C00073B1C000747220007522500085F2700085F27000869
      2900076E2800067028000670280000530A0000000000F1F1ED00F1F1ED0058D1
      9C006BDAA50060CA8D0060CA8D005AC27F005CC9810061CF860061CF860063D1
      88006CD08E002BAD5A002BAD5A00279C53001D894800136F3A00136F3A000049
      1600D6DED9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A55720000000
      0000F9FCFE00E5CBB800E5CBB800D8A98800D9AD8E00D9AE8E00D9AE8E00D9AD
      8F00D9AE8F00D9AE9000D9AE9000D9AF9100D9AF9100E0BBA100E0BBA100AA5E
      2900933400009A4101009A4101009A4101009A4101009940000099400000983E
      00009E470800AD653400AD65340000000000A95D270000000000000000000000
      00000000000000000000000000000000000097979700BCBCBC00BCBCBC00B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B5B4B500B5B4B500DCDCDB0084CF660085C7660085C76600D4DE
      CE00B6B4B600BBBBBB00BBBBBB0095959500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000A481
      3100AC8D4600F0F0F000F0F0F0000019790000167100939EB700939EB700D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006F90B5006191C7006191C700356F
      AE003871AF003971AF003971AF003770AE003870AE00366FAD00366FAD00366E
      AC00366DAB00356DAB00356DAB00356DAB00346BA900336BA900336BA900336B
      A9003369A700356EAB00356EAB00113986000000000000000000000000000000
      0000000000003A9858003A98580067BC830046B66B0030BB5D0030BB5D00359D
      5300041F1300093C2100093C21000746210008512500075C2700075C27000865
      2900066A2A00066B2800066B280000510B000000000000000000000000008CC5
      A20053C6880053BA7D0053BA7D0051B9770056C37D005ACC82005ACC82005DCF
      860060CF880031B4630031B4630027A458001D904C00137C4100137C41000665
      30001D623B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5561F00A5561F000000
      0000F9FCFD00EDDBCE00EDDBCE00E4C4AE00E5C8B200E4C5B000E4C5B000E2C3
      AC00E2C2AC00E2C3AC00E2C3AC00E2C3AD00E4C7B200D9B39900D9B399008F2E
      00009A4101009A4101009A4101009A4101009A410100983E0000983E00009A41
      0100AD663500000000000000000000000000A95C260000000000000000000000
      00000000000000000000000000000000000096969600C5C5C500C5C5C500BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BEBBBE00BEBBBE00CFE3D50051BB2800279F0000279F0000BED8
      B200C0BCC100C3C3C300C3C3C30095959500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000B596
      5000A0782100B0862700B086270035436500000F7C00929EB900929EB900D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB6007091B6006291C7006291C700356F
      AE003A72B0003871AF003871AF003970AE003770AE00386FAD00386FAD00366F
      AD00366EAC00356DAB00356DAB00356DAB00346DAB00346BA900346BA900336B
      A900336BA900366EAB00366EAB00113B88000000000000000000000000000000
      0000A5CCB2004FAB6F004FAB6F006DC28A0032B25E003BBE69003BBE69004ACF
      7600023E180000230A0000230A0000310C00003E100000491300004913000050
      130000561400005A1600005A1600004700000000000000000000000000000000
      0000349B5E0046A96D0046A96D004BB2720063C0870059C3810059C3810063CD
      8A006CD391006FDA97006FDA97006AD0920060C2880055AD7B0055AD7B00388F
      610000521C00A2BAAB00A2BAAB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6582200A65822000000
      000000000000F5F1F000F5F1F000E8DAD000E7D8CE00F3EEEC00F3EEEC000000
      000000000000FEFFFF00FEFFFF00FBFFFF0000000000DBBFAD00DBBFAD009233
      00009A4101009A4101009A41010099400000993F0000973C0000973C0000AF68
      360000000000F9FAFB00F9FAFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000095959500CCCCCC00CCCCCC00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C3C500C6C3C500C5E7D500BBF1B10078D15E0078D15E00CDE4
      C700C6C3C700CCCCCC00CCCCCC0095959500C1A56900B4944B00B4944B00B595
      4E00B5954E00B5954E00B5954E00B5954E00B5954E00B7975100B7975100AC87
      3700AA853200AA843200AA843200BE902A00665B440091A0C00091A0C000D7D7
      D800C9C9C900C1C1C100C1C1C100BFBBB6007091B6006191C8006191C8003670
      AF003972B0003A72B0003A72B0003872B0003970AE003870AE003870AE00386F
      AD00366FAD00366EAC00366EAC00356DAB00356DAB00346DAB00346DAB00346C
      AA00336BA9003770AC003770AC00123D8A000000000000000000000000000000
      0000A5CCB2004FAB6F004FAB6F006DC28A0032B25E003BBE69003BBE69004ACF
      7600023E180000230A0000230A0000310C00003E100000491300004913000050
      130000561400005A1600005A1600004700000000000000000000000000000000
      0000349B5E0046A96D0046A96D004BB2720063C0870059C3810059C3810063CD
      8A006CD391006FDA97006FDA97006AD0920060C2880055AD7B0055AD7B00388F
      610000521C00A2BAAB00A2BAAB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6582200A65822000000
      000000000000F5F1F000F5F1F000E8DAD000E7D8CE00F3EEEC00F3EEEC000000
      000000000000FEFFFF00FEFFFF00FBFFFF0000000000DBBFAD00DBBFAD009233
      00009A4101009A4101009A41010099400000993F0000973C0000973C0000AF68
      360000000000F9FAFB00F9FAFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000095959500CCCCCC00CCCCCC00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C3C500C6C3C500C5E7D500BBF1B10078D15E0078D15E00CDE4
      C700C6C3C700CCCCCC00CCCCCC0095959500C1A56900B4944B00B4944B00B595
      4E00B5954E00B5954E00B5954E00B5954E00B5954E00B7975100B7975100AC87
      3700AA853200AA843200AA843200BE902A00665B440091A0C00091A0C000D7D7
      D800C9C9C900C1C1C100C1C1C100BFBBB6007091B6006191C8006191C8003670
      AF003972B0003A72B0003A72B0003872B0003970AE003870AE003870AE00386F
      AD00366FAD00366EAC00366EAC00356DAB00356DAB00346DAB00346DAB00346C
      AA00336BA9003770AC003770AC00123D8A000000000000000000000000000000
      00003293560086C89E0086C89E0048B671003CBA6A0040C1700040C1700046CE
      790012943D00C6D1CB00C6D1CB00EAF6EE00FBFFFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9CEB6002E9357002E9357004BB074006F8B7B00E1EFE500E1EFE500E5EF
      E800D4E6D90000391300003913001149290021563900386D4D00386D4D006C96
      7D00B3D4C00055906F0055906F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC643000AC643000C08A
      6500933500008D2900008D2900008E2B00008E2B00008E2A00008E2A0000902F
      0000B2704200E8D8CE00E8D8CE0000000000D9BAA5008C2700008C2700009940
      00009A41010099400000994000009940000095370000AF683700AF6837000000
      0000F9FAFA00F9F9F900F9F9F90000000000A95C260000000000000000000000
      00000000000000000000000000000000000094949400D3D3D300D3D3D300CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00D0CCCF00C8DAD400D8DDE100D8DDE100D0D0
      D200CDCDCD00D4D4D400D4D4D40094949400AC843200AD863300AD863300AD86
      3300AD863300AD863300AD863300AD863300AD863300AD863300AD863300AF88
      3700AF893800AF893800AF893800AF893800B68C3200B78F3D00B78F3D00C9C2
      B500CACDD500C1C1C200C1C1C200BFBBB6007091B6006292C8006292C8003671
      B0003B73B1003973B1003973B1003A72B0003972B0003971AF003971AF003870
      AE00386FAD00376FAD00376FAD00366EAC00366EAC00356DAB00356DAB00356C
      AA00346CAA003770AC003770AC00123F8B0000000000000000000000000080B7
      950077BB920076C4940076C4940038B2680043BF740043C5760043C576003CC7
      72005FD28B0063A3770063A3770000000000000000000000000000000000CFDA
      D200E3EBE6000000000000000000000000000000000000000000000000000000
      00000000000039925D0039925D003FA068008EA4970000000000000000000000
      00006DA48300005822000058220009592C00074F260004442100044421000034
      160000210A003D7152003D715200C5D6CC000000000000000000000000000000
      000000000000000000000000000000000000BC8359009233000092330000902E
      00008E2A0000963B0000963B0000A85B2600A95D28009A4103009A4103008D29
      0000902E00008D2900008D290000AD663500912F000099400000994000009940
      000099400000963900009639000091300000B37245000000000000000000FEFF
      FF00FCFEFF00FAFAFA00FAFAFA0000000000A95C260000000000000000000000
      00000000000000000000000000000000000093939300DBDBDB00DBDBDB00D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D8D8
      D800D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D8D8D800D4D4D400D4D4D400D4D4D400D5D3D400D4D2D300D4D2D300D4D4
      D400D4D4D400DBDBDB00DBDBDB0094949400B48D3D00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B38C3900B38C3900B287
      2E00BEA97E00C1C5CD00C1C5CD00BFBCBA007091B7006292C8006292C8003771
      B1003B74B2003B74B2003B74B2003A73B1003972B0003971AF003971AF003971
      AF003870AE00386FAD00386FAD00376FAD00376FAD00366EAC00366EAC00366D
      AB00346CAA003871AD003871AD0013408E0000000000000000000000000063AA
      7F0099CFAF0044B0710044B0710043B9740042C077005BCF8A005BCF8A008FDF
      B00096E2B50062BD850062BD8500D7E1DA00D5DFD7005C9A71005C9A710078B2
      8E00C9DDD1000000000000000000000000000000000000000000000000000000
      000000000000CBE2D300CBE2D30022854E009EB3A50000000000000000000000
      0000006920000A7736000A7736000C7237000B6A34000B612F000B612F000A56
      2A0006482200003114000031140098B8A3000000000000000000000000000000
      00000000000000000000000000009F4A0E00902F00008D2900008D290000BD85
      5F00F1E9E500000000000000000000000000000000000000000000000000F7F5
      F400C7977700902E0000902E0000943600009940000099400000994000009A41
      0100902E0000C1855B00C1855B00CC9A7700DBB59900D3A58500D3A58500D0A1
      7F00E6CFBD00FCFEFF00FCFEFF0000000000A95C260000000000000000000000
      00000000000000000000000000000000000092929200E3E3E300E3E3E300DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DDDDDD00E6E7E800E6E7E800B9BB
      BC00B1B3B400B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4
      B600B2B5B700B2B5B700B2B5B700B2B5B700B2B5B700B2B5B800B2B5B800B2B5
      B800B2B6B800B2B6B800B2B6B800B2B6B800B2B6B900B2B6B900B2B6B900B2B5
      B800B8BBBE00E5E6E700E5E6E700DEDEDE00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00E3E3E300E3E3E30094949400B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B991
      4000B78D3500B9964E00B9964E00BEB7AF007092BA006392C9006392C9003872
      B1003C75B3003C75B3003C75B3003B74B2003A73B1003972B0003972B0003972
      B0003971AF003870AE003870AE003870AE003770AE00376EAC00376EAC00366E
      AC00356DAB003871AD003871AD0013418F0000000000000000000000000063AA
      7F0099CFAF0044B0710044B0710043B9740042C077005BCF8A005BCF8A008FDF
      B00096E2B50062BD850062BD8500D7E1DA00D5DFD7005C9A71005C9A710078B2
      8E00C9DDD1000000000000000000000000000000000000000000000000000000
      000000000000CBE2D300CBE2D30022854E009EB3A50000000000000000000000
      0000006920000A7736000A7736000C7237000B6A34000B612F000B612F000A56
      2A0006482200003114000031140098B8A3000000000000000000000000000000
      00000000000000000000000000009F4A0E00902F00008D2900008D290000BD85
      5F00F1E9E500000000000000000000000000000000000000000000000000F7F5
      F400C7977700902E0000902E0000943600009940000099400000994000009A41
      0100902E0000C1855B00C1855B00CC9A7700DBB59900D3A58500D3A58500D0A1
      7F00E6CFBD00FCFEFF00FCFEFF0000000000A95C260000000000000000000000
      00000000000000000000000000000000000092929200E3E3E300E3E3E300DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DDDDDD00E6E7E800E6E7E800B9BB
      BC00B1B3B400B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4
      B600B2B5B700B2B5B700B2B5B700B2B5B700B2B5B700B2B5B800B2B5B800B2B5
      B800B2B6B800B2B6B800B2B6B800B2B6B800B2B6B900B2B6B900B2B6B900B2B5
      B800B8BBBE00E5E6E700E5E6E700DEDEDE00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00E3E3E300E3E3E30094949400B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B991
      4000B78D3500B9964E00B9964E00BEB7AF007092BA006392C9006392C9003872
      B1003C75B3003C75B3003C75B3003B74B2003A73B1003972B0003972B0003972
      B0003971AF003870AE003870AE003870AE003770AE00376EAC00376EAC00366E
      AC00356DAB003871AD003871AD0013418F0000000000000000000000000090C4
      A50071BD93003BAC6D003BAC6D0047BB7B0075D29E0088DBAC0088DBAC0084DB
      AA0089DAAC00A1E3BE00A1E3BE0056A5760066B28200B0DAC300B0DAC3009BC6
      AC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004E976C00A0BCAB00000000000000000061AA
      7D00007F33000B873E000B873E000C843E000C7F3B000B7738000B7738000B6C
      3300095E2D00004418000044180091B29C000000000000000000000000000000
      000000000000A14E1200A14E120092320000973C0000F3EDE900F3EDE9000000
      0000FBFDFE00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FAFC
      FD0000000000FCFEFF00FCFEFF00A14E1500953800009A4101009A4101009231
      0000D4AF9500F2E6DD00F2E6DD00EDDDD200EBDACE00EBDBCE00EBDBCE00EAD8
      CB00F3EAE400FBFDFE00FBFDFE0000000000A95C260000000000000000000000
      00000000000000000000000000000000000092929200EAEAEA00EAEAEA00E1E1
      E100E1E1E100E1E1E100E1E1E100E3E3E300DDDFE0007576750075767500C0B0
      A300C9B7A800C8B5A700C8B5A700C8B4A600C7B3A400C7B2A200C7B2A200C6B1
      A000C6AF9E00C5AE9C00C5AE9C00C5AD9A00C5AB9800C4AA9600C4AA9600C4A8
      9400C3A79200C3A69000C3A69000C2A58E00C2A38C00C1A28A00C1A28A00C2A1
      8800BCA088007778760077787600D6D7D900E4E4E400E1E1E100E1E1E100E1E1
      E100E1E1E100EAEAEA00EAEAEA0093939300BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BB924000C69E4C00C69E4C00D2A347006F95C2006493CA006493CA003873
      B2003F7BB8003D78B5003D78B5003D78B5003A74B2003A73B1003A73B1003973
      B1003971AF003871AF003871AF003871AF003770AE003770AE003770AE00376E
      AC00366EAC003972AE003972AE0014439100000000000000000000000000A9D0
      B900379D67004DB37D004DB37D0077CC9E007AD2A20081D7A80081D7A80088D9
      AD008FD9B00093D6B10093D6B100A1D9BA00A4D4BA0092C4A80092C4A800E9F1
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFCFA00FCFEFC00F5F6F500F5F6F5000077
      27000B8E43000C9145000C9145000C9044000C8C41000B853C000B853C000A7D
      3900087032000A642F000A642F00B1C7B8000000000000000000000000000000
      0000C4916D00902E0000902E00009639000000000000FDFFFF00FDFFFF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FCFEFF00FCFEFF0000000000A24F15009537000095370000AE67
      360000000000FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFF
      FF00FBFDFD00FBFBFB00FBFBFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000091919100F1F1F100F1F1F100E7E7
      E700E7E7E700E7E7E700E7E7E700F2F3F40076716C00F2B57700F2B57700FEEC
      DE00F9E3D200F3D8C000F3D8C000F0D3B800F0D2B700EFD1B500EFD1B500EFD0
      B200EECEB000EECCAE00EECCAE00EDCBAC00EDCAAA00ECC8A800ECC8A800ECC7
      A500EBC5A300EBC4A100EBC4A100EBC39F00EAC19D00E9BF9A00E9BF9A00EEC4
      A400F5D1B500EFA96200EFA9620074716E00F2F3F400E7E7E700E7E7E700E7E7
      E700E7E7E700F1F1F100F1F1F10093939300C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C2994800C2994800BF95
      4200D8B46600DABC7C00DABC7C00BCB6AD007194BA006494CA006494CA003C78
      B600234F9500000257000002570029589C003E78B6003A73B1003A73B1003B73
      B1003973B1003971AF003971AF003871AF003870AE003770AE003770AE003770
      AE00366EAC003A72AF003A72AF0014449300000000000000000000000000CDE3
      D400399A69006BBD94006BBD940072C79C007BD0A40083D4AA0083D4AA008AD6
      AF0092D7B30098D6B70098D6B7009DD4B800A1D0B800ADCEBA00ADCEBA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A9760003A9760000087
      3B000B9247000B9648000B9648000D9749000D9448000B8E44000B8E44000C86
      4000047835002B794A002B794A00F4F7F400000000000000000000000000FEFE
      FD008C2800008D2900008D290000EEE3DC00FEFFFF00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900FBFDFF00FDFFFF00912F0000912F00008F2A
      0000E9D9CF00FEFFFF00FEFFFF00FBFCFC00FBFCFC00FBFCFC00FBFCFC00FBFC
      FC00FBFBFB00FBFBFB00FBFBFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000091919100F7F7F700F7F7F700EDED
      ED00EDEDED00EDEDED00EDEDED00F3F6F80083705E00EEAF6F00EEAF6F00F8EA
      DF00F5E2D400E7CAAC00E7CAAC00E1C19C00E2C19C00E1C09B00E1C09B00E0BF
      9A00E1BE9800E0BD9700E0BD9700E0BC9500DFBB9400DEBA9300DEBA9300DFBA
      9100DFB99000DEB88F00DEB88F00DDB78D00DEB68C00DDB58900DDB58900EBC4
      A700F2D4BC00E2954700E295470098999B00EAEBEB00EEEEEE00EEEEEE00EDED
      ED00EDEDED00F7F7F700F7F7F70092929200C79D4C00C79D4C00C79D4C00C79D
      4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79E
      4D00C89E4E00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00C99F4E00E4C1
      7600CFB98F00BEC0C600BEC0C600BEBBB9007193B8006594CA006594CA003D7B
      B800133D8A00002078000020780018448E003F7BB7003C75B3003C75B3003A74
      B2003A73B1003A73B1003A73B1003972B0003871AF003970AE003970AE003770
      AE003770AE003A73AF003A73AF0015469500000000000000000000000000CDE3
      D400399A69006BBD94006BBD940072C79C007BD0A40083D4AA0083D4AA008AD6
      AF0092D7B30098D6B70098D6B7009DD4B800A1D0B800ADCEBA00ADCEBA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A9760003A9760000087
      3B000B9247000B9648000B9648000D9749000D9448000B8E44000B8E44000C86
      4000047835002B794A002B794A00F4F7F400000000000000000000000000FEFE
      FD008C2800008D2900008D290000EEE3DC00FEFFFF00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900FBFDFF00FDFFFF00912F0000912F00008F2A
      0000E9D9CF00FEFFFF00FEFFFF00FBFCFC00FBFCFC00FBFCFC00FBFCFC00FBFC
      FC00FBFBFB00FBFBFB00FBFBFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000091919100F7F7F700F7F7F700EDED
      ED00EDEDED00EDEDED00EDEDED00F3F6F80083705E00EEAF6F00EEAF6F00F8EA
      DF00F5E2D400E7CAAC00E7CAAC00E1C19C00E2C19C00E1C09B00E1C09B00E0BF
      9A00E1BE9800E0BD9700E0BD9700E0BC9500DFBB9400DEBA9300DEBA9300DFBA
      9100DFB99000DEB88F00DEB88F00DDB78D00DEB68C00DDB58900DDB58900EBC4
      A700F2D4BC00E2954700E295470098999B00EAEBEB00EEEEEE00EEEEEE00EDED
      ED00EDEDED00F7F7F700F7F7F70092929200C79D4C00C79D4C00C79D4C00C79D
      4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79E
      4D00C89E4E00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00C99F4E00E4C1
      7600CFB98F00BEC0C600BEC0C600BEBBB9007193B8006594CA006594CA003D7B
      B800133D8A00002078000020780018448E003F7BB7003C75B3003C75B3003A74
      B2003A73B1003A73B1003A73B1003972B0003871AF003970AE003970AE003770
      AE003770AE003A73AF003A73AF00154695000000000000000000000000000000
      000058A67D0068B7910068B7910073C29D007DCBA40085D1AC0085D1AC0092D7
      B8009EDCC400A7DECB00A7DECB00ABDECD0093C7AF00FFFEFD00FFFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1DACA00006C2600006C26000A88
      43000A9147000B974B000B974B000C994B000C974A000A9247000A9247000A8B
      4300007A330089AB940089AB940000000000000000000000000000000000C897
      75008F2D0000B4724500B472450000000000FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFBFC0000000000C8987800C8987800912F
      0000B37142000000000000000000FAF8F700FAF9F700FAF8F700FAF8F700FAF8
      F600FBFAF900FCFDFD00FCFDFD0000000000A95C260000000000000000000000
      0000000000000000000000000000000000008B8B8B000000000000000000F3F3
      F300F2F2F200F3F3F300F3F3F300F7F9FB0083756700ECAA6800ECAA6800F9ED
      E300F5E3D500F7E5D900F7E5D900F7E5D900F7E3D600F6E2D300F6E2D300F6E0
      D100F5DECE00F4DCCB00F4DCCB00F4DAC800F3D8C600F3D7C300F3D7C300F2D5
      C000F2D3BD00F1D1BB00F1D1BB00F0CFB800EFCDB500EFCCB200EFCCB200EBC5
      A800F5DBC500DD8B3800DD8B380099A2AB00EBEBEB00F4F4F400F4F4F400F2F2
      F200F2F2F20000000000000000008A8A8A00D4AD5D00CFA55500CFA55500D0A6
      5500D0A65500D0A65500D0A65500D0A65500D0A65500D0A75700D0A75700CDA3
      5300CCA25200CCA25200CCA25200CA9D4C00E1B76500EAC98200EAC98200CCC2
      B000C7CAD200C1C1C200C1C1C200BEBAB6007293B8006595CB006595CB003C77
      B600356EB100104AA000104AA0003771B1003E77B4003B75B3003B75B3003C75
      B3003B74B2003B73B1003B73B1003A72B0003A72B0003871AF003871AF003971
      AF003770AE003B74B0003B74B000154796000000000000000000000000000000
      0000A1CAB30063AF8D0063AF8D0072BD9B007DC6A5008FD3B7008FD3B700A2DE
      CB00B3E6D900BCEAE000BCEAE000BAE9DE00C2DACB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008DBFA1000066220000662200007C
      38000B8A47000B9149000B9149000D944C000C954D000C924A000C924A00048A
      4100217F4B00EDF1ED00EDF1ED0000000000000000000000000000000000A251
      19008F2C0000E5D1C400E5D1C400FEFFFF00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFCFC00FBFCFC00F7F2EF00FDFFFF00F8F7F600F8F7F6008F2B
      000093340000D9B09400D9B09400D2A48300D1A48300D1A48300D1A48300CF9F
      7D00E6CFBE00FEFFFF00FEFFFF0000000000A95B260000000000000000000000
      000000000000000000000000000000000000C0C0C000B3B3B300B3B3B3000000
      0000FEFEFE0000000000000000000000000080746700EAA76300EAA76300FAEF
      E700F7E8DC00EAD1B700EAD1B700E5C8A800E5C8A800E4C7A600E4C7A600E4C6
      A500E4C5A300E4C4A200E4C4A200E3C3A000E3C29F00E3C19D00E3C19D00E2BF
      9B00E1BF9A00E1BE9800E1BE9800E1BD9700E1BB9500DFBA9300DFBA9300EDC9
      AE00F8E0CC00DB8A3A00DB8A3A00929AA200F5F5F5000000000000000000FEFE
      FE0000000000C1C1C100C1C1C100B3B3B300F1E0BD00F0DDB000F0DDB000F1DD
      B100F1DDB100F1DDB100F1DDB100F1DDB100F1DDB100F3E1B800F3E1B800D7B0
      6600CFA35200D0A25200D0A25200FCD27C00988E760090A0BC0090A0BC00D5D6
      D600C9C9C900C1C1C100C1C1C100BEBAB6007294B9006695CC006695CC003B76
      B500407AB700427CB800427CB8003F78B6003D77B5003D76B4003D76B4003C75
      B3003C74B2003B74B2003B74B2003B73B1003A72B0003A72B0003A72B0003972
      B0003870AE003B74B0003B74B0001549970000000000000000000000000069A1
      7C002B8B51006CAE92006CAE920072B6980082C5AB009AD9C6009AD9C600B5E6
      DC00CAF0E900DCF8F400DCF8F400A8D2C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFDFB00FCFDFB00439A
      690000722C0004854100048541000A8C46000A8C47000B8B48000B8B4800007F
      390086AB93000000000000000000000000000000000000000000000000008D2A
      00008E2B00000000000000000000FBFCFC00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FDFFFF00FDFFFF00E1C1AA00FCFEFE0000000000000000009B42
      0300902D0000ECDBD000ECDBD000F6F0EB00F4ECE600F4ECE600F4ECE600F3EB
      E400F8F4F100FDFDFE00FDFDFE0000000000A95C260000000000000000000000
      00000000000000000000000000000000000000000000A1A1A100A1A1A1008484
      8400C5C5C500C2C2C200C2C2C200C3C5C6007D726800E9A45F00E9A45F00FBF2
      EB00F8EADF00EFDAC600EFDAC600EBD4BC00EBD3BB00EBD2B900EBD2B900EBD1
      B700EAD0B500EACEB300EACEB300EACDB100E9CBAF00E8CAAD00E8CAAD00E8C8
      AB00E7C7A800E6C5A700E6C5A700E6C4A500E5C3A300E5C1A000E5C1A000EDCA
      B100FAE4D000D6873900D68739008B939B00BBBBBB00C6C6C600C6C6C600BDBD
      BD0089898900969696009696960000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DBB4
      6E00D9AD5C00F8D28300F8D2830056657F00001F8F0093A3BF0093A3BF00D8D5
      D200C9C9C900C1C1C100C1C1C100BEBAB6007294B9006595CC006595CC003B76
      B5003F79B7003F78B6003F78B6003E78B6003E77B5003D77B5003D77B5003D76
      B4003C75B3003C74B2003C74B2003B74B2003B73B1003A73B1003A73B1003A73
      B1003971AF003C75B1003C75B100164A9A0000000000000000000000000069A1
      7C002B8B51006CAE92006CAE920072B6980082C5AB009AD9C6009AD9C600B5E6
      DC00CAF0E900DCF8F400DCF8F400A8D2C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFDFB00FCFDFB00439A
      690000722C0004854100048541000A8C46000A8C47000B8B48000B8B4800007F
      390086AB93000000000000000000000000000000000000000000000000008D2A
      00008E2B00000000000000000000FBFCFC00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FDFFFF00FDFFFF00E1C1AA00FCFEFE0000000000000000009B42
      0300902D0000ECDBD000ECDBD000F6F0EB00F4ECE600F4ECE600F4ECE600F3EB
      E400F8F4F100FDFDFE00FDFDFE0000000000A95C260000000000000000000000
      00000000000000000000000000000000000000000000A1A1A100A1A1A1008484
      8400C5C5C500C2C2C200C2C2C200C3C5C6007D726800E9A45F00E9A45F00FBF2
      EB00F8EADF00EFDAC600EFDAC600EBD4BC00EBD3BB00EBD2B900EBD2B900EBD1
      B700EAD0B500EACEB300EACEB300EACDB100E9CBAF00E8CAAD00E8CAAD00E8C8
      AB00E7C7A800E6C5A700E6C5A700E6C4A500E5C3A300E5C1A000E5C1A000EDCA
      B100FAE4D000D6873900D68739008B939B00BBBBBB00C6C6C600C6C6C600BDBD
      BD0089898900969696009696960000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DBB4
      6E00D9AD5C00F8D28300F8D2830056657F00001F8F0093A3BF0093A3BF00D8D5
      D200C9C9C900C1C1C100C1C1C100BEBAB6007294B9006595CC006595CC003B76
      B5003F79B7003F78B6003F78B6003E78B6003E77B5003D77B5003D77B5003D76
      B4003C75B3003C74B2003C74B2003B74B2003B73B1003A73B1003A73B1003A73
      B1003971AF003C75B1003C75B100164A9A00C1D7C80010633100106331004387
      680056947D005C9D83005C9D830068AA900080C4AE00A1DDD100A1DDD100C4EF
      E900E4FBF800D8F1EA00D8F1EA00DEEBE20000000000D9E2DC00D9E2DC002866
      3700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDEAE2001483460014834600007633000882410006804100068041001574
      4100FAF9F80000000000000000000000000000000000FEFEFF00FEFEFF008D29
      0000953900000000000000000000FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC000000000000000000D4A48100F7F2EE000000000000000000AA5E
      29008F2B0000E9D7CB00E9D7CB0000000000FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00FDFEFE00FDFDFD00FDFDFD0000000000A95D260000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073737300ABABAB00ABABAB00A4A6A700B8B0A800E49C5500E49C5500FDF5
      EF00F8EBE100F9EBE200F9EBE200F9EBE100F8E9DF00F7E7DC00F7E7DC00F7E6
      D900F7E4D700F5E2D400F5E2D400F4E0D000F4DDCD00F2DACA00F2DACA00F0D7
      C500EFD4C100EED2BE00EED2BE00EDD0BB00EDCFB900EDCEB700EDCEB700EAC9
      B000FCE7D400C97C3100C97C3100BBC3CB00A9A9A9007474740074747400D3D3
      D300F9F9F900000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EBCB
      8900E9C98700F0F0F000F0F0F000002E9300002E8E0095A5BF0095A5BF00D8D5
      D200C9C9C900C1C1C100C1C1C100BEBAB6007295BA006796CD006796CD003C77
      B6003F79B7003F79B7003F79B7003E79B7003E78B6003D77B5003D77B5003D76
      B4003D76B4003C76B4003C76B4003C74B2003B74B2003A74B2003A74B2003A73
      B1003A72B0003D76B2003D76B200164C9C00C6DDCE00AFCBBD00AFCBBD00ADCC
      BB00AFCEBD00B0D0BE00B0D0BE00AED0BE00B3D5C300B3D6C500B3D6C500B9DA
      CA00C1DECF00D5EAE000D5EAE00000000000498358000047000000470000004E
      03007DA3870000000000000000009DC6AA0024813D002D8743002D874300368C
      4B003B8F4F003B9352003B93520047A461004EB46D0054BE7A0054BE7A005EC9
      8A0092C5A400000000000000000097C6AA00006D2D0000662700006627008FAF
      9B00000000000000000000000000000000000000000000000000000000008D28
      0000943700000000000000000000FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFFFF00F3E9E100F3E9E100D09B7700F8F5F2000000000000000000A95C
      27008F2B0000E9D6CA00E9D6CA0000000000FDFDFE00FDFDFE00FDFDFE00FDFD
      FE00FDFDFE00FDFEFE00FDFEFE0000000000A95D260000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C00C5C5C500C5C5C500BCBEBF00B8B3AE00E1984E00E1984E00FEF8
      F200FAF1EA00E7CEB000E7CEB000DEC09A00DFC19A00DFC09900DFC09900DFBF
      9900DEBE9800DEBD9600DEBD9600DEBC9500DDBB9300DCB99000DCB99000DAB6
      8E00D9B58C00D9B48A00D9B48A00D9B38A00D8B38900D8B28600D8B28600E9C9
      B500FBE7D400BD732B00BD732B00B9C0C800C1C1C00089898900898989000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000338F000030900095A6C00095A6C000D8D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007395BA006697CD006697CD003C78
      B700417BB9003F79B7003F79B7003F79B7003E78B6003E78B6003E78B6003D78
      B6003D76B4003C76B4003C76B4003C76B4003B75B3003B74B2003B74B2003A73
      B1003A73B1003D77B3003D77B300174D9D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007EA689007EA68900004D0200005E130005681F0005681F000369
      1E0000550500FFFAFE00FFFAFE00000000007BB891002A994B002A994B001695
      3700189639001D9D3F001D9D3F0027B5510036D26E0048E88F0048E88F0055F8
      AB0038DF8C00E5DFDF00E5DFDF000000000000000000619D7A00619D7A000000
      0000000000000000000000000000000000000000000000000000000000008F2C
      00008E2A00000000000000000000FEFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD0000000000D8AD8F00D8AD8F00D3A48300000000000000000000000000973B
      00008E2A0000F6F1EE00F6F1EE00000000000000000000000000000000000000
      000000000000000000000000000000000000A6581F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00ADADAD00ADADAD00A4A5A600A29E9B00E2974B00E2974B00FFFA
      F600FAF1EA00F9EEE500F9EEE500F8ECE200F7EAE000F7E8DD00F7E8DD00F6E7
      DB00F5E5D800F4E2D400F4E2D400F2DECF00EED7C700EAD1BF00EAD1BF00E5CB
      B700E3C6B100E0C2AE00E0C2AE00DFC1AC00E0C1AA00E1C2AB00E1C2AB00E5C6
      B100F6DCC400B3723300B3723300A2A7AD00A7A6A60087878700878787000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C00095A6C000D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007395BA006797CE006797CE003D78
      B800407BB900417BB900417BB9003F79B7003F79B7003E79B7003E79B7003F78
      B6003D77B5003D77B5003D77B5003C76B4003C75B3003B75B3003B75B3003B74
      B2003A73B1003E77B3003E77B300174E9F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007EA689007EA68900004D0200005E130005681F0005681F000369
      1E0000550500FFFAFE00FFFAFE00000000007BB891002A994B002A994B001695
      3700189639001D9D3F001D9D3F0027B5510036D26E0048E88F0048E88F0055F8
      AB0038DF8C00E5DFDF00E5DFDF000000000000000000619D7A00619D7A000000
      0000000000000000000000000000000000000000000000000000000000008F2C
      00008E2A00000000000000000000FEFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD0000000000D8AD8F00D8AD8F00D3A48300000000000000000000000000973B
      00008E2A0000F6F1EE00F6F1EE00000000000000000000000000000000000000
      000000000000000000000000000000000000A6581F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00ADADAD00ADADAD00A4A5A600A29E9B00E2974B00E2974B00FFFA
      F600FAF1EA00F9EEE500F9EEE500F8ECE200F7EAE000F7E8DD00F7E8DD00F6E7
      DB00F5E5D800F4E2D400F4E2D400F2DECF00EED7C700EAD1BF00EAD1BF00E5CB
      B700E3C6B100E0C2AE00E0C2AE00DFC1AC00E0C1AA00E1C2AB00E1C2AB00E5C6
      B100F6DCC400B3723300B3723300A2A7AD00A7A6A60087878700878787000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C00095A6C000D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007395BA006797CE006797CE003D78
      B800407BB900417BB900417BB9003F79B7003F79B7003E79B7003E79B7003F78
      B6003D77B5003D77B5003D77B5003C76B4003C75B3003B75B3003B75B3003B74
      B2003A73B1003E77B3003E77B300174E9F000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAC2
      B10000551400005B1100005B1100046C23000671250005742600057426000677
      270000741F0039854F0039854F000000000000000000D5E7DC00D5E7DC0069B9
      850039AC5A0027A64C0027A64C0030B259003CC56F0049D6880049D6880051E1
      940050EA9C0053B0760053B07600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A75B
      25008F2C0000E1C7B600E1C7B60000000000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD000000
      0000E1C0AA00D3A68500D3A68500E4C9B60000000000F4ECE700F4ECE7008F2B
      0000943500000000000000000000F0E4DE00821500008C2800008C2800008C28
      00008D2900008D2900008D29000080110000D0A6880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008A8A8A00A7A7A700A7A7A700A7A8A900A4A2A100E1944600E1944600FFFC
      F900FBF4F000F4E7DA00F4E7DA00F2E2D200F1E1D000F1E0CE00F1E0CE00F1DF
      CC00F0DCC900EED9C500EED9C500EBD4BE00EAD4C400E6CEBE00E6CEBE00E0C9
      BD00DCC5B900D8BCAA00D8BCAA00D9BFB000DCC2B700DFC8BC00DFC8BC00E2CB
      BE00EECBAB00B1794500B1794500A5A9AE00A9A9A90078787800787878000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003695000034950096A7C10096A7C100D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007495BB006897CE006897CE003E7A
      B900427CBA00407BB900407BB900417AB800407AB800407AB800407AB8003F79
      B7003E78B6003D78B6003D78B6003D77B5003D76B4003C75B3003C75B3003C75
      B3003B74B2003E77B3003E77B3001850A1000000000000000000000000000000
      000000000000000000000000000000000000000000003378490033784900004B
      060002672200067027000670270006772A00077C2D0007802E0007802E000883
      3000078530000075160000751600C0D1C5000000000000000000000000008FC6
      A20036B75E0030B4580030B4580032B45B0038BB660041C6750041C6750048CD
      820048CE83002ABB63002ABB6300C6D2C9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0A6
      8800902E0000AB602C00AB602C0000000000FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFEFE00000000000000000000000000E0BF
      A800D4A78800D4A98900D4A989000000000000000000BF865F00BF865F00912F
      0000BB7F56000000000000000000F2E8E2008E2C000099400000994000009940
      00009A4100008D2900008D290000CDA080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800B8B8B800B5B6B600B3B5B700DE8D3D00DE8D3D00FFFF
      FC00FDF9F600ECD8C100ECD8C100E4CBAC00E4CBAD00E4CBAC00E4CBAC00E5CA
      AA00E3C8A800E2C6A500E2C6A500DFC09E00E4CCB700E3D0C700E3D0C700D197
      6500C55F0000C6610000C6610000C7630300C8650500C6660700C6660700C665
      0600C2570000BC987500BC987500B3B6B900B3B2B200FDFDFD00FDFDFD000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003897000036970096A7C20096A7C200D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007495BB006798CF006798CF003E7A
      B900427DBB00427CBA00427CBA00417BB900407BB900407AB800407AB800407A
      B8003E78B6003E78B6003E78B6003E77B5003E77B5003D76B4003D76B4003D76
      B4003B75B3003F78B4003F78B4001951A2000000000000000000000000000000
      00000000000000000000000000000000000000000000C2DACA00C2DACA000057
      1400056E2A0007782D0007782D00067E300008853300088B3400088B3400078C
      3600098B36000685330006853300006F260000000000EFF2EF00EFF2EF0044BB
      6E0033BC630039BD660039BD660038BB650039B965003BB86A003BB86A003DB8
      6D003DB46D0035AA610035AA61002F8A4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000902E00008F2B00008F2B0000E3CCBD0000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFF00000000000000000000000000F0E2D700D6AB8C00D6AB8C00D3A7
      8700D5AB8D00FAF7F500FAF7F50000000000F7F0EC008E2A00008E2A00008D27
      0000F5EDE8000000000000000000F2E8E2008F2D00009A4101009A4101009940
      00008D290000CDA08000CDA08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4823000D48230000000
      0000FCF8F600FFFCFB00FFFCFB00FFFCFC00FFFBF900FEF9F700FEF9F700FEF7
      F400FCF4EF00F8EEE800F8EEE800F2E3DC00E8D5CC00D9B59900D9B59900C45B
      0000C86A1100C96D1400C96D1400CA6F1800CA711A00C9711C00C9711C00C463
      0500D1976000FEFFFF00FEFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C20096A7C200D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007496BB006898CF006898CF003F7B
      BA00427DBB00427DBB00427DBB00417CBA00417CBA00407BB900407BB900407A
      B8003F79B7003F79B7003F79B7003F79B7003E77B5003E77B5003E77B5003D77
      B5003C75B3004079B5004079B5001953A5000000000000000000000000000000
      00000000000000000000000000000000000000000000C2DACA00C2DACA000057
      1400056E2A0007782D0007782D00067E300008853300088B3400088B3400078C
      3600098B36000685330006853300006F260000000000EFF2EF00EFF2EF0044BB
      6E0033BC630039BD660039BD660038BB650039B965003BB86A003BB86A003DB8
      6D003DB46D0035AA610035AA61002F8A4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000902E00008F2B00008F2B0000E3CCBD0000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFF00000000000000000000000000F0E2D700D6AB8C00D6AB8C00D3A7
      8700D5AB8D00FAF7F500FAF7F50000000000F7F0EC008E2A00008E2A00008D27
      0000F5EDE8000000000000000000F2E8E2008F2D00009A4101009A4101009940
      00008D290000CDA08000CDA08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4823000D48230000000
      0000FCF8F600FFFCFB00FFFCFB00FFFCFC00FFFBF900FEF9F700FEF9F700FEF7
      F400FCF4EF00F8EEE800F8EEE800F2E3DC00E8D5CC00D9B59900D9B59900C45B
      0000C86A1100C96D1400C96D1400CA6F1800CA711A00C9711C00C9711C00C463
      0500D1976000FEFFFF00FEFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C20096A7C200D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007496BB006898CF006898CF003F7B
      BA00427DBB00427DBB00427DBB00417CBA00417CBA00407BB900407BB900407A
      B8003F79B7003F79B7003F79B7003F79B7003E77B5003E77B5003E77B5003D77
      B5003C75B3004079B5004079B5001953A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005998
      7000006C2400067D3200067D320009863800088B3A00098D3B00098D3B00098C
      3B000A873A000A8038000A80380000742D004987610097CFAA0097CFAA0059D0
      850058CD840051C97E0051C97E0040C171003ABB6B003CB66A003CB66A003BB0
      670039A66300339A5A00339A5A001D844400A3BEAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3AD91008F2C00008F2C0000912F0000F7F1EE000000000000000000FEFE
      FE00FCFAF900E4C8B400E4C8B400D09F7C00D09F7D00D7B09400D7B09400E8D2
      C30000000000000000000000000000000000983C00009232000092320000BD82
      5A00000000000000000000000000F2E9E2008F2D000099400000994000008D29
      0000CDA181000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D37F2B00D37F2B000000
      0000FFFEFE00EFE0CE00EFE0CE00E9D5BB00E9D4BB00E9D3B900E9D3B900E8D2
      B800E8D1B500E5CDB100E5CDB100E1C6A800E3D0C100D49F7100D49F7100C764
      0500C96D1400CA6F1800CA6F1800CA721C00CA721D00C4640700C4640700CF97
      6200F6FCFF00F7F5F400F7F5F400FBFAF900FEFEFE0000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003C9B00003A9C0096A8C30096A8C300D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007497BC006899CF006899CF003F7C
      BB00437EBC00427DBB00427DBB00427CBA00417CBA00417CBA00417CBA00407B
      B900407AB800407AB800407AB8003F79B7003F79B7003E78B6003E78B6003E77
      B5003D77B5004079B5004079B5001A54A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFC
      FA0015763B00017D3300017D330009853B0009873C000A873C000A873C000B85
      3D000B813B000A7A38000A7A3800086F330009622D0081DEA50081DEA50065D3
      91006FD5980076D69D0076D69D007FD7A30075D09A0054BF800054BF800038AC
      68003BA5670037996000379960002F8C56001B703E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B06A3800B06A380091300000912F0000E4CCBD00E4CCBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1E6DE00F1E6DE00973A000094340000A04B0F00A04B0F000000
      0000000000000000000000000000F3E9E4008F2D00008D2900008D290000CFA4
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17C2600D17C26000000
      000000000000F4EBE000F4EBE000F1E3D200F1E3D200F0E1D000F0E1D000EFE0
      CD00EEDDCA00EBD9C500EBD9C500E6D1BA00E5D4C900D6A67D00D6A67D00C867
      0700CA6F1800CA711C00CA711C00C9721D00C4650800CD956100CD956100F3F8
      FF00F4F2F000FAF7F600FAF7F600FDFCFB00FFFFFE0000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003E9E00003C9E0098AAC50098AAC500D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007597BC006999D0006999D000407D
      BC00437EBC00437EBC00437EBC00427EBC00437CBA00417CBA00417CBA00427C
      BA00407BB900407AB800407AB8003F79B7003F79B7003E79B7003E79B7003E78
      B6003E77B500417AB600417AB6001A56A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADCAB6000373320003733200087C39000A7F3B000A7E3A000A7E3A000B7D
      3A000C7838000B6E34000B6E340000521F009ED3B10068D5990068D5990072D4
      9D0077D6A1007DD6A4007DD6A40081D5A60088D4AA0092D5B00092D5B0008ACD
      A80042A56F00408A6000408A6000669578002B7D51007AA28B007AA28B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B06A38008F2C00008F2B00008F2B0000AB60
      2C00E2C8B700000000000000000000000000000000000000000000000000E7D3
      C600B47345008F2A00008F2A000096370000AB5F2A0000000000000000000000
      0000000000000000000000000000FAF7F40083150000D1A88A00D1A88A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17B2700D17B27000000
      000000000000000000000000000000000000FFFEFD00FEFCFB00FEFCFB00FDFA
      F800FCF6F300F8F1EC00F8F1EC00F1E6E000E9DDD700D8AA8300D8AA8300C868
      0B00CA711C00CA721D00CA721D00C4650900CE966300F3F7FF00F3F7FF00F4F1
      F000F9F6F600FCFCFB00FCFCFB00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B9007F97B900DDD9
      D300C9C9C900C1C1C100C1C1C100BEBAB6007597BE00699AD100699AD100407D
      BC00447FBD00437FBD00437FBD00447EBC00427EBC00437CBA00437CBA00417D
      BB00417BB900417BB900417BB900407AB800407AB8003F79B7003F79B7003E79
      B7003E77B500427BB700427BB7001A57A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADCAB6000373320003733200087C39000A7F3B000A7E3A000A7E3A000B7D
      3A000C7838000B6E34000B6E340000521F009ED3B10068D5990068D5990072D4
      9D0077D6A1007DD6A4007DD6A40081D5A60088D4AA0092D5B00092D5B0008ACD
      A80042A56F00408A6000408A6000669578002B7D51007AA28B007AA28B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B06A38008F2C00008F2B00008F2B0000AB60
      2C00E2C8B700000000000000000000000000000000000000000000000000E7D3
      C600B47345008F2A00008F2A000096370000AB5F2A0000000000000000000000
      0000000000000000000000000000FAF7F40083150000D1A88A00D1A88A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17B2700D17B27000000
      000000000000000000000000000000000000FFFEFD00FEFCFB00FEFCFB00FDFA
      F800FCF6F300F8F1EC00F8F1EC00F1E6E000E9DDD700D8AA8300D8AA8300C868
      0B00CA711C00CA721D00CA721D00C4650900CE966300F3F7FF00F3F7FF00F4F1
      F000F9F6F600FCFCFB00FCFCFB00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B9007F97B900DDD9
      D300C9C9C900C1C1C100C1C1C100BEBAB6007597BE00699AD100699AD100407D
      BC00447FBD00437FBD00437FBD00447EBC00427EBC00437CBA00437CBA00417D
      BB00417BB900417BB900417BB900407AB800407AB8003F79B7003F79B7003E79
      B7003E77B500427BB700427BB7001A57A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006399770063997700006B2B00097535000B7336000B7336000A6C
      32000B643200004518000045180093B4A00084DCAE006FD09E006FD09E0079D3
      A4007ED3A70084D3AA0084D3AA0088D3AC008DD2AE0091D0AF0091D0AF0097CF
      B2008FC4A6000000000000000000ECF5EF007BA18800215D3C00215D3C00EAEE
      EC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3AD9100902E0000902E0000902E
      0000902D00008E2B00008E2B000095380000963A00008F2C00008F2C0000902E
      0000922F00009230000092300000A3521600AE663400A85B2500A85B2500A758
      2100A7582100A7592200A7592200A2501600D2AA8D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17B2800D17B28000000
      000000000000000000000000000000000000FEFEFE00FEFCFB00FEFCFB00FDFA
      F800FCF7F400F8F1ED00F8F1ED00F2E8E200EBE1DB00DBB28F00DBB28F00C768
      0B00CA721D00C4640700C4640700CE976400F3F7FF00F4F0EF00F4F0EF00F8F6
      F500FCFBFA00FDFEFE00FDFEFE00FFFFFE000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000446A5000648A700154C9B00154C9B00D3CF
      C900DAD6CE00CECAC400CECAC400CBC3B9007A9CBF006999D1006999D100417E
      BD004580BE004580BE004580BE00437FBD00447EBC00427EBC00427EBC00437D
      BB00417CBA00407AB900407AB9003E79B8003D78B7003B76B5003B76B5003A76
      B500407AB700467EB800467EB8001150A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF6F100EFF6F100417F590000582100075A2B00075A2B000A55
      2B0000350E007E9A8A007E9A8A00C1EFD90069C5990079CBA40079CBA4007FCD
      A70084CEAB008BCFAE008BCFAE0090D0B00096CFB3009BCFB6009BCFB60091C6
      AB00EAF2EB0000000000000000000000000000000000C8DACE00C8DACE00D5E2
      D900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0A6
      8800A7592200902E0000902E00008E2A00008F2B0000902D0000902D0000A351
      1600C9997600FEFEFD00FEFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17C2900D17C29000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FF00FDFBFB00FAF6F400FAF6F400F4EDEA00EFE7E600DEB79600DEB79600C767
      0B00C4640600CF986400CF986400F3F8FF00F4F0EE00F8F7F600F8F7F600FCFB
      FA00FEFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0001D5BB100094DA9000348A9000348A9000943
      95004C6C9B00516F9B00516F9B004B6894004D7DB2007BA6D8007BA6D8003D7B
      BC00447FBE00417EBD00417EBD00407DBC003F7BBB003F7CBB003F7CBB003E7A
      B900417CBA004F85C0004F85C0005E90C7006A98CB00729ECE00729ECE0079A2
      D0006090C6001556AB001556AB00225EB2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7E6DB004D7F610010492B0010492B000336
      1C0094A79D00F2FFFC00F2FFFC0076C1A00093CFB4009ED4BC009ED4BC00A8D8
      C300B3DCCA00BCDFD200BCDFD200C5E3D700CCE5DB00C5DED200C5DED200E5F0
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFF00FDFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD792700CD792700FFEC
      D60000000000FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFF
      FC00FFFEF900FFFBF500FFFBF500FCF5EE00F9F2EE00E3B99400E3B99400C158
      0000D19A6600F6FBFF00F6FBFF00F5F1F000F8F6F600FCFBFA00FCFBFA00FDFD
      FD00FFFFFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5002461B5001154
      B0000C52AF000C51B0000C51B000094FAF001F62B40099BAE10099BAE1006597
      CD00538BC5006797CC006797CC00709ED000739FD10074A0D20074A0D20076A1
      D200729DD0005B8CC7005B8CC700437ABE00306CB7001C5CAF001C5CAF000B4F
      A9001254AD003B72BE003B72BE005282C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7E6DB004D7F610010492B0010492B000336
      1C0094A79D00F2FFFC00F2FFFC0076C1A00093CFB4009ED4BC009ED4BC00A8D8
      C300B3DCCA00BCDFD200BCDFD200C5E3D700CCE5DB00C5DED200C5DED200E5F0
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFF00FDFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD792700CD792700FFEC
      D60000000000FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFF
      FC00FFFEF900FFFBF500FFFBF500FCF5EE00F9F2EE00E3B99400E3B99400C158
      0000D19A6600F6FBFF00F6FBFF00F5F1F000F8F6F600FCFBFA00FCFBFA00FDFD
      FD00FFFFFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5002461B5001154
      B0000C52AF000C51B0000C51B000094FAF001F62B40099BAE10099BAE1006597
      CD00538BC5006797CC006797CC00709ED000739FD10074A0D20074A0D20076A1
      D200729DD0005B8CC7005B8CC700437ABE00306CB7001C5CAF001C5CAF000B4F
      A9001254AD003B72BE003B72BE005282C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFFFC00CCDCD000CCDCD000C3DB
      CB00A7D1BC006FB191006FB1910081BBA00082BCA00088BFA40088BFA4008DC1
      A80092C4AB0097C6AF0097C6AF009AC6B000B1D2C100EAF3ED00EAF3ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D48A
      4400D58A4000D58B4200D58B4200D58B4200D58B4200D58B4200D58B4200D58B
      4200D58B4200D48A4300D48A4300D38A4300D18A4500CD7F3400CD7F3400D9A6
      7600FAFFFF00F7F4F300F7F4F300F9F8F700FCFBFB00FEFEFE00FEFEFE00FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00081A4D4004D80C4004D80C4005988
      C8005988C8005988C8005988C8005988C8005484C600437DBF00437DBF0076A0
      D2006E9ACF005387C5005387C500417ABE004178BE00477CC100477CC1004A7D
      C3004B7EC4004B7EC4004B7EC4004D80C5004F81C6005082C6005082C6005183
      C600497DC3006390CA006390CA00F0F0F000424D3E000000000000003E000000
      28000000C0000000900000000100010000000000800D00000000000000000000
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
      0000000000000000000000000000000080000000000300000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      00000000000000000022AAAAAA81000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0104004000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000008000000000030000
      00000000000000000000000000000000FF800000000FFFFFFFFFFFFFFF800000
      01FF800000000001FF800000000FFFFFFFFFFF7FFF00000000FF00F000000000
      FF800000000FFFFFFFFFFF7FFF00000000FF00F000000000FFF9FFFE7F9FFFE0
      0000001FFE000000007F000000000000FFF80008607FFF800000000FFE000000
      007F000000000000FFFFFF007F7FFF9000001007FE000000007F000000000000
      FFFFFF007F7FFF9000001007FE000000007F000000000000FFF0007001FFFF80
      00006001800000000001000000000000FFE00060007FFF800000000700000000
      0000000000000000FF8000E0007FFF800000000F000000000000000000000000
      FF8000E0007FFF800000000F000000000000000000000000FF000080001FFF80
      0006001F000000000000000000000000FE000000000FFF800008007F00000000
      0000000000000000FE000080000FFF900010007F000000000000000000000000
      FE000080000FFF900010007F000000000000000000000000F80000800007FF90
      0000017F000000000000000000000000F80000E00007FF900000077F00000000
      0000000000000000F00000F00001FF981880097F000000000000000000000000
      F00000F00001FF981880097F000000000000000000000000F0007FF00001FF80
      0100117F000000000000000000000000E001E7F87000FF000000617F00000000
      0000000000000000E00007F87000FE07E000017F000000000000000000000000
      E00007F87000FE07E000017F000000000000000000000000E0000FFE6000F810
      0800017F000000000000000000000000E0000FFE0000F0800108017F00000000
      0000000000000000E0001FFF8000E0000000017F000000000000000000000000
      E0001FFF8000E0000000017F000000000000000000000000F0001FFF0001E100
      0086017F600000000006000000000000F0007FFF0001E0000000017F17000000
      0068000000000000E000FFFF8007E6000060017F800000000001000000000000
      E000FFFF8007E6000060017F80000000000100000000000000008FFFF0078600
      0661017FF0000000000700000000000000010600060FE6000061017FF0000000
      001F000000000000FFF80100019FE60008E1FF7FF0000000001F000000000000
      FFF80100019FE60008E1FF7FF0000000001F000000000000FFE0018001FFE100
      1086007FF0000000001F000000000000FF8000E000FFE100E18600FFF8000000
      001F000000000000FF80008000FFF087010601FFFF90000001FF000000000000
      FF80008000FFF087010601FFFF90000001FF000000000000FFE00000007FF060
      0F0E07FFFF900000007F000000000000FFE00000007FF81FF81E0FFFFF980000
      007F000000000000FFF00000001FFE07E07E1FFFFF9F000000FF000000000000
      FFF00000001FFE07E07E1FFFFF9F000000FF000000000000FFF80000060FFF00
      00007FFFFF9F000000FF000000000000FFF80000078FFFE001FFFFFFFF9FE000
      07FF000000000000FFFE00000FFFFFFE7FFFFFFFFF88000007FF000000000000
      FFFE00000FFFFFFE7FFFFFFFFF88000007FF000000000000FFFF00001FFFFFFF
      FFFFFFFFFFE000000FFF00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited ILEdicao: TImageList
    Left = 484
    Top = 230
  end
  object ImageOPC2: TImageList
    Height = 36
    ShareImages = True
    Width = 36
    Left = 252
    Top = 278
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
  object DTSCAD_PRO_EST: TDataSource
    AutoEdit = False
    DataSet = CAD_PRO_EST
    OnDataChange = DTSCAD_PRO_ESTDataChange
    Left = 712
    Top = 208
  end
  object CAD_PRO_RES: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT      PK.ID  ,PK.IDEP,PK.DTCA,PK.EST_DOCU,PK.EST_CFAV,PK.E' +
        'ST_DFAV,PK.EST_CUSU,PK.EST_DUSU,'
      '            PK.IDCP,CP.SKU ,CP.DGCP,'
      '            PK.EST_CRED * IIF(PK.EST_FLAG = '#39'D'#39',-1,1) AS QTDE'
      'FROM        CAD_PRO_RES AS PK'
      'JOIN        CAD_PRO     AS CP ON (CP.ID = PK.IDCP)'
      'WHERE       PK.IDEP = :IDEP'
      'AND         PK.IDAK = :IDAK'
      'ORDER BY PK.DTCA DESC')
    Left = 744
    Top = 176
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_RESID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_RES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_RESIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_RES"."IDEP"'
    end
    object CAD_PRO_RESDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_RES"."DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_RESEST_DOCU: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'EST_DOCU'
      Origin = '"CAD_PRO_RES"."EST_DOCU"'
      Size = 10
    end
    object CAD_PRO_RESEST_CFAV: TIntegerField
      FieldName = 'EST_CFAV'
      Origin = '"CAD_PRO_RES"."EST_CFAV"'
    end
    object CAD_PRO_RESEST_DFAV: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'EST_DFAV'
      Origin = '"CAD_PRO_RES"."EST_DFAV"'
      Size = 40
    end
    object CAD_PRO_RESEST_CUSU: TIntegerField
      FieldName = 'EST_CUSU'
      Origin = '"CAD_PRO_RES"."EST_CUSU"'
    end
    object CAD_PRO_RESEST_DUSU: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'EST_DUSU'
      Origin = '"CAD_PRO_RES"."EST_DUSU"'
      Size = 40
    end
    object CAD_PRO_RESIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"CAD_PRO_RES"."IDCP"'
    end
    object CAD_PRO_RESSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object CAD_PRO_RESDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO"."DGCP"'
      Size = 60
    end
    object CAD_PRO_RESQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
  end
  object DTSCAD_PRO_RES: TDataSource
    DataSet = CAD_PRO_RES
    OnDataChange = DTSCAD_PRO_RESDataChange
    Left = 744
    Top = 208
  end
  object aux: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    BufferChunks = 2500
    Left = 648
    Top = 176
  end
  object CAD_PRO_SEP: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT   PK.ID  ,PK.IDEP,PK.DTCA,PK.EST_DSEP,PK.EST_DOCU,PK.EST_' +
        'DCAD,PK.EST_CFAV,PK.EST_DFAV,PK.EST_CUSU,PK.EST_DUSU,'
      '         PK.IDCP,CP.SKU ,CP.DGCP,'
      '         PK.EST_CRED AS QTDE'
      'FROM     CAD_PRO_SEP AS PK'
      'JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)'
      'WHERE    PK.IDEP   = :IDEP'
      'AND      PK.IDAK   = :IDAK'
      'ORDER BY PK.DTCA DESC'
      '')
    Left = 776
    Top = 176
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_SEPID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_SEP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_SEPIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_SEP"."IDEP"'
    end
    object CAD_PRO_SEPDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_SEP"."DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_SEPEST_DSEP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'EST_DSEP'
      Origin = '"CAD_PRO_SEP"."EST_DSEP"'
      Size = 15
    end
    object CAD_PRO_SEPEST_DCAD: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EST_DCAD'
      Origin = '"CAD_PRO_SEP"."EST_DCAD"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CAD_PRO_SEPEST_DOCU: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'EST_DOCU'
      Origin = '"CAD_PRO_SEP"."EST_DOCU"'
      Size = 10
    end
    object CAD_PRO_SEPEST_CFAV: TIntegerField
      FieldName = 'EST_CFAV'
      Origin = '"CAD_PRO_SEP"."EST_CFAV"'
    end
    object CAD_PRO_SEPEST_DFAV: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'EST_DFAV'
      Origin = '"CAD_PRO_SEP"."EST_DFAV"'
      Size = 40
    end
    object CAD_PRO_SEPEST_CUSU: TIntegerField
      FieldName = 'EST_CUSU'
      Origin = '"CAD_PRO_SEP"."EST_CUSU"'
    end
    object CAD_PRO_SEPEST_DUSU: TIBStringField
      DisplayLabel = 'Uus'#225'rios'
      FieldName = 'EST_DUSU'
      Origin = '"CAD_PRO_SEP"."EST_DUSU"'
      Size = 40
    end
    object CAD_PRO_SEPIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"CAD_PRO_SEP"."IDCP"'
    end
    object CAD_PRO_SEPSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object CAD_PRO_SEPDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO"."DGCP"'
      Size = 60
    end
    object CAD_PRO_SEPQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_SEP"."EST_CRED"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
  end
  object DSTCAD_PRO_SEP: TDataSource
    DataSet = CAD_PRO_SEP
    OnDataChange = DSTCAD_PRO_SEPDataChange
    Left = 776
    Top = 208
  end
  object CAD_PRO_EST: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    OnCalcFields = CAD_PRO_ESTCalcFields
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT    DISTINCT PK.IDCP,'
      '          PK.IDCA ,PK.DTCA,PK.DECA,PK.IDED,PK.DTED,'
      '          PK.IDST ,PK.DTST,PK.CDST,PK.REST,PK.DEST,'
      
        '          PK.SKU  ,PK.DGCP,PK.CEAN,PK.IDSK,PK.IDEK,PK.DTEK,PK.DT' +
        'SP,PK.DTPV,'
      '          PK.CF_ID,PK.CF_NO,PK.CF_SKU,PK.CF_CEAN,'
      '          PK.VPRC_PAD,PK.VPRC_VAR,PK.VPRC_REP,'
      ''
      
        '          COALESCE(FK.EPE_QTDE,0) AS EPE_QTDE,COALESCE(FK.EPE_QT' +
        'RL,0) AS EPE_QTRL,'
      
        '          COALESCE(FK.EST_QTDE,0) AS EST_QTDE,COALESCE(FK.EST_QT' +
        'RL,0) AS EST_QTRL,'
      
        '          COALESCE(FK.ERS_QTDE,0) AS ERS_QTDE,COALESCE(FK.ERS_QT' +
        'RL,0) AS ERS_QTRL,'
      
        '          COALESCE(FK.ESP_QTDE,0) AS ESP_QTDE,COALESCE(FK.ESP_QT' +
        'RL,0) AS ESP_QTRL'
      ''
      'FROM      VW_CAD_PRO_PSQ  AS PK'
      'JOIN      CAD_PRO_EST_LAN AS FK ON (FK.IDCP = PK.IDCP)'
      'WHERE     PK.IDAK = :IDAK'
      'ORDER BY  PK.DTEK DESC')
    Left = 712
    Top = 176
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_ESTIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_PSQ"."IDCP"'
    end
    object CAD_PRO_ESTIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO"."IDCA"'
    end
    object CAD_PRO_ESTDECA: TIBStringField
      FieldName = 'DECA'
      Origin = '"VW_CAD_PRO_PSQ"."DECA"'
      Size = 30
    end
    object CAD_PRO_ESTDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO"."DTCA"'
    end
    object CAD_PRO_ESTIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"VW_CAD_PRO"."IDED"'
    end
    object CAD_PRO_ESTDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"VW_CAD_PRO"."DTED"'
    end
    object CAD_PRO_ESTIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_CAD_PRO"."IDST"'
    end
    object CAD_PRO_ESTDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"VW_CAD_PRO"."DTST"'
    end
    object CAD_PRO_ESTCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_CAD_PRO"."CDST"'
    end
    object CAD_PRO_ESTREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_CAD_PRO"."REST"'
      Size = 10
    end
    object CAD_PRO_ESTDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_CAD_PRO"."DEST"'
      Size = 60
    end
    object CAD_PRO_ESTSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO"."SKU"'
      Size = 30
    end
    object CAD_PRO_ESTDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO"."DGCP"'
      Size = 60
    end
    object CAD_PRO_ESTCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_CAD_PRO_PSQ"."CEAN"'
    end
    object CAD_PRO_ESTIDSK: TLargeintField
      FieldName = 'IDSK'
      Origin = '"VW_CAD_PRO_PSQ"."IDSK"'
    end
    object CAD_PRO_ESTIDEK: TLargeintField
      FieldName = 'IDEK'
      Origin = '"VW_CAD_PRO_PSQ"."IDEK"'
    end
    object CAD_PRO_ESTDTEK: TDateTimeField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DTEK'
      Origin = '"VW_CAD_PRO"."DTEK"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_ESTDTSP: TDateTimeField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'DTSP'
      Origin = '"VW_CAD_PRO_PSQ"."DTSP"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_ESTDTPV: TDateTimeField
      DisplayLabel = 'Vendas'
      FieldName = 'DTPV'
      Origin = '"VW_CAD_PRO"."DTPV"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_ESTCF_ID: TSmallintField
      FieldName = 'CF_ID'
      Origin = '"VW_CAD_PRO_PSQ"."CF_ID"'
    end
    object CAD_PRO_ESTCF_NO: TIBStringField
      FieldName = 'CF_NO'
      Origin = '"VW_CAD_PRO_PSQ"."CF_NO"'
      Size = 40
    end
    object CAD_PRO_ESTCF_SKU: TIBStringField
      FieldName = 'CF_SKU'
      Origin = '"VW_CAD_PRO_PSQ"."CF_SKU"'
      Size = 30
    end
    object CAD_PRO_ESTCF_CEAN: TIBStringField
      FieldName = 'CF_CEAN'
      Origin = '"VW_CAD_PRO_PSQ"."CF_CEAN"'
    end
    object CAD_PRO_ESTVPRC_PAD: TFloatField
      DisplayLabel = 'Atacado'
      FieldName = 'VPRC_PAD'
      Origin = '"VW_CAD_PRO_PSQ"."VPRC_PAD"'
      DisplayFormat = 'R$ ,##,0.00'
    end
    object CAD_PRO_ESTVPRC_VAR: TFloatField
      DisplayLabel = 'Varejo'
      FieldName = 'VPRC_VAR'
      Origin = '"VW_CAD_PRO_PSQ"."VPRC_VAR"'
      DisplayFormat = 'R$ ,##,0.00'
    end
    object CAD_PRO_ESTVPRC_REP: TFloatField
      DisplayLabel = 'Representante'
      FieldName = 'VPRC_REP'
      Origin = '"VW_CAD_PRO_PSQ"."VPRC_REP"'
      DisplayFormat = 'R$ ,##,0.00'
    end
    object CAD_PRO_ESTEPE_QTDE: TIBBCDField
      DisplayLabel = 'Pronta Entrega'
      FieldName = 'EPE_QTDE'
      Origin = '"CAD_PRO_EST_LAN"."EPE_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_ESTEPE_QTRL: TIntegerField
      FieldName = 'EPE_QTRL'
      Origin = '"CAD_PRO_EST_LAN"."EPE_QTRL"'
    end
    object CAD_PRO_ESTEST_QTDE: TIBBCDField
      DisplayLabel = 'F'#237'sico Toral'
      FieldName = 'EST_QTDE'
      Origin = '"CAD_PRO_EST_LAN"."EST_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_ESTEST_QTRL: TIntegerField
      FieldName = 'EST_QTRL'
      Origin = '"CAD_PRO_EST_LAN"."EST_QTRL"'
    end
    object CAD_PRO_ESTERS_QTDE: TIBBCDField
      DisplayLabel = 'Reservados'
      FieldName = 'ERS_QTDE'
      Origin = '"CAD_PRO_EST_LAN"."ERS_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_ESTERS_QTRL: TIntegerField
      FieldName = 'ERS_QTRL'
      Origin = '"CAD_PRO_EST_LAN"."ERS_QTRL"'
    end
    object CAD_PRO_ESTESP_QTDE: TIBBCDField
      DisplayLabel = 'Separados'
      FieldName = 'ESP_QTDE'
      Origin = '"CAD_PRO_EST_LAN"."ESP_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_ESTESP_QTRL: TIntegerField
      FieldName = 'ESP_QTRL'
      Origin = '"CAD_PRO_EST_LAN"."ESP_QTRL"'
    end
    object CAD_PRO_ESTC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object CAD_PRO_EST_FIS: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    OnCalcFields = CAD_PRO_EST_FISCalcFields
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.IDCA,PK.DTCA,PK.LGCA,'
      '         PK.DETP,PK.REOP,PK.D_DEOP,'
      
        '         TRIM(IIF(PK.IDPK > 0,PK.DEPK,CAST(PK.CDRO AS VARCHAR(10' +
        ')))) AS DEPK,IIF(PK.IDPK > 0,PK.DTPK,PK.DTCA) AS DTPK,'
      '         PK.IDCE,PK.DECE,'
      '         PK.IDCP,PK.ARTIGO,PK.SKU ,PK.DECP,PK.DGCP,'
      '         PK.QTDE,PK.QTDS,PK.EST_QTDE,'
      '         PK.IDSP,PK.DTSP,PK.CDSP,PK.DESP'
      'FROM     VW_CAD_PRO_EST_FIS AS PK'
      'WHERE     PK.IDAK = :IDAK'
      'ORDER BY PK.DTCA DESC')
    Left = 808
    Top = 176
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_EST_FISID: TLargeintField
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST"."ID"'
    end
    object CAD_PRO_EST_FISIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST"."IDEP"'
    end
    object CAD_PRO_EST_FISIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO_EST"."IDCA"'
    end
    object CAD_PRO_EST_FISDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST"."DTCA"'
    end
    object CAD_PRO_EST_FISLGCA: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'LGCA'
      Origin = '"VW_CAD_PRO_EST_FIS"."LGCA"'
      Size = 30
    end
    object CAD_PRO_EST_FISDETP: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DETP'
      ProviderFlags = []
      Size = 15
    end
    object CAD_PRO_EST_FISREOP: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'REOP'
      Origin = '"VW_CAD_PRO_EST"."REOP"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CAD_PRO_EST_FISD_DEOP: TIBStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'D_DEOP'
      Origin = '"VW_CAD_PRO_EST_FIS"."D_DEOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 121
    end
    object CAD_PRO_EST_FISIDCE: TIntegerField
      FieldName = 'IDCE'
      Origin = '"VW_CAD_PRO_EST_FIS"."IDCE"'
    end
    object CAD_PRO_EST_FISDECE: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'DECE'
      Origin = '"VW_CAD_PRO_EST_FIS"."DECE"'
      Size = 60
    end
    object CAD_PRO_EST_FISDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      ProviderFlags = []
      Size = 30
    end
    object CAD_PRO_EST_FISDTPK: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPK'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_EST_FISCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"VW_CAD_PRO_EST"."CDSP"'
    end
    object CAD_PRO_EST_FISIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_CAD_PRO_EST"."IDSP"'
    end
    object CAD_PRO_EST_FISDTSP: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTSP'
      Origin = '"VW_CAD_PRO_EST"."DTSP"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CAD_PRO_EST_FISDESP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'DESP'
      Origin = '"VW_CAD_PRO_EST"."DESP"'
      Size = 30
    end
    object CAD_PRO_EST_FISIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_EST"."IDCP"'
    end
    object CAD_PRO_EST_FISARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_CAD_PRO_EST"."ARTIGO"'
      Size = 30
    end
    object CAD_PRO_EST_FISSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO_EST"."SKU"'
      Size = 30
    end
    object CAD_PRO_EST_FISDECP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DECP'
      Origin = '"VW_CAD_PRO_EST"."DECP"'
      Size = 120
    end
    object CAD_PRO_EST_FISDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST"."DGCP"'
      Size = 60
    end
    object CAD_PRO_EST_FISQTDE: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_EST_FISQTDS: TIBBCDField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'QTDS'
      Origin = '"VW_CAD_PRO_EST"."QTDS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_EST_FISEST_QTDE: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'EST_QTDE'
      Origin = '"VW_CAD_PRO_EST_FIS"."EST_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CAD_PRO_EST_FISC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSCAD_PRO_EST_FIS: TDataSource
    DataSet = CAD_PRO_EST_FIS
    OnDataChange = DTSCAD_PRO_EST_FISDataChange
    Left = 808
    Top = 208
  end
  object CAD_PRO_IMG_CDN: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT CP_IMG.* FROM VW_CAD_PRO_IMG_CDN AS CP_IMG'
      'WHERE  CP_IMG.IMG_ID = :IDSK')
    Left = 552
    Top = 216
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'IDSK'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_IMG_CDNIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ID"'
    end
    object CAD_PRO_IMG_CDNIMG_PAD: TBlobField
      FieldName = 'IMG_PAD'
      Origin = '"VW_CAD_PRO_CDN"."IMG_PAD"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP1: TBlobField
      FieldName = 'IMG_ILA_BMP1'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField
      FieldName = 'D_ILA_INS1'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS1"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP2: TBlobField
      FieldName = 'IMG_ILA_BMP2'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField
      FieldName = 'D_ILA_INS2'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS2"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP3: TBlobField
      FieldName = 'IMG_ILA_BMP3'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField
      FieldName = 'D_ILA_INS3'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS3"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP4: TBlobField
      FieldName = 'IMG_ILA_BMP4'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField
      FieldName = 'D_ILA_INS4'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS4"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP5: TBlobField
      FieldName = 'IMG_ILA_BMP5'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField
      FieldName = 'D_ILA_INS5'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS5"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP6: TBlobField
      FieldName = 'IMG_ILA_BMP6'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField
      FieldName = 'D_ILA_INS6'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS6"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP7: TBlobField
      FieldName = 'IMG_ILA_BMP7'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField
      FieldName = 'D_ILA_INS7'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS7"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP8: TBlobField
      FieldName = 'IMG_ILA_BMP8'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField
      FieldName = 'D_ILA_INS8'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS8"'
      Size = 120
    end
  end
  object DTSCAD_PRO_IMG_CDN: TDataSource
    AutoEdit = False
    DataSet = CAD_PRO_IMG_CDN
    OnDataChange = DTSCAD_PRO_IMG_CDNDataChange
    Left = 584
    Top = 216
  end
end
