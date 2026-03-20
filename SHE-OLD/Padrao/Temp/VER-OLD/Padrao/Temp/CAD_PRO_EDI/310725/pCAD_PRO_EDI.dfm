inherited FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI
  Left = 1040
  Top = 111
  ActiveControl = EDArtigo
  AlphaBlendValue = 0
  ClientHeight = 736
  ClientWidth = 884
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 884
    Height = 671
    inherited PaintBox: TPaintBox
      Width = 884
      Height = 191
      Visible = False
    end
    object PNLPrincipal: TPanel
      Left = 0
      Top = 191
      Width = 884
      Height = 480
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object PCPrincipal: TdxPageControl
        Left = 0
        Top = 0
        Width = 884
        Height = 480
        ActivePage = TSMedidas
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
          object pcgrd: TdxPageControl
            Left = 40
            Top = 0
            Width = 844
            Height = 456
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
          end
          object DBGGrade: TdxDBGrid
            Left = 40
            Top = 0
            Width = 844
            Height = 456
            Bands = <
              item
                Caption = 'SKU'
                Fixed = bfLeft
              end
              item
                Caption = 'Cores'
              end
              item
                Caption = 'Variantes'
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
            TabOrder = 1
            OnKeyDown = DBGGradeKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandColor = 14065456
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clWhite
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DTSCAD_PRO_GRD
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
            OnCustomDrawCell = DBGGradeCustomDrawCell
            object DBGGradeSKU: TdxDBGridMaskColumn
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
              FieldName = 'SKU'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGGradeCDST: TdxDBGridMaskColumn
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
              FieldName = 'CDST'
            end
            object DBGGradeREST: TdxDBGridMaskColumn
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
              FieldName = 'REST'
            end
            object DBGGradeDEST: TdxDBGridPickColumn
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
              OnValidate = DBGGradeDESTValidate
              FieldName = 'DEST'
            end
            object DBGGradeCOR_NO: TdxDBGridPickColumn
              MinWidth = 150
              Width = 150
              BandIndex = 1
              RowIndex = 0
              OnValidate = DBGGradeCOR_NOValidate
              FieldName = 'COR_NO'
            end
            object DBGGradeCOR_ESCALA: TdxDBGridPickColumn
              MinWidth = 100
              Width = 100
              BandIndex = 1
              RowIndex = 0
              FieldName = 'COR_ESCALA'
            end
            object DBGGradeVAR_NO: TdxDBGridMaskColumn
              MinWidth = 150
              Width = 150
              BandIndex = 2
              RowIndex = 0
              FieldName = 'VAR_NO'
            end
            object DBGGradeVAR_CD: TdxDBGridMaskColumn
              MinWidth = 50
              Width = 50
              BandIndex = 2
              RowIndex = 0
              FieldName = 'VAR_CD'
            end
            object DBGGradeVAR_RF: TdxDBGridMaskColumn
              MinWidth = 80
              Width = 80
              BandIndex = 2
              RowIndex = 0
              FieldName = 'VAR_RF'
            end
            object DBGGradeCF_SKU: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 3
              RowIndex = 0
              FieldName = 'CF_SKU'
            end
            object DBGGradeCF_CEAN: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 3
              RowIndex = 0
              FieldName = 'CF_CEAN'
            end
            object DBGGradeSCT_ID: TdxDBGridMaskColumn
              Visible = False
              Width = 100
              BandIndex = 4
              RowIndex = 0
              FieldName = 'SCT_ID'
            end
            object DBGGradeSCT_NO: TdxDBGridPickColumn
              Width = 300
              BandIndex = 4
              RowIndex = 0
              OnValidate = DBGGradeSCT_NOValidate
              FieldName = 'SCT_NO'
            end
            object DBGGradeVPRC_PAD: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 61
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VPRC_PAD'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'VPRC_PAD'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGGradeVPRC_PRZ: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VPRC_PRZ'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'VPRC_PRZ'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGGradeVPRC_PRO: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 62
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VPRC_PRO'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'GRD_PPRO'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGGradeDTCP: TdxDBGridMaskColumn
              Width = 300
              BandIndex = 6
              RowIndex = 0
              OnValidate = DBGGradeDTCPValidate
              FieldName = 'DTCP'
            end
          end
          object SBGrade: TSpeedBar
            Left = 0
            Top = 0
            Width = 40
            Height = 456
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
            BtnWidth = 32
            BtnHeight = 32
            Images = ILEdicao
            BevelOuter = bvNone
            TabOrder = 2
            InternalVer = 1
            object SSGrade: TSpeedbarSection
              Caption = 'Grade'
            end
            object tecI: TSpeedItem
              Caption = 'Incluir'
              Hint = '[Ins] - Inclui'
              ImageIndex = 0
              Spacing = 1
              Left = 5
              Top = 5
              Visible = True
              OnClick = tecIClick
              SectionName = 'Grade'
            end
            object tecA: TSpeedItem
              Tag = 1
              Caption = 'Alterar'
              Hint = '[Enter] - Altera'
              ImageIndex = 1
              Spacing = 1
              Left = 5
              Top = 37
              Visible = True
              OnClick = tecAClick
              SectionName = 'Grade'
            end
            object tecE: TSpeedItem
              Tag = 1
              Caption = 'Excluir'
              Hint = '[Del] - Exclui'
              ImageIndex = 2
              Spacing = 1
              Left = 5
              Top = 69
              Visible = True
              OnClick = tecEClick
              SectionName = 'Grade'
            end
            object tecS: TSpeedItem
              Tag = 2
              Caption = 'Salvar'
              Enabled = False
              Hint = '[Ctrl+S] - Salva'
              ImageIndex = 3
              Spacing = 1
              Left = 5
              Top = 101
              Visible = True
              OnClick = tecSClick
              SectionName = 'Grade'
            end
            object tecC: TSpeedItem
              Tag = 2
              Caption = 'Cancelar'
              Enabled = False
              Hint = '[Esc] - Cancela'
              ImageIndex = 4
              Spacing = 1
              Left = 5
              Top = 133
              Visible = True
              OnClick = tecCClick
              SectionName = 'Grade'
            end
          end
        end
        object TSMedidas: TdxTabSheet
          Caption = 'Medidas'
          OnShow = TSMedidasShow
          object PNLMEDBOT: TPanel
            Left = 0
            Top = 125
            Width = 884
            Height = 175
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object GBMEDPRI: TGroupBox
              Left = 0
              Top = 0
              Width = 442
              Height = 175
              Align = alLeft
              Caption = '  Medidas Principais  '
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
                Width = 438
                Height = 154
                Align = alClient
                Style = bsRaised
              end
              object LAMGRAMA: TLabel
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
              object LAMMetro: TLabel
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
              object LAMPeso: TLabel
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
              object LAEspessura: TLabel
                Left = 5
                Top = 149
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
              object LAUPSCN: TLabel
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
              object PEMGRAMA_NO: TdxPickEdit
                Left = 140
                Top = 96
                Width = 295
                Hint = 'Dimens'#245'es'
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
                Items.Strings = (
                  ''
                  'Toler'#226'ncia +/- 5% (NBR 10591)')
              end
              object CEMPeso: TdxCurrencyEdit
                Left = 82
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnValidate = CEMPesoValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEUPSCN: TdxCurrencyEdit
                Left = 82
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
                StoredValues = 65
              end
              object CEMGRAMA: TdxCurrencyEdit
                Left = 82
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
                OnValidate = CEMGRAMAValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMMetro: TdxCurrencyEdit
                Left = 82
                Top = 72
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnValidate = CEMMetroValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMREND: TdxCurrencyEdit
                Left = 82
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
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEMRENDValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object IEMESP_NO: TdxImageEdit
                Tag = 1
                Left = 140
                Top = 144
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
                TabOrder = 6
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
              object CEMESP: TdxCurrencyEdit
                Left = 82
                Top = 144
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
            end
            object GBMEDOUT: TGroupBox
              Left = 442
              Top = 0
              Width = 442
              Height = 175
              Align = alClient
              Caption = '  Outras Medidas  '
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
                Width = 438
                Height = 154
                Align = alClient
                Style = bsRaised
              end
              object LAMLGRT: TLabel
                Left = 5
                Top = 53
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
              object LAMLGRU: TLabel
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
              object LAMELAC: TLabel
                Left = 5
                Top = 101
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
              object LAMELAL: TLabel
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
              object LAMENCL: TLabel
                Left = 5
                Top = 125
                Width = 71
                Height = 14
                Caption = 'Enco. Lateral'
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
              object LAMENCC: TLabel
                Left = 5
                Top = 149
                Width = 108
                Height = 14
                Caption = 'Enco. Comprimento'
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
              object PEMENC_NO: TdxPickEdit
                Left = 176
                Top = 144
                Width = 260
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
              object CEMLGRU: TdxCurrencyEdit
                Left = 117
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
              object CEMLGRT: TdxCurrencyEdit
                Left = 117
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
                OnValidate = CEMGRAMAValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMENCL: TdxCurrencyEdit
                Left = 117
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
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMENCC: TdxCurrencyEdit
                Left = 117
                Top = 144
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
              object CEMELAL: TdxCurrencyEdit
                Left = 117
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
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMELAC: TdxCurrencyEdit
                Left = 117
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
            Height = 125
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object GBMEDVEN: TGroupBox
              Left = 0
              Top = 0
              Width = 442
              Height = 125
              Align = alLeft
              Caption = '  Loja F'#237'sica'
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
                Width = 438
                Height = 104
                Align = alClient
                Style = bsRaised
              end
              object LAUCOM: TLabel
                Left = 5
                Top = 26
                Width = 49
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Unidade'
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
              object LAUESP: TLabel
                Left = 5
                Top = 50
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
                Top = 74
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
                Top = 98
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
              object LAUCDBE: TLabel
                Left = 265
                Top = 26
                Width = 50
                Height = 14
                Hint = 'Tipo de Controle de Estoque'
                Caption = 'Estoque'
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
              object LAUQTDE: TLabel
                Left = 265
                Top = 50
                Width = 37
                Height = 14
                Hint = 'Quantidade em metros de uma pe'#231'a'
                Caption = 'Padr'#227'o'
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
                Left = 265
                Top = 74
                Width = 46
                Height = 14
                Hint = 'Quantidade m'#250'ltiplas de venda'
                Caption = 'M'#250'ltiplos'
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
                Left = 265
                Top = 98
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
              object IEUCOM: TdxImageEdit
                Tag = 1
                Left = 65
                Top = 21
                Width = 180
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
                Top = 45
                Width = 130
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
                Left = 65
                Top = 45
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
                Left = 65
                Top = 93
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
              object EDUCON: TdxEdit
                Left = 65
                Top = 69
                Width = 180
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
                OnChange = EDUCONChange
                OnValidate = EDUCONValidate
                StoredValues = 3
              end
              object IEUCDBE: TdxImageEdit
                Tag = 1
                Left = 325
                Top = 21
                Width = 110
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
                TabOrder = 5
                Text = 'QT'
                Alignment = taLeftJustify
                Descriptions.Strings = (
                  'Quantidades'
                  'Pe'#231'as Fixas'
                  'Pe'#231'as Corte')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  'QT'
                  'PF'
                  'PI')
                StoredValues = 1
              end
              object CEUQTDE: TdxCurrencyEdit
                Left = 325
                Top = 45
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
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEUQTDEValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_VEN_MUL: TdxCurrencyEdit
                Left = 325
                Top = 69
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
                TabOrder = 7
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_EST_MIN: TdxCurrencyEdit
                Left = 325
                Top = 93
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
                TabOrder = 8
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
            object GBMEDEST: TGroupBox
              Left = 442
              Top = 0
              Width = 442
              Height = 125
              Align = alClient
              Caption = '  Loja Virtual  '
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
                Width = 438
                Height = 104
                Align = alClient
                Style = bsRaised
              end
              object Label4: TLabel
                Left = 5
                Top = 26
                Width = 49
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Unidade'
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
                Left = 5
                Top = 50
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
              object Label8: TLabel
                Left = 5
                Top = 74
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
              object Label9: TLabel
                Left = 5
                Top = 98
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
              object Label10: TLabel
                Left = 265
                Top = 26
                Width = 50
                Height = 14
                Hint = 'Tipo de Controle de Estoque'
                Caption = 'Estoque'
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
              object Label11: TLabel
                Left = 265
                Top = 50
                Width = 37
                Height = 14
                Hint = 'Quantidade em metros de uma pe'#231'a'
                Caption = 'Padr'#227'o'
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
              object Label13: TLabel
                Left = 265
                Top = 74
                Width = 46
                Height = 14
                Hint = 'Quantidade m'#250'ltiplas de venda'
                Caption = 'M'#250'ltiplos'
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
              object Label14: TLabel
                Left = 265
                Top = 98
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
              object CELJV_UQTDE_EST_MIN: TdxCurrencyEdit
                Left = 325
                Top = 93
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
                TabOrder = 8
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object IELJV_UCDBE: TdxImageEdit
                Tag = 1
                Left = 325
                Top = 21
                Width = 110
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
                TabOrder = 5
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
              object CELJV_UQTDE: TdxCurrencyEdit
                Left = 325
                Top = 45
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
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CELJV_UQTDE_VEN_MUL: TdxCurrencyEdit
                Left = 325
                Top = 69
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
                TabOrder = 7
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object IELJV_UCOM: TdxImageEdit
                Tag = 1
                Left = 65
                Top = 21
                Width = 180
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
                TabOrder = 0
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
              object CELJV_UQVOL: TdxCurrencyEdit
                Left = 65
                Top = 45
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
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object EDLJV_UESP: TdxMaskEdit
                Left = 115
                Top = 45
                Width = 130
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
                TabOrder = 2
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                StoredValues = 7
              end
              object EDLJV_UCON: TdxMaskEdit
                Left = 65
                Top = 69
                Width = 180
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
                TabOrder = 3
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                StoredValues = 7
              end
              object CELJV_UQTDE_VEN_MIN: TdxCurrencyEdit
                Left = 65
                Top = 93
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
                TabOrder = 4
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
            Height = 80
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object GBORIG: TGroupBox
              Left = 442
              Top = 0
              Width = 442
              Height = 80
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
                Width = 438
                Height = 59
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
                Left = 53
                Top = 24
                Width = 383
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
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
              object IECPAIS: TdxImageEdit
                Tag = 1
                Left = 53
                Top = 48
                Width = 383
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
              Width = 442
              Height = 80
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
                Width = 438
                Height = 59
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
                Width = 15
                Height = 14
                Cursor = crHandPoint
                Hint = 'Percentual de al'#237'quota de IPI'
                Caption = 'IPI'
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
                Left = 185
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
                Left = 185
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
                OnChange = CEPIPIChange
                OnValidate = CEPIPIValidate
                DisplayFormat = '0.00%'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object PENCM: TdxPickEdit
                Left = 45
                Top = 24
                Width = 100
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
                OnExit = PENCMExit
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 8
                StoredValues = 2
              end
              object PECEST: TdxPickEdit
                Left = 227
                Top = 24
                Width = 100
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
                OnExit = PENCMExit
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 7
                StoredValues = 2
              end
              object PEEXTIPI: TdxPickEdit
                Left = 227
                Top = 48
                Width = 50
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
                OnExit = PENCMExit
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 3
                StoredValues = 2
              end
            end
          end
          object GBINFADCLA: TGroupBox
            Left = 0
            Top = 380
            Width = 884
            Height = 76
            Align = alClient
            Caption = '  Classifica'#231#245'es Diversas  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 3
            object BINFADCLA: TBevel
              Left = 2
              Top = 19
              Width = 880
              Height = 55
              Align = alClient
              Style = bsRaised
            end
            object LADNS_NO: TLabel
              Left = 8
              Top = 29
              Width = 56
              Height = 14
              Caption = 'Densidade'
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
            object LATFI_NO: TLabel
              Left = 8
              Top = 53
              Width = 50
              Height = 14
              Caption = 'T'#237'tulo Fio'
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
            object LAACB_NO: TLabel
              Left = 443
              Top = 29
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
            object PEDNS_NO: TdxPickEdit
              Tag = 1
              Left = 70
              Top = 24
              Width = 360
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
            object PETFI_NO: TdxPickEdit
              Tag = 1
              Left = 70
              Top = 48
              Width = 360
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
              CharCase = ecUpperCase
            end
            object IEACB_NO: TdxImageEdit
              Left = 518
              Top = 24
              Width = 360
              Color = clWhite
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 2
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
          end
        end
        object TSPrecos: TdxTabSheet
          Caption = 'Pre'#231'os'
          OnShow = TSPrecosShow
          object PCTAB_PRC: TdxPageControl
            Left = 0
            Top = 0
            Width = 884
            Height = 456
            ActivePage = TSPRC_COM
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
                Height = 430
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_PAD: TLabel
                Tag = 1
                Left = 5
                Top = 21
                Width = 71
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista'
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
              object LAVPRC_PRO: TLabel
                Tag = 1
                Left = 5
                Top = 69
                Width = 54
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o'
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
              object LAVPRC_DSC: TLabel
                Tag = 1
                Left = 230
                Top = 21
                Width = 93
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto Padr'#227'o'
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
              object LAVPRC_MKP: TLabel
                Tag = 1
                Left = 230
                Top = 45
                Width = 52
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Reajustes'
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
              object LAVPRC_PRZ: TLabel
                Tag = 1
                Left = 5
                Top = 45
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Prazo'
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
                Left = 90
                Top = 16
                Width = 90
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
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
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PADValidate
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_PRZ: TdxCurrencyEdit
                Left = 90
                Top = 40
                Width = 90
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
                OnValidate = CEVPRC_PRZValidate
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_PRO: TdxCurrencyEdit
                Left = 90
                Top = 64
                Width = 90
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
                OnValidate = CEVPRC_PROValidate
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_DSC: TdxCurrencyEdit
                Left = 340
                Top = 16
                Width = 65
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
                DisplayFormat = '0.00 %'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_MKP: TdxCurrencyEdit
                Left = 340
                Top = 40
                Width = 65
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
                DisplayFormat = '0.00 %'
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
                Height = 430
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAATJ_VPRC_DSC: TLabel
                Tag = 1
                Left = 230
                Top = 21
                Width = 93
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto Padr'#227'o'
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
              object LAATJ_VPRC_PAD: TLabel
                Tag = 1
                Left = 5
                Top = 21
                Width = 71
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista'
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
              object LAATJ_VPRC_PRZ: TLabel
                Tag = 1
                Left = 5
                Top = 45
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Prazo'
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
              object LAATJ_VPRC_PRO: TLabel
                Tag = 1
                Left = 5
                Top = 69
                Width = 54
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o'
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
              object LAATJ_VPRC_MKP: TLabel
                Tag = 1
                Left = 230
                Top = 45
                Width = 39
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Markup'
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
              object CEATJ_VPRC_PAD: TdxCurrencyEdit
                Left = 90
                Top = 16
                Width = 90
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEATJ_VPRC_PRZ: TdxCurrencyEdit
                Left = 90
                Top = 40
                Width = 90
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
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEATJ_VPRC_PRO: TdxCurrencyEdit
                Left = 90
                Top = 64
                Width = 90
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
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEATJ_VPRC_DSC: TdxCurrencyEdit
                Left = 340
                Top = 16
                Width = 65
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
                DisplayFormat = '0.00 %'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEATJ_VPRC_MKP: TdxCurrencyEdit
                Left = 340
                Top = 40
                Width = 65
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
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                OnValidate = CELJV_VPRC_MKPValidate
                DisplayFormat = '0.00 %'
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
                Height = 430
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LALJV_VPRC_PAD: TLabel
                Tag = 1
                Left = 5
                Top = 21
                Width = 71
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista'
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
              object LALJV_VPRC_MKP: TLabel
                Tag = 1
                Left = 230
                Top = 45
                Width = 39
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Markup'
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
              object LALJV_VPRC_PRZ: TLabel
                Tag = 1
                Left = 5
                Top = 45
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Prazo'
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
              object LALJV_VPRC_PRO: TLabel
                Tag = 1
                Left = 5
                Top = 69
                Width = 54
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o'
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
              object LALJV_VPRC_DSC: TLabel
                Tag = 1
                Left = 230
                Top = 21
                Width = 93
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto Padr'#227'o'
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
              object CELJV_VPRC_MKP: TdxCurrencyEdit
                Left = 340
                Top = 40
                Width = 65
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
                OnValidate = CELJV_VPRC_MKPValidate
                DisplayFormat = '0.00 %'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CELJV_VPRC_PAD: TdxCurrencyEdit
                Left = 90
                Top = 16
                Width = 90
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CELJV_VPRC_PRZ: TdxCurrencyEdit
                Left = 90
                Top = 40
                Width = 90
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
                OnValidate = CEVPRC_PRZValidate
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CELJV_VPRC_PRO: TdxCurrencyEdit
                Left = 90
                Top = 64
                Width = 90
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
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PROValidate
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CELJV_VPRC_DSC: TdxCurrencyEdit
                Left = 340
                Top = 16
                Width = 65
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
                DisplayFormat = '0.00 %'
                UseThousandSeparator = True
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
                Height = 430
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVAR_VPRC_PAD: TLabel
                Tag = 1
                Left = 5
                Top = 21
                Width = 71
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista'
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
              object LAVAR_VPRC_PRZ: TLabel
                Tag = 1
                Left = 5
                Top = 45
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Prazo'
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
              object LAVAR_VPRC_PRO: TLabel
                Tag = 1
                Left = 5
                Top = 69
                Width = 54
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o'
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
              object LAVAR_VPRC_DSC: TLabel
                Tag = 1
                Left = 230
                Top = 21
                Width = 93
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto Padr'#227'o'
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
              object LAVAR_VPRC_MKP: TLabel
                Tag = 1
                Left = 230
                Top = 45
                Width = 39
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Markup'
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
              object CEVAR_VPRC_PAD: TdxCurrencyEdit
                Left = 90
                Top = 16
                Width = 90
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVAR_VPRC_PRZ: TdxCurrencyEdit
                Left = 90
                Top = 40
                Width = 90
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
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVAR_VPRC_PRO: TdxCurrencyEdit
                Left = 90
                Top = 64
                Width = 90
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
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVAR_VPRC_DSC: TdxCurrencyEdit
                Left = 340
                Top = 16
                Width = 65
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
                DisplayFormat = '0.00 %'
                UseThousandSeparator = True
                StoredValues = 97
              end
              object CEVAR_VPRC_MKP: TdxCurrencyEdit
                Left = 340
                Top = 40
                Width = 65
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
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                OnValidate = CELJV_VPRC_MKPValidate
                DisplayFormat = '0.00 %'
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
                Height = 430
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAREP_VPRC_PAD: TLabel
                Tag = 1
                Left = 5
                Top = 21
                Width = 71
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista'
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
              object LAREP_VPRC_PRZ: TLabel
                Tag = 1
                Left = 5
                Top = 45
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Prazo'
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
              object LAREP_VPRC_PRO: TLabel
                Tag = 1
                Left = 5
                Top = 69
                Width = 54
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o'
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
              object LAREP_VPRC_DSC: TLabel
                Tag = 1
                Left = 230
                Top = 21
                Width = 93
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto Padr'#227'o'
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
              object LAREP_VPRC_MKP: TLabel
                Tag = 1
                Left = 230
                Top = 45
                Width = 39
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Markup'
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
              object CEREP_VPRC_PAD: TdxCurrencyEdit
                Left = 90
                Top = 16
                Width = 90
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEREP_VPRC_PRZ: TdxCurrencyEdit
                Left = 90
                Top = 40
                Width = 90
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
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEREP_VPRC_PRO: TdxCurrencyEdit
                Left = 90
                Top = 64
                Width = 90
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
                DisplayFormat = 'R$ 0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEREP_VPRC_DSC: TdxCurrencyEdit
                Left = 340
                Top = 16
                Width = 65
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
                DisplayFormat = '0.00 %'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEREP_VPRC_MKP: TdxCurrencyEdit
                Left = 340
                Top = 40
                Width = 65
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
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                OnValidate = CELJV_VPRC_MKPValidate
                DisplayFormat = '0.00 %'
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
                Height = 430
                Align = alClient
              end
              object LACF_VPRC_ORI: TLabel
                Tag = 1
                Left = 5
                Top = 45
                Width = 36
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Moeda'
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
              object LACF_VPRC_PAD: TLabel
                Tag = 1
                Left = 5
                Top = 21
                Width = 71
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista'
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
              object IECF_VPRC_ORI: TdxImageEdit
                Left = 90
                Top = 40
                Width = 90
                Color = clHighlightText
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 1
                DropDownRows = 10
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '0')
              end
              object CECF_VPRC_PAD: TdxCurrencyEdit
                Left = 90
                Top = 16
                Width = 90
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
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
          end
        end
        object TSComposicoes: TdxTabSheet
          Caption = 'Composi'#231#245'es'
          object SBCMP: TSpeedBar
            Left = 0
            Top = 0
            Width = 42
            Height = 456
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
            BtnWidth = 32
            BtnHeight = 32
            Images = ILEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection1: TSpeedbarSection
              Caption = 'Movimento'
            end
            object SpeedbarSection2: TSpeedbarSection
              Caption = 'Edicao'
            end
            object SpeedbarSection3: TSpeedbarSection
              Caption = 'Confirmacao'
            end
            object SpeedbarSection4: TSpeedbarSection
              Caption = 'Utilitarios'
            end
            object SICMP_INS: TSpeedItem
              Caption = 'Incluir'
              Hint = '[Ins] - Inclui'
              ImageIndex = 0
              Spacing = 1
              Left = 5
              Top = 5
              Visible = True
              OnClick = SICMP_INSClick
              SectionName = 'Movimento'
            end
            object SICMP_ALT: TSpeedItem
              Tag = 1
              Caption = 'Alterar'
              Hint = '[Enter] - Altera'
              ImageIndex = 1
              Spacing = 1
              Left = 5
              Top = 37
              Visible = True
              OnClick = SICMP_ALTClick
              SectionName = 'Movimento'
            end
            object SICMP_DEL: TSpeedItem
              Tag = 1
              Caption = 'Excluir'
              Hint = '[Del] - Exclui'
              ImageIndex = 2
              Spacing = 1
              Left = 5
              Top = 69
              Visible = True
              OnClick = SICMP_DELClick
              SectionName = 'Movimento'
            end
            object SICMP_SAV: TSpeedItem
              Tag = 2
              Caption = 'Salvar'
              Enabled = False
              Hint = '[Ctrl+S] - Salva'
              ImageIndex = 3
              Spacing = 1
              Left = 5
              Top = 101
              Visible = True
              OnClick = SICMP_SAVClick
              SectionName = 'Movimento'
            end
            object SICMP_CAN: TSpeedItem
              Tag = 2
              Caption = 'Cancelar'
              Enabled = False
              Hint = '[Esc] - Cancela'
              ImageIndex = 4
              Spacing = 1
              Left = 5
              Top = 133
              Visible = True
              OnClick = SICMP_CANClick
              SectionName = 'Movimento'
            end
          end
          object DBGCMP: TdxDBGrid
            Left = 42
            Top = 0
            Width = 842
            Height = 456
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
            OnKeyDown = DBGCMPKeyDown
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
            object DBGCMPDESCRICAO: TdxDBGridPickColumn
              Width = 250
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DESCRICAO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGCMPREFERENCIA: TdxDBGridPickColumn
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'REFERENCIA'
            end
            object DBGCMPQTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTDE'
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
            Height = 456
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            OnClick = ILA_BMP1Click
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
            Left = 325
            Top = 0
            Width = 559
            Height = 456
            Align = alClient
          end
          object BIMG_ART: TBevel
            Left = 0
            Top = 0
            Width = 325
            Height = 456
            Cursor = crHandPoint
            Align = alLeft
            Style = bsRaised
          end
          object IMG_ART: TImage
            Left = 5
            Top = 5
            Width = 314
            Height = 445
            Cursor = crHandPoint
            Stretch = True
            OnDblClick = IMG_ARTDblClick
          end
          object SBIMG_ART: TSpeedButton
            Left = 297
            Top = 428
            Width = 20
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
            OnClick = SBIMG_ARTClick
          end
        end
        object TSIMG_SKU: TdxTabSheet
          Caption = 'Imagens dos Produtos'
          object BIMG_SKU: TBevel
            Left = 0
            Top = 0
            Width = 325
            Height = 456
            Cursor = crHandPoint
            Align = alLeft
            Style = bsRaised
          end
          object IMG_SKU: TImage
            Left = 5
            Top = 5
            Width = 314
            Height = 445
            Cursor = crHandPoint
            Stretch = True
            OnDblClick = IMG_ARTDblClick
          end
          object SBIMG_SKU: TSpeedButton
            Left = 297
            Top = 428
            Width = 20
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
            OnClick = SBIMG_ARTClick
          end
          object DBGIMG_SKU: TdxDBGrid
            Left = 325
            Top = 0
            Width = 559
            Height = 456
            Bands = <
              item
                Caption = 'SKU'
                MinWidth = 120
                Width = 120
              end
              item
                Caption = 'Grade'
                Width = 554
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
            DataSource = DTSCAD_PRO_GRD
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
            object DBGIMG_SKUSKU: TdxDBGridMaskColumn
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SKU'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGIMG_SKUGRD_NO: TdxDBGridMaskColumn
              Width = 400
              BandIndex = 1
              RowIndex = 0
              FieldName = 'GRD_NO'
            end
          end
        end
        object TSMarketingPlace: TdxTabSheet
          Caption = 'Market Place'
          object BMKP: TBevel
            Left = 0
            Top = 177
            Width = 884
            Height = 279
            Align = alClient
          end
          object GBMKP1: TGroupBox
            Left = 0
            Top = 0
            Width = 884
            Height = 177
            Align = alTop
            Caption = '  Principais Market Places  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object LAMKP_MLV_ID: TLabel
              Left = 32
              Top = 29
              Width = 91
              Height = 14
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
            object LAMKP_SHP_ID: TLabel
              Left = 32
              Top = 104
              Width = 58
              Height = 14
              Caption = '4) Shopee'
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
            object LAMKP_AMZ_ID: TLabel
              Left = 32
              Top = 128
              Width = 59
              Height = 14
              Caption = '5) Amazon'
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
            object LAMKP_MPG_ID: TLabel
              Left = 32
              Top = 53
              Width = 93
              Height = 14
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
            object LAMKP_MSP_ID: TLabel
              Left = 32
              Top = 77
              Width = 94
              Height = 14
              Caption = '3) Mercado Shop'
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
            object IEMKP_MLV_ID: TdxImageEdit
              Left = 144
              Top = 24
              Width = 200
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
              Text = '0'
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_SHP_ID: TdxImageEdit
              Left = 144
              Top = 96
              Width = 200
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
              Text = '0'
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_AMZ_ID: TdxImageEdit
              Left = 144
              Top = 120
              Width = 200
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
              Text = '0'
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_MPG_ID: TdxImageEdit
              Left = 144
              Top = 48
              Width = 200
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
              Text = '0'
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_MSP_ID: TdxImageEdit
              Left = 144
              Top = 72
              Width = 200
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
              Text = '0'
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
          object GroupBox2: TGroupBox
            Left = 0
            Top = 183
            Width = 400
            Height = 106
            Caption = '  Agregadores  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object LAMKP_BLG_ID: TLabel
              Left = 32
              Top = 29
              Width = 41
              Height = 14
              Caption = '1) Bling'
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
            object LAMKP_TRY_ID: TLabel
              Left = 32
              Top = 53
              Width = 40
              Height = 14
              Caption = '2) Tray'
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
            object IEMKP_BLG_ID: TdxImageEdit
              Left = 144
              Top = 24
              Width = 200
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
              Text = '0'
              AutoSize = False
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
              Height = 24
            end
            object IEMKP_TRY_ID: TdxImageEdit
              Left = 144
              Top = 48
              Width = 200
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
              Text = '0'
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
        object TSINFADCPL: TdxTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          object PCINFADTEC: TdxPageControl
            Left = 0
            Top = 228
            Width = 884
            Height = 228
            ActivePage = TSINFADTEC
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            HideButtons = False
            HotTrack = False
            MultiLine = True
            OwnerDraw = False
            ParentFont = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 1
            TabPosition = dxtpLeft
            TabWidth = 0
            object TSINFADTEC: TdxTabSheet
              Caption = '  Documentos Fiscais  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              object EMINFADTEC: TdxMemo
                Left = 0
                Top = 0
                Width = 855
                Align = alClient
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Symbol'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 228
              end
            end
          end
          object PCINFADCAD: TdxPageControl
            Left = 0
            Top = 0
            Width = 884
            Height = 228
            ActivePage = TSINFADCAD
            Align = alTop
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            HideButtons = False
            HotTrack = False
            MultiLine = True
            OwnerDraw = False
            ParentFont = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpLeft
            TabWidth = 0
            object TSINFADCAD: TdxTabSheet
              Caption = '  Ficha T'#233'cnica  '
              object EMINFADCAD: TdxMemo
                Left = 0
                Top = 0
                Width = 855
                Align = alClient
                Color = 16644596
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Symbol'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 228
              end
            end
          end
        end
      end
    end
    object PNLEDI_CAD: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 191
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GBCadastro: TGroupBox
        Left = 0
        Top = 0
        Width = 884
        Height = 185
        Align = alTop
        Caption = '  Cadastro  '
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
          Hint = 'Referencia'
          Caption = 'Artigo'
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
          Transparent = True
        end
        object LAIDCOL: TLabel
          Left = 300
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
          Transparent = True
        end
        object LACDCF: TLabel
          Left = 300
          Top = 90
          Width = 63
          Height = 14
          Caption = 'Ref. Fornec'
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
          Left = 300
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
          Transparent = True
        end
        object LAIDSCT: TLabel
          Left = 300
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
          Transparent = True
        end
        object EDCDCF: TdxMaskEdit
          Left = 380
          Top = 85
          Width = 225
          Hint = 'C'#243'digo SKU do fornecedor'
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
          OnExit = EDCDCFExit
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          MaxLength = 20
          StoredValues = 6
        end
        object EDCMP_PAD: TdxEdit
          Tag = 1
          Left = 74
          Top = 38
          Width = 473
          Hint = 'Composi'#231#227'o'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
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
          OnExit = EDDescricaoExit
          CharCase = ecUpperCase
          MaxLength = 120
          StoredValues = 2
        end
        object IEGRP_ID: TdxImageEdit
          Left = 70
          Top = 133
          Width = 225
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
          Width = 271
          Height = 79
          Caption = '  CEAN-13  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 13
          object EDCEAN: TACBrBarCode
            Left = 74
            Top = 19
            Width = 190
            Height = 31
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
          end
          object Label12: TLabel
            Left = 5
            Top = 27
            Width = 46
            Height = 14
            Caption = 'Empresa'
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
          object Label32: TLabel
            Left = 5
            Top = 57
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
            Transparent = True
          end
          object EDCEANCF: TdxEdit
            Tag = 1
            Left = 71
            Top = 52
            Width = 195
            Hint = 'Referencia'
            Color = clInfoBk
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
            OnExit = EDCEANCFExit
            CharCase = ecUpperCase
            MaxLength = 120
            StoredValues = 2
          end
        end
        object EDArtigo: TdxEdit
          Tag = 1
          Left = 70
          Top = 13
          Width = 100
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
          MaxLength = 120
          OnValidate = EDArtigoValidate
          StoredValues = 2
        end
        object IECAT_ID: TdxImageEdit
          Left = 70
          Top = 157
          Width = 225
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
        object PEDECF: TdxPickEdit
          Left = 70
          Top = 85
          Width = 225
          Cursor = crHandPoint
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBlack
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          OnExit = PEDECFExit
          CharCase = ecUpperCase
          DropDownRows = 20
        end
        object GroupBox1: TGroupBox
          Left = 610
          Top = 89
          Width = 271
          Height = 94
          Caption = '  Classifica'#231#245'es  '
          TabOrder = 12
          object Label18: TLabel
            Left = 5
            Top = 48
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
            Top = 24
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
            Top = 72
            Width = 45
            Height = 14
            Hint = 'Especifica'#231#227'o do tipo de estoque vend'#225'vel'
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
            Left = 59
            Top = 19
            Width = 208
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
            TabOrder = 0
            Text = '0'
            OnExit = IECDSTExit
            OnChange = IECDSTChange
            DropDownRows = 10
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
          object IEFIN_CAD_ID: TdxImageEdit
            Left = 59
            Top = 43
            Width = 208
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
            TabOrder = 1
            DropDownRows = 10
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
          object IEFIN_EST_ID: TdxImageEdit
            Tag = 1
            Left = 59
            Top = 67
            Width = 208
            Cursor = crHandPoint
            Hint = 'Especifica'#231#227'o do tipo de estoque vend'#225'vel'
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
            TabOrder = 2
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
        end
        object IESGP_ID: TdxImageEdit
          Left = 380
          Top = 133
          Width = 225
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
        object IESCT_ID: TdxImageEdit
          Left = 380
          Top = 157
          Width = 225
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
          OnExit = IESCT_IDExit
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object IEIDEP: TdxImageEdit
          Left = 168
          Top = 13
          Width = 225
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
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
        object IESEG_ID: TdxImageEdit
          Left = 70
          Top = 109
          Width = 225
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
        object IECOL_ID: TdxImageEdit
          Left = 380
          Top = 109
          Width = 225
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
          Text = '0'
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
      end
    end
  end
  inherited SBEdicao: TSpeedBar
    Width = 884
    inherited SIRefresh: TSpeedItem
      Visible = False
    end
    inherited SIMAppend: TSpeedItem
      Visible = False
    end
    inherited SIMEdit: TSpeedItem
      Visible = False
    end
    inherited SIMDelete: TSpeedItem
      Visible = False
    end
    inherited SIMPost: TSpeedItem
      Left = 5
    end
    inherited SIMValid: TSpeedItem
      Visible = False
    end
    inherited SIMCancel: TSpeedItem
      Left = 80
    end
    inherited SIMRelatorios: TSpeedItem
      Visible = False
    end
    inherited SISaida: TSpeedItem
      Left = 155
    end
  end
  inherited ALPrincipal: TActionList
    Left = 368
    Top = 40
  end
  inherited TConsulta: TIBTransaction
    Left = 368
    Top = 8
  end
  inherited SQLConsulta: TIBSQL
    Left = 400
    Top = 8
  end
  inherited TEdicao: TIBTransaction
    Left = 432
    Top = 8
  end
  inherited SQLEdicao: TIBSQL
    Left = 464
    Top = 8
  end
  inherited SPEdicao: TIBStoredProc
    Left = 496
    Top = 8
  end
  inherited TEvent: TIBTransaction
    Left = 528
    Top = 8
  end
  inherited SQLEvent: TIBSQL
    Left = 560
    Top = 8
  end
  inherited SPEvent: TIBStoredProc
    Left = 592
    Top = 8
  end
  inherited EEvent: TIBEvents
    Left = 624
    Top = 8
  end
  inherited ILMenu: TImageList
    Left = 240
    Top = 8
  end
  inherited ILEdicao: TImageList
    Left = 240
    Top = 40
  end
  object OPDIMG: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    InitialDir = 'C:\Sheild\Imagens'
    Left = 272
    Top = 8
  end
  object DTSCAD_PRO_CMP: TDataSource
    DataSet = CAD_PRO_CMP
    OnStateChange = DTSCAD_PRO_CMPStateChange
    Left = 816
    Top = 40
  end
  object CAD_PRO_CMP: TIBDataSet
    Tag = 1
    Database = FBird.DBERP
    Transaction = TEdicao
    AfterDelete = CAD_PRO_CMPAfterDelete
    AfterInsert = CAD_PRO_CMPAfterInsert
    AfterPost = CAD_PRO_CMPAfterPost
    BeforeCancel = CAD_PRO_CMPBeforeCancel
    BeforeInsert = CAD_PRO_CMPBeforeInsert
    BeforeOpen = CAD_PRO_CMPBeforeOpen
    OnNewRecord = CAD_PRO_CMPNewRecord
    DeleteSQL.Strings = (
      'delete from SHE_CMP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SHE_CMP'
      '  (CDEV, DESCRICAO, FLAG, ID, IDEV, IDPK, QTDE, REFERENCIA)'
      'values'
      
        '  (:CDEV, :DESCRICAO, :FLAG, :ID, :IDEV, :IDPK, :QTDE, :REFERENC' +
        'IA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEV,'
      '  CDEV,'
      '  IDPK,'
      '  DESCRICAO,'
      '  REFERENCIA,'
      '  QTDE,'
      '  FLAG'
      'from SHE_CMP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEV     ,PK.CDEV,'
      '         PK.IDPK,PK.DESCRICAO,PK.REFERENCIA,PK.QTDE,'
      '         PK.FLAG'
      ''
      'FROM     SHE_CMP AS PK'
      'WHERE    PK.IDEV = 0'
      'AND      PK.CDEV = 2'
      'AND      PK.FLAG = 0'
      'ORDER BY PK.ID')
    ModifySQL.Strings = (
      'update SHE_CMP'
      'set'
      '  CDEV = :CDEV,'
      '  DESCRICAO = :DESCRICAO,'
      '  FLAG = :FLAG,'
      '  ID = :ID,'
      '  IDEV = :IDEV,'
      '  IDPK = :IDPK,'
      '  QTDE = :QTDE,'
      '  REFERENCIA = :REFERENCIA'
      'where'
      '  ID = :OLD_ID')
    Left = 784
    Top = 40
    object CAD_PRO_CMPID: TLargeintField
      FieldName = 'ID'
      Origin = '"SHE_CMP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_CMPIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"SHE_CMP"."IDEV"'
    end
    object CAD_PRO_CMPCDEV: TSmallintField
      FieldName = 'CDEV'
      Origin = '"SHE_CMP"."CDEV"'
    end
    object CAD_PRO_CMPIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"SHE_CMP"."IDPK"'
    end
    object CAD_PRO_CMPDESCRICAO: TIBStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"SHE_CMP"."DESCRICAO"'
      Size = 30
    end
    object CAD_PRO_CMPREFERENCIA: TIBStringField
      DisplayLabel = 'Base'
      FieldName = 'REFERENCIA'
      Origin = '"SHE_CMP"."REFERENCIA"'
      Size = 30
    end
    object CAD_PRO_CMPQTDE: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'QTDE'
      Origin = '"SHE_CMP"."QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_CMPFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"SHE_CMP"."FLAG"'
    end
  end
  object CAD_PRO_GRD: TIBDataSet
    Tag = 1
    Database = FBird.DBERP
    Transaction = TEdicao
    AfterCancel = CAD_PRO_GRDAfterCancel
    AfterDelete = CAD_PRO_GRDAfterDelete
    AfterInsert = CAD_PRO_GRDAfterInsert
    AfterOpen = CAD_PRO_GRDAfterOpen
    AfterPost = CAD_PRO_GRDAfterPost
    BeforeCancel = CAD_PRO_GRDBeforeCancel
    BeforeEdit = CAD_PRO_GRDBeforeInsert
    BeforeInsert = CAD_PRO_GRDBeforeInsert
    BeforePost = CAD_PRO_GRDBeforePost
    OnNewRecord = CAD_PRO_GRDNewRecord
    DeleteSQL.Strings = (
      'delete from SHE_GRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SHE_GRD'
      
        '  (ARTIGO, CDEV, CDST, CEAN, CF_CEAN, CF_SKU, COR_CD, COR_ESCALA' +
        ', COR_ID, '
      
        '   COR_NO, COR_RF, COR_SG, COR_SISTEMA, CP_IDEP, DEST, DTCP, FLA' +
        'G, GRD_ID, '
      
        '   GRD_NO, ID, IDAK, IDCF, IDCP, IDEP, IDEV, IDSK, IMG_SKU, IMG_' +
        'SKU_ID, '
      
        '   MKP_ID, MKP_NO, REST, SCT_ID, SCT_NO, SKU, VAR_CD, VAR_ID, VA' +
        'R_NO, VAR_RF, '
      '   VAR_SG, VPRC_PAD, VPRC_PRO, VPRC_PRZ)'
      'values'
      
        '  (:ARTIGO, :CDEV, :CDST, :CEAN, :CF_CEAN, :CF_SKU, :COR_CD, :CO' +
        'R_ESCALA, '
      
        '   :COR_ID, :COR_NO, :COR_RF, :COR_SG, :COR_SISTEMA, :CP_IDEP, :' +
        'DEST, :DTCP, '
      
        '   :FLAG, :GRD_ID, :GRD_NO, :ID, :IDAK, :IDCF, :IDCP, :IDEP, :ID' +
        'EV, :IDSK, '
      
        '   :IMG_SKU, :IMG_SKU_ID, :MKP_ID, :MKP_NO, :REST, :SCT_ID, :SCT' +
        '_NO, :SKU, '
      
        '   :VAR_CD, :VAR_ID, :VAR_NO, :VAR_RF, :VAR_SG, :VPRC_PAD, :VPRC' +
        '_PRO, :VPRC_PRZ)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  CP_IDEP,'
      '  IDCF,'
      '  IDEV,'
      '  CDEV,'
      '  CDST,'
      '  REST,'
      '  DEST,'
      '  IDCP,'
      '  IDAK,'
      '  IDSK,'
      '  ARTIGO,'
      '  SKU,'
      '  CEAN,'
      '  CF_SKU,'
      '  CF_CEAN,'
      '  DTCP,'
      '  GRD_ID,'
      '  GRD_NO,'
      '  COR_ID,'
      '  COR_CD,'
      '  COR_RF,'
      '  COR_SG,'
      '  COR_NO,'
      '  COR_SISTEMA,'
      '  COR_ESCALA,'
      '  VAR_ID,'
      '  VAR_CD,'
      '  VAR_RF,'
      '  VAR_SG,'
      '  VAR_NO,'
      '  VPRC_PAD,'
      '  VPRC_PRZ,'
      '  VPRC_PRO,'
      '  SCT_ID,'
      '  SCT_NO,'
      '  MKP_ID,'
      '  MKP_NO,'
      '  IMG_SKU_ID,'
      '  IMG_SKU,'
      '  FLAG'
      'from SHE_GRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEP,PK.CP_IDEP,PK.IDCF,'
      '         PK.IDEV,PK.CDEV,'
      '         PK.CDST,PK.REST,PK.DEST,'
      '         PK.IDCP,PK.IDAK,PK.IDSK,'
      '         PK.ARTIGO,PK.SKU,PK.CEAN,PK.CF_SKU,PK.CF_CEAN,PK.DTCP,'
      '         PK.GRD_ID,PK.GRD_NO,'
      
        '         PK.COR_ID,PK.COR_CD,PK.COR_RF,PK.COR_SG,PK.COR_NO,PK.CO' +
        'R_SISTEMA,PK.COR_ESCALA,'
      '         PK.VAR_ID,PK.VAR_CD,PK.VAR_RF,PK.VAR_SG,PK.VAR_NO,'
      '         PK.VPRC_PAD,PK.VPRC_PRZ,PK.VPRC_PRO,'
      '         PK.SCT_ID,PK.SCT_NO,PK.MKP_ID,PK.MKP_NO,'
      '         PK.IMG_SKU_ID,PK.IMG_SKU,'
      '         PK.FLAG'
      'FROM     SHE_GRD AS PK'
      'WHERE    PK.IDEV = 0'
      'AND      PK.CDEV = 1'
      'ORDER BY PK.ID')
    ModifySQL.Strings = (
      'update SHE_GRD'
      'set'
      '  ARTIGO = :ARTIGO,'
      '  CDEV = :CDEV,'
      '  CDST = :CDST,'
      '  CEAN = :CEAN,'
      '  CF_CEAN = :CF_CEAN,'
      '  CF_SKU = :CF_SKU,'
      '  COR_CD = :COR_CD,'
      '  COR_ESCALA = :COR_ESCALA,'
      '  COR_ID = :COR_ID,'
      '  COR_NO = :COR_NO,'
      '  COR_RF = :COR_RF,'
      '  COR_SG = :COR_SG,'
      '  COR_SISTEMA = :COR_SISTEMA,'
      '  CP_IDEP = :CP_IDEP,'
      '  DEST = :DEST,'
      '  DTCP = :DTCP,'
      '  FLAG = :FLAG,'
      '  GRD_ID = :GRD_ID,'
      '  GRD_NO = :GRD_NO,'
      '  ID = :ID,'
      '  IDAK = :IDAK,'
      '  IDCF = :IDCF,'
      '  IDCP = :IDCP,'
      '  IDEP = :IDEP,'
      '  IDEV = :IDEV,'
      '  IDSK = :IDSK,'
      '  IMG_SKU = :IMG_SKU,'
      '  IMG_SKU_ID = :IMG_SKU_ID,'
      '  MKP_ID = :MKP_ID,'
      '  MKP_NO = :MKP_NO,'
      '  REST = :REST,'
      '  SCT_ID = :SCT_ID,'
      '  SCT_NO = :SCT_NO,'
      '  SKU = :SKU,'
      '  VAR_CD = :VAR_CD,'
      '  VAR_ID = :VAR_ID,'
      '  VAR_NO = :VAR_NO,'
      '  VAR_RF = :VAR_RF,'
      '  VAR_SG = :VAR_SG,'
      '  VPRC_PAD = :VPRC_PAD,'
      '  VPRC_PRO = :VPRC_PRO,'
      '  VPRC_PRZ = :VPRC_PRZ'
      'where'
      '  ID = :OLD_ID')
    Left = 784
    Top = 8
    object CAD_PRO_GRDID: TLargeintField
      FieldName = 'ID'
      Origin = '"SHE_GRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_GRDIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"SHE_GRD"."IDEP"'
    end
    object CAD_PRO_GRDCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"SHE_GRD"."CP_IDEP"'
    end
    object CAD_PRO_GRDIDCF: TIntegerField
      FieldName = 'IDCF'
      Origin = '"SHE_GRD"."IDCF"'
    end
    object CAD_PRO_GRDIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"SHE_GRD"."IDEV"'
    end
    object CAD_PRO_GRDCDEV: TSmallintField
      FieldName = 'CDEV'
      Origin = '"SHE_GRD"."CDEV"'
    end
    object CAD_PRO_GRDCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"SHE_GRD"."CDST"'
    end
    object CAD_PRO_GRDREST: TIBStringField
      FieldName = 'REST'
      Origin = '"SHE_GRD"."REST"'
      Size = 10
    end
    object CAD_PRO_GRDDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"SHE_GRD"."DEST"'
      Size = 60
    end
    object CAD_PRO_GRDIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"SHE_GRD"."IDCP"'
    end
    object CAD_PRO_GRDIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"SHE_GRD"."IDAK"'
    end
    object CAD_PRO_GRDIDSK: TLargeintField
      FieldName = 'IDSK'
      Origin = '"SHE_GRD"."IDSK"'
    end
    object CAD_PRO_GRDARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"SHE_GRD"."ARTIGO"'
      Size = 30
    end
    object CAD_PRO_GRDSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"SHE_GRD"."SKU"'
      Size = 30
    end
    object CAD_PRO_GRDCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"SHE_GRD"."CEAN"'
      Size = 44
    end
    object CAD_PRO_GRDCF_SKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'CF_SKU'
      Origin = '"SHE_GRD"."CF_SKU"'
      Size = 30
    end
    object CAD_PRO_GRDCF_CEAN: TIBStringField
      DisplayLabel = 'CEAN-13'
      FieldName = 'CF_CEAN'
      Origin = '"SHE_GRD"."CF_CEAN"'
      Size = 44
    end
    object CAD_PRO_GRDDTCP: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'DTCP'
      Origin = '"SHE_GRD"."DTCP"'
      Size = 120
    end
    object CAD_PRO_GRDGRD_ID: TLargeintField
      FieldName = 'GRD_ID'
      Origin = '"SHE_GRD"."GRD_ID"'
    end
    object CAD_PRO_GRDGRD_NO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRD_NO'
      Origin = '"SHE_GRD"."GRD_NO"'
      Size = 60
    end
    object CAD_PRO_GRDCOR_ID: TSmallintField
      FieldName = 'COR_ID'
      Origin = '"SHE_GRD"."COR_ID"'
    end
    object CAD_PRO_GRDCOR_CD: TIBStringField
      FieldName = 'COR_CD'
      Origin = '"SHE_GRD"."COR_CD"'
      Size = 10
    end
    object CAD_PRO_GRDCOR_RF: TIBStringField
      FieldName = 'COR_RF'
      Origin = '"SHE_GRD"."COR_RF"'
      Size = 10
    end
    object CAD_PRO_GRDCOR_SG: TIBStringField
      FieldName = 'COR_SG'
      Origin = '"SHE_GRD"."COR_SG"'
      Size = 40
    end
    object CAD_PRO_GRDCOR_NO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'COR_NO'
      Origin = '"SHE_GRD"."COR_NO"'
      Size = 60
    end
    object CAD_PRO_GRDCOR_SISTEMA: TIBStringField
      DisplayLabel = 'Sistema'
      FieldName = 'COR_SISTEMA'
      Origin = '"SHE_GRD"."COR_SISTEMA"'
      Size = 10
    end
    object CAD_PRO_GRDCOR_ESCALA: TIBStringField
      DisplayLabel = 'Escala'
      FieldName = 'COR_ESCALA'
      Origin = '"SHE_GRD"."COR_ESCALA"'
      Size = 40
    end
    object CAD_PRO_GRDVAR_ID: TSmallintField
      FieldName = 'VAR_ID'
      Origin = '"SHE_GRD"."VAR_ID"'
    end
    object CAD_PRO_GRDVAR_CD: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VAR_CD'
      Origin = '"SHE_GRD"."VAR_CD"'
      Size = 10
    end
    object CAD_PRO_GRDVAR_RF: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'VAR_RF'
      Origin = '"SHE_GRD"."VAR_RF"'
      Size = 10
    end
    object CAD_PRO_GRDVAR_SG: TIBStringField
      FieldName = 'VAR_SG'
      Origin = '"SHE_GRD"."VAR_SG"'
      Size = 40
    end
    object CAD_PRO_GRDVAR_NO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VAR_NO'
      Origin = '"SHE_GRD"."VAR_NO"'
      Size = 60
    end
    object CAD_PRO_GRDVPRC_PAD: TFloatField
      DisplayLabel = #192' Vista R$'
      FieldName = 'VPRC_PAD'
      Origin = '"SHE_GRD"."VPRC_PAD"'
      DisplayFormat = 'R$ ,##,0.00#'
    end
    object CAD_PRO_GRDVPRC_PRZ: TFloatField
      DisplayLabel = 'Prazo R$'
      FieldName = 'VPRC_PRZ'
      Origin = '"SHE_GRD"."VPRC_PRZ"'
      DisplayFormat = 'R$ ,##,0.00#'
    end
    object CAD_PRO_GRDVPRC_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o R$'
      FieldName = 'VPRC_PRO'
      Origin = '"SHE_GRD"."VPRC_PRO"'
      DisplayFormat = 'R$ ,##,0.00#'
    end
    object CAD_PRO_GRDSCT_ID: TSmallintField
      FieldName = 'SCT_ID'
      Origin = '"SHE_GRD"."SCT_ID"'
    end
    object CAD_PRO_GRDSCT_NO: TIBStringField
      DisplayLabel = 'Sub Categoria'
      FieldName = 'SCT_NO'
      Origin = '"SHE_GRD"."SCT_NO"'
      Size = 60
    end
    object CAD_PRO_GRDMKP_ID: TSmallintField
      FieldName = 'MKP_ID'
      Origin = '"SHE_GRD"."MKP_ID"'
    end
    object CAD_PRO_GRDMKP_NO: TIBStringField
      DisplayLabel = 'Market Place'
      FieldName = 'MKP_NO'
      Origin = '"SHE_GRD"."MKP_NO"'
      Size = 60
    end
    object CAD_PRO_GRDIMG_SKU_ID: TLargeintField
      FieldName = 'IMG_SKU_ID'
      Origin = '"SHE_GRD"."IMG_SKU_ID"'
    end
    object CAD_PRO_GRDIMG_SKU: TBlobField
      FieldName = 'IMG_SKU'
      Origin = '"SHE_GRD"."IMG_SKU"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_GRDFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"SHE_GRD"."FLAG"'
    end
  end
  object DTSCAD_PRO_GRD: TDataSource
    DataSet = CAD_PRO_GRD
    OnStateChange = DTSCAD_PRO_GRDStateChange
    OnDataChange = DTSCAD_PRO_GRDDataChange
    Left = 816
    Top = 8
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 400
    Top = 40
  end
  object Consulta: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 432
    Top = 40
  end
  object IBQuery1: TIBQuery
    Database = FBird.DBSHE_EDI
    Left = 472
    Top = 40
  end
end
