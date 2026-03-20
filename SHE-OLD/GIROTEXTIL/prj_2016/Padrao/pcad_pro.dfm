inherited frmcad_pro: Tfrmcad_pro
  Left = 286
  Top = 50
  Caption = 'Cadastro de Produtos'
  ClientHeight = 694
  ClientWidth = 1226
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 675
    Width = 1226
  end
  inherited SpeedBar9: TSpeedBar
    Width = 1226
  end
  inherited pnldir: TPanel
    Left = 1225
    Width = 1
    Height = 561
  end
  inherited pnlpri: TPanel
    Width = 1225
    Height = 561
    inherited pnldbg: TPanel
      Width = 1225
      Height = 300
      inherited gbDET: TGroupBox
        Width = 1225
        Height = 300
        inherited SpeedBar1: TSpeedBar
          Height = 282
        end
        inherited DBGConsulta: TdxDBGrid
          Width = 1172
          Height = 282
          KeyField = 'ID'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'dbgConsultaPRO_CPRO'
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
                  ColumnName = 'dbgConsultaPRO_PREC'
                  SummaryField = 'PRO_PREC'
                  SummaryFormat = '#,0.00'
                  SummaryType = cstAvg
                end>
              Name = 'dbgConsultaSummaryGroup1'
            end>
          Filter.Active = True
          Filter.Criteria = {00000000}
          ShowRowFooter = True
          OnCustomDrawCell = dbgConsultaCustomDrawCell
          object dbgConsultaPRO_CART: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_CART'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaPRO_CPRO: TdxDBGridMaskColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_CPRO'
            DisableFilter = True
          end
          object dbgConsultaPRO_DPRO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DPRO'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaPRO_DCOR: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DCOR'
          end
          object dbgConsultaPRO_DUNI: TdxDBGridMaskColumn
            Width = 26
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DUNI'
            DisableFilter = True
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaPRO_PREC: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_PREC'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'PRO_PREC'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object dbgConsultaPRO_DGRP: TdxDBGridMaskColumn
            Width = 173
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DGRP'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaFOR_FANT: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_FANT'
          end
          object dbgConsultaPRO_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DCAD'
          end
          object dbgConsultaPRO_DENT: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DENT'
          end
          object dbgConsultaPRO_DULT: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DULT'
          end
          object dbgConsultaPRO_DALT: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DALT'
          end
          object dbgConsultaPRO_DCAT: TdxDBGridMaskColumn
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DCAT'
          end
          object dbgConsultaPRO_DCOL: TdxDBGridMaskColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DCOL'
          end
          object dbgConsultaPRO_DUSU: TdxDBGridMaskColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DUSU'
          end
          object dbgConsultaPRO_GRAD: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_GRAD'
          end
          object dbgConsultaSTAV: TdxDBGridColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STAV'
          end
          object dbgConsultaID: TdxDBGridMaskColumn
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
            DisableFilter = True
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 300
      Width = 1225
      Height = 261
      Visible = True
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 975
        Height = 261
        Align = alClient
        Caption = 'Estoque'
        TabOrder = 0
        object pcEST: TdxPageControl
          Left = 2
          Top = 16
          Width = 971
          Height = 243
          ActivePage = TSEST
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
          object TSEST: TdxTabSheet
            Caption = 'Estoque'
            object DBGEstoque: TdxDBGrid
              Left = 0
              Top = 0
              Width = 971
              Height = 219
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderMinRowCount = 2
              HeaderPanelRowCount = 1
              KeyField = 'PRO_CPRO'
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
              BandFont.Height = -12
              BandFont.Name = 'Tahoma'
              BandFont.Style = []
              DataSource = dtscad_pro_est
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
              IndentDesc = 10
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
              PreviewFieldName = 'C_STAV'
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = clBlack
              PreviewFont.Height = -11
              PreviewFont.Name = 'Segoe UI Semibold'
              PreviewFont.Style = [fsBold, fsItalic]
              ShowRowFooter = True
              OnCustomDrawCell = DBGEstoqueCustomDrawCell
              object DBGEstoquePRO_CPRO: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGEstoquePRO_DCOR: TdxDBGridMaskColumn
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DCOR'
              end
              object DBGEstoqueC_QDIS: TdxDBGridColumn
                Color = 12910532
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_QDIS'
                DisableFilter = True
              end
              object DBGEstoqueC_QDEF: TdxDBGridColumn
                Color = 5197823
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_QDEF'
                DisableFilter = True
              end
              object DBGEstoqueC_QEST: TdxDBGridColumn
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_QEST'
                DisableFilter = True
              end
              object DBGEstoqueC_QRES: TdxDBGridColumn
                Color = 12713983
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_QRES'
                DisableFilter = True
              end
              object DBGEstoqueC_QSEP: TdxDBGridColumn
                Color = 12713983
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_QSEP'
                DisableFilter = True
              end
              object DBGEstoqueC_QSLD: TdxDBGridColumn
                Color = 12910532
                HeaderAlignment = taRightJustify
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_QSLD'
                DisableFilter = True
              end
              object DBGEstoquePRO_STAV: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_STAV'
              end
            end
          end
          object TSRES: TdxTabSheet
            Caption = 'Reservados'
            object dbgres: TdxDBGrid
              Left = 0
              Top = 0
              Width = 971
              Height = 219
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
              Color = 13158600
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtscad_pro_res
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
              ShowRowFooter = True
              object dbgresPRO_CPRO: TdxDBGridMaskColumn
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgresPRO_DCOR: TdxDBGridMaskColumn
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DCOR'
              end
              object dbgresEST_CRED: TdxDBGridMaskColumn
                Color = 7397120
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CRED'
                SummaryFooterType = cstSum
                SummaryFooterField = 'EST_CRED'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object dbgresROM_DERO: TdxDBGridMaskColumn
                Color = 15658734
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_DERO'
              end
              object dbgresEST_DROM: TdxDBGridDateColumn
                Color = 15658734
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DROM'
                DisableFilter = True
              end
              object dbgresEST_DUSU: TdxDBGridMaskColumn
                Color = 15658734
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DUSU'
              end
              object dbgresEST_DFAV: TdxDBGridMaskColumn
                Color = 15658734
                Width = 300
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DFAV'
              end
            end
          end
          object TSENT: TdxTabSheet
            Caption = 'Entradas'
            object dbgent: TdxDBGrid
              Left = 0
              Top = 0
              Width = 971
              Height = 219
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
              Color = 12171705
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtscad_pro_ent
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
              ShowRowFooter = True
              object dbgentPRO_CPRO: TdxDBGridMaskColumn
                Color = 13158600
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgentPRO_DCOR: TdxDBGridMaskColumn
                Color = 13158600
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DCOR'
              end
              object dbgentEST_CRED: TdxDBGridMaskColumn
                Color = 7397120
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CRED'
                SummaryFooterType = cstSum
                SummaryFooterField = 'EST_CRED'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object dbgentEST_CDET: TdxDBGridMaskColumn
                Color = 7397120
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CDET'
                DisableFilter = True
              end
              object dbgentEST_DSEP: TdxDBGridMaskColumn
                Color = 7397120
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DSEP'
              end
              object dbgentEST_CDRO: TdxDBGridMaskColumn
                Color = 15658734
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CDRO'
              end
              object dbgentEST_DCAD: TdxDBGridDateColumn
                Color = 15658734
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DCAD'
                DisableFilter = True
              end
              object dbgentEST_DUSU: TdxDBGridMaskColumn
                Color = 15658734
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DUSU'
              end
              object dbgentEST_DMAP: TdxDBGridMaskColumn
                Color = 15658734
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DMAP'
              end
              object dbgentEST_CTNR: TdxDBGridMaskColumn
                Color = 15658734
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CTNR'
              end
              object dbgentEST_LOTE: TdxDBGridMaskColumn
                Color = 15658734
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_LOTE'
              end
            end
          end
          object TSSAI: TdxTabSheet
            Caption = 'Sa'#237'das'
            object dbgsai: TdxDBGrid
              Left = 0
              Top = 0
              Width = 971
              Height = 219
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
              Color = 12171705
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtscad_pro_sai
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
              ShowRowFooter = True
              object dbgsaiPRO_CPRO: TdxDBGridMaskColumn
                Color = 13158600
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgsaiPRO_DCOR: TdxDBGridMaskColumn
                Color = 13158600
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DCOR'
              end
              object dbgsaiEST_DEBI: TdxDBGridMaskColumn
                Color = 7397120
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DEBI'
                SummaryFooterType = cstSum
                SummaryFooterField = 'EST_DEBI'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object dbgsaiEST_CDET: TdxDBGridMaskColumn
                Color = 7397120
                DisableEditor = True
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CDET'
                DisableFilter = True
              end
              object dbgsaiEST_DSEP: TdxDBGridMaskColumn
                Color = 7397120
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DSEP'
              end
              object dbgsaiEST_DOCU: TdxDBGridMaskColumn
                Color = 15658734
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DOCU'
              end
              object dbgsaiEST_DATA: TdxDBGridColumn
                Color = 15658734
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DATA'
                DisableFilter = True
              end
              object dbgsaiEST_DUSU: TdxDBGridMaskColumn
                Color = 15658734
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DUSU'
              end
              object dbgsaiEST_DFAV: TdxDBGridMaskColumn
                Color = 15658734
                Width = 250
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DFAV'
              end
              object dbgsaiEST_DMAP: TdxDBGridMaskColumn
                Color = 15658734
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_DMAP'
              end
              object dbgsaiEST_CTNR: TdxDBGridMaskColumn
                Color = 15658734
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_CTNR'
              end
              object dbgsaiEST_LOTE: TdxDBGridMaskColumn
                Color = 15658734
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EST_LOTE'
              end
            end
          end
          object tsTPRC: TdxTabSheet
            Caption = 'Varia'#231#227'o Pre'#231'os'
            object dbgtab: TdxDBGrid
              Left = 0
              Top = 0
              Width = 971
              Height = 219
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderMinRowCount = 2
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              Color = 12171705
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtscad_pro_tab
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              ShowRowFooter = True
              object dbgtabPRO_CPRO: TdxDBGridMaskColumn
                Width = 130
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgtabPRO_DCOR: TdxDBGridMaskColumn
                Width = 250
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DCOR'
              end
              object dbgtabPRO_TIPO: TdxDBGridMaskColumn
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_TIPO'
              end
              object dbgtabPRO_PRC1: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_PRC1'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'PRO_PRC1'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object dbgtabPRO_DAT1: TdxDBGridDateColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DAT1'
                DisableFilter = True
              end
              object dbgtabPRO_USU1: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_USU1'
              end
            end
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 975
        Top = 0
        Width = 250
        Height = 261
        Align = alRight
        Caption = 'Imagem do Produto'
        TabOrder = 1
        object imag: TImage
          Left = 2
          Top = 16
          Width = 246
          Height = 243
          Align = alClient
          Stretch = True
          OnClick = imagClick
        end
      end
    end
  end
  inherited Consulta: TIBQuery
    BufferChunks = 2500
    Left = 872
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
    Top = 208
  end
  inherited Cadastro: TIBQuery
    OnCalcFields = cadastroCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,'
      
        '       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO' +
        '_STA,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,'
      
        '       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO' +
        '_DULT,PRO_REPR,PRO_STAV,PRO_DALT,PRO_DUSU,FOR_FANT'
      'FROM   CAD_PRO,CAD_PRO_IMG,CAD_FOR'
      'WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART'
      'AND    CAD_PRO.PRO_CDFO = CAD_FOR.ID'
      '')
    Top = 208
    object cadastroID: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'ID'
      Origin = '"CAD_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroPRO_CART: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object cadastroPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cadastroPRO_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
    object cadastroPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cadastroPRO_DGRP: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'PRO_DGRP'
      Origin = '"CAD_PRO"."PRO_DGRP"'
      Size = 30
    end
    object cadastroPRO_DCOL: TIBStringField
      DisplayLabel = 'Cole'#231#227'o'
      FieldName = 'PRO_DCOL'
      Origin = '"CAD_PRO"."PRO_DCOL"'
      Size = 30
    end
    object cadastroPRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroPRO_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object cadastroPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object cadastroPRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object cadastroPRO_DCAD: TDateField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'PRO_DCAD'
      Origin = '"CAD_PRO"."PRO_DCAD"'
    end
    object cadastroPRO_DPRG: TDateField
      DisplayLabel = #218'ltima Programa'#231#227'o'
      FieldName = 'PRO_DPRG'
      Origin = '"CAD_PRO"."PRO_DPRG"'
    end
    object cadastroPRO_DENT: TDateField
      DisplayLabel = 'Estoque'
      FieldName = 'PRO_DENT'
      Origin = '"CAD_PRO"."PRO_DENT"'
    end
    object cadastroPRO_DULT: TDateField
      DisplayLabel = 'Venda'
      FieldName = 'PRO_DULT'
      Origin = '"CAD_PRO"."PRO_DULT"'
    end
    object cadastroPRO_CDFO: TIntegerField
      FieldName = 'PRO_CDFO'
      Origin = '"CAD_PRO"."PRO_CDFO"'
    end
    object cadastroPRO_DCAT: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'PRO_DCAT'
      Origin = '"CAD_PRO"."PRO_DCAT"'
      Size = 30
    end
    object cadastroPRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object cadastroPRO_PCOR: TIBStringField
      FieldName = 'PRO_PCOR'
      Origin = '"CAD_PRO"."PRO_PCOR"'
      Size = 30
    end
    object cadastroPRO_STA: TIBStringField
      FieldName = 'PRO_STA'
      Origin = '"CAD_PRO"."PRO_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroPRO_STAV: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'PRO_STAV'
      Origin = '"CAD_PRO"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object cadastroSTAV: TStringField
      DisplayLabel = 'Status'
      FieldKind = fkCalculated
      FieldName = 'STAV'
      Calculated = True
    end
    object cadastroPRO_DUSU: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'PRO_DUSU'
      Origin = '"CAD_PRO"."PRO_DUSU"'
      Size = 40
    end
    object cadastroPRO_DALT: TDateField
      DisplayLabel = 'Altera'#231#227'o'
      FieldName = 'PRO_DALT'
      Origin = '"CAD_PRO"."PRO_DALT"'
    end
    object cadastroPRO_PREC: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO"."PRO_PREC"'
    end
    object cadastroPRO_CUST: TFloatField
      DisplayLabel = 'Pre'#231'o de Custo'
      FieldName = 'PRO_CUST'
      Origin = '"CAD_PRO"."PRO_CUST"'
    end
    object cadastroPRO_PCOM: TFloatField
      DisplayLabel = 'Pre'#231'o de Compra'
      FieldName = 'PRO_PCOM'
      Origin = '"CAD_PRO"."PRO_PCOM"'
    end
    object cadastroFOR_FANT: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FOR_FANT'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 40
    end
  end
  object ImageOPC2: TImageList
    Height = 36
    ShareImages = True
    Width = 36
    Left = 444
    Top = 206
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
  object dtscad_pro_est: TDataSource
    AutoEdit = False
    DataSet = cad_pro_est
    Left = 96
    Top = 304
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 784
    Top = 328
  end
  object cad_pro_res: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT   CAD_PRO_RES.ID,ROM_DERO,EST_DROM,EST_HROM,EST_DUSU,EST_' +
        'DFAV,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_DSEP,EST_DMAP,EST_C' +
        'TNR,EST_LOTE'
      'FROM     CAD_PRO,CAD_PRO_RES,PED_VEN_CAB'
      'WHERE    CAD_PRO.ID     = EST_CPRO'
      'AND      PED_VEN_CAB.ID = EST_CDPD'
      'AND      PRO_CART       = :PRO_CART'
      'ORDER BY PRO_DCOR')
    Left = 128
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptUnknown
        Size = 21
      end>
    object cad_pro_resID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_RES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_resEST_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'EST_DUSU'
      Origin = '"CAD_PRO_RES"."EST_DUSU"'
      Size = 40
    end
    object cad_pro_resEST_DFAV: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'EST_DFAV'
      Origin = '"CAD_PRO_RES"."EST_DFAV"'
      Size = 40
    end
    object cad_pro_resEST_CRED: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EST_CRED'
      Origin = '"CAD_PRO_RES"."EST_CRED"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cad_pro_resEST_CDET: TIBStringField
      DisplayLabel = 'Etiqueta No'
      FieldName = 'EST_CDET'
      Origin = '"CAD_PRO_RES"."EST_CDET"'
      Size = 10
    end
    object cad_pro_resEST_DROM: TDateField
      DisplayLabel = 'Data'
      FieldName = 'EST_DROM'
      Origin = '"CAD_PRO_RES"."EST_DROM"'
    end
    object cad_pro_resEST_HROM: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'EST_HROM'
      Origin = '"CAD_PRO_RES"."EST_HROM"'
    end
    object cad_pro_resPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cad_pro_resPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cad_pro_resROM_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
    end
    object cad_pro_resEST_DSEP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'EST_DSEP'
      Origin = '"CAD_PRO_RES"."EST_DSEP"'
      Size = 15
    end
    object cad_pro_resEST_DMAP: TIBStringField
      DisplayLabel = 'Local de Estoque'
      FieldName = 'EST_DMAP'
      Origin = '"CAD_PRO_RES"."EST_DMAP"'
    end
    object cad_pro_resEST_CTNR: TIBStringField
      DisplayLabel = 'Container No'
      FieldName = 'EST_CTNR'
      Origin = '"CAD_PRO_RES"."EST_CTNR"'
    end
    object cad_pro_resEST_LOTE: TIBStringField
      DisplayLabel = 'Lote No'
      FieldName = 'EST_LOTE'
      Origin = '"CAD_PRO_RES"."EST_LOTE"'
    end
  end
  object dtscad_pro_res: TDataSource
    DataSet = cad_pro_res
    OnDataChange = dtscad_pro_resDataChange
    Left = 128
    Top = 304
  end
  object cad_pro_ent: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT   CAD_PRO_EST.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_CRED,EST_' +
        'CDET,EST_CDRO,EST_DCAD,EST_HCAD,EST_DSEP,EST_DMAP,EST_CTNR,EST_L' +
        'OTE'
      'FROM     CAD_PRO,CAD_PRO_EST'
      'WHERE    CAD_PRO.ID       = EST_CPRO'
      'AND      CAD_PRO.PRO_CART = :PRO_CART'
      'AND      EST_FLAG = '#39'E'#39
      'ORDER BY PRO_DCOR'
      '')
    Left = 192
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptUnknown
        Size = 21
      end>
    object cad_pro_entID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_EST"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_entEST_DUSU: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'EST_DUSU'
      Origin = '"CAD_PRO_EST"."EST_DUSU"'
      Size = 40
    end
    object cad_pro_entEST_CRED: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EST_CRED'
      Origin = '"CAD_PRO_EST"."EST_CRED"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cad_pro_entEST_CDET: TIBStringField
      DisplayLabel = 'Etiqueta No'
      FieldName = 'EST_CDET'
      Origin = '"CAD_PRO_EST"."EST_CDET"'
      Size = 10
    end
    object cad_pro_entEST_CDRO: TIntegerField
      DisplayLabel = 'Romaneio'
      FieldName = 'EST_CDRO'
      Origin = '"CAD_PRO_EST"."EST_CDRO"'
    end
    object cad_pro_entEST_DCAD: TDateField
      DisplayLabel = 'Data'
      FieldName = 'EST_DCAD'
      Origin = '"CAD_PRO_EST"."EST_DCAD"'
    end
    object cad_pro_entEST_HCAD: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'EST_HCAD'
      Origin = '"CAD_PRO_EST"."EST_HCAD"'
    end
    object cad_pro_entPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cad_pro_entPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cad_pro_entEST_DSEP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'EST_DSEP'
      Origin = '"CAD_PRO_EST"."EST_DSEP"'
      Size = 15
    end
    object cad_pro_entEST_DMAP: TIBStringField
      DisplayLabel = 'Local de Estoque'
      FieldName = 'EST_DMAP'
      Origin = '"CAD_PRO_EST"."EST_DMAP"'
    end
    object cad_pro_entEST_CTNR: TIBStringField
      DisplayLabel = 'Container No'
      FieldName = 'EST_CTNR'
      Origin = '"CAD_PRO_EST"."EST_CTNR"'
    end
    object cad_pro_entEST_LOTE: TIBStringField
      DisplayLabel = 'Lote No'
      FieldName = 'EST_LOTE'
      Origin = '"CAD_PRO_EST"."EST_LOTE"'
    end
  end
  object dtscad_pro_ent: TDataSource
    DataSet = cad_pro_ent
    OnDataChange = dtscad_pro_entDataChange
    Left = 192
    Top = 304
  end
  object cad_pro_sai: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    OnCalcFields = cad_pro_saiCalcFields
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT CAD_PRO_EST.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_DEBI,EST_CD' +
        'ET,EST_CDRO,EST_DOCU,EST_DCAD,EST_DROM,EST_HROM,EST_HCAD,EST_DFA' +
        'V,EST_FLAG,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE'
      'FROM   CAD_PRO,cad_pro_est "CAD_PRO_EST"'
      'WHERE  CAD_PRO.ID       = EST_CPRO'
      'AND    PRO_CART         = :PRO_CART'
      'AND    EST_FLAG <>  '#39'E'#39
      'ORDER BY PRO_DCOR,EST_DROM DESC'
      '')
    Left = 224
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptUnknown
        Size = 21
      end>
    object cad_pro_saiID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_EST"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_saiEST_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'EST_DUSU'
      Origin = '"CAD_PRO_EST"."EST_DUSU"'
      Size = 40
    end
    object cad_pro_saiPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cad_pro_saiPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cad_pro_saiEST_DEBI: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EST_DEBI'
      Origin = '"CAD_PRO_EST"."EST_DEBI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cad_pro_saiEST_CDET: TIBStringField
      DisplayLabel = 'Etiqueta No'
      FieldName = 'EST_CDET'
      Origin = '"CAD_PRO_EST"."EST_CDET"'
      Size = 10
    end
    object cad_pro_saiEST_CDRO: TIntegerField
      FieldName = 'EST_CDRO'
      Origin = '"CAD_PRO_EST"."EST_CDRO"'
    end
    object cad_pro_saiEST_DROM: TDateField
      DisplayLabel = 'Data'
      FieldName = 'EST_DROM'
      Origin = '"CAD_PRO_EST"."EST_DROM"'
    end
    object cad_pro_saiEST_HROM: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'EST_HROM'
      Origin = '"CAD_PRO_EST"."EST_HROM"'
    end
    object cad_pro_saiEST_DCAD: TDateField
      FieldName = 'EST_DCAD'
      Origin = '"CAD_PRO_EST"."EST_DCAD"'
    end
    object cad_pro_saiEST_HCAD: TTimeField
      FieldName = 'EST_HCAD'
      Origin = '"CAD_PRO_EST"."EST_HCAD"'
    end
    object cad_pro_saiEST_DFAV: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'EST_DFAV'
      Origin = '"CAD_PRO_EST"."EST_DFAV"'
      Size = 40
    end
    object cad_pro_saiEST_FLAG: TIBStringField
      FieldName = 'EST_FLAG'
      Origin = '"CAD_PRO_EST_004"."EST_FLAG"'
      FixedChar = True
      Size = 1
    end
    object cad_pro_saiEST_DOCU: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'EST_DOCU'
      Origin = '"CAD_PRO_EST"."EST_DOCU"'
      Size = 10
    end
    object cad_pro_saiEST_DATA: TDateField
      DisplayLabel = 'Data'
      FieldKind = fkCalculated
      FieldName = 'EST_DATA'
      Calculated = True
    end
    object cad_pro_saiEST_HORA: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkCalculated
      FieldName = 'EST_HORA'
      Calculated = True
    end
    object cad_pro_saiEST_DSEP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'EST_DSEP'
      Origin = '"CAD_PRO_EST"."EST_DSEP"'
      Size = 15
    end
    object cad_pro_saiEST_DMAP: TIBStringField
      DisplayLabel = 'Local de Estoque'
      FieldName = 'EST_DMAP'
      Origin = '"CAD_PRO_EST"."EST_DMAP"'
    end
    object cad_pro_saiEST_CTNR: TIBStringField
      DisplayLabel = 'Container No'
      FieldName = 'EST_CTNR'
      Origin = '"CAD_PRO_EST"."EST_CTNR"'
    end
    object cad_pro_saiEST_LOTE: TIBStringField
      DisplayLabel = 'Lote No'
      FieldName = 'EST_LOTE'
      Origin = '"CAD_PRO_EST"."EST_LOTE"'
    end
  end
  object dtscad_pro_sai: TDataSource
    DataSet = cad_pro_sai
    OnDataChange = dtscad_pro_saiDataChange
    Left = 224
    Top = 304
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    BufferChunks = 2500
    Left = 872
    Top = 240
  end
  object cad_pro_tab: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM CAD_PRO_TAB'
      'WHERE PRO_CART = :PRO_CART'
      'ORDER BY ID DESC')
    Left = 256
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptUnknown
        Size = 21
      end>
    object cad_pro_tabID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_TAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_tabPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO_TAB"."PRO_CART"'
    end
    object cad_pro_tabPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO_TAB"."PRO_CPRO"'
    end
    object cad_pro_tabPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO_TAB"."PRO_DCOR"'
      Size = 30
    end
    object cad_pro_tabPRO_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PRO_TIPO'
      Origin = '"CAD_PRO_TAB"."PRO_TIPO"'
      Size = 30
    end
    object cad_pro_tabPRO_PRC1: TFloatField
      DisplayLabel = 'Pre'#231'o Atual'
      FieldName = 'PRO_PRC1'
      Origin = '"CAD_PRO_TAB"."PRO_PRC1"'
      DisplayFormat = '#,0.00'
    end
    object cad_pro_tabPRO_DAT1: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PRO_DAT1'
      Origin = '"CAD_PRO_TAB"."PRO_DAT1"'
    end
    object cad_pro_tabPRO_USU1: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'PRO_USU1'
      Origin = '"CAD_PRO_TAB"."PRO_USU1"'
      Size = 40
    end
    object cad_pro_tabPRO_PRC2: TFloatField
      DisplayLabel = 'Pre'#231'o Anterior'
      FieldName = 'PRO_PRC2'
      Origin = '"CAD_PRO_TAB"."PRO_PRC2"'
      DisplayFormat = '#,0.00'
    end
    object cad_pro_tabPRO_DAT2: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PRO_DAT2'
      Origin = '"CAD_PRO_TAB"."PRO_DAT2"'
    end
    object cad_pro_tabPRO_USU2: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'PRO_USU2'
      Origin = '"CAD_PRO_TAB"."PRO_USU2"'
      Size = 40
    end
  end
  object dtscad_pro_tab: TDataSource
    DataSet = cad_pro_tab
    Left = 960
    Top = 392
  end
  object cad_pro_sep: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT   CAD_PRO_SEP.ID,ROM_DERO,EST_DCAD,EST_DROM,EST_HROM,EST_' +
        'DUSU,EST_DFAV,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_DSEP,EST_D' +
        'MAP,EST_CTNR,EST_LOTE'
      'FROM     CAD_PRO,CAD_PRO_SEP,PED_VEN_CAB'
      'WHERE    CAD_PRO.ID     = EST_CPRO'
      'AND      PED_VEN_CAB.ID = EST_CDPD'
      'AND      PRO_CART       = :PRO_CART'
      'ORDER BY PRO_DCOR')
    Left = 160
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptUnknown
        Size = 21
      end>
    object cad_pro_sepID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_SEP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_sepROM_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
    end
    object cad_pro_sepEST_DCAD: TDateField
      DisplayLabel = 'Dt Separa'#231#227'o'
      FieldName = 'EST_DCAD'
      Origin = '"CAD_PRO_SEP"."EST_DCAD"'
    end
    object cad_pro_sepEST_DROM: TDateField
      DisplayLabel = 'Dt Pedido'
      FieldName = 'EST_DROM'
      Origin = '"CAD_PRO_SEP"."EST_DROM"'
    end
    object cad_pro_sepEST_HROM: TTimeField
      FieldName = 'EST_HROM'
      Origin = '"CAD_PRO_SEP"."EST_HROM"'
    end
    object cad_pro_sepEST_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'EST_DUSU'
      Origin = '"CAD_PRO_SEP"."EST_DUSU"'
      Size = 40
    end
    object cad_pro_sepEST_DFAV: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'EST_DFAV'
      Origin = '"CAD_PRO_SEP"."EST_DFAV"'
      Size = 40
    end
    object cad_pro_sepPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cad_pro_sepPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cad_pro_sepEST_CRED: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EST_CRED'
      Origin = '"CAD_PRO_SEP"."EST_CRED"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cad_pro_sepEST_CDET: TIBStringField
      DisplayLabel = 'Etiqueta No'
      FieldName = 'EST_CDET'
      Origin = '"CAD_PRO_SEP"."EST_CDET"'
      Size = 10
    end
    object cad_pro_sepEST_DSEP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'EST_DSEP'
      Origin = '"CAD_PRO_SEP"."EST_DSEP"'
      Size = 15
    end
    object cad_pro_sepEST_DMAP: TIBStringField
      FieldName = 'EST_DMAP'
      Origin = '"CAD_PRO_SEP"."EST_DMAP"'
    end
    object cad_pro_sepEST_CTNR: TIBStringField
      FieldName = 'EST_CTNR'
      Origin = '"CAD_PRO_SEP"."EST_CTNR"'
    end
    object cad_pro_sepEST_LOTE: TIBStringField
      FieldName = 'EST_LOTE'
      Origin = '"CAD_PRO_SEP"."EST_LOTE"'
    end
  end
  object dtscad_pro_sep: TDataSource
    DataSet = cad_pro_sep
    Left = 160
    Top = 304
  end
  object cad_pro_est: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    OnCalcFields = cad_pro_estCalcFields
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT   PRO_CPRO,PRO_DCOR,PRO_DUNI,PRO_METR,PRO_PESO,PRO_PSCN,P' +
        'RO_STAV,PRO_CCST,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST2,'
      
        '         (SELECT CAST(CAST(COUNT(*) AS INTEGER) AS INTEGER)     ' +
        '          FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS P' +
        'RO_REST2,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST3,'
      
        '         (SELECT CAST(CAST(COUNT(*) AS INTEGER) AS INTEGER)     ' +
        '          FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS P' +
        'RO_REST3,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST4,'
      
        '         (SELECT CAST(CAST(COUNT(*) AS INTEGER) AS INTEGER)     ' +
        '          FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS P' +
        'RO_REST4,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST5,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST5,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST6,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST6,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST7,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST7,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST8,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST9,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST9,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES2,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES2,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES3,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES3,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES4,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES4,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES5,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES5,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES6,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES6,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES7,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES7,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES8,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES9,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES9,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_002 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP2,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP2,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_003 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP3,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP3,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP4,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP4,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_005 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP5,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP5,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_006 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP6,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP6,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_007 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP7,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP7,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_008 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP8,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_009 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP9,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM CA' +
        'D_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP9,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM cad_pro_prg_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM ca' +
        'd_pro_prg_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) ' +
        'AS PRO_RPRG,'
      
        '         (SELECT SUM(EST_CRED)          FROM cad_pro_prc_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,'
      
        '         (SELECT SUM(EST_DEBI)          FROM cad_pro_prc_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM ca' +
        'd_pro_prc_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) ' +
        'AS PRO_RCOM,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM cad_pro_def_004 WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,'
      
        '         (SELECT CAST(COUNT(*) AS INTEGER)               FROM ca' +
        'd_pro_def_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF'
      'FROM     CAD_PRO'
      'WHERE    PRO_CART = :PRO_CART'
      'ORDER BY PRO_DCOR')
    Left = 96
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptUnknown
        Size = 21
      end>
    object cad_pro_estPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cad_pro_estPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cad_pro_estPRO_DUNI: TIBStringField
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object cad_pro_estPRO_METR: TIBBCDField
      FieldName = 'PRO_METR'
      Origin = '"CAD_PRO"."PRO_METR"'
      Precision = 9
      Size = 2
    end
    object cad_pro_estPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"CAD_PRO"."PRO_PESO"'
      Precision = 9
      Size = 2
    end
    object cad_pro_estPRO_PSCN: TIBBCDField
      FieldName = 'PRO_PSCN'
      Origin = '"CAD_PRO"."PRO_PSCN"'
      Precision = 9
      Size = 2
    end
    object cad_pro_estPRO_CCST: TIBStringField
      FieldName = 'PRO_CCST'
      Origin = '"CAD_PRO"."PRO_CCST"'
      FixedChar = True
      Size = 1
    end
    object cad_pro_estPRO_STAV: TIBStringField
      FieldName = 'PRO_STAV'
      Origin = '"CAD_PRO"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_pro_estPRO_QEST: TIBBCDField
      FieldName = 'PRO_QEST'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST: TIntegerField
      FieldName = 'PRO_REST'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST2: TIBBCDField
      FieldName = 'PRO_QEST2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST2: TIntegerField
      FieldName = 'PRO_REST2'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST3: TIBBCDField
      FieldName = 'PRO_QEST3'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST3: TIntegerField
      FieldName = 'PRO_REST3'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST4: TIBBCDField
      FieldName = 'PRO_QEST4'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST4: TIntegerField
      FieldName = 'PRO_REST4'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST5: TIBBCDField
      FieldName = 'PRO_QEST5'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST5: TIntegerField
      FieldName = 'PRO_REST5'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST6: TIBBCDField
      FieldName = 'PRO_QEST6'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST6: TIntegerField
      FieldName = 'PRO_REST6'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST7: TIBBCDField
      FieldName = 'PRO_QEST7'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST7: TIntegerField
      FieldName = 'PRO_REST7'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST8: TIBBCDField
      FieldName = 'PRO_QEST8'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST8: TIntegerField
      FieldName = 'PRO_REST8'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QEST9: TIBBCDField
      FieldName = 'PRO_QEST9'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_REST9: TIntegerField
      FieldName = 'PRO_REST9'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES: TIBBCDField
      FieldName = 'PRO_QRES'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES: TIntegerField
      FieldName = 'PRO_RRES'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES2: TIBBCDField
      FieldName = 'PRO_QRES2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES2: TIntegerField
      FieldName = 'PRO_RRES2'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES3: TIBBCDField
      FieldName = 'PRO_QRES3'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES3: TIntegerField
      FieldName = 'PRO_RRES3'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES4: TIBBCDField
      FieldName = 'PRO_QRES4'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES4: TIntegerField
      FieldName = 'PRO_RRES4'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES5: TIBBCDField
      FieldName = 'PRO_QRES5'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES5: TIntegerField
      FieldName = 'PRO_RRES5'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES6: TIBBCDField
      FieldName = 'PRO_QRES6'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES6: TIntegerField
      FieldName = 'PRO_RRES6'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES7: TIBBCDField
      FieldName = 'PRO_QRES7'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES7: TIntegerField
      FieldName = 'PRO_RRES7'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES8: TIBBCDField
      FieldName = 'PRO_QRES8'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES8: TIntegerField
      FieldName = 'PRO_RRES8'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QRES9: TIBBCDField
      FieldName = 'PRO_QRES9'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RRES9: TIntegerField
      FieldName = 'PRO_RRES9'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP: TIBBCDField
      FieldName = 'PRO_QSEP'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP: TIntegerField
      FieldName = 'PRO_RSEP'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP2: TIBBCDField
      FieldName = 'PRO_QSEP2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP2: TIntegerField
      FieldName = 'PRO_RSEP2'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP3: TIBBCDField
      FieldName = 'PRO_QSEP3'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP3: TIntegerField
      FieldName = 'PRO_RSEP3'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP4: TIBBCDField
      FieldName = 'PRO_QSEP4'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP4: TIntegerField
      FieldName = 'PRO_RSEP4'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP5: TIBBCDField
      FieldName = 'PRO_QSEP5'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP5: TIntegerField
      FieldName = 'PRO_RSEP5'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP6: TIBBCDField
      FieldName = 'PRO_QSEP6'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP6: TIntegerField
      FieldName = 'PRO_RSEP6'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP7: TIBBCDField
      FieldName = 'PRO_QSEP7'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP7: TIntegerField
      FieldName = 'PRO_RSEP7'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP8: TIBBCDField
      FieldName = 'PRO_QSEP8'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP8: TIntegerField
      FieldName = 'PRO_RSEP8'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QSEP9: TIBBCDField
      FieldName = 'PRO_QSEP9'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RSEP9: TIntegerField
      FieldName = 'PRO_RSEP9'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QPRG: TIBBCDField
      FieldName = 'PRO_QPRG'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RPRG: TIntegerField
      FieldName = 'PRO_RPRG'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QCOM: TIBBCDField
      FieldName = 'PRO_QCOM'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_QPRD: TIBBCDField
      FieldName = 'PRO_QPRD'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RCOM: TIntegerField
      FieldName = 'PRO_RCOM'
      ProviderFlags = []
    end
    object cad_pro_estPRO_QDEF: TIBBCDField
      FieldName = 'PRO_QDEF'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object cad_pro_estPRO_RDEF: TIntegerField
      FieldName = 'PRO_RDEF'
      ProviderFlags = []
    end
    object cad_pro_estC_RSLD: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RSLD'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QSLD: TFloatField
      DisplayLabel = 'Saldo Programado'
      FieldKind = fkCalculated
      FieldName = 'C_QSLD'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_RPRG: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RPRG'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QPRG: TFloatField
      DisplayLabel = 'Programa'#231#245'es Vendas'
      FieldKind = fkCalculated
      FieldName = 'C_QPRG'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_RCOM: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RCOM'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QCOM: TFloatField
      DisplayLabel = 'Programa'#231#245'es Compras'
      FieldKind = fkCalculated
      FieldName = 'C_QCOM'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_RDEF: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RDEF'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QDEF: TFloatField
      DisplayLabel = 'Estoque Defeitos'
      FieldKind = fkCalculated
      FieldName = 'C_QDEF'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_RSEP: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RSEP'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QSEP: TFloatField
      DisplayLabel = 'Total Separado'
      FieldKind = fkCalculated
      FieldName = 'C_QSEP'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_RRES: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RRES'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QRES: TFloatField
      DisplayLabel = 'Total Reservado'
      FieldKind = fkCalculated
      FieldName = 'C_QRES'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_REST: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_REST'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QEST: TFloatField
      DisplayLabel = 'Estoque Total'
      FieldKind = fkCalculated
      FieldName = 'C_QEST'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_RDIS: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_RDIS'
      DisplayFormat = '0'
      Calculated = True
    end
    object cad_pro_estC_QDIS: TFloatField
      DisplayLabel = 'Estoque Dispon'#237'vel'
      FieldKind = fkCalculated
      FieldName = 'C_QDIS'
      DisplayFormat = ',##,0.00######'
      Calculated = True
    end
    object cad_pro_estC_STAV: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_STAV'
      Calculated = True
    end
    object cad_pro_estC_DCST: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_DCST'
      Size = 120
      Calculated = True
    end
  end
  object SQLEdicao: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 592
    Top = 218
  end
end
