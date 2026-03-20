inherited FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI
  Left = 3
  Top = 110
  ActiveControl = EDArtigo
  AlphaBlendValue = 0
  ClientHeight = 846
  ClientWidth = 884
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 884
    Height = 746
    inherited PaintBox: TPaintBox
      Top = 190
      Width = 884
      Height = 556
      Visible = False
    end
    object PNLPrincipal: TPanel
      Left = 0
      Top = 190
      Width = 884
      Height = 556
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 696
        Top = 8
        Width = 50
        Height = 50
      end
      object Bevel3: TBevel
        Left = 720
        Top = 8
        Width = 50
        Height = 50
      end
      object PCPrincipal: TdxPageControl
        Left = 0
        Top = 0
        Width = 884
        Height = 556
        HelpContext = 90
        ActivePage = TSGrade
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
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object TSGrade: TdxTabSheet
          Caption = 'Produtos'
          object GBEdicao: TGroupBox
            Left = 0
            Top = 0
            Width = 60
            Height = 532
            Align = alLeft
            Caption = ' Edi'#231#227'o '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object SBEdicao: TSpeedBar
              Left = 2
              Top = 19
              Width = 56
              Height = 511
              Cursor = crHandPoint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsItalic]
              Position = bpCustom
              Align = alClient
              Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
              BtnOffsetHorz = 9
              BtnOffsetVert = 5
              BtnWidth = 38
              BtnHeight = 40
              Images = ILEdicao
              BevelOuter = bvNone
              TabOrder = 0
              InternalVer = 1
              object SSEdicao: TSpeedbarSection
                Caption = 'Edi'#231#227'o'
              end
              object SIMEAppend: TSpeedItem
                Action = ACTMEAppend
                Cursor = crHandPoint
                Hint = 'Inclus'#227'o de Registros'
                ImageIndex = 0
                Spacing = 1
                Left = 9
                Top = 5
                Visible = True
                OnClick = ACTMEAppendExecute
                SectionName = 'Edi'#231#227'o'
              end
              object SIMEEdit: TSpeedItem
                Tag = 1
                Action = ACTMEEdit
                Cursor = crHandPoint
                Hint = 'Edi'#231#227'o de Registros'
                ImageIndex = 1
                Spacing = 1
                Left = 9
                Top = 45
                Visible = True
                OnClick = ACTMEEditExecute
                SectionName = 'Edi'#231#227'o'
              end
              object SIMEDelete: TSpeedItem
                Tag = 1
                Action = ACTMEDelete
                Cursor = crHandPoint
                Hint = 'Exclus'#227'o de Registros'
                ImageIndex = 2
                Spacing = 1
                Left = 9
                Top = 85
                Visible = True
                OnClick = ACTMEDeleteExecute
                SectionName = 'Edi'#231#227'o'
              end
              object SIMEPost: TSpeedItem
                Tag = 2
                Action = ACTMEPost
                Enabled = False
                Cursor = crHandPoint
                Hint = 'Salva Edi'#231#227'o'
                ImageIndex = 3
                Spacing = 1
                Left = 9
                Top = 125
                Visible = True
                OnClick = ACTMEPostExecute
                SectionName = 'Edi'#231#227'o'
              end
              object SIMECancel: TSpeedItem
                Tag = 2
                Action = ACTMECancel
                Enabled = False
                Cursor = crHandPoint
                Hint = 'Cancela Edi'#231#227'o'
                ImageIndex = 4
                Spacing = 1
                Left = 9
                Top = 165
                Visible = True
                OnClick = ACTMECancelExecute
                SectionName = 'Edi'#231#227'o'
              end
            end
          end
          object GBConsulta: TGroupBox
            Left = 60
            Top = 0
            Width = 824
            Height = 532
            Align = alClient
            Caption = '  Consulta  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object DBGEdicao: TdxDBGrid
              Left = 2
              Top = 19
              Width = 820
              Height = 511
              Bands = <
                item
                  Caption = 'SKU'
                  Fixed = bfLeft
                end
                item
                  Caption = 'Grade de Cores'
                end
                item
                  Caption = 'Grade de Variantes'
                end
                item
                  Caption = 'Fornecedor'
                end
                item
                  Caption = 'Categoriza'#245'es'
                end
                item
                  Caption = 'Pre'#231'o Atacado'
                end
                item
                  Caption = 'Loja Virtual'
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnDblClick = DBGEdicaoDblClick
              OnKeyDown = DBGEdicaoKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = 14065456
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DSTEdicao
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -12
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              OnBackgroundDrawEvent = DBGEdicaoBackgroundDrawEvent
              OnCustomDrawCell = DBGEdicaoCustomDrawCell
              object DBGEdicaoC_ID: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGEdicaoGRD_CPRO: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 80
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GRD_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGEdicaoGRD_CDST: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Visible = False
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GRD_CDST'
              end
              object DBGEdicaoGRD_REST: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = False
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GRD_REST'
              end
              object DBGEdicaoGRD_DEST: TdxDBGridPickColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 100
                BandIndex = 0
                RowIndex = 0
                OnValidate = DBGEdicaoGRD_DESTValidate
                FieldName = 'GRD_DEST'
              end
              object DBGEdicaoGRD_DCOR: TdxDBGridPickColumn
                MinWidth = 150
                Width = 150
                BandIndex = 1
                RowIndex = 0
                OnValidate = DBGEdicaoGRD_DCORValidate
                FieldName = 'GRD_DCOR'
              end
              object DBGEdicaoGRD_PCOR: TdxDBGridPickColumn
                MinWidth = 100
                Width = 100
                BandIndex = 1
                RowIndex = 0
                FieldName = 'GRD_PCOR'
              end
              object DBGEdicaoGRD_DGRD: TdxDBGridMaskColumn
                MinWidth = 150
                Width = 150
                BandIndex = 2
                RowIndex = 0
                FieldName = 'GRD_DGRD'
              end
              object DBGEdicaoGRD_CGRD: TdxDBGridMaskColumn
                MinWidth = 50
                Width = 50
                BandIndex = 2
                RowIndex = 0
                FieldName = 'GRD_CGRD'
              end
              object DBGEdicaoGRD_RGRD: TdxDBGridMaskColumn
                MinWidth = 80
                Width = 80
                BandIndex = 2
                RowIndex = 0
                FieldName = 'GRD_RGRD'
              end
              object DBGEdicaoGRD_CFOR: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 3
                RowIndex = 0
                OnValidate = DBGEdicaoGRD_CFORValidate
                FieldName = 'GRD_CFOR'
              end
              object DBGEdicaoGRD_FBAR: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 3
                RowIndex = 0
                FieldName = 'GRD_FBAR'
              end
              object DBGEdicaoGRD_ISCT: TdxDBGridMaskColumn
                Visible = False
                Width = 100
                BandIndex = 4
                RowIndex = 0
                FieldName = 'GRD_ISCT'
              end
              object DBGEdicaoGRD_DSCT: TdxDBGridPickColumn
                Width = 300
                BandIndex = 4
                RowIndex = 0
                OnValidate = DBGEdicaoGRD_DSCTValidate
                FieldName = 'GRD_DSCT'
              end
              object DBGEdicaoGRD_PREC: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 61
                BandIndex = 5
                RowIndex = 0
                FieldName = 'GRD_PREC'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'GRD_PREC'
                SummaryFooterFormat = ',##,0.00'
              end
              object DBGEdicaoGRD_PPRZ: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                BandIndex = 5
                RowIndex = 0
                FieldName = 'GRD_PPRZ'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'GRD_PPRZ'
                SummaryFooterFormat = ',##,0.00'
              end
              object DBGEdicaoGRD_PPRO: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 62
                BandIndex = 5
                RowIndex = 0
                FieldName = 'GRD_PPRO'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'GRD_PPRO'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGEdicaoGRD_TITU: TdxDBGridMaskColumn
                Width = 300
                BandIndex = 6
                RowIndex = 0
                OnValidate = DBGEdicaoGRD_TITUValidate
                FieldName = 'GRD_TITU'
              end
            end
          end
        end
        object TSMedidas: TdxTabSheet
          Caption = 'Medidas'
          OnShow = TSMedidasShow
          object PNLMEDBOT: TPanel
            Left = 0
            Top = 145
            Width = 884
            Height = 155
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object GBMEDPRI: TGroupBox
              Left = 0
              Top = 0
              Width = 500
              Height = 155
              Align = alLeft
              Caption = '  Medidas  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object BMEDPRI: TBevel
                Left = 2
                Top = 19
                Width = 496
                Height = 134
                Align = alClient
                Style = bsRaised
              end
              object LAGramatura: TLabel
                Left = 5
                Top = 101
                Width = 56
                Height = 14
                Caption = 'Gramatura'
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
              object LAMetros: TLabel
                Left = 5
                Top = 77
                Width = 37
                Height = 14
                Caption = 'Metros'
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
              object LARendimento: TLabel
                Left = 5
                Top = 125
                Width = 66
                Height = 14
                Caption = 'Rendimento'
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
              object LAPeso: TLabel
                Left = 5
                Top = 29
                Width = 62
                Height = 14
                Caption = 'Peso M'#233'dio'
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
              object LAPSCN: TLabel
                Left = 5
                Top = 53
                Width = 71
                Height = 14
                Caption = 'Peso Canudo'
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
              object PEDGramatura: TdxPickEdit
                Left = 145
                Top = 96
                Width = 345
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 5
                Items.Strings = (
                  ''
                  'Toler'#226'ncia +/- 5% (NBR 10591)')
              end
              object CEPeso: TdxCurrencyEdit
                Left = 87
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEPesoValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEPSCN: TdxCurrencyEdit
                Left = 87
                Top = 48
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Value = 0.300000000000000000
                StoredValues = 65
              end
              object CEGramatura: TdxCurrencyEdit
                Left = 87
                Top = 96
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEGramaturaValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMetros: TdxCurrencyEdit
                Left = 87
                Top = 72
                Width = 60
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEMetrosValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEREND: TdxCurrencyEdit
                Left = 87
                Top = 120
                Width = 60
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CERENDValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
            object GBMEDOUT: TGroupBox
              Left = 500
              Top = 0
              Width = 384
              Height = 155
              Align = alClient
              Caption = '  Informa'#231#245'es T'#233'cnicas  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object BMEDOUT: TBevel
                Left = 2
                Top = 19
                Width = 380
                Height = 134
                Align = alClient
                Style = bsRaised
              end
              object LALARG_T: TLabel
                Left = 200
                Top = 29
                Width = 72
                Height = 14
                Caption = 'Largura Total'
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
              object LALARG_U: TLabel
                Left = 5
                Top = 29
                Width = 61
                Height = 14
                Caption = 'Largura '#218'til'
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
              object LAELAS_T: TLabel
                Left = 200
                Top = 77
                Width = 106
                Height = 14
                Caption = 'Elast. Comprimento'
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
              object LAELAS_U: TLabel
                Left = 5
                Top = 77
                Width = 69
                Height = 14
                Caption = 'Elast. Lateral'
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
              object LAENCO_U: TLabel
                Left = 5
                Top = 53
                Width = 73
                Height = 14
                Hint = 'Encolhimento Lateral'
                Caption = 'Encol. Lateral'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAENCO_T: TLabel
                Left = 200
                Top = 53
                Width = 110
                Height = 14
                Hint = 'Encolhimento Comprimento'
                Caption = 'Encol. Comprimento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAEspessura: TLabel
                Left = 5
                Top = 125
                Width = 53
                Height = 14
                Caption = 'Espessura'
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
              object Label71: TLabel
                Left = 5
                Top = 101
                Width = 52
                Height = 14
                Caption = 'Dimens'#227'o'
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
              object IEEspessura: TdxImageEdit
                Tag = 1
                Left = 141
                Top = 120
                Width = 60
                Hint = 'Unidade'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 8
                Text = '(mm)'
                Descriptions.Strings = (
                  '('#181')'
                  '(cm)'
                  '(mm)')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  '('#181')'
                  '(cm)'
                  '(mm)')
              end
              object PEDENCO: TdxPickEdit
                Left = 85
                Top = 96
                Width = 290
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 6
                Items.Strings = (
                  ''
                  'Toler'#226'ncia +/- 5% (Trama e Urdume)')
              end
              object CELARG_U: TdxCurrencyEdit
                Left = 85
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CELARG_T: TdxCurrencyEdit
                Left = 315
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEGramaturaValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEENCO_L: TdxCurrencyEdit
                Left = 85
                Top = 48
                Width = 60
                Hint = 'Encolhimento Lateral'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEENCO_C: TdxCurrencyEdit
                Left = 315
                Top = 48
                Width = 60
                Hint = 'Encolhimento Comprimento'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEELAS_L: TdxCurrencyEdit
                Left = 85
                Top = 72
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEELAS_C: TdxCurrencyEdit
                Left = 315
                Top = 72
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEEspessura: TdxCurrencyEdit
                Left = 85
                Top = 120
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
          end
          object PNLMEDTOP: TPanel
            Left = 0
            Top = 0
            Width = 884
            Height = 145
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object GBMEDVEN: TGroupBox
              Left = 0
              Top = 0
              Width = 500
              Height = 145
              Align = alLeft
              Caption = '  Controle de Vendas  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object BMEDVEN: TBevel
                Left = 2
                Top = 19
                Width = 496
                Height = 124
                Align = alClient
                Style = bsRaised
              end
              object LAUCOM: TLabel
                Left = 5
                Top = 42
                Width = 44
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Unidade'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUESP: TLabel
                Left = 5
                Top = 66
                Width = 41
                Height = 14
                Caption = 'Esp'#233'cie'
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
              object LAUQVOL: TLabel
                Left = 5
                Top = 90
                Width = 54
                Height = 14
                Caption = 'Conte'#250'do'
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
              object LAUQTDE_VEN_MIN: TLabel
                Left = 5
                Top = 114
                Width = 37
                Height = 14
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                Caption = 'M'#237'nimo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label72: TLabel
                Left = 69
                Top = 21
                Width = 61
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja F'#237'sica'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label73: TLabel
                Left = 292
                Top = 21
                Width = 70
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja Virtual'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object IEUCOM: TdxImageEdit
                Tag = 1
                Left = 67
                Top = 37
                Width = 200
                Hint = 'Unidade de Medida'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                OnValidate = IEUCOMValidate
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
              object EDUESP: TdxEdit
                Left = 115
                Top = 61
                Width = 152
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                MaxLength = 30
                OnValidate = CEUQVOLValidate
                StoredValues = 3
              end
              object CEUQVOL: TdxCurrencyEdit
                Left = 67
                Top = 61
                Width = 50
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEUQVOLValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEUQTDE_VEN_MIN: TdxCurrencyEdit
                Left = 67
                Top = 109
                Width = 50
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object IEUCOM_LV: TdxImageEdit
                Tag = 1
                Left = 290
                Top = 37
                Width = 200
                Hint = 'Unidade'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
              object EDUESP_LV: TdxMaskEdit
                Left = 330
                Top = 61
                Width = 152
                Hint = 'C'#243'digo'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                StoredValues = 7
              end
              object CEUQTDE_VEN_MIN_LV: TdxCurrencyEdit
                Left = 290
                Top = 109
                Width = 50
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQVOL_LV: TdxCurrencyEdit
                Left = 290
                Top = 61
                Width = 50
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object EDUCON: TdxEdit
                Left = 67
                Top = 85
                Width = 200
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                MaxLength = 30
                OnValidate = EDUCONValidate
                StoredValues = 3
              end
              object EDLJ_UCON: TdxMaskEdit
                Left = 290
                Top = 85
                Width = 200
                Hint = 'C'#243'digo'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 8
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                StoredValues = 7
              end
            end
            object GBMEDEST: TGroupBox
              Left = 500
              Top = 0
              Width = 384
              Height = 145
              Align = alClient
              Caption = '  Controle de Estoque  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object BMEDEST: TBevel
                Left = 2
                Top = 19
                Width = 380
                Height = 124
                Align = alClient
                Style = bsRaised
              end
              object LAUQTDE: TLabel
                Left = 8
                Top = 66
                Width = 41
                Height = 14
                Hint = 'Quantidade em metros de uma pe'#231'a'
                Caption = 'Pe'#231'a(s)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUQTDE_VEN_MUL: TLabel
                Left = 8
                Top = 90
                Width = 56
                Height = 14
                Hint = 'Quantidade m'#250'ltiplas de venda'
                Caption = 'M'#250'ltiplo(s)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUQTDE_EST_MIN: TLabel
                Left = 8
                Top = 114
                Width = 36
                Height = 14
                Hint = 'Estoque m'#237'nimo em pe'#231'as.'
                Caption = 'M'#237'nima'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label74: TLabel
                Left = 8
                Top = 21
                Width = 61
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja F'#237'sica'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label75: TLabel
                Left = 204
                Top = 21
                Width = 70
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja Virtual'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label6: TLabel
                Left = 204
                Top = 66
                Width = 41
                Height = 14
                Hint = 'Quantidade em metros de uma pe'#231'a'
                Caption = 'Pe'#231'a(s)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label8: TLabel
                Left = 204
                Top = 90
                Width = 56
                Height = 14
                Hint = 'Quantidade m'#250'ltiplas de venda'
                Caption = 'M'#250'ltiplo(s)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label9: TLabel
                Left = 204
                Top = 113
                Width = 36
                Height = 14
                Hint = 'Estoque m'#237'nimo em pe'#231'as.'
                Caption = 'M'#237'nima'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object IEUCDBE: TdxImageEdit
                Tag = 1
                Left = 5
                Top = 37
                Width = 175
                Hint = 'Tipo de Controle de Estoque'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Text = 'QT'
                Descriptions.Strings = (
                  'Quantidade'
                  'Pe'#231'as Fixas'
                  'Pe'#231'as V'#225'ri'#225'veis / Corte')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  'QT'
                  'PF'
                  'PI')
              end
              object CEUQTDE: TdxCurrencyEdit
                Left = 120
                Top = 61
                Width = 60
                Hint = 'Quantidade em metros de uma pe'#231'a'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEUQTDEValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_VEN_MUL: TdxCurrencyEdit
                Left = 120
                Top = 85
                Width = 60
                Hint = 'Quantidade m'#250'ltiplas de venda'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_EST_MIN: TdxCurrencyEdit
                Left = 120
                Top = 109
                Width = 60
                Hint = 'Estoque m'#237'nimo em pe'#231'as.'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_EST_MIN_LV: TdxCurrencyEdit
                Left = 315
                Top = 109
                Width = 60
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object IEUCDBE_LV: TdxImageEdit
                Tag = 1
                Left = 201
                Top = 37
                Width = 175
                Hint = 'Tipo de Controle de Estoque'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Text = 'QT'
                Descriptions.Strings = (
                  'Quantidade'
                  'Pe'#231'as Fixas'
                  'Pe'#231'as V'#225'ri'#225'veis / Corte')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  'QT'
                  'PF'
                  'PI')
              end
              object CEUQTDE_LV: TdxCurrencyEdit
                Left = 315
                Top = 61
                Width = 60
                Hint = 'Quantidade em metros de uma pe'#231'a'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_VEN_MUL_LV: TdxCurrencyEdit
                Left = 315
                Top = 85
                Width = 60
                Hint = 'Quantidade m'#250'ltiplas de venda'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
            end
          end
          object PNLCF: TPanel
            Left = 0
            Top = 300
            Width = 884
            Height = 85
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object GBORIG: TGroupBox
              Left = 500
              Top = 0
              Width = 384
              Height = 85
              Align = alClient
              Caption = '  Fabrica'#231#227'o  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object BORIG: TBevel
                Left = 2
                Top = 19
                Width = 380
                Height = 64
                Align = alClient
                Style = bsRaised
              end
              object LACPAIS: TLabel
                Left = 5
                Top = 53
                Width = 20
                Height = 14
                Caption = 'Pa'#237's'
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
              object LAORIG: TLabel
                Left = 5
                Top = 29
                Width = 39
                Height = 14
                Caption = 'Origem'
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
              object IEORIG: TdxImageEdit
                Left = 51
                Top = 24
                Width = 325
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 0
                Text = '0'
                Descriptions.Strings = (
                  'Nacional'
                  'Estrangeira - Importa'#231#227'o Direta'
                  'Estrangeira - Adiquirida no Mercado Interno'
                  
                    'Nacional - Mercadoria ou bem com conte'#250'do de importa'#231#227'o superior' +
                    ' a 40% e inferior ou igual a 70%'
                  
                    'Nacional - Produ'#231#227'o em conformidade com os processos produtivos ' +
                    'b'#225'sicos de que tratam as legisla'#231#245'es citadas nos Ajustes'
                  
                    'Nacional - Mercadoria ou bem com conte'#250'do de importa'#231#227'o inferior' +
                    ' ou igual a 40%'
                  
                    'Estrangeira - importa'#231#227'o direta, sem similar nacional, constante' +
                    ' em lista da CAMEX e g'#225's natural'
                  
                    'Estrangeira - Adquirida no mercado interno, sem similar nacional' +
                    ', constante em lista da CAMEX e g'#225's natural'
                  
                    'Nacional - Mercadoria ou bem com conte'#250'do de importa'#231#227'o superior' +
                    ' a 70%')
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
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8')
              end
              object IECPAIS: TdxImageEdit
                Tag = 1
                Left = 51
                Top = 48
                Width = 325
                Hint = 'Origem'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 1
                Text = 'BRASIL'
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
            end
            object GBFiscal: TGroupBox
              Left = 0
              Top = 0
              Width = 500
              Height = 85
              Align = alLeft
              Caption = '  Classifica'#227'o Fiscal  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object BCF: TBevel
                Left = 2
                Top = 19
                Width = 496
                Height = 64
                Align = alClient
                Style = bsRaised
              end
              object Label2: TLabel
                Left = 5
                Top = 29
                Width = 24
                Height = 14
                Caption = 'NCM'
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
              object LATRIBIPI: TLabel
                Left = 5
                Top = 53
                Width = 31
                Height = 14
                Cursor = crHandPoint
                Hint = 'Percentual de al'#237'quota de IPI'
                Caption = 'IPI %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LACEST: TLabel
                Left = 217
                Top = 29
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
                Caption = 'CEST'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAEXTIPI: TLabel
                Left = 217
                Top = 53
                Width = 37
                Height = 14
                Cursor = crHandPoint
                Hint = 'C'#243'digo Exce'#231#227'o da Tabela de IPI'
                Caption = 'EXTIPI'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEPIPI: TdxCurrencyEdit
                Left = 45
                Top = 48
                Width = 60
                Hint = 'Percentual de al'#237'quota de IPI'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEPIPIValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object PENCM: TdxPickEdit
                Left = 45
                Top = 24
                Width = 120
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 0
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 8
                OnValidate = PENCMValidate
                StoredValues = 2
              end
              object PECEST: TdxPickEdit
                Left = 267
                Top = 24
                Width = 120
                Hint = 'C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 2
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 7
                StoredValues = 2
              end
              object PEEXTIPI: TdxPickEdit
                Left = 267
                Top = 48
                Width = 120
                Hint = 'C'#243'digo Exce'#231#227'o da Tabela de IPI'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 3
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 3
                StoredValues = 2
              end
            end
          end
          object GBOutro: TGroupBox
            Left = 0
            Top = 385
            Width = 884
            Height = 147
            Align = alClient
            Caption = '  Outros Classifica'#231#245'es  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 3
            object Bevel2: TBevel
              Left = 2
              Top = 19
              Width = 880
              Height = 126
              Align = alClient
              Style = bsRaised
            end
            object Label3: TLabel
              Left = 5
              Top = 29
              Width = 97
              Height = 14
              Caption = 'Densidade Tecido'
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
            object Label5: TLabel
              Left = 5
              Top = 53
              Width = 68
              Height = 14
              Caption = 'T'#237'tulo do Fio'
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
            object Label29: TLabel
              Left = 5
              Top = 77
              Width = 69
              Height = 14
              Caption = 'Acabamento'
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
            object cbdens: TdxPickEdit
              Tag = 1
              Left = 107
              Top = 24
              Width = 770
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 0
              CharCase = ecUpperCase
            end
            object cbstal: TdxImageEdit
              Left = 107
              Top = 48
              Width = 770
              Color = clWhite
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 1
              AutoSize = False
              Descriptions.Strings = (
                'ABERTO'
                'FECHADO')
              ImageIndexes.Strings = (
                '0'
                '1')
              Values.Strings = (
                'A'
                'F')
              Height = 24
            end
            object cbtitf: TdxPickEdit
              Tag = 1
              Left = 107
              Top = 72
              Width = 770
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clGray
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 2
              CharCase = ecUpperCase
            end
          end
        end
        object TSPrecos: TdxTabSheet
          Caption = 'Pre'#231'os'
          OnShow = TSPrecosShow
          object PCTAB_PRC: TdxPageControl
            Left = 0
            Top = 0
            Width = 884
            Height = 532
            ActivePage = TSPRC_PAD
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
            object TSPRC_PAD: TdxTabSheet
              Caption = 'Atacado'
              OnShow = TSPRC_PADShow
              object BPRC_PAD: TBevel
                Left = 0
                Top = 0
                Width = 884
                Height = 506
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_PAD: TLabel
                Tag = 1
                Left = 37
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_PAD_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPPRC_PAD_DSC: TLabel
                Tag = 1
                Left = 28
                Top = 85
                Width = 73
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Descontos %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPPRC_PAD_AJU: TLabel
                Tag = 1
                Left = 33
                Top = 109
                Width = 68
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Reajustes %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_PAD_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_PAD: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PADValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_PAD_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PAD_PRZValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_PAD_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PAD_PROValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEPPRC_PAD_DSC: TdxCurrencyEdit
                Left = 115
                Top = 80
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEPPRC_PAD_AJU: TdxCurrencyEdit
                Left = 115
                Top = 104
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
            object TSPRC_ATV: TdxTabSheet
              Caption = 'Atacarejo'
              OnShow = TSPRC_ATVShow
              object BPRC_ATV: TBevel
                Left = 0
                Top = 0
                Width = 884
                Height = 506
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAPPRC_ATV_DSC: TLabel
                Tag = 1
                Left = 33
                Top = 85
                Width = 68
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPPRC_ATV_AJU: TLabel
                Tag = 1
                Left = 38
                Top = 109
                Width = 63
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Reajuste %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_ATV: TLabel
                Tag = 1
                Left = 45
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_ATV_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_ATV_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_ATV: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_ATV_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_ATV_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEPPRC_ATV_DSC: TdxCurrencyEdit
                Left = 115
                Top = 80
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEPPRC_ATV_AJU: TdxCurrencyEdit
                Left = 115
                Top = 104
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_VAR: TdxTabSheet
              Caption = 'Varejo'
              OnShow = TSPRC_VARShow
              object BPRC_VAR: TBevel
                Left = 0
                Top = 0
                Width = 884
                Height = 506
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_VAR: TLabel
                Tag = 1
                Left = 45
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_VAR_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_VAR_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_VAR: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_VAR_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_VAR_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_REP: TdxTabSheet
              Caption = 'Representa'#231#227'o'
              OnShow = TSPRC_REPShow
              object BPRC_REP: TBevel
                Left = 0
                Top = 0
                Width = 884
                Height = 506
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_REP: TLabel
                Tag = 1
                Left = 45
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_REP_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_REP_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_REP: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_REP_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_REP_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_LV: TdxTabSheet
              Caption = 'Loja Virtual'
              OnShow = TSPRC_LVShow
              object BPRC_LV: TBevel
                Left = 0
                Top = 0
                Width = 884
                Height = 506
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_LV: TLabel
                Tag = 1
                Left = 12
                Top = 13
                Width = 89
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPMKP: TLabel
                Tag = 1
                Left = 46
                Top = 37
                Width = 55
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Markup %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEPMKP: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                OnValidate = CEPMKPValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_LV: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_COM: TdxTabSheet
              Caption = 'Compras'
              OnShow = TSPRC_COMShow
              object BPRC_COM: TBevel
                Left = 0
                Top = 0
                Width = 884
                Height = 506
                Align = alClient
              end
              object LAVPRC_COM: TLabel
                Tag = 1
                Left = 13
                Top = 13
                Width = 94
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Unit'#225'rio R$'
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
              object LAVPRC_COM_IMP: TLabel
                Tag = 1
                Left = 5
                Top = 37
                Width = 102
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Unit'#225'rio US$'
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
              object CEVPRC_COM: TdxCurrencyEdit
                Left = 112
                Top = 8
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_COM_IMP: TdxCurrencyEdit
                Left = 112
                Top = 32
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
          end
        end
        object TSComposicoes: TdxTabSheet
          Caption = 'Composi'#231#227'o'
          object SBCMP: TSpeedBar
            Left = 0
            Top = 0
            Width = 55
            Height = 532
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            BoundLines = [blTop, blBottom, blLeft, blRight]
            Position = bpCustom
            Align = alLeft
            Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns]
            BtnOffsetHorz = 5
            BtnOffsetVert = 5
            BtnWidth = 45
            BtnHeight = 45
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SSEdicaoComposicao: TSpeedbarSection
              Caption = 'Edi'#231#227'o'
            end
            object SICMP_INS: TSpeedItem
              Cursor = crHandPoint
              Hint = '[Ins] - Inclui'
              ImageIndex = 2
              Spacing = 1
              Left = 5
              Top = 5
              Visible = True
              OnClick = SICMP_INSClick
              SectionName = 'Edi'#231#227'o'
            end
            object SICMP_ALT: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = '[Enter] - Altera'
              ImageIndex = 0
              Spacing = 1
              Left = 5
              Top = 50
              Visible = True
              OnClick = SICMP_ALTClick
              SectionName = 'Edi'#231#227'o'
            end
            object SICMP_DEL: TSpeedItem
              Tag = 1
              Cursor = crHandPoint
              Hint = '[Del] - Exclui'
              ImageIndex = 3
              Spacing = 1
              Left = 5
              Top = 95
              Visible = True
              OnClick = SICMP_DELClick
              SectionName = 'Edi'#231#227'o'
            end
            object SICMP_SAV: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = '[Ctrl+S] - Salva'
              ImageIndex = 1
              Spacing = 1
              Left = 5
              Top = 140
              Visible = True
              OnClick = SICMP_SAVClick
              SectionName = 'Edi'#231#227'o'
            end
            object SICMP_CAN: TSpeedItem
              Tag = 2
              Enabled = False
              Cursor = crHandPoint
              Hint = '[Esc] - Cancela'
              ImageIndex = 4
              Spacing = 1
              Left = 5
              Top = 185
              Visible = True
              OnClick = SICMP_CANClick
              SectionName = 'Edi'#231#227'o'
            end
          end
          object DBGCMP: TdxDBGrid
            Left = 55
            Top = 0
            Width = 829
            Height = 532
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
            ParentCtl3D = False
            TabOrder = 1
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = DTSCAD_PRO_CMP
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            object DBGCMPCMP_DEPK: TdxDBGridPickColumn
              Width = 250
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CMP_DEPK'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGCMPCMP_REPK: TdxDBGridPickColumn
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CMP_REPK'
            end
            object DBGCMPCMP_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CMP_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'CMP_QTDE'
              SummaryFooterFormat = ',##,0.00'
            end
          end
        end
        object TSILA_BMP: TdxTabSheet
          Caption = 'Instru'#231#245'es de Lavagem'
          object BILA_BMP: TBevel
            Left = 0
            Top = 0
            Width = 884
            Height = 532
            Align = alClient
          end
          object BILA_BMP7: TBevel
            Left = 6
            Top = 253
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP6: TBevel
            Left = 6
            Top = 212
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP5: TBevel
            Left = 6
            Top = 171
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP4: TBevel
            Left = 6
            Top = 130
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP3: TBevel
            Left = 6
            Top = 89
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP2: TBevel
            Left = 6
            Top = 48
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP1: TBevel
            Left = 6
            Top = 7
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object ILA_BMP1: TImage
            Left = 8
            Top = 10
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 1
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object ILA_BMP3: TImage
            Left = 8
            Top = 92
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 3
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object ILA_BMP4: TImage
            Left = 8
            Top = 133
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 4
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object ILA_BMP5: TImage
            Left = 8
            Top = 174
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 5
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object ILA_BMP6: TImage
            Left = 8
            Top = 215
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 6
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object ILA_BMP7: TImage
            Left = 8
            Top = 256
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 7
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object ILA_BMP2: TImage
            Left = 8
            Top = 51
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 2
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object BILA_BMP8: TBevel
            Left = 6
            Top = 294
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object ILA_BMP8: TImage
            Left = 8
            Top = 297
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 8
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ACTPesquisaInstLavagemExecute
          end
          object LAILA_BMP1: TLabel
            Left = 50
            Top = 25
            Width = 12
            Height = 14
            Caption = '1)'
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
          object LAILA_BMP2: TLabel
            Left = 50
            Top = 66
            Width = 12
            Height = 14
            Caption = '2)'
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
          object LAILA_BMP3: TLabel
            Left = 50
            Top = 107
            Width = 12
            Height = 14
            Caption = '3)'
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
          object LAILA_BMP4: TLabel
            Left = 50
            Top = 148
            Width = 12
            Height = 14
            Caption = '4)'
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
          object LAILA_BMP5: TLabel
            Left = 50
            Top = 188
            Width = 12
            Height = 14
            Caption = '5)'
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
          object LAILA_BMP6: TLabel
            Left = 50
            Top = 229
            Width = 12
            Height = 14
            Caption = '6)'
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
          object LAILA_BMP7: TLabel
            Left = 50
            Top = 271
            Width = 12
            Height = 14
            Caption = '7)'
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
          object LAILA_BMP8: TLabel
            Left = 50
            Top = 312
            Width = 12
            Height = 14
            Caption = '8)'
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
          object EDILA_INS1: TdxEdit
            Tag = 1
            Left = 66
            Top = 20
            Width = 815
            Hint = 'Referencia'
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
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS2: TdxEdit
            Tag = 1
            Left = 65
            Top = 61
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 1
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS3: TdxEdit
            Tag = 1
            Left = 65
            Top = 102
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS4: TdxEdit
            Tag = 1
            Left = 65
            Top = 143
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 3
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS5: TdxEdit
            Tag = 1
            Left = 65
            Top = 183
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 4
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS6: TdxEdit
            Tag = 1
            Left = 65
            Top = 224
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 5
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS7: TdxEdit
            Tag = 1
            Left = 65
            Top = 266
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 6
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS8: TdxEdit
            Tag = 1
            Left = 65
            Top = 307
            Width = 815
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 7
            MaxLength = 120
            StoredValues = 2
          end
        end
        object TSIMG_ART: TdxTabSheet
          Caption = 'Imagem do Artigo'
          object BIMG_ART_PNL: TBevel
            Left = 0
            Top = 0
            Width = 884
            Height = 532
            Align = alClient
          end
          object IMG_ART: TImage
            Left = 0
            Top = 0
            Width = 884
            Height = 532
            Cursor = crHandPoint
            Align = alClient
            Stretch = True
          end
          object SBIMG_ART: TSpeedButton
            Left = 6
            Top = 488
            Width = 19
            Height = 20
            Cursor = crHandPoint
            Hint = 'Pesquisa Foto'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
              E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
              F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
              AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
              A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
              EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
              DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
              7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
              FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
              CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
              DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
              FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
              D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
              CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
              D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
              EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
              63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
              EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
              27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
              A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
            ParentShowHint = False
            ShowHint = True
          end
        end
        object TSIMG_SKU: TdxTabSheet
          Caption = 'Imagens dos Produtos'
          object IMG_SKU: TImage
            Left = 0
            Top = 0
            Width = 444
            Height = 532
            Cursor = crHandPoint
            Align = alClient
            Stretch = True
          end
          object SBIMG_SKU: TSpeedButton
            Left = 6
            Top = 488
            Width = 19
            Height = 20
            Cursor = crHandPoint
            Hint = 'Pesquisa Foto'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
              E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
              F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
              AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
              A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
              EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
              DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
              7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
              FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
              CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
              DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
              FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
              D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
              CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
              D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
              EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
              63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
              EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
              27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
              A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
            ParentShowHint = False
            ShowHint = True
          end
          object DBGIMG_SKU: TdxDBGrid
            Left = 444
            Top = 0
            Width = 440
            Height = 532
            Bands = <
              item
                Caption = 'SKU'
                MinWidth = 120
                Width = 120
              end
              item
                Caption = 'Grade Completa'
                Width = 554
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alRight
            BorderStyle = bsNone
            Color = 13421258
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
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
            DataSource = DSTEdicao
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowBands = True
            object DBGIMG_SKUGRD_CPRO: TdxDBGridMaskColumn
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRD_CPRO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGIMG_SKUDGCP: TdxDBGridMaskColumn
              Width = 300
              BandIndex = 1
              RowIndex = 0
              FieldName = 'DGCP'
            end
          end
        end
        object TSINFADCPL: TdxTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          object PCINFADTEC: TdxPageControl
            Left = 0
            Top = 170
            Width = 884
            Height = 170
            ActivePage = TSINFADTEC
            Align = alTop
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 1
            TabPosition = dxtpBottom
            TabWidth = 0
            object TSINFADTEC: TdxTabSheet
              Caption = '  Documentos Fiscais  '
              object EMINFADTEC: TdxMemo
                Left = 0
                Top = 0
                Width = 884
                Align = alClient
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 146
              end
            end
          end
          object PCINFADCAD: TdxPageControl
            Left = 0
            Top = 0
            Width = 884
            Height = 170
            ActivePage = TSINFADCAD
            Align = alTop
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpBottom
            TabWidth = 0
            object TSINFADCAD: TdxTabSheet
              Caption = '  Ficha T'#233'cnica  '
              object EMINFADCAD: TdxMemo
                Left = 0
                Top = 0
                Width = 884
                Align = alClient
                Color = 16644596
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 146
              end
            end
          end
          object GBMKP: TGroupBox
            Left = 0
            Top = 340
            Width = 884
            Height = 192
            Align = alClient
            Caption = '  Market Place  '
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 2
            object Bevel4: TBevel
              Left = 2
              Top = 19
              Width = 880
              Height = 171
              Align = alClient
              Style = bsRaised
            end
            object LAMKP_IDML: TLabel
              Tag = 1
              Left = 5
              Top = 29
              Width = 91
              Height = 14
              Hint = 'Referencia'
              Caption = '1) Mercado Livre'
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
            object LAMKP_IDSP: TLabel
              Tag = 1
              Left = 5
              Top = 53
              Width = 93
              Height = 14
              Hint = 'Referencia'
              Caption = '2) Mercado Pago'
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
            object LAMKP_IDAM: TLabel
              Tag = 1
              Left = 5
              Top = 77
              Width = 99
              Height = 14
              Hint = 'Referencia'
              Caption = '3) Mercado Shops'
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
            object Label10: TLabel
              Tag = 1
              Left = 365
              Top = 29
              Width = 58
              Height = 14
              Hint = 'Referencia'
              Caption = '5) Shopee'
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
            object Label11: TLabel
              Tag = 1
              Left = 365
              Top = 53
              Width = 59
              Height = 14
              Hint = 'Referencia'
              Caption = '6) Amazon'
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
            object Label13: TLabel
              Tag = 1
              Left = 5
              Top = 101
              Width = 41
              Height = 14
              Hint = 'Referencia'
              Caption = '4) Bling'
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
            object Label14: TLabel
              Tag = 1
              Left = 365
              Top = 77
              Width = 40
              Height = 14
              Hint = 'Referencia'
              Caption = '7) Tray'
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
            object IEMKP_IDAM: TdxImageEdit
              Tag = 1
              Left = 115
              Top = 72
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 0
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_IDSP: TdxImageEdit
              Tag = 1
              Left = 115
              Top = 48
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 1
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_IDML: TdxImageEdit
              Left = 115
              Top = 24
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 2
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object dxImageEdit1: TdxImageEdit
              Tag = 1
              Left = 434
              Top = 24
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 3
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object dxImageEdit2: TdxImageEdit
              Tag = 1
              Left = 434
              Top = 48
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 4
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object dxImageEdit3: TdxImageEdit
              Tag = 1
              Left = 114
              Top = 96
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 5
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object dxImageEdit4: TdxImageEdit
              Tag = 1
              Left = 434
              Top = 72
              Width = 200
              Hint = 'Unidade'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 6
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
          end
        end
      end
    end
    object PNLEDI_CAD: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 190
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object GBCadastro: TGroupBox
        Left = 0
        Top = 0
        Width = 884
        Height = 185
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Tag = 1
          Left = 5
          Top = 18
          Width = 33
          Height = 14
          Caption = 'Artigo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label7: TLabel
          Left = 5
          Top = 43
          Width = 51
          Height = 14
          Caption = 'Descri'#231#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LADECF: TLabel
          Left = 5
          Top = 90
          Width = 62
          Height = 14
          Caption = 'Fornecedor'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LAIDGRP: TLabel
          Left = 5
          Top = 138
          Width = 33
          Height = 14
          Caption = 'Grupo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LAIDCOL: TLabel
          Left = 305
          Top = 114
          Width = 42
          Height = 14
          Caption = 'Cole'#231#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LACDCF: TLabel
          Left = 305
          Top = 90
          Width = 57
          Height = 14
          Caption = 'Refer'#234'ncia'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LAIDCAT: TLabel
          Left = 5
          Top = 162
          Width = 51
          Height = 14
          Caption = 'Categoria'
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
        object LAIDSGP: TLabel
          Left = 305
          Top = 138
          Width = 58
          Height = 14
          Caption = 'Sub Grupo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LAIDSCT: TLabel
          Left = 305
          Top = 162
          Width = 76
          Height = 14
          Caption = 'Sub Categoria'
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
        object Label40: TLabel
          Left = 5
          Top = 67
          Width = 31
          Height = 14
          Caption = 'T'#237'tulo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LAIDSEG: TLabel
          Left = 5
          Top = 114
          Width = 57
          Height = 14
          Caption = 'Segmento'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label4: TLabel
          Tag = 1
          Left = 305
          Top = 18
          Width = 66
          Height = 14
          Caption = 'Revendedor'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object EDCDCF: TdxMaskEdit
          Left = 385
          Top = 85
          Width = 220
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          MaxLength = 30
          StoredValues = 6
        end
        object EDCMP_PAD: TdxEdit
          Tag = 1
          Left = 74
          Top = 38
          Width = 473
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 14
          CharCase = ecUpperCase
          MaxLength = 120
          StoredValues = 2
        end
        object EDDescricao: TdxEdit
          Tag = 1
          Left = 70
          Top = 38
          Width = 535
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 2
          CharCase = ecUpperCase
          MaxLength = 120
          OnValidate = EDDescricaoValidate
          StoredValues = 2
        end
        object IEIDGRP: TdxImageEdit
          Left = 70
          Top = 133
          Width = 220
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 8
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object GroupBox6: TGroupBox
          Left = 610
          Top = 9
          Width = 270
          Height = 79
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 13
          object EDCEAN: TACBrBarCode
            Left = 71
            Top = 19
            Width = 190
            Height = 31
            Hint = 'C'#243'digo Barras'
            Modul = 2
            Ratio = 2.000000000000000000
            Typ = bcCodeEAN13
            ShowText = bcoBoth
            ShowTextFont.Charset = DEFAULT_CHARSET
            ShowTextFont.Color = clWindowText
            ShowTextFont.Height = -11
            ShowTextFont.Name = 'MS Sans Serif'
            ShowTextFont.Style = []
            ShowTextPosition = stpBottomCenter
            Transparent = True
            ParentShowHint = False
            ShowHint = True
          end
          object Label12: TLabel
            Left = 5
            Top = 27
            Width = 46
            Height = 14
            Hint = 'C'#243'digo Barras'
            Caption = 'Empresa'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object Label32: TLabel
            Left = 5
            Top = 57
            Width = 62
            Height = 14
            Hint = 'C'#243'digo Barras'
            Caption = 'Fornecedor'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object EDCEANCF: TdxEdit
            Tag = 1
            Left = 69
            Top = 52
            Width = 195
            Hint = 'C'#243'digo Barras'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            CharCase = ecUpperCase
            MaxLength = 120
            StoredValues = 2
          end
        end
        object EDArtigo: TdxEdit
          Tag = 1
          Left = 70
          Top = 13
          Width = 220
          Color = clHighlightText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          CharCase = ecUpperCase
          MaxLength = 30
          OnValidate = EDArtigoValidate
          StoredValues = 2
        end
        object IEIDCAT: TdxImageEdit
          Left = 70
          Top = 157
          Width = 220
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 10
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object GroupBox1: TGroupBox
          Left = 610
          Top = 89
          Width = 270
          Height = 94
          TabOrder = 12
          object Label18: TLabel
            Left = 5
            Top = 21
            Width = 52
            Height = 14
            Hint = 'Finalidade do Produto'
            Caption = 'Finalidade'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object Label41: TLabel
            Left = 5
            Top = 69
            Width = 46
            Height = 14
            Hint = 'Situa'#231#227'o Cadastral'
            Caption = 'Situa'#231#227'o'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object Label68: TLabel
            Left = 5
            Top = 45
            Width = 45
            Height = 14
            Hint = 'Especifica'#231#227'o do Tipo de Estoque Vend'#225'vel'
            Caption = 'Estoque'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object IECDST: TdxImageEdit
            Tag = 1
            Left = 62
            Top = 64
            Width = 200
            Cursor = crHandPoint
            Hint = 'Situa'#231#227'o Cadastral'
            Color = 12189625
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            OnChange = IECDSTChange
            OnValidate = IECDSTValidate
            DropDownRows = 10
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
          object IEIDFIN: TdxImageEdit
            Left = 62
            Top = 16
            Width = 200
            Cursor = crHandPoint
            Hint = 'Finalidade do Produto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clGray
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.Shadow = True
            TabOrder = 0
            DropDownRows = 10
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
          object IEIDTPV: TdxImageEdit
            Tag = 1
            Left = 62
            Top = 40
            Width = 200
            Cursor = crHandPoint
            Hint = 'Especifica'#231#227'o do Tipo de Estoque Vend'#225'vel'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clGray
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.Shadow = True
            TabOrder = 1
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
        end
        object IEIDSGP: TdxImageEdit
          Left = 385
          Top = 133
          Width = 220
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 9
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object IEIDSCT: TdxImageEdit
          Left = 385
          Top = 157
          Width = 220
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 11
          OnValidate = IEIDSCTValidate
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object EDTitulo: TdxEdit
          Tag = 1
          Left = 70
          Top = 62
          Width = 535
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          MaxLength = 120
          OnValidate = EDTituloValidate
          StoredValues = 2
        end
        object IEIDSEG: TdxImageEdit
          Left = 70
          Top = 109
          Width = 220
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 6
          Text = '0'
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object PEDECOL: TdxPickEdit
          Left = 385
          Top = 109
          Width = 220
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 7
          DropDownRows = 20
        end
        object IEIDEP: TdxImageEdit
          Left = 385
          Top = 13
          Width = 220
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 0
          DropDownRows = 10
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object IECF_ID: TdxImageEdit
          Left = 70
          Top = 85
          Width = 220
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 4
          DropDownRows = 10
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 821
    Width = 884
    inherited SBRodape: TdxStatusBar
      Width = 878
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
          Width = 600
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
      Width = 878
      inherited PNLSynchronize: TPanel
        Width = 817
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
    Width = 884
  end
  inherited TEvent: TIBTransaction
    Left = 304
    Top = 496
  end
  inherited SPEvent: TIBStoredProc
    Left = 368
    Top = 496
  end
  inherited EEvent: TIBEvents
    Left = 400
    Top = 496
  end
  inherited SQLEvent: TIBSQL
    Left = 336
    Top = 496
  end
  inherited TConsulta: TIBTransaction
    Left = 80
    Top = 496
  end
  inherited SQLConsulta: TIBSQL
    Left = 112
    Top = 496
  end
  inherited TEdicao: TIBTransaction
    Left = 208
    Top = 496
  end
  inherited SQLEdicao: TIBSQL
    Left = 240
    Top = 496
  end
  inherited SPEdicao: TIBStoredProc
    Left = 272
    Top = 496
  end
  inherited Consulta: TIBQuery
    Left = 80
    Top = 528
  end
  inherited ALPrincipal: TActionList
    Left = 528
    Top = 496
    inherited ACTMEAppend: TAction
      Enabled = True
      Visible = True
    end
    inherited ACTMEEdit: TAction
      Enabled = True
      Visible = True
    end
    inherited ACTMEDelete: TAction
      Enabled = True
      Visible = True
    end
    inherited ACTMEPost: TAction
      Visible = True
    end
    inherited ACTMECancel: TAction
      Visible = True
    end
    inherited ACTMPAppend: TAction
      Enabled = False
      Visible = False
    end
    inherited ACTMPEdit: TAction
      Enabled = False
      Visible = False
    end
    inherited ACTMPDelete: TAction
      Enabled = False
      Visible = False
    end
    object ACTImagemArtigo: TAction
      Category = 'Edi'#231#245'es'
      Caption = 'ACTImagemArtigo'
      OnExecute = ACTImagemArtigoExecute
    end
    object ACTImagemArtigoDelete: TAction
      Category = 'Edi'#231#245'es'
      Caption = 'ACTImagemArtigoDelete'
      OnExecute = ACTImagemArtigoDeleteExecute
    end
    object ACTPesquisaNCM: TAction
      Category = 'Pesquisas'
      Caption = 'ACTPesquisaNCM'
      OnExecute = ACTPesquisaNCMExecute
    end
    object ACTPesquisaInstLavagem: TAction
      Category = 'Pesquisas'
      Caption = 'ACTPesquisaInstLavagem'
      OnExecute = ACTPesquisaInstLavagemExecute
    end
  end
  inherited ILPrincipal: TImageList
    Top = 496
  end
  inherited ILEdicao: TImageList
    Top = 496
  end
  object OPDIMG: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    InitialDir = 'C:\Sheild\Imagens'
    Left = 560
    Top = 496
  end
  object DTSCAD_PRO_CMP: TDataSource
    DataSet = CAD_PRO_CMP
    OnStateChange = DTSCAD_PRO_CMPStateChange
    Left = 464
    Top = 560
  end
  object CAD_PRO_CMP: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    AfterDelete = CAD_PRO_CMPAfterDelete
    AfterInsert = CAD_PRO_CMPAfterInsert
    AfterPost = CAD_PRO_CMPAfterPost
    BeforeCancel = CAD_PRO_CMPBeforeCancel
    BeforeEdit = CAD_PRO_CMPBeforeEdit
    BeforeInsert = CAD_PRO_CMPBeforeInsert
    OnNewRecord = CAD_PRO_CMPNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_EDI_PRO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_EDI_PRO'
      
        '  (CDEV, CMP_DEPK, CMP_IDFK, CMP_IDPK, CMP_QTDE, CMP_REPK, FLAG,' +
        ' HOST, '
      '   ID, IDAK, IDCA, IDEP, IDEV, IP)'
      'values'
      
        '  (:CDEV, :CMP_DEPK, :CMP_IDFK, :CMP_IDPK, :CMP_QTDE, :CMP_REPK,' +
        ' :FLAG, '
      '   :HOST, :ID, :IDAK, :IDCA, :IDEP, :IDEV, :IP)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  IDCA,'
      '  IDAK,'
      '  CMP_IDFK,'
      '  CMP_IDPK,'
      '  CMP_REPK,'
      '  CMP_DEPK,'
      '  CMP_QTDE,'
      '  IDEV,'
      '  CDEV,'
      '  IP,'
      '  HOST,'
      '  FLAG'
      'from TAB_EDI_PRO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'SELECT   PK.ID,PK.IDEP,PK.IDCA,PK.IDAK,PK.CMP_IDFK,PK.CMP_IDPK,P' +
        'K.CMP_REPK,PK.CMP_DEPK,PK.CMP_QTDE,PK.IDEV,PK.CDEV,PK.IP,PK.HOST' +
        ',PK.FLAG'
      'FROM     TAB_EDI_PRO AS PK'
      'WHERE    PK.IDEV = 0'
      'AND      PK.CDEV = 3'
      'AND      PK.FLAG = 0'
      'ORDER BY PK.ID'
      '')
    ModifySQL.Strings = (
      'update TAB_EDI_PRO'
      'set'
      '  CDEV = :CDEV,'
      '  CMP_DEPK = :CMP_DEPK,'
      '  CMP_IDFK = :CMP_IDFK,'
      '  CMP_IDPK = :CMP_IDPK,'
      '  CMP_QTDE = :CMP_QTDE,'
      '  CMP_REPK = :CMP_REPK,'
      '  FLAG = :FLAG,'
      '  HOST = :HOST,'
      '  ID = :ID,'
      '  IDAK = :IDAK,'
      '  IDCA = :IDCA,'
      '  IDEP = :IDEP,'
      '  IDEV = :IDEV,'
      '  IP = :IP'
      'where'
      '  ID = :OLD_ID')
    Left = 432
    Top = 560
    object CAD_PRO_CMPID: TLargeintField
      FieldName = 'ID'
      Origin = '"TAB_EDI_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_CMPIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"TAB_EDI_PRO"."IDEP"'
    end
    object CAD_PRO_CMPIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"TAB_EDI_PRO"."IDAK"'
    end
    object CAD_PRO_CMPIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"TAB_EDI_PRO"."IDCA"'
    end
    object CAD_PRO_CMPCMP_IDFK: TLargeintField
      FieldName = 'CMP_IDFK'
      Origin = '"TAB_EDI_PRO"."CMP_IDFK"'
    end
    object CAD_PRO_CMPCMP_IDPK: TSmallintField
      FieldName = 'CMP_IDPK'
      Origin = '"TAB_EDI_PRO"."CMP_IDPK"'
    end
    object CAD_PRO_CMPCMP_REPK: TIBStringField
      DisplayLabel = 'Base'
      FieldName = 'CMP_REPK'
      Origin = '"TAB_EDI_PRO"."CMP_REPK"'
      Size = 30
    end
    object CAD_PRO_CMPCMP_DEPK: TIBStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'CMP_DEPK'
      Origin = '"TAB_EDI_PRO"."CMP_DEPK"'
      Size = 30
    end
    object CAD_PRO_CMPCMP_QTDE: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'CMP_QTDE'
      Origin = '"TAB_EDI_PRO"."CMP_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_CMPIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"TAB_EDI_PRO"."IDEV"'
      Required = True
    end
    object CAD_PRO_CMPCDEV: TSmallintField
      FieldName = 'CDEV'
      Origin = '"TAB_EDI_PRO"."CDEV"'
    end
    object CAD_PRO_CMPIP: TIBStringField
      FieldName = 'IP'
      Origin = '"TAB_EDI_PRO"."IP"'
    end
    object CAD_PRO_CMPHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"TAB_EDI_PRO"."HOST"'
      Size = 30
    end
    object CAD_PRO_CMPFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"TAB_EDI_PRO"."FLAG"'
    end
  end
  object TSEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 432
    Top = 496
  end
  object Edicao: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    AfterCancel = EdicaoAfterCancel
    AfterClose = EdicaoAfterClose
    AfterDelete = EdicaoAfterDelete
    AfterEdit = EdicaoAfterEdit
    AfterInsert = EdicaoAfterInsert
    AfterOpen = EdicaoAfterOpen
    AfterPost = EdicaoAfterPost
    AfterScroll = EdicaoAfterScroll
    BeforeCancel = EdicaoBeforeCancel
    BeforeClose = EdicaoBeforeClose
    BeforeDelete = EdicaoBeforeDelete
    BeforeEdit = EdicaoBeforeEdit
    BeforeInsert = EdicaoBeforeInsert
    BeforeOpen = EdicaoBeforeOpen
    BeforePost = EdicaoBeforePost
    BeforeScroll = EdicaoBeforeScroll
    OnCalcFields = EdicaoCalcFields
    OnDeleteError = EdicaoDeleteError
    OnEditError = EdicaoEditError
    OnNewRecord = EdicaoNewRecord
    OnPostError = EdicaoPostError
    OnUpdateError = EdicaoUpdateError
    DeleteSQL.Strings = (
      'delete from CAD_PRO_GRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_GRD'
      
        '  (DGCP, FLAG, GRD_CART, GRD_CBAR, GRD_CCOR, GRD_CDST, GRD_CFOR,' +
        ' GRD_CGRD, '
      
        '   GRD_COMP, GRD_CPRO, GRD_DCOR, GRD_DEST, GRD_DGRD, GRD_DMK2, G' +
        'RD_DMK3, '
      
        '   GRD_DMKP, GRD_DPRO, GRD_DSCT, GRD_DUNI, GRD_FBAR, GRD_FOTO, G' +
        'RD_IMK2, '
      
        '   GRD_IMK3, GRD_IMKP, GRD_IPRO, GRD_ISCT, GRD_PCOR, GRD_PDSC, G' +
        'RD_PPRO, '
      
        '   GRD_PPRZ, GRD_PREC, GRD_PSBR, GRD_PSLQ, GRD_REST, GRD_RGRD, G' +
        'RD_RPRC, '
      '   GRD_SPRC, GRD_TITU, GRD_UCON, GRD_VPRC, ID, IDIMG)'
      'values'
      
        '  (:DGCP, :FLAG, :GRD_CART, :GRD_CBAR, :GRD_CCOR, :GRD_CDST, :GR' +
        'D_CFOR, '
      
        '   :GRD_CGRD, :GRD_COMP, :GRD_CPRO, :GRD_DCOR, :GRD_DEST, :GRD_D' +
        'GRD, :GRD_DMK2, '
      
        '   :GRD_DMK3, :GRD_DMKP, :GRD_DPRO, :GRD_DSCT, :GRD_DUNI, :GRD_F' +
        'BAR, :GRD_FOTO, '
      
        '   :GRD_IMK2, :GRD_IMK3, :GRD_IMKP, :GRD_IPRO, :GRD_ISCT, :GRD_P' +
        'COR, :GRD_PDSC, '
      
        '   :GRD_PPRO, :GRD_PPRZ, :GRD_PREC, :GRD_PSBR, :GRD_PSLQ, :GRD_R' +
        'EST, :GRD_RGRD, '
      
        '   :GRD_RPRC, :GRD_SPRC, :GRD_TITU, :GRD_UCON, :GRD_VPRC, :ID, :' +
        'IDIMG)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  GRD_CDST,'
      '  GRD_REST,'
      '  GRD_DEST,'
      '  GRD_IPRO,'
      '  GRD_CART,'
      '  GRD_CPRO,'
      '  GRD_CBAR,'
      '  GRD_DPRO,'
      '  GRD_TITU,'
      '  GRD_COMP,'
      '  DGCP,'
      '  GRD_CCOR,'
      '  GRD_DCOR,'
      '  GRD_PCOR,'
      '  GRD_DGRD,'
      '  GRD_CGRD,'
      '  GRD_RGRD,'
      '  GRD_CFOR,'
      '  GRD_FBAR,'
      '  GRD_DUNI,'
      '  GRD_UCON,'
      '  GRD_PDSC,'
      '  GRD_PREC,'
      '  GRD_PPRO,'
      '  GRD_PPRZ,'
      '  GRD_VPRC,'
      '  GRD_RPRC,'
      '  GRD_SPRC,'
      '  GRD_PSBR,'
      '  GRD_PSLQ,'
      '  GRD_ISCT,'
      '  GRD_DSCT,'
      '  GRD_IMKP,'
      '  GRD_DMKP,'
      '  GRD_IMK2,'
      '  GRD_DMK2,'
      '  GRD_IMK3,'
      '  GRD_DMK3,'
      '  GRD_FOTO,'
      '  IDIMG,'
      '  FLAG'
      'from CAD_PRO_GRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   ID,GRD_CDST,GRD_REST,GRD_DEST,'
      '            GRD_IPRO,GRD_CART,GRD_CPRO,GRD_CBAR,'
      '            GRD_DPRO,GRD_TITU,GRD_COMP,DGCP,'
      
        '            GRD_CCOR,GRD_DCOR,GRD_PCOR,GRD_DGRD,GRD_CGRD,GRD_RGR' +
        'D,'
      '            GRD_CFOR,GRD_FBAR,'
      '            GRD_DUNI,GRD_UCON,'
      '            GRD_PDSC,GRD_PREC,GRD_PPRO,GRD_PPRZ,'
      '            GRD_VPRC,GRD_RPRC,GRD_SPRC,'
      '            GRD_PSBR,GRD_PSLQ,'
      '            GRD_ISCT,GRD_DSCT,'
      
        '            GRD_IMKP,GRD_DMKP,GRD_IMK2,GRD_DMK2,GRD_IMK3,GRD_DMK' +
        '3,'
      '            GRD_FOTO,IDIMG,'
      '            FLAG'
      'FROM        CAD_PRO_GRD'
      'WHERE    FLAG = 0'
      'ORDER BY GRD_IPRO')
    ModifySQL.Strings = (
      'update CAD_PRO_GRD'
      'set'
      '  DGCP = :DGCP,'
      '  FLAG = :FLAG,'
      '  GRD_CART = :GRD_CART,'
      '  GRD_CBAR = :GRD_CBAR,'
      '  GRD_CCOR = :GRD_CCOR,'
      '  GRD_CDST = :GRD_CDST,'
      '  GRD_CFOR = :GRD_CFOR,'
      '  GRD_CGRD = :GRD_CGRD,'
      '  GRD_COMP = :GRD_COMP,'
      '  GRD_CPRO = :GRD_CPRO,'
      '  GRD_DCOR = :GRD_DCOR,'
      '  GRD_DEST = :GRD_DEST,'
      '  GRD_DGRD = :GRD_DGRD,'
      '  GRD_DMK2 = :GRD_DMK2,'
      '  GRD_DMK3 = :GRD_DMK3,'
      '  GRD_DMKP = :GRD_DMKP,'
      '  GRD_DPRO = :GRD_DPRO,'
      '  GRD_DSCT = :GRD_DSCT,'
      '  GRD_DUNI = :GRD_DUNI,'
      '  GRD_FBAR = :GRD_FBAR,'
      '  GRD_FOTO = :GRD_FOTO,'
      '  GRD_IMK2 = :GRD_IMK2,'
      '  GRD_IMK3 = :GRD_IMK3,'
      '  GRD_IMKP = :GRD_IMKP,'
      '  GRD_IPRO = :GRD_IPRO,'
      '  GRD_ISCT = :GRD_ISCT,'
      '  GRD_PCOR = :GRD_PCOR,'
      '  GRD_PDSC = :GRD_PDSC,'
      '  GRD_PPRO = :GRD_PPRO,'
      '  GRD_PPRZ = :GRD_PPRZ,'
      '  GRD_PREC = :GRD_PREC,'
      '  GRD_PSBR = :GRD_PSBR,'
      '  GRD_PSLQ = :GRD_PSLQ,'
      '  GRD_REST = :GRD_REST,'
      '  GRD_RGRD = :GRD_RGRD,'
      '  GRD_RPRC = :GRD_RPRC,'
      '  GRD_SPRC = :GRD_SPRC,'
      '  GRD_TITU = :GRD_TITU,'
      '  GRD_UCON = :GRD_UCON,'
      '  GRD_VPRC = :GRD_VPRC,'
      '  ID = :ID,'
      '  IDIMG = :IDIMG'
      'where'
      '  ID = :OLD_ID')
    Left = 432
    Top = 528
    object EdicaoID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_GRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EdicaoGRD_IPRO: TIntegerField
      FieldName = 'GRD_IPRO'
      Origin = '"CAD_PRO_GRD"."GRD_IPRO"'
    end
    object EdicaoGRD_CART: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'GRD_CART'
      Origin = '"CAD_PRO_GRD"."GRD_CART"'
    end
    object EdicaoGRD_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'GRD_CPRO'
      Origin = '"CAD_PRO_GRD"."GRD_CPRO"'
    end
    object EdicaoGRD_CBAR: TIBStringField
      DisplayLabel = 'CEAN'
      FieldName = 'GRD_CBAR'
      Origin = '"CAD_PRO_GRD"."GRD_CBAR"'
    end
    object EdicaoGRD_CFOR: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'GRD_CFOR'
      Origin = '"CAD_PRO_GRD"."GRD_CFOR"'
      Size = 30
    end
    object EdicaoGRD_FBAR: TIBStringField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'GRD_FBAR'
      Origin = '"CAD_PRO_GRD"."GRD_FBAR"'
    end
    object EdicaoGRD_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRD_DPRO'
      Origin = '"CAD_PRO_GRD"."GRD_DPRO"'
      Size = 120
    end
    object EdicaoGRD_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'GRD_TITU'
      Origin = '"CAD_PRO_GRD"."GRD_TITU"'
      Size = 120
    end
    object EdicaoGRD_COMP: TIBStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'GRD_COMP'
      Origin = '"CAD_PRO_GRD"."GRD_COMP"'
      Size = 120
    end
    object EdicaoDGCP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o da Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO_GRD"."DGCP"'
      Size = 90
    end
    object EdicaoGRD_CGRD: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GRD_CGRD'
      Origin = '"CAD_PRO_GRD"."GRD_CGRD"'
      Size = 10
    end
    object EdicaoGRD_RGRD: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'GRD_RGRD'
      Origin = '"CAD_PRO_GRD"."GRD_RGRD"'
      Size = 10
    end
    object EdicaoGRD_DGRD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRD_DGRD'
      Origin = '"CAD_PRO_GRD"."GRD_DGRD"'
      Size = 30
    end
    object EdicaoGRD_CCOR: TIntegerField
      FieldName = 'GRD_CCOR'
      Origin = '"CAD_PRO_GRD"."GRD_CCOR"'
    end
    object EdicaoGRD_PCOR: TIBStringField
      DisplayLabel = 'Escala'
      FieldName = 'GRD_PCOR'
      Origin = '"CAD_PRO_GRD"."GRD_PCOR"'
      Size = 30
    end
    object EdicaoGRD_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'GRD_DCOR'
      Origin = '"CAD_PRO_GRD"."GRD_DCOR"'
      Size = 30
    end
    object EdicaoGRD_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'GRD_DUNI'
      Origin = '"CAD_PRO_GRD"."GRD_DUNI"'
      Size = 10
    end
    object EdicaoGRD_UCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'GRD_UCON'
      Origin = '"CAD_PRO_GRD"."GRD_UCON"'
      Size = 40
    end
    object EdicaoGRD_PDSC: TIBBCDField
      FieldName = 'GRD_PDSC'
      Origin = '"CAD_PRO_GRD"."GRD_PDSC"'
      Precision = 9
      Size = 2
    end
    object EdicaoGRD_PREC: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'GRD_PREC'
      Origin = '"CAD_PRO_GRD"."GRD_PREC"'
      DisplayFormat = ',##,0.00'
    end
    object EdicaoGRD_PPRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'GRD_PPRZ'
      Origin = '"CAD_PRO_GRD"."GRD_PPRZ"'
      DisplayFormat = ',##,0.00'
    end
    object EdicaoGRD_PPRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'GRD_PPRO'
      Origin = '"CAD_PRO_GRD"."GRD_PPRO"'
      DisplayFormat = ',##,0.00'
    end
    object EdicaoGRD_VPRC: TFloatField
      DisplayLabel = 'Varejo'
      FieldName = 'GRD_VPRC'
      Origin = '"CAD_PRO_GRD"."GRD_VPRC"'
    end
    object EdicaoGRD_RPRC: TFloatField
      DisplayLabel = 'Representante'
      FieldName = 'GRD_RPRC'
      Origin = '"CAD_PRO_GRD"."GRD_RPRC"'
    end
    object EdicaoGRD_SPRC: TFloatField
      DisplayLabel = 'Site'
      FieldName = 'GRD_SPRC'
      Origin = '"CAD_PRO_GRD"."GRD_SPRC"'
    end
    object EdicaoGRD_PSBR: TIBBCDField
      FieldName = 'GRD_PSBR'
      Origin = '"CAD_PRO_GRD"."GRD_PSBR"'
      Precision = 18
      Size = 3
    end
    object EdicaoGRD_PSLQ: TIBBCDField
      FieldName = 'GRD_PSLQ'
      Origin = '"CAD_PRO_GRD"."GRD_PSLQ"'
      Precision = 18
      Size = 3
    end
    object EdicaoGRD_IMKP: TSmallintField
      FieldName = 'GRD_IMKP'
      Origin = '"CAD_PRO_GRD"."GRD_IMKP"'
    end
    object EdicaoGRD_DMKP: TIBStringField
      DisplayLabel = 'Market Place'
      FieldName = 'GRD_DMKP'
      Origin = '"CAD_PRO_GRD"."GRD_DMKP"'
      Size = 60
    end
    object EdicaoGRD_IMK2: TSmallintField
      FieldName = 'GRD_IMK2'
      Origin = '"CAD_PRO_GRD"."GRD_IMK2"'
    end
    object EdicaoGRD_DMK2: TIBStringField
      DisplayLabel = 'Market Place'
      FieldName = 'GRD_DMK2'
      Origin = '"CAD_PRO_GRD"."GRD_DMK2"'
      Size = 60
    end
    object EdicaoGRD_IMK3: TSmallintField
      FieldName = 'GRD_IMK3'
      Origin = '"CAD_PRO_GRD"."GRD_IMK3"'
    end
    object EdicaoGRD_DMK3: TIBStringField
      FieldName = 'GRD_DMK3'
      Origin = '"CAD_PRO_GRD"."GRD_DMK3"'
      Size = 60
    end
    object EdicaoGRD_ISCT: TSmallintField
      FieldName = 'GRD_ISCT'
      Origin = '"CAD_PRO_GRD"."GRD_ISCT"'
    end
    object EdicaoGRD_DSCT: TIBStringField
      DisplayLabel = 'Sub Categoria'
      FieldName = 'GRD_DSCT'
      Origin = '"CAD_PRO_GRD"."GRD_DSCT"'
      Size = 60
    end
    object EdicaoGRD_CDST: TSmallintField
      FieldName = 'GRD_CDST'
      Origin = '"CAD_PRO_GRD"."GRD_CDST"'
    end
    object EdicaoGRD_REST: TIBStringField
      FieldName = 'GRD_REST'
      Origin = '"CAD_PRO_GRD"."GRD_REST"'
      Size = 10
    end
    object EdicaoGRD_DEST: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'GRD_DEST'
      Origin = '"CAD_PRO_GRD"."GRD_DEST"'
      Size = 60
    end
    object EdicaoGRD_FOTO: TBlobField
      FieldName = 'GRD_FOTO'
      Origin = '"CAD_PRO_GRD"."GRD_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object EdicaoIDIMG: TIntegerField
      FieldName = 'IDIMG'
      Origin = '"CAD_PRO_GRD"."IDIMG"'
    end
    object EdicaoFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"CAD_PRO_GRD"."FLAG"'
    end
    object EdicaoC_ID: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DSTEdicao: TDataSource
    DataSet = Edicao
    OnStateChange = DSTEdicaoStateChange
    OnDataChange = DSTEdicaoDataChange
    Left = 464
    Top = 528
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 176
    Top = 496
  end
  object SQLSConsulta: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 464
    Top = 496
  end
  object SQLSEdicao: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 496
    Top = 496
  end
  object SQLPKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 144
    Top = 496
  end
end
