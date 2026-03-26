inherited frmven_des: Tfrmven_des
  Left = 629
  Top = 81
  Caption = 'Desenhos'
  ClientHeight = 625
  ClientWidth = 625
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 625
    Height = 580
    inherited PaintBox: TPaintBox
      Width = 625
      Height = 515
    end
    inherited SBMenuPrincipal: TSpeedBar
      Width = 625
      TabOrder = 1
    end
    object pcDES: TdxPageControl
      Left = 0
      Top = 65
      Width = 625
      Height = 515
      ActivePage = tsDES01
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
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
      Style = dxtsFlatButtons
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabWidth = 0
      object tsDES01: TdxTabSheet
        Caption = 'Desenho 1'
        object GBMenuEdicao: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SBMenuEdicao: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SSMenuEdicao: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d1I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d1IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d1A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d1AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d1E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d1EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d1S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d1SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d1C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d1CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GBConsulta: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object dbg001: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyDown = dbg001KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_001
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dbg001ROM_DCOR: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dbg001ROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
          object Panel2: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 1
            object edDES1: TdxEdit
              Left = 1
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
        end
      end
      object tsDES02: TdxTabSheet
        Caption = 'Desenho 2'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar1: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection1: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d2I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d2IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d2A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d2AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d2E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d2EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d2S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d2SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d2C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d2CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel27: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES2: TdxEdit
              Left = 1
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg002: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg002KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_002
            Filter.Criteria = {00000000}
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -13
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            object dbg002ROM_DCOR: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dbg002ROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
      object tsDES03: TdxTabSheet
        Caption = 'Desenho 3'
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar2: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection2: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d3I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d3IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d3A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d3AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d3E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d3EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d3S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d3SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d3C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d3CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox4: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel28: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES3: TdxEdit
              Left = 1
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg003: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg003KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_003
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dbg003ROM_DCOR: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dbg003ROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
      object tsDES04: TdxTabSheet
        Caption = 'Desenho 4'
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar3: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection3: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d4I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d4IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d4A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d4AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d4E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d4EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d4S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d4SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d4C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d4CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel92: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES4: TdxEdit
              Left = 1
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg004: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg004KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dstdes_004
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dbg004ROM_DCOR: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dbg004ROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
      object tsDES05: TdxTabSheet
        Caption = 'Desenho 5'
        object GroupBox7: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar4: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection4: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d5I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d5IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d5A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d5AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d5E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d5EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d5S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d5SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d5C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d5CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox8: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel93: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES5: TdxEdit
              Left = 2
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg005: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg005KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_005
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dbg005ROM_DCOR: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dbg005ROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
      object tsDES06: TdxTabSheet
        Caption = 'Desenho 6'
        object GroupBox9: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar5: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection5: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d6I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d6IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d6A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d6AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d6E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d6EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d6S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d6SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d6C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d6CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox10: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel94: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES6: TdxEdit
              Left = 2
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg006: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg006KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_006
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dxDBGridMaskColumn73: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dxDBGridMaskColumn74: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
      object tsDES07: TdxTabSheet
        Caption = 'Desenho 7'
        object GroupBox11: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar6: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection6: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d7I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d7IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d7A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d7AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d7E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d7EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d7S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d7SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d7C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d7CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox12: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel95: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES7: TdxEdit
              Left = 2
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg007: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg007KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_007
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dxDBGridMaskColumn75: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dxDBGridMaskColumn76: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
      object tsDES08: TdxTabSheet
        Caption = 'Desenho 8'
        object GroupBox13: TGroupBox
          Left = 0
          Top = 0
          Width = 54
          Height = 489
          Align = alLeft
          Caption = ' Edi'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object SpeedBar7: TSpeedBar
            Left = 2
            Top = 19
            Width = 50
            Height = 468
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsItalic]
            Position = bpCustom
            Align = alClient
            Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
            BtnOffsetHorz = 6
            BtnOffsetVert = 5
            BtnWidth = 38
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection7: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object d8I: TSpeedItem
              Cursor = crHandPoint
              Hint = 'Inclus'#227'o de Registros'
              ImageIndex = 0
              Spacing = 1
              Left = 6
              Top = 5
              Visible = True
              OnClick = d8IClick
              SectionName = 'Edi'#231#227'o'
            end
            object d8A: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Edi'#231#227'o de Registros'
              ImageIndex = 1
              Spacing = 1
              Left = 6
              Top = 45
              Visible = True
              OnClick = d8AClick
              SectionName = 'Edi'#231#227'o'
            end
            object d8E: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o de Registros'
              ImageIndex = 2
              Spacing = 1
              Left = 6
              Top = 85
              Visible = True
              OnClick = d8EClick
              SectionName = 'Edi'#231#227'o'
            end
            object d8S: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Salva Edi'#231#227'o'
              ImageIndex = 3
              Spacing = 1
              Left = 6
              Top = 125
              Visible = True
              OnClick = d8SClick
              SectionName = 'Edi'#231#227'o'
            end
            object d8C: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = 'Cancela Edi'#231#227'o'
              ImageIndex = 4
              Spacing = 1
              Left = 6
              Top = 165
              Visible = True
              OnClick = d8CClick
              SectionName = 'Edi'#231#227'o'
            end
          end
        end
        object GroupBox14: TGroupBox
          Left = 54
          Top = 0
          Width = 571
          Height = 489
          Align = alClient
          Caption = '  Consulta  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object Panel96: TPanel
            Left = 2
            Top = 463
            Width = 567
            Height = 24
            Align = alBottom
            TabOrder = 0
            object edDES8: TdxEdit
              Left = 2
              Top = 2
              Width = 571
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              Text = 'Digite aqui o nome do desenho'
              Alignment = taCenter
              MaxLength = 15
              StoredValues = 3
            end
          end
          object dbg008: TdxDBGrid
            Left = 2
            Top = 19
            Width = 567
            Height = 444
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
            Color = clWhite
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbg008KeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dtsdes_008
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dxDBGridMaskColumn77: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = 'Itens 0'
            end
            object dxDBGridMaskColumn78: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '0.00'
            end
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 606
    Width = 625
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 580
    Width = 625
    Height = 26
    Align = alBottom
    TabOrder = 2
    object edcdro: TdxMaskEdit
      Left = 95
      Top = 1
      Width = 65
      Color = 16644596
      Enabled = False
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
      Visible = False
      CharCase = ecUpperCase
      IgnoreMaskBlank = False
      Text = '0'
      OnValidate = edcdroValidate
      StoredValues = 4
    end
    object EDCDNF: TdxMaskEdit
      Left = 95
      Top = 1
      Width = 65
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
      Style.Shadow = False
      TabOrder = 1
      CharCase = ecUpperCase
      IgnoreMaskBlank = False
      Text = '0'
      OnValidate = EDCDNFValidate
      StoredValues = 4
    end
    object IECDNF: TdxImageEdit
      Left = 3
      Top = 1
      Width = 90
      Hint = 'Unidade'
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
      Style.Shadow = False
      TabOrder = 2
      Text = '0'
      AutoSize = False
      Descriptions.Strings = (
        'Nota Fiscal'
        'Pedido')
      ImageIndexes.Strings = (
        '0'
        '1')
      Values.Strings = (
        '0'
        '1')
      Height = 24
    end
    object EDTITULO: TdxMaskEdit
      Left = 162
      Top = 1
      Width = 460
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsFlat
      Style.Shadow = False
      TabOrder = 3
      CharCase = ecUpperCase
      IgnoreMaskBlank = False
      OnValidate = EDCDNFValidate
      StoredValues = 4
    end
  end
  inherited Consulta: TIBQuery
    Top = 192
  end
  inherited IBTra: TIBTransaction
    Top = 160
  end
  inherited ibSP: TIBStoredProc
    Top = 160
  end
  inherited ILMenuPrincipal: TImageList
    Top = 160
  end
  inherited ILMenuEdicao: TImageList
    Top = 160
  end
  object des_001: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_001AfterCancel
    AfterDelete = des_001AfterDelete
    AfterEdit = des_001AfterEdit
    AfterInsert = des_001AfterEdit
    AfterPost = des_001AfterPost
    BeforeCancel = des_001BeforeCancel
    BeforeInsert = des_001BeforeInsert
    BeforePost = des_001BeforePost
    OnNewRecord = des_001NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 336
    Top = 200
    object des_001ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_001ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES"."ROM_CCAB"'
    end
    object des_001ROM_DESE: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DESE'
      Origin = '"DES_001"."ROM_DESE"'
      Size = 15
    end
    object des_001ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_001"."ROM_DCOR"'
      Size = 30
    end
    object des_001ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_001"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_001ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_001"."ROM_NOME"'
      Size = 15
    end
  end
  object des_002: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_002AfterCancel
    AfterDelete = des_002AfterDelete
    AfterEdit = des_002AfterEdit
    AfterInsert = des_002AfterEdit
    AfterPost = des_002AfterPost
    BeforeCancel = des_002BeforeCancel
    BeforeInsert = des_002BeforeInsert
    BeforePost = des_002BeforePost
    OnNewRecord = des_002NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 368
    Top = 200
    object des_002ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_002"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_002ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES"."ROM_CCAB"'
    end
    object des_002ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_002"."ROM_DESE"'
      Size = 15
    end
    object des_002ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_002"."ROM_DCOR"'
      Size = 30
    end
    object des_002ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_002"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_002ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_002"."ROM_NOME"'
      Size = 15
    end
  end
  object des_003: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_003AfterCancel
    AfterDelete = des_003AfterDelete
    AfterEdit = des_003AfterEdit
    AfterInsert = des_003AfterEdit
    AfterPost = des_003AfterPost
    BeforeCancel = des_003BeforeCancel
    BeforeInsert = des_003BeforeInsert
    BeforePost = des_003BeforePost
    OnNewRecord = des_003NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 400
    Top = 200
    object des_003ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_003"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_003ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES"."ROM_CCAB"'
    end
    object des_003ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_003"."ROM_DESE"'
      Size = 15
    end
    object des_003ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_003"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_003ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_003"."ROM_DCOR"'
      Size = 30
    end
    object des_003ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_003"."ROM_NOME"'
      Size = 15
    end
  end
  object des_004: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_004AfterCancel
    AfterDelete = des_004AfterDelete
    AfterEdit = des_004AfterEdit
    AfterInsert = des_004AfterEdit
    AfterPost = des_004AfterPost
    BeforeCancel = des_004BeforeCancel
    BeforeInsert = des_004BeforeInsert
    BeforePost = des_004BeforePost
    OnNewRecord = des_004NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 432
    Top = 200
    object des_004ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_004ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES_004"."ROM_CCAB"'
    end
    object des_004ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_004"."ROM_DESE"'
      Size = 15
    end
    object des_004ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_004"."ROM_DCOR"'
      Size = 30
    end
    object des_004ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_004"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_004ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_004"."ROM_NOME"'
      Size = 15
    end
  end
  object des_005: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_005AfterCancel
    AfterDelete = des_005AfterDelete
    AfterEdit = des_005AfterEdit
    AfterInsert = des_005AfterEdit
    AfterPost = des_005AfterPost
    BeforeCancel = des_005BeforeCancel
    BeforeInsert = des_005BeforeInsert
    BeforePost = des_005BeforePost
    OnNewRecord = des_005NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 464
    Top = 200
    object des_005ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_005"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_005ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES_005"."ROM_CCAB"'
    end
    object des_005ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_005"."ROM_DESE"'
      Size = 15
    end
    object des_005ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_005"."ROM_DCOR"'
      Size = 30
    end
    object des_005ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_005"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_005ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_005"."ROM_NOME"'
      Size = 15
    end
  end
  object des_006: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_006AfterCancel
    AfterDelete = des_006AfterDelete
    AfterEdit = des_006AfterEdit
    AfterInsert = des_006AfterEdit
    AfterPost = des_006AfterPost
    BeforeCancel = des_006BeforeCancel
    BeforeInsert = des_006BeforeInsert
    BeforePost = des_006BeforePost
    OnNewRecord = des_006NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 496
    Top = 200
    object des_006ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_006"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_006ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES"."ROM_CCAB"'
    end
    object des_006ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_006"."ROM_DESE"'
      Size = 15
    end
    object des_006ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_006"."ROM_DCOR"'
      Size = 30
    end
    object des_006ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_006"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_006ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_006"."ROM_NOME"'
      Size = 15
    end
  end
  object des_007: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_007AfterCancel
    AfterDelete = des_007AfterDelete
    AfterEdit = des_007AfterEdit
    AfterInsert = des_007AfterEdit
    AfterPost = des_007AfterPost
    BeforeCancel = des_007BeforeCancel
    BeforeInsert = des_007BeforeInsert
    BeforePost = des_007BeforePost
    OnNewRecord = des_007NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 200
    object des_007ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_007"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_007ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES"."ROM_CCAB"'
    end
    object des_007ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_007"."ROM_DESE"'
      Size = 15
    end
    object des_007ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_007"."ROM_DCOR"'
      Size = 30
    end
    object des_007ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_007"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_007ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_007"."ROM_NOME"'
      Size = 15
    end
  end
  object des_008: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterCancel = des_008AfterCancel
    AfterDelete = des_008AfterDelete
    AfterEdit = des_008AfterEdit
    AfterInsert = des_007AfterEdit
    AfterPost = des_008AfterPost
    BeforeCancel = des_008BeforeCancel
    BeforeInsert = des_008BeforeInsert
    BeforePost = des_008BeforePost
    OnNewRecord = des_008NewRecord
    DeleteSQL.Strings = (
      'delete from ROM_DES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_DES'
      '  (ID, ROM_CCAB, ROM_DCOR, ROM_DESE, ROM_NOME, ROM_QTDE)'
      'values'
      '  (:ID, :ROM_CCAB, :ROM_DCOR, :ROM_DESE, :ROM_NOME, :ROM_QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CCAB,'
      '  ROM_DESE,'
      '  ROM_DCOR,'
      '  ROM_QTDE,'
      '  ROM_NOME'
      'from ROM_DES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM ROM_DES')
    ModifySQL.Strings = (
      'update ROM_DES'
      'set'
      '  ID = :ID,'
      '  ROM_CCAB = :ROM_CCAB,'
      '  ROM_DCOR = :ROM_DCOR,'
      '  ROM_DESE = :ROM_DESE,'
      '  ROM_NOME = :ROM_NOME,'
      '  ROM_QTDE = :ROM_QTDE'
      'where'
      '  ID = :OLD_ID')
    Left = 560
    Top = 200
    object des_008ID: TIntegerField
      FieldName = 'ID'
      Origin = '"DES_008"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object des_008ROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_DES"."ROM_CCAB"'
    end
    object des_008ROM_DESE: TIBStringField
      FieldName = 'ROM_DESE'
      Origin = '"DES_008"."ROM_DESE"'
      Size = 15
    end
    object des_008ROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"DES_008"."ROM_DCOR"'
      Size = 30
    end
    object des_008ROM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'ROM_QTDE'
      Origin = '"DES_008"."ROM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object des_008ROM_NOME: TIBStringField
      FieldName = 'ROM_NOME'
      Origin = '"DES_008"."ROM_NOME"'
      Size = 15
    end
  end
  object dtsdes_008: TDataSource
    DataSet = des_008
    Left = 560
    Top = 232
  end
  object dtsdes_007: TDataSource
    DataSet = des_007
    Left = 528
    Top = 232
  end
  object dtsdes_006: TDataSource
    DataSet = des_006
    Left = 496
    Top = 232
  end
  object dtsdes_005: TDataSource
    DataSet = des_005
    Left = 464
    Top = 232
  end
  object dstdes_004: TDataSource
    DataSet = des_004
    Left = 432
    Top = 232
  end
  object dtsdes_003: TDataSource
    DataSet = des_003
    Left = 400
    Top = 232
  end
  object dtsdes_002: TDataSource
    DataSet = des_002
    Left = 368
    Top = 232
  end
  object dtsdes_001: TDataSource
    DataSet = des_001
    Left = 336
    Top = 232
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 320
    Top = 184
  end
  object expXLS: TQRExcelFilter
    UseXLColumns = False
    Left = 248
    Top = 248
  end
  object SQLConsulta: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 144
    Top = 212
  end
end
