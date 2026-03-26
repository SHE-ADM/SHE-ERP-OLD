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
      inherited siCAN: TSpeedItem
        Visible = False
      end
      inherited siSAIR: TSpeedItem
        Left = 245
      end
      object siVIS: TSpeedItem
        BtnCaption = 'Visualizar'
        Cursor = crHandPoint
        Hint = 'Visualizar desenho(s)'
        ImageIndex = 3
        Spacing = 1
        Left = 85
        Top = 5
        Visible = True
        OnClick = siVISClick
        SectionName = 'Menu Principal'
      end
      object siREL: TSpeedItem
        BtnCaption = 'Imprimir'
        Cursor = crHandPoint
        Hint = 'Emiss'#227'o de Desenho(s)'
        ImageIndex = 4
        Spacing = 1
        Left = 165
        Top = 5
        Visible = True
        OnClick = siRELClick
        SectionName = 'Menu Principal'
      end
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
    Bitmap = {
      494C01010500090004003E002000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F80000006000000001002000000000000074
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
      00000000000000000000000000000000000000000000F1F1F100EFEFEF00DCDC
      DC00CFCFCF00D0D0D000D1D1D100D3D3D300D4D4D400D6D6D600D7D7D700D7D7
      D700D9D9D900DADADA00DADADA00DADADA00DADADA00D9D9D900D8D8D800D7D7
      D700D6D6D600D4D4D400D3D3D300D1D1D100CFCFCF00D0D0D000DFDFDF000000
      0000F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500E1E1E100E0E0E000E2E2E200E4E4E400E6E6E600E8E8E800EAEAEA00EBEB
      EB00EDEDED00EEEEEE00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00EAEA
      EA00E8E8E800E6E6E600E5E5E500E2E2E200E0E0E000E0E0E000E4E4E400EEEE
      EE00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F100E9E9
      E900E3E3E300E1E1E100E3E3E300E6E6E600E8E8E800EAEAEA00EDEDED00EFEF
      EF00F1F1F100F2F2F200F3F3F300F3F3F300F2F2F200F1F1F100EFEFEF00EDED
      ED00EBEBEB00E9E9E900E7E7E700E3E3E300E2E2E200E3E3E300E9E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F3F3F300F5F5F500EBEB
      EB00DEDEDE00DADADA00DDDDDD00E0E0E000E3E3E300E6E6E600E9E9E900EBEB
      EB00EDEDED00EEEEEE00EFEFEF00EEEEEE00EEEEEE00EEEEEE00ECECEC00EAEA
      EA00E7E7E700E4E4E400E1E1E100DDDDDD00DBDBDB00DEDEDE00EBEBEB00F5F5
      F500F3F3F300F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700F8F8F800F4F4F400F4F5F5000000
      0000D8D8D800CACACA00CCCCCC00CFCFCF00D3D3D300D6D6D600D7D7D700DADA
      DA00DCDCDC00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DBDBDB00D9D9
      D900D6D6D600D3D3D300CFCFCF00CDCDCD00CACACA00D4D4D400EDEDED00F5F6
      F600F4F5F500F8F8F800F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEC00C5C5C500A7A7A600A2A2A200A5A4
      A400A7A7A700ACADAD00AEAEAE00AFAFAF00B2B2B200B5B5B500B6B6B600B8B8
      B800BABABA00BBBBBB00BBBBBB00BBBBBB00BBBBBB00B9B9B900B8B8B800B7B7
      B700B5B5B500B3B3B300B1B1B100AFAFAF00ACACAC00A8A8A800A4A5A500A3A4
      A400A7A7A700C2C2C200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C0C0007F7D7C006B6866005E5C5A00403F
      3F0054545400797A7A00808080008080800082828200878787008A8A8A008E8E
      8E009191910092929200939393009393930092929200909090008E8E8E008B8B
      8B00878787008484840080808000808080007B7B7B00595959003E3D3D005857
      55006B6967007B787700B0AFAF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A6A5A30073706D00767270005C5957001715
      150016161600363535003A3A3A00393939003B3B3B003E3E3D00404040004443
      4300464545004746460047474700474747004746460046454500444343004141
      40003F3E3E003C3C3C00393938003A3A3A0037363600191919000F0E0D004D4A
      480077747100716C69008D8B8900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A6A500817F7C008683810062605F001917
      1700090808001212110012111100111110001111100012111000111010001111
      1000111110001111100011111000111110001111100011111000111110001111
      100012111000111110001111100012111100131211000A0A0A00111010004F4D
      4C0087848100817E7B00908E8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AEACAB00868482008A888500626160001F1E
      1E00100F0F001716150016151400161514001615140015141400151414001514
      1400151414001514140015141400151414001514140015141400151414001514
      1400151514001615140016151400161514001716150012111000181717004F4D
      4D0086838100827F7D0099979600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2B0AF008B898800908E8B00666362001E1D
      1C00100E0E001918180018171700181617001816170018161700181617001816
      1700181617001816170018161700181617001816170018161700181617001816
      1700181617001816170018161600181616001918180012101000151514005351
      500098959300959291009E9C9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B5B400918E8C0094918F00696765001E1E
      1D00101010001919190018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001919190012121200151514005755
      5300ABA9A700ABA9A800A3A19F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0BFBE00A29F9D00A6A4A200777675002B2A
      2A001D1D1D0028282800282829002A2A2A002C2C2B002D2D2C002E2E2E002F2F
      2F00303030003130300031303000323131003130300030303000303030002F2F
      2F002E2E2D002E2D2D002D2C2C002B2B2B002A2A2A0021212200252425006665
      6400AEABAA00A9A7A600B2B1AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D2D100BBB9B800C1C0BE0092918F003C3C
      3C002C2C2C003A3A3A003B3A3B003E3D3D0040403F0041414100444443004544
      4500464646004747470048484800484747004746460046464700454545004444
      45004242410040403F003E3F3D003C3C3C003A3A3A002F2E2F00343435007E7D
      7C00C3C0BF00B8B6B600C8C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D5D500B5B4B300B7B5B400939290003F3F
      3E0028282800333232003230300031303000303030002F2F2F002E2E2E002E2D
      2D002D2D2D002D2C2C002C2C2C002C2B2B002B2A2A002A2A2A00292929002929
      290028282800272727002726250027262600262626001C1C1C00282727007B7A
      7900BAB9B700B3B2B000CBCAC900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D8D800ADABA900AAA8A600979694005151
      500039393800403F3F003F3F3E003E3E3C003D3D3C003C3C3B003B3A3A003A39
      3900393838003837370037363600353534003434330033333200323232003232
      310031313000302F2F002F2E2E002F2D2E002E2E2D0024242300343332008180
      7E00AEACAB00AAA9A700CAC9C800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDFDF00B1AFAD00AAA8A600A1A09E006665
      64004B4B4B00504F4F0050504F004F4E4E004E4D4D004D4C4C004B4B4B004A4A
      4A00494948004848470047474700474646004545450044444400434343004242
      420041404000404040003F4040003F3F3E003E3E3D0034343400484848009290
      8F00AEACAB00AEAEAC00D3D3D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E500BAB8B700AEACAB00ABAAA8007A7A
      79005F5E5E006161600062616100615F60005F5F5E005E5D5D005D5C5C005C5B
      5B005A5A5A005A59590058585800585757005656560055545500545454005353
      530052515200505150005051510050504F004E4E4D00464646005E5E5E00A2A0
      9F00B1AFAE00B4B2B100DEDDDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEB00C4C3C200B0AEAE00B1B0AE008E8D
      8C00757574007676750077777600757474007474730073727200727171007170
      70006F6F6E006E6D6D006D6C6C006B6B6A006A69690069676700676766006666
      6500656464006463630063616100616161005F5E5E005A59590074727200ACAA
      A900B4B2B000BBB9B700E6E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300CCCCCA00B4B2B100B5B3B2009D9C
      9B00878787008686860087878700858686008586860085858500848484008383
      83008282810080808000807F7F007E7E7E007D7D7D007C7B7C007A7A7A007979
      780078787800777777007675750075757500727272006E6D6D0087868600B4B2
      B000B5B3B100C5C3C300EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400D8D8D600BAB8B600B6B4B300A5A4
      A30094939300919191009091900090908F008F8F8F008E8D8D008C8C8C008B8B
      8A008A8A8A008988880088888800878786008685850086858500858585008484
      830083848300838383008282820082828100808080007E7F7F0095949400B6B4
      B300B7B4B400CFCDCD00F2F3F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200EAE9E900CCCCCA00C0BFBE00AFAE
      AD00959594009190910095959500959594009594940095949400949493009494
      9300949494009493930093939300929292009191900091909000908F90008E8E
      8E008D8D8D008C8C8C008B8B8B008B8B8A008484840086858500A4A3A200C0BF
      BE00C7C5C400E1E1E100F3F4F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F2F2F200E9E9E900E8E8E700D1D0
      CF009A99980097969600ACACAD00ADADAD00B0B0B000B4B4B400B7B8B800BBBB
      BC00C0BFC000C2C2C100C3C3C300C3C3C300C1C1C100BFBFBF00BBBABB00B7B7
      B700B3B3B300AFAFAF00ABABAB00A9AAAA0096959600918F8E00C4C4C200E8E8
      E800E7E7E60000000000F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100F3F3F300FBFBFB00E5E4
      E300AAA9A800B0B0AF00CDCDCD00CECECE00D3D3D300D8D8D800DDDDDE00E2E2
      E200E7E7E700E9E9EA00EBEBEB00ECECEC00EAEAEA00E7E8E800E3E3E300DEDE
      DE00D9D9D900D4D4D400CFD0D000CECECE00B3B3B400A5A3A100D7D7D500FCFC
      FC00F4F4F400F1F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400E2E2
      E200B9B8B700C8C9C800E2E3E300E2E2E200E6E6E600EAEAEA00EDEDED00F1F1
      F100F3F3F300F5F5F500F6F6F600F6F6F600F5F5F500F3F3F300F2F2F200EEEE
      EE00EAEAEA00E7E7E700E3E3E300E3E2E200C9C9C900B3B2B100D7D6D500F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300E8E8
      E800D0CFCE00DAD9D800E9E9E900EAEAEA00EDEDED0000000000F3F3F300F6F6
      F600F8F8F800FAFAFA00FBFBFB00FBFBFB00FAFAFA00F8F8F800F7F7F700F4F4
      F400F1F1F100EEEEEE00EBEBEB00E9E9E900D8D8D800CACACA00E0E0E000F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00EBEBEB00E6E5E600E5E5E500EAEAEA00EEEEEE0000000000F3F3F300F6F6
      F600F8F8F800F9F9F900FBFBFB00FBFBFB00F9F9F900F8F8F800F6F6F600F4F4
      F400F1F1F100EEEEEE00EBEBEB00E6E6E600E5E5E500EAEAEA00EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F1F1F100E8E8E800E3E3E300E7E7E700EBEBEB00EEEEEE00F1F1F100F3F3
      F300F5F5F500F6F6F600F8F8F800F8F8F800F6F6F600F5F5F500F4F4F400F2F2
      F200EFEFEF00ECECEC00E8E8E800E4E4E400E9E9E900F1F1F100F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00E5E5E500E2E2E200E5E5E500E8E8E800EBEBEB00EEEEEE00EFEF
      EF00F1F1F100F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F1F1F100EFEF
      EF00ECECEC00E9E9E900E5E5E500E2E2E200E5E5E500EEEEEE00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00E3E3E300DFDFDF00E4E4E400E6E6E600E8E8E800EBEBEB00EDED
      ED00EEEEEE00EFEFEF00000000000000000000000000EFEFEF00EEEEEE00EBEB
      EB00E8E8E800E6E6E600E4E4E400E1E1E100E3E3E300ECECEC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDED00E5E5E500E3E3E300E6E6E600E7E7E700E9E9E900EBEBEB00EDED
      ED00EEEEEE0000000000000000000000000000000000EEEEEE00EDEDED00ECEC
      EC00E9E9E900E7E7E700E6E6E600E3E3E300E5E5E500ECECEC00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00EAEAEA00E8E8E800E9E9E900EAEAEA00EBEBEB00EBEBEB00ECEC
      EC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00EBEB
      EB00EBEBEB00EAEAEA00E9E9E900E8E8E800E9E9E900EDEDED00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EFF000FCFAFB00EEF2F000A0B8
      A8004A6F4E0084A89900F7F8FA00F7F6F700F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F4F400FBFAFB00A7B7AE003A5E3D00537B5B00A7BDAD00F0F3
      F200F8F7F800EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFBFD00EEF4F100A5BBAC0062886D00C9D3CD00FDFB
      FD00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFA00E4E4ED007579CE00B5BAE500EBEF
      E40063816600567F6200A8BFAF00EFF4E800BBBCE6005556C700B8BAE600FFFF
      F800F1F1F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000335912003554180035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      190035551900355519003354190037571B00455E20005E682C006A6E35000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00D4D4D4006A6A
      6A006E6E6E00D1D1D100FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00FEFAFD00C5D7CC003C6B4800002D
      0000001F0000668D7A00F1F2F400EFEEEE00EEEEEE00EEEEEE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEE
      EE00EDEDED00EDEDED00F4F2F4008EA195000025000000250000003103004D73
      5400E3E9E500FDFBFC00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFCFF00BACFC20031603C000029000000320800AEBAB200F5F3
      F500EDEDED00EFEFEF00000000000000000000000000F1F1F100F1F1F100F1F1
      F1000000000000000000F8F7F100DCDEE1004849B7000000A900131AB7008A9A
      C000194917000024000000350000314A68001C1BB8000000A8001516B300B7B8
      E600FFFFF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000766B
      3000005400000051000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      00000053000000530000005300000053000000520000004F0000005600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800CDCDCD00343434000000
      00000000000025252500C3C3C300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF7F900D0DDD5001D51270000240000002C
      0000002800006D918000F3F3F500F0EFF000EDEDED00EDEDED00EEEEEE00EEEE
      EE00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EDEDED00EDEDED00ECEC
      EC00EBEBEB00ECECEC00F6F4F60092A59900002D0000002E0100002C00000020
      000040664500E3E9E600F6F4F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF9FB00BCCDC30014471E0000240000002C00000A3A1200B2BEB600F8F6
      F700EDEDED00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEB00F1F1ED00DFE0E3004B4CB9000000AE000000B2000000B5000710
      AF0007293C0000340000001D2F00000099000000B4000000B0000000AB001617
      B700BDBEE6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B63
      3800025D0700469C4F0053A455004BA156004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA1550053A55C00308A3A00005600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F500DEDEDE0046464600060606003434
      34001E1E1E000000000024242400C5C5C500FFFFFF00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFAFB005078590000250000002F0200002F
      0200002800006D918100F6F6F800EEEDED00D4D4D400D1D1D100D2D2D200D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D2D2D200D2D2D200D2D2
      D200D0D0D000D5D5D500F5F3F50094A69A00002D0000002E010000300300002E
      0100002400006E927700FAF8F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9EDEB00346643000027000000320800002E03000A3A1200B4BFB800FBF9
      FB00E2E2E200CCCCCC00CECECE00CECECE00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00D2D2CF00CDCECD00454AB6000000B2000000B5000001B7000000B7000000
      BA000005A00000175A0000059E000000BE000000B7000000B5000000B3000000
      AF002D30C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007660
      330010781C0045954B002A7D2E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028802E00348B3F0070BB8A00005900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00C1C1C10018181800161616005E5E
      5E00575757001A1A1A000000000027272700C7C7C700F7F7F700EBEBEB00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EBEBEB0000000000F3F3F300F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8D7CD0003360900002B000000300300002F
      0200002800006D918100F6F6F800F4F4F400F2F2F200F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F1F1
      F100F1F1F10000000000F9F7F90093A69900002D0000002E0100003003000030
      030000280000194B2100D7E1DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AABFB00000300400002F050000320800002E03000A3A1200B4C0B800FBF9
      FB00F2F2F20000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F6F5F200ECEDEF003A43C1000000B4000002B8000005B9000006B9000007
      BA000007BD000007BE000006BE000006B9000005B8000003B8000000B6000000
      B4004F58CF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      35001082140017701600004D0000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      000000520000005200000052000000500000005C00004FB16400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600E3E3E3003E3E3E00000000002A2A
      2A00606060004C4C4C00131313000000000021212100AAAAAA00E5E5E500D6D6
      D600DCD9DA00E2DEE000E3E1E200E3E1E200E3E0E200E1DCDE00D9D7D800D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D5D5
      D500D5D5D500D6D6D600D6D6D600DADADA00EEEEEE00F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087AA930000290000002E010000300300002F
      0200002800006F928100F9F9FB00EFEEEE00DFDFDF00DDDDDD00DEDEDE00DEDE
      DE00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DDDDDD00E3E3E300F9F7F90094A79A00002C0000002E0100003003000030
      0300002D0000002F0200ADBFB200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073917C00002800000031070000330800002F03000A3A1200B6C2BA00FEFC
      FD00EEEEEE00E5E5E500E6E6E600E7E7E700E7E7E700E7E7E700E8E8E800E7E7
      E700E7E7E700EEEEE800C1C4D9002631B5000000B700000CBC000010BC000011
      BD000011BE000011BF000010BD00000EBC00000BBB000008BB000005BE004854
      D000E3E4F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000580000005900000059
      000000590000005900000059000000570000066308004DB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300EAEAEA00A3A3A3001C1C1C000000
      00002424240057575700414141000D0D0D000000000024242400CDCCCD00FFFF
      FF00E7F1F000C9DAD400C5CBC700C6CAC800C4CEC900CFE2DD00F2F4F500FEF9
      FC00F8F5F600F8F4F600F8F4F600F8F4F600F8F4F600F8F5F600F8F5F600F8F5
      F600F9F5F700F8F5F600EAE9E900E1E1E100D1D1D100E7E7E700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000759179000025000000330300003403000034
      0200002D000070948200FBFAFC00EEEDEE00D9D9D900D8D8D800D8D8D800D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D8D8
      D800D6D6D600E0E0E000FBF9FB0095A89B00002D0000002F0100003003000030
      0300002E0100002E000089A39100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000366D4900002F02000035080000360900003204000A3F1300B6C3BB00FFFD
      FE00ECECEC00E1E1E100E2E2E200E2E2E200E2E2E200E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300EFEEE500C9CBDD00293CC0000011BD00001DC100001F
      C1000020C100001FC100001EC100001BC0000017C000000FBD003146B400E8EC
      F000FBFAF3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005600000054000000540000005400000054
      0000005500000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005A00000057000000500000005800000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800D3D3D300FDFEFD00C8C5C700231F
      220001000000202020004B4B4B00353535000908080000000000282B2B006B8C
      7D0036654D0003461C0000370B00003A0C0000430F000E612E004B875F00A1BF
      AD00DBE7E400DAE8E600D9E7E400D9E6E300D9E6E300D9E6E300D9E6E300D9E5
      E200D8E4E100DFE9E800F9F8FA00FBF9FA00ECEDEC00D7D7D700ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078937900002B0000003A0500003C0500003C
      04000035000071978300FAF9FC00F9F8F800FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00F9F9
      F900F9F9F900F7F7F700FEFBFE0095AA9B000034000000340100003503000033
      0300002F01000032010086A28E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002264380000370600003C0B00003D0B00003A06000A451500B6C4BB00FFFC
      FE00F9F9F900FDFDFD00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FDFDFE00FDFDFD00FFFFFF00D8D8EA00253CC000002AC500002F
      C5000031C5000031C500002DC500002AC500002BCC00001781004C705400FAFA
      F200F2F1F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000520000096307000D6B10000C690E000C690E000C6A
      100009670B00015B000000580000005900000059000000590000005900000059
      000000590000005900000059000000550000146B18005BAD70000E6612000055
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9D900E9E8E800FCF9FA00E2F5EE003F77
      540000090000040104001B1B1B004040400027272700030B070000190400002D
      0000003C0600054D1500025C1E000065230001601C00005D160000560C000764
      2000207C46002382500022844E0022814D00227D4B00227B4900217848002174
      46001E7042002E724F0085A89500EDF2F000F7F6F700E5E5E500DADADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078967A000033000000420600004207000043
      0600003C0000759B8700FDFCFF00F3F3F300E0E0E000DEDEDE00E0E0E000E0E0
      E000E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E0E0E000DFDF
      DF00DDDDDD00E5E5E500FDFAFD0098AE9F00003B0200003B0300003C0500003A
      0500003502000039020087A49000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000266C3E00003E070000430C0000430D00004208000B4B1700BAC7BE00FFFE
      FF00EDEDED00DFDFDF00E0E0E000E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E2E2E200E1E1E100E2E2E100EBE8E200BEC4D8002250C600003DCA000042
      CB000044CB000044CB000041CA00003CC900003BCC000029A200486B7B00F9F8
      EF00F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004C000078BB8800D2F6EE00C0F2E600C0F2E600C7F3
      EC00A0E0B6000E6A050000540000005900000059000000590000005900000059
      0000005900000059000000590000004F0000367E3B00E2FFFF0021782A000051
      0000004F0000004F0000004E000000520000066409004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D000F9F6F700ECF2F20057A97B000064
      1400013F0E00020A040004000300181617001B2C2300012B0E00003C0A000F59
      2400217C4D00338961002E936B00229368001F8C5F00107A420000732C00006D
      200000681900006618000066170000641700005F140000560F00005710000059
      100000550F00004E0A0000420A0094B3A100FEFCFD00F2F2F200D0D0D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078987B00003B00000049080000490900004B
      080000430000629A8000FFFEFF00F8F7F8000000000000000000F1F1F100F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F10000000000EFEF
      EF00EFEFEF00F1F1F100FFFDFF008FAC9B000041030000430500004306000041
      0600003D03000041040087A69000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026703F0000450900004A0E00004B0F0000480B0006511900AEC7BC00FFFF
      FF00F2F2F200E9E9E900EAEAEA00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECEDEC00F6F3ED00B8BDD3002159C200004BCF000053D0000056
      D2000058D2000058D2000055D1000050CF000048CC000040CD001C57CE00C3D0
      EB00FFFAF4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007DC6A000E9FFFF00D9FFFF00D9FFFF00E1FF
      FF00BEEED000146B090000530000005900000059000000590000005900000059
      000000590000005900000059000000500000307D3900D5FFFF001F712400025F
      0600349154003F986000479961001C742600035E04004EB16400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFCFCF00FCF7FA00D0E8DF00127F3D000056
      0D000362190002431100020803000204040000270C00003E0A00236A3C003891
      6B0053A7810069BC92008ACEAE00A0D4BE008CCCAF0066B08700278B5D000276
      3200027A2900047B29000472240003691E00036A1F0003571400035C17000364
      1B000360180003611900004B0500497F5F00F1F4F500F5F4F500D0D0D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000789C7C000042000000500B0000500B000052
      0A00004B010025764200E0EFEE00FFFFFF00FFFDFE00FFFEFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FEFDFD00FEFC
      FD00FDFCFC00FFFFFF00F6F6F9004086590000470000004B0800004A09000048
      0800004405000049060087A89100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026764100004C0C0000501100005112000050110000500D0065A98900FFFF
      FF00FFFEFF00FEFEFE00FDFDFD00FEFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FEFEFE00FFFFFF00CCD1E6002B66CC000054D200005FD5000066D600006B
      D8000070DB000076DF00006CD8000065D600005BD4000051D0000046CE002868
      D400CAD7F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000540000005900000059000000590000005900000059
      000000590000005900000059000000500000307E3C00D8FFFF00116315000B6F
      0D00CAFCEA00EAFFFF00F8FFFF0062A66E00005200004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D000FCF7FA00CFE7DA00127C3400005B
      120003651C00036B1D0002451300001D0A00003709001F653800429D7A0059B6
      8D00A3DDB900D3EEDE00ECF1EE00DCEFE300C0EDD000AEEDC5009BDBB6004992
      6A0002702A00047F2B00068334000573270004631A00034A1000024C11000364
      1B0003651C0003631B0000540B0040825D00EBF1F200F6F4F500D2D2D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000789F7D000048000000560D0000570D000058
      0E0000580D0000580D0042987000CCE6DF00FBFAFD00FDFBFD00FCFBFC00FDFC
      FE00FEFDFF00FFFDFF00FFFDFF00FEFCFF00FCFBFD00FCFBFC00FBFAFC00FAF9
      FB00FBF9FC00DCECE90069A2820002540C000051080000520B0000510B00004F
      0A00004C070000500A0087A99200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000267A440000531000005614000058150000581600005510000867290087C2
      AD00F2F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF8FF003C69D300005BD5000068D8000074DB00007BDD000083
      E100017DE1000056CA000079E100007BDE00006FDA000064D6000052D100004A
      CD005185DA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000540000005900000059000000590000005900000059
      00000059000000590000005900000051000026782D00DCFFFD0069B17F00157E
      1E00ABE2C3005CAD68004FA252001E751F00035C04004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D000FCF7FA00D0E7DB00138239000061
      160003691F00046F21000256180000310A000A501E0038906B0059B48C00ACE3
      C200E3EEE800F0EFF000C8E9D500A5E5BC009FE5B700A4E8BD00ABEFC300A3E1
      BC003A8A5C0000752500068A390007853D0004611900034A0E0002480F000462
      1A00036A200003681D0000580E0043866000ECF1F200F6F4F400D3D3D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078A27E0000500100005E1200005E1200005E
      1200005F1200005E0F00005D0D00177A3B00509A680059A56F0057A46F0057A5
      710057A5710057A5710057A5710057A5710057A4710057A46F0057A46F0058A5
      6F00549D6B00227E4400005D0F0000590B00005A0F0000580F0000570D000056
      0D0000520A0000560D0087AB9300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000267E4600005B1300005E1800005E1800005E1800005F1A00005C14000069
      21003D925D0071B2840078BA8C0077B98C0077B98B0077B98B0077B98B0077B9
      8B0078BB8C0070B283000E5B8E000268D800007FE1000082DF00008AE300098A
      E80004579600003A3A000351A9000488E8000083E0000073DB00006CD900187C
      D800AFC7EB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000530000005500000058000000580000005800000058
      00000058000000580000005800000056000002580000469B5600D9FFFE00BAE6
      CB009CDCC20000630F00004C000000540000066409004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D1D100FCF7FA00D0E8DB0014863D000067
      1900046F2200046F210001431300003509001F73460054A7810099D8B100DDED
      E300F3EFF300C1E8D000A0E4B800A2E7BB00A5E8BE00A5E9BF00AAECC300CDFA
      E000A3D5BD000B733100018632000C934F0007732C0003571200035511000469
      1E00046E2200046C2000005D100043886100ECF1F200F6F4F400D3D3D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078A8800000680F0000772100007420000072
      1E0000711E00006F1C00006C19000066120000650F0000671000006610000067
      1000006710000067110000671100006710000066100000661000006610000065
      0F0000620D00005F0E0000621300006214000061140000601200005E1200005C
      110000590D00005D100087AD9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026874A000074210000762300007522000073220000712100006F1F000069
      1A00006514000065120000651200006512000065120000651300006613000066
      13000065120000660F00005E1D00065183001081E3000391E8001B90EA00125D
      9F000054260000620900014C31000E5EB100108FE900048CE5001F86DD00A5C4
      E900FBF7F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A080000530000086F10000054000000530000005300000053
      00000053000000530000005500000053000000500000004800006AC18700EEFF
      FF00B4EFE4000A6817000053000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D200FCF7FA00D0E8DD00158A4200006C
      1B0004752400046D2200013B100000400C0039855F0061B68D00C0E9CF00F2EF
      F100D1EBDB00A1E5B800A3E7BB00A6E8BF00A5E9BF00B0EFC900DBF8E800FAFA
      FA00E9F8F4003D8C6000007725000B9854000B894B00076D2700076B24000776
      2C0004712200046F220000611200448A6200ECF1F200F6F4F400D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078AC830000771B0000852C0000832B000083
      2B0000822A0000822900007F2800007D2600007A23000076210000721D000070
      1C00006E1B00006E1B00006D1B00006E1B00006E1B00006E1900006C1900006B
      1900006B1900006A180000691800006818000067170000661600006415000063
      1500005F11000065150087AE9500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026904F00008B2C00008B2D00008A2D0000892D0000872C0000852A000083
      2900007F2700007A25000076230000722100006F2000006F1F00006F1F00006F
      1F00006E1F00006E1F000071190000621F00105B8900338BEA002668A500025A
      2A000069150000681B0000671100035336001E67B5001575CC004B7D9F00F5F1
      ED00F5F3F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA000C640200297F3900A3D8B20071BA6A0070BA6A0070BA6A0070BA
      6A0071BA6B0075BA6C002B8835005BAF620072B969005BA858007DC49200E5FF
      FF00A9E5D200035E08000056000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D200FCF7F900D1EADF00158D4600006E
      1A00037A25000369220000340D00014E15003190690076C6A400D4ECDD00EBEE
      ED00AEE8C400A1E7BA00A7E9C000A6EABF00AEEFC800DFF6EA00F8F4F600F5F1
      F300FFFFFF006BA17C0000671B000F9C560019996300108D54000E8A4E00067B
      2F00047524000474250000651400468D6400ECF1F300F6F4F400D5D5D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078AE850000781D0000852F0000842E000084
      2E0000832C0000832C0000832C0000832C0000832A0000822A0000812900007F
      2600007B24000078210000751F0000741E0000751F0000741E0000731E000073
      1D0000721D0000711D00006F1B00006F1B00006D1B00006C1900006B1900006A
      180000651400006B180087AF9600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026935200008F2E00008F3000008E3000008D3000008D2F00008B2E00008B
      2E00008A2E0000892D0000872D0000852B0000812900007C2500007823000077
      220000772300007523000074230000761D00006C24001061580001662E000071
      1900006F2000006E1F00006D1E00006B1700005E2E0000542F00478E5900F5F3
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA000B6302002A872E00ACEECE0096DFCB0096DEC80096DEC80096DE
      C80096DEC9009CDECC003E9B610077CDB200B0ECDF00E2FFFF00DCFFFF00E6FF
      FF006CB37700004900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5D5D500FCF6F900D1E8DF001FA369000D95
      57000E995600056A2E000031080000581E001E8F660087CCAD00E0EEE500DBEC
      E200A3E7BD00A7E9C000A8EBC200ABEEC400DBF8E800F6F2F500F0EFEF00F2F0
      F100FBFFFF0070AB830000661900179D5900279C64000A944F000A8C4500057B
      29000477260004772700006A1800468F6600EDF1F300F6F4F400D6D6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B08600007B200000873300008632000086
      310000862F0000852F0000852F0000852E0000842D0000842D0000832C000083
      2C0000832B0000822900007F2800007C2400007B2200007A2200007A22000078
      210000772000007720000076200000751F0000741F0000721D0000711D000070
      1C00006C180000701C0087B09600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026965400009431000093340000923400009133000091320000903200008F
      3200008F3000008C3000008C2F00008C2E00008B2E0000892C0000852B000081
      2800007E2600007C2500007C2500007B2500007C220000791B00007920000077
      24000076230000742300007321000071210000711A0000690B0047935C00F4F1
      F400F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA0015680800005D00001D8C280002691B0003681900036919000369
      1900036919000469190001610600005D120033954E00D4FFF900D4FFFB00C8F5
      EC002D8833000C6A0A00005A000000560000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6D6D600FBF6F800CFE8DE0031B0840030AF
      870030B288001D895E00023B11000050120023885C0075C49F00DDF0E500CCED
      DB00A5E9BF00A9EBC200A8EEC300C2F4D800F5F7F700F1F0F100EFEFEF00F6F3
      F400EBFFF8005C9C7500006D1E0016A163001E9E660006964A0008964A00057C
      2D00035B1600046E220000701B0047926800EDF1F300F6F4F400D7D7D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B28600007D2400008A3700008836000089
      340000893300008733000087320000873100008631000086300000852F000084
      2F0000852E0000842D0000832D0000822B000081290000802700007F2500007D
      2600007D2500007D2400007C2300007A23000079220000782100007620000076
      200000731C000075200087B09700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269857000097340000973700009636000095350000953600009436000093
      340000923400009134000091320000903100008F3100008E2F00008D2F00008B
      2E0000882D0000852A0000822800008128000080280000802700007E2600007E
      2600007C2500007B2500007A24000077230000762300006E160047965F00F4F1
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000510000005400000054000000540000005400000054
      0000005400000054000000560000004C00002B832F00D7FFFF00E4FFFF0078B9
      8E000E670F00A7EAC60016711A0000510000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6D6D600FBF6F800D0E8DF003EB28A003CAF
      890040B38D0058AA8E0014592E00004C0B00157944005CAB8200D1F0DF00C9ED
      DA00A6EBC000AAEDC400ADF0C900DDF7E900F4F0F20000000000F0EFEF00FCFB
      FC00CBF6E200297F4A00007F2E002DAA7100169E6300089B56000B9F5A000681
      39000151100004651C0000731D0047946A00ECF0F300F5F3F400D9D9D9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B48700007F2700008B3900008A3800008A
      3700008A37000089360000893500008935000088350000883200008630000086
      2F0000862E0000852E0000852C0000842C0000832B0000822900008127000080
      26000080270000802800007F2700007F2600007E2600007D2500007C2400007B
      230000782000007A230087B19700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269B59000099390000993A00009938000098380000983800009737000097
      3600009637000096360000963500009535000095340000933400009232000091
      310000903000008F2F00008B2D0000892C0000882B0000852B00008329000083
      29000082290000812700007F2700007E2600007D25000074180047996000F4F1
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000530000005A00000059000000590000005900000059
      0000005900000059000000590000004E000024802900BBF1DB00D6FFFE0097D9
      C30088CFB5008AD3B600095C0B0000540000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D8D800FBF6F700D2E9E20046B49000229A
      68002AA1720059B99B0022734E0000480800026E2A0027926400A9DBC200D3F3
      E000AAEDC400ABEEC600B7F4D100E8F5EE00F2EFF100F0EFF000FAF7F800F2FF
      FC0087C5A300056923000A964A0040AF7E00159E5F000B9F61000DA263001B9B
      6500157B4100087C36000076200048966B00EDF1F300F5F3F400DADADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B5890000822B00008D3C00008C3A00008C
      3A00008C3A00008B3900008A3800008B380000842F0000812E00098333000A83
      33000A8333000A8133000A8130000A803000097F2F00097F2E000A7E2E00067D
      2C00007D25000082280000832C0000822A000081290000812800007F2800007F
      2700007D2300007D280087B19900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269C5A00009D3B00009B3C00009B3C00009B3C00009A3B00009A3A000099
      3B00009A380000902C0000862800008429000084290000842900008428000082
      270000812600007F2500007E2400007C2300007E230000872700008B2E000089
      2D0000872C0000862B0000852B000083290000822800007A1C00479C6400F4F0
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39C00E3FFFF00D4FFFF00D4FFFF00DCFF
      FF00BBEBCB00156A090000540000005900000059000000590000005900000059
      0000005900000059000000570000025A02006AB57900A3E0B200BCE9CF00DCFD
      F800C7F7EB00207A23000050000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9D900FAF5F700D6EAE4004FB592000A85
      490017915A0058B99A00389773000050130002621800047A3C004F9C7700C2EA
      D600BAF7D300ACF3C800C0F7D800EEF5F200F6F0F300F9F5F700F5FFFF00A5E4
      C2001E753800007D2F002DAC700034AA78000AA065000EA369000AA369002EAB
      830058AD9000139353000078210048986C00EDF1F300F5F3F400DADADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B68A0000832E00008F3F00008E3D00008E
      3D00008E3D00008D3B00008D3B0000863200228F520088B8A100AFC2B600A7BB
      AE009FB3A6009BAFA3009FB3A500A2B9A900ABC2B100B8CDBC00B7CBBB00A1BF
      AD0055A07A000480340000832A0000852E0000842D0000832C0000822B000082
      2B000080260000802E0087B29B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269D5C00009F3E00009F4000009F4000009E3E00009D3D00009D3E00009D
      3C00018E330048A471009EC1AB00ACC4B200A0BAA70095AE9C0095B09C009BB8
      A100A2BFA800AECCB400B3D1B900AEC7B10082AF9600288D500000882A000090
      3100008E3000008D2F00008B2E00008A2E0000882D0000812100479F6800F4F0
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E000081C89F00EEFFFF00DEFFFF00DEFFFF00E6FF
      FF00C2F1D100166B090000540000005900000059000000590000005900000059
      000000590000005900000055000001610700B6F1E600E7FFFF002C8331001165
      11000C670F00005500000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DADADA00F9F5F700D8EAE4005FBB9900259D
      6C002FA67B0061C0A6005BBFA40018784B0000581200026F2400077938004998
      6E009BDCBA00B2F4CF00C7FFE200F2FFFB00F2FFFA00D7FBEA008DCAAB002077
      3C000072240016A15E0044B0850019A46D000EA672000EA66F0011A56D001AA7
      730024A471000D8D4100007B2300489A6D00EDF0F300F5F3F400DBDBDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B88B000085300000914200009041000090
      4100008F3F00008F4000008B370024965900CCE1DF00FFFBFF00F1ECF000E3DF
      E200D5D0D300CDC9CC00D3D1D200DEDEDC00D8E4DE00B3D1C000C1D7CA00EAE9
      E600D7D6D60066A088000482300000883000008731000085310000862F000085
      2F0000832A000084340087B29D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000279E5F0000A1420000A1430000A1420000A0410000A0410000A141000097
      340060AE8500F7F3F700FBF5F900EFE9EE00E1DBDF00D2CCD000D2CED000DBDA
      D900E9E7E600D6DED700C0D0C300DDE5E100E4E1E200B7BDBB002B9051000091
      2F0000943500009234000091320000903200008E2F000087250047A36C00F4F0
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D00004F0000479646007FBF8B0074B8820074B8820078BC
      880061AC63000762020000560000005900000059000000590000005900000059
      00000059000000590000005700000159020081C28E00AADFB7000B650D00004F
      000000540000005800000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBDBDB00F8F5F700D6EDEA00809C6C008C82
      44008497650081A4770082AC7E006C9E6E001560230000661A00017627000075
      2900187A3D00479A6E0079B590008CC3A10077B392003C8F5E000A6A29000078
      2A00109D580043B6860071A6780087A26C006DA36B00699D62007D9552008D89
      3F008A813400827524005D630D0057956800EAF2F400F5F3F400DCDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B98D000087340000934600009145000091
      43000091430000914200018B3E0083C1A600FFFFFF00F3F2F200E6E6E600DADA
      DA00CCCCCC00C5C5C500CDCECD00D0D6D1005A8D6A0000470E0010521F0091B0
      A000D6D7D400B0B6B300258C580000872F000089350000883400008833000087
      320000862E000086390087B39F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027A0630000A1450000A1450000A1450000A1450000A1440000A03F000F9D
      5000CEE5E000FFFFFF00EEEEEE00E3E3E300D5D5D500C7C7C700C7C9C700D6D9
      D500B5C6BD002A603700073F0B0051856700CCD6D000D3CBCE006DA68D000292
      35000097350000973700009535000095350000933300008D2A0047A57000F4EF
      F200F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000550000005600000052000000520000005200000052
      0000005200000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005500000360010008690100005800000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCDCDC00F8F5F700D8F1EE008E865600B24B
      0000B25C0F00B3671500B6731F00C2833100937933002B64200000702200007D
      2A00007A260000742400016A210000672000006D230000792800008C3B001FA4
      620045AF820072A67B00C6A27400D99F6400CC975300C58D4500C1823400BD77
      2000B96C1500BC6311009754030067926600E8F3F500F5F3F400DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078BB8F000089380000944900009346000093
      46000092460000914200098F4A00AFCDC200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D1D000C1CAC4002863310000400000004100003D8F
      6700D1D6D200B4B6B80038936C0000873000008A3800008A3800008A37000089
      36000088330000893F0087B3A100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029A4670000A2480000A2480000A2470000A2460000A2460000A03E002EA1
      6600ED8AF300FFF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBDB
      D90060A68600004404000043030001602400A0C7B500D5CCCE0093ACA1000A94
      3C0000983500009A3A0000993900009838000098370000922E0047A97400F4EF
      F200F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005900000058000000580000005800000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005A00000056000000550000005900000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDDDD00F8F5F600DAF2EF0092895A00AE49
      0100AF5A0E00B2631000B46C1500B7782000C5853500AB8038004D6F27000B74
      27000082360000873800008D3D000093450000944900159D5E002FA6760054AD
      860092A78500D3A58200DCA67700D3A37000D2A17200D09F6E00CC996600C591
      5500BA793000B66315009254040067936700E8F3F500F5F3F400DFDFDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078BF9500008C3B0000954B0000944A000094
      4A0000944800009245000A914D00B0CDC100FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D1CF00C1C9C4002D733B000057070000580A003C97
      6F00D1D5D200B3B6B70039946C0000893200008A3700008D3A00008D3B00008C
      3900008A3500008B440086B5A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026A2670000A44C0000A34A0000A34A0000A34A0000A3490000A2420030A1
      6500EC70F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBDA
      D90059AB8400005C12000059110002722F009EC9B600D4CBCE0095AC9F000B98
      400000983600009B3C00009D3E00009C3C00009B3B000096320047AE7A00F4EF
      F100F3F1F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00F7F5F600DDF3F000958A5C00AC47
      0000AD590F00B2691C00BB7E3900C38C5000CA976200D8A87A00D7AC8000B3A8
      84006CA18500439770003FA07B0045AA8A0042A684005AAB8E0097BEB200D6D1
      CF00F1C8BF00E8BBAA00E7C2B100EAC8BA00ECCAC000E6C2B700E2BCAE00E1BC
      AB00D7AE9300BF793D009051000067946700E8F3F500F5F3F400E0E0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000075BA9300008D430000974F0000964D000096
      4C0000964C00009448000A935000B0CFC200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D0CF00C1CAC4002D80430000691200006A15003F9E
      7600D1D4D200B4B6B7003A956D00008B3500008B3900008D3B00008F3F00008F
      3E00008D3900008D46008ABAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000038A2710000A64F0000A44C0000A44D0000A44C0000A44C0000A3450030A3
      6800EC75F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBD9
      D8005DB28A00006D1A00006B190004803900A0CBB900D4CACD0094AD9F000B9B
      4200009B3900009B3C00009F4000009F4000009E3D0000983F0049A97800F6F2
      F300F3F1F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007862
      3600108114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E1E100F7F5F600DFF4F1009A895B00AA42
      0000B3672600C58C5E00CE9D7B00D6A68D00DBAE9700E0B9A500E3BBA800E7BB
      A700EEC2B100E9CCC300DECDD000D8C7C300D7B7A600E7BDAC00EBBEAD00E8BB
      A300E1B69A00E0B69D00E7C3AF00EAC9B900DCB39100C6915500BE854100BB7E
      3B00B8773300B5631A009150010067946500E7F3F500F5F3F400E3E3E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008FC2AA00008E4F0000974F00009750000097
      50000096500000954B000A945300B0CFC200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D0CF00C2CAC4002E8A490000781C0000781E003FA3
      7C00D1D4D100B4B6B7003B966F00008D3900008E3C00008D3B00008F40000090
      400000914500038B4F00B0D1BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000070B6920000A04C0000A64F0000A64F0000A64F0000A54F0000A4470031A4
      6900ED75F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBD9
      D8005CB48F00007C2200007C2000058C4000A0CBBA00D4CACD0095AEA1000B9D
      4500009E3B00009C3D00009E3F0000A1430000A2400000984D0062AA8400FFFA
      FC00F1F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      35000F8114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000066308004CB36300005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E1E100F6F4F600E2F6F2009E986600A842
      0000AE541100B2601A00B3651900B56D1E00B7762700BB7F2F00BE863B00C28D
      4700C7945000D09D6000D8A67600DAA67400D7A26A00D5A06900D39F6500D09D
      6000CE9A5A00CA975500C9965500C8945600BE843900B7782300B4701900B166
      1000AF5B0B00B5540D00894D0000639B6B00EFF5F700F4F3F400E3E3E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0E0D5000A8E52000099580000984F000098
      50000098510000974E000A965500B0D0C200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D0CF00C2CCC60028904F00007F2000007E220041A5
      7F00D2D4D100B4B6B6003C977200008F3B0000904000008F3E00008F3F000092
      41000694560025946300DAE6DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AED1BD00029A570000A8540000A64E0000A6500000A6500000A5490032A5
      6C00ED76F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBD8
      D8006AB7980000892700008A250004954500A4CBBD00D4C9CC0095AEA1000B9F
      480000A03E00009F4000009F400000A0410006A655000C955800A4CBB400FEF7
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F65
      3800128215001A6E1500004B0000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      000000520000005200000052000000500000005B000055AC6800005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2E2E200F6F4F500EFF8F600B0CEAB009C5C
      1B00A9450100A94E0500AA560600AD5D0900B0661100B3701900B5792300BA80
      3000BD863A00C08B4100C38E4600C4914B00C7944F00C7955000C6944F00C591
      4C00C28F4600BF8A4000BB843600B77C2A00B4762000B16F1800AE650F00AB5C
      0A00AA540700A84B0200555C100089C6A700FCF9FC00F6F5F600E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBF6F70060AE860003925A00079C5E000097
      51000098500000974E000B965500B1D0C300FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500CDCECD00D1D7D20062B08B00098C4700148F4C0092BE
      A600D3D4D100B3B6B6003E98720000903F0000904100008E3D00008E3D00149A
      5F0009905C0078BA9400FAF5F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8EBE90041A7760006A3650001A8590000A64E0000A6500000A54A0032A6
      6D00ED76F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C7C9C700D5D6
      D300B9CDC30029A25D000699380053B08000CCD5D100CCC7C80095AEA1000AA1
      4A0000A1400000A04000009E3A000AA4510011A16A0041A57000EEEFED00F5F2
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008F71
      41000F771B00439C5C002D873C002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002D893E003D96520083BA8A00005601000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800F3F3F300F5F4F500E4F7F000B1C5
      A200AB9B6C00AD9C6800AD9E6B00ACA06D00ADA36F00ADA67200ACA97400ADAA
      7700ACAB7B00ACAD7C00AAAD7D00A9AE7D00A7AE7D00A4AE7A00A2AC78009EAA
      74009AA76F0096A56A0091A064008C9B5B008696530081914A007B8C41007885
      3D00757F380063823D0078B49000E9F3F300F5F2F300F2F2F200EAEAEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F4F600D9E8DF0036A37000149867001AA1
      7100089C61000096520003935400B1D1C400FFFFFF00F3F3F300E7E7E700DADA
      DA00CBCBCB00C3C3C300C9CCC900D3D9D300D5DFD800ADD5C700B6D8CB00DEE3
      D900CDD1CB00AFB2B20038956F00008D3A0000904500129754002BA16F001796
      65004CA77700E6EDE700F5F3F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCF5F900BEE1CF0029A86E001CA8770018AC710007A95D0002A7510034A8
      7100F16FF300FFFCFF00F1F1F100E5E5E500D7D7D700C8C8C800C8CAC800D2D6
      D100DFE2DE00D1E4D900C2E2CC00D9E5DD00DADED800C9C7C70097B0A3000CA2
      4F0003A2450009A44C0024AB68002BAA750028A16900C5DDCE00FBF6F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A088
      5700005A0500308D3F003D983F003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003B963F003F9948002E7E2B00005600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00EAEAEA00F4F4F400F3F1F300F3FA
      FB00EFFFFC00ECFEF900ECFDF900ECFDF900EBFCF800EAFBF800E8FAF700E8F9
      F500E7F8F400E5F8F300E4F7F200E3F7F100E1F6F100E0F5EF00DFF5EE00DFF4
      ED00DDF3ED00DCF3EC00DAF3EC00DAF2EA00D9F2E900D8F1E800D7F1E600D6F0
      E600D5EFE400DEF5EE00F7F9FB00F5F2F300F3F3F300E9E9E900EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0EF00FDF6F900D4EADF0054AF84002B9F
      700027A17F0038AB790044B37C00B2D4C500F0EDEF00E6E6E600E1E1E100DBDB
      DB00D4D4D400D1D1D100D3D4D300D7DAD700DFE1DE00EAE9E600E8E7E400DCE0
      DC00D5D6D400C6C9C80070BB9A0041B874003AAC7B003BA380002F9F6D0058B3
      8500E9F0EB00FAF5F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFF9FC00BCE3CF0044B37F002BAC78003EB1840030AE8C005DB3
      9A00DFA3DF00ECE9EB00E3E4E300DDDDDD00D7D7D700D0D0D000D0D1D000D4D6
      D400D8DCD800E2E3E000E7E5E400E0E2DE00D6DAD600D1CFCE00AABDB5004BAE
      8E0041AF8C004BB5820039AD7C004DB78200BEDFCC00FAF5F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B8C
      5600004E00000050000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000050000000500000005700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100EBEBEB00ECECEC00F1F0F000F1F1
      F100F4F3F400F4F2F400F4F3F400F4F2F400F4F3F400F4F3F400F4F2F400F5F3
      F400F5F3F400F5F3F400F5F3F400F5F3F400F5F3F400F6F3F500F6F3F500F6F3
      F500F6F3F500F6F4F500F7F4F500F6F4F600F7F4F600F7F4F600F7F4F600F7F4
      F600F7F5F700F7F4F600F2F1F100F1F1F000EBEBEB00ECECEC00F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00FBF6F900F6F7F500B0DB
      C7006FC09B0062BA890064BF9100ADD5C700E9E4E600E3E3E300E4E4E400E5E5
      E500E6E6E600E7E7E700E6E6E600E6E6E600E5E5E500E5E4E500E5E4E500E5E5
      E500E9E7E800E4E6E7008CCEB20060C08D0063BB8C0077C29F00B4DBC900F5F5
      F500F8F4F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCF5F900E6EFE900A5D9BB0064C29E0044BA8C0069C0
      9900DAE9DD00E7E5E600E4E4E400E5E5E500E5E5E500E6E6E600E6E6E600E5E5
      E500E5E5E500E5E4E500E5E4E500E5E5E500E5E5E500ECE8E900C3DCD00055BC
      8B004EBC910069C29F00A7DABC00E9F2EE00FBF5F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7AE
      980076673C00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766D3E00766D3E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100EFEFEF00ECECEC00ECEC
      EC00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00ECECEC00ECECEC00EFEFEF00F1F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000F8000000600000000100010000000000000C00000000000000000000
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
      00000000000000000000000000000000FFFF80000017FFFC0000000000000000
      00000000000000000000000000000000FFFFE0000007FFFC0000000000000000
      00000000000000000000000000000000FFFFC000001FFFFC0000000000000000
      00000000000000000000000000000000FFFF00000003FFFC0000000000000000
      00000000000000000000000000000000FFFE10000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000005FFFC0000000000000000
      00000000000000000000000000000000FFFF00000003FFFC0000000000000000
      00000000000000000000000000000000FFFFC000000FFFFC0000000000000000
      00000000000000000000000000000000FFFFC040000FFFFC0000000000000000
      00000000000000000000000000000000FFFFE040001FFFFC0000000000000000
      00000000000000000000000000000000FFFFE000001FFFFC0000000000000000
      00000000000000000000000000000000FFFFF000001FFFFC0000000000000000
      00000000000000000000000000000000FFFFF003803FFFFC0000000000000000
      00000000000000000000000000000000FFFFF007801FFFFC0000000000000000
      00000000000000000000000000000000FFFFF000001FFFFC0000000000000000
      00000000000000000000000000000000FFFF00000003FFFFFFFC00000007FFFF
      FFF00000001FFFFFFF81FFFFFFFFFF00FFFE00000001FFFFFFF8038C0007FFFF
      FFE00000001FFFFFFF00FFFFFFFFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE00000003FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000027FFF00FFFE00000401FFFFFFF004000007FFFF
      FFE00000001FFFFFFE000000003FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00C02001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000040001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF00000000FFFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF00000000FFFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000001FFFFFFF00000001FFFFF
      FFE00000001FFFFFFE000000001FFF00FFFE00000003FFFFFFF80000003FFFFF
      FFE00000001FFFFFFE000000001FFF00FFFF00000007FFFFFFFC0000007FFFFF
      FFE00000001FFFFFFF000000003FFF00}
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
