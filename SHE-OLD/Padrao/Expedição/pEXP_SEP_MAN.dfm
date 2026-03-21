inherited FrmEXP_SEP_MAN: TFrmEXP_SEP_MAN
  Left = 422
  Top = 18
  ActiveControl = EDDEPK
  AlphaBlendValue = 0
  Caption = 'Separa'#231#227'o de Pedidos'
  ClientHeight = 657
  ClientWidth = 634
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 634
    Height = 573
    inherited PaintBox: TPaintBox
      Top = 153
      Width = 634
      Height = 0
      Align = alTop
    end
    object PNLPrincipal: TPanel
      Left = 0
      Top = 0
      Width = 634
      Height = 153
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GBEtiqueta: TGroupBox
        Left = 0
        Top = 60
        Width = 634
        Height = 93
        Align = alClient
        Caption = '  Etiqueta  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object LACDET: TLabel
          Left = 4
          Top = 20
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
        object Label1: TLabel
          Left = 4
          Top = 40
          Width = 53
          Height = 14
          Caption = 'Romaneio'
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
        object lanlan: TLabel
          Left = 70
          Top = 40
          Width = 380
          Height = 14
          AutoSize = False
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
          Left = 4
          Top = 72
          Width = 63
          Height = 14
          Caption = 'Quantidade'
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
        object laqlan: TLabel
          Left = 70
          Top = 72
          Width = 110
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
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
        object ladpro: TLabel
          Left = 70
          Top = 56
          Width = 380
          Height = 14
          AutoSize = False
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
        object Label3: TLabel
          Left = 4
          Top = 56
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
          Transparent = True
        end
        object LAEPET: TLabel
          Left = 172
          Top = 20
          Width = 4
          Height = 14
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
        object CECDET: TdxCurrencyEdit
          Left = 70
          Top = 16
          Width = 100
          Hint = 'Informe o n'#250'mero da etiqueta'
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
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 0
          Alignment = taRightJustify
          AutoSize = False
          MaxLength = 10
          ReadOnly = False
          OnValidate = CECDETValidate
          DecimalPlaces = 0
          DisplayFormat = '0'
          UseThousandSeparator = True
          Height = 22
          StoredValues = 67
        end
      end
      object GBPedido: TGroupBox
        Left = 0
        Top = 0
        Width = 634
        Height = 60
        Align = alTop
        Caption = '  Pedido  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 4
          Top = 20
          Width = 43
          Height = 14
          Caption = 'N'#250'mero'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 4
          Top = 40
          Width = 54
          Height = 14
          Caption = 'Vendedor'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LADECV: TLabel
          Left = 70
          Top = 40
          Width = 4
          Height = 14
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LADECD: TLabel
          Left = 173
          Top = 20
          Width = 500
          Height = 14
          AutoSize = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edfatu: TdxMaskEdit
          Left = 70
          Top = 16
          Width = 100
          Hint = 'C'#243'digo'
          Color = clWhite
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
          Style.Shadow = False
          TabOrder = 1
          Visible = False
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          MaxLength = 20
          StoredValues = 6
        end
        object EDDEPK: TdxMaskEdit
          Left = 70
          Top = 16
          Width = 100
          Hint = 'Informe o n'#250'mero do pedido'
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
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 0
          AutoSize = False
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          MaxLength = 20
          OnValidate = EDDEPKValidate
          Height = 22
          StoredValues = 6
        end
      end
    end
    object PNLRodape: TPanel
      Left = 0
      Top = 153
      Width = 634
      Height = 420
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object GBExpedicao: TGroupBox
        Left = 0
        Top = 0
        Width = 634
        Height = 420
        Align = alClient
        Caption = '  Expedi'#231#227'o  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object pcite: TdxPageControl
          Left = 2
          Top = 19
          Width = 630
          Height = 399
          ActivePage = tsLAN
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          object tsLAN: TdxTabSheet
            Caption = 'Lan'#231'amentos'
            object DBGEdicao: TdxDBGrid
              Left = 48
              Top = 0
              Width = 582
              Height = 372
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
              Color = 14789952
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI'
              BandFont.Style = []
              DataSource = DTSEdicao
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = []
              HideSelectionColor = clHighlightText
              HideSelectionTextColor = clBlack
              HighlightColor = clHighlightText
              HighlightTextColor = clBlack
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = []
              object DBGEdicaoROM_CART: TdxDBGridMaskColumn
                MinWidth = 65
                Width = 65
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_CART'
              end
              object DBGEdicaoROM_CPRO: TdxDBGridMaskColumn
                MinWidth = 65
                Width = 65
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_CPRO'
              end
              object DBGEdicaoROM_DGCP: TdxDBGridMaskColumn
                MinWidth = 65
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_DGCP'
              end
              object DBGEdicaoROM_CDET: TdxDBGridMaskColumn
                Alignment = taRightJustify
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_CDET'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
                DisableFilter = True
              end
              object DBGEdicaoROM_QTSP: TdxDBGridMaskColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_QTSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'ROM_QTSP'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
              object DBGEdicaoROM_RLSP: TdxDBGridMaskColumn
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 35
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ROM_RLSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'ROM_RLSP'
                SummaryFooterFormat = '0'
                DisableFilter = True
              end
            end
            object SpeedBar3: TSpeedBar
              Left = 0
              Top = 0
              Width = 48
              Height = 372
              Cursor = crHandPoint
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              BoundLines = [blTop, blBottom, blLeft, blRight]
              Position = bpCustom
              Align = alLeft
              Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
              BtnOffsetHorz = 5
              BtnOffsetVert = 5
              BtnWidth = 38
              BtnHeight = 40
              Images = ILMenuEdicao
              BevelOuter = bvNone
              TabOrder = 0
              InternalVer = 1
              object SpeedbarSection9: TSpeedbarSection
                Caption = 'Movimento'
              end
              object SpeedbarSection10: TSpeedbarSection
                Caption = 'Edicao'
              end
              object SpeedbarSection11: TSpeedbarSection
                Caption = 'Confirmacao'
              end
              object SpeedbarSection12: TSpeedbarSection
                Caption = 'Utilitarios'
              end
              object pINC: TSpeedItem
                Caption = 'Incluir'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Ins] - Inclui'
                ImageIndex = 0
                Spacing = 1
                Left = 5
                Top = 5
                Visible = True
                SectionName = 'Movimento'
              end
              object pALT: TSpeedItem
                Caption = 'Alterar'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Enter] - Altera'
                ImageIndex = 1
                Spacing = 1
                Left = 5
                Top = 45
                Visible = True
                OnClick = pALTClick
                SectionName = 'Movimento'
              end
              object pDEL: TSpeedItem
                Caption = 'Excluir'
                Cursor = crHandPoint
                Hint = '[Del] - Exclui'
                ImageIndex = 2
                Spacing = 1
                Left = 5
                Top = 85
                Visible = True
                OnClick = pDELClick
                SectionName = 'Movimento'
              end
              object pSAV: TSpeedItem
                Caption = 'Salvar'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Ctrl+S] - Salva'
                ImageIndex = 3
                Spacing = 1
                Left = 5
                Top = 125
                Visible = True
                OnClick = pSAVClick
                SectionName = 'Movimento'
              end
              object pCAN: TSpeedItem
                Caption = 'Cancelar'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Esc] - Cancela'
                ImageIndex = 4
                Spacing = 1
                Left = 5
                Top = 165
                Visible = True
                OnClick = pCANClick
                SectionName = 'Movimento'
              end
            end
          end
          object tsSEP: TdxTabSheet
            Caption = 'Separados'
            object DBGSEP: TdxDBGrid
              Left = 0
              Top = 0
              Width = 630
              Height = 364
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
              Color = clMedGray
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
              BandFont.Style = []
              DataSource = DTSCAD_PRO_EST_SEP
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = []
              HideSelectionColor = clHighlightText
              HideSelectionTextColor = clBlack
              HighlightColor = clHighlightText
              HighlightTextColor = clBlack
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = []
              object DBGSEPSKU: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGSEPDGCP: TdxDBGridMaskColumn
                Width = 300
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGSEPUCOM: TdxDBGridMaskColumn
                Width = 25
                BandIndex = 0
                RowIndex = 0
                FieldName = 'UCOM'
                DisableFilter = True
              end
              object DBGSEPCDET: TdxDBGridMaskColumn
                Width = 93
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CDET'
              end
              object DBGSEPEST_CRED: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'EST_CRED'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
            end
          end
          object tsPED: TdxTabSheet
            Caption = 'Pedido'
            object DBGPED: TdxDBGrid
              Left = 0
              Top = 0
              Width = 630
              Height = 364
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
              Color = clHighlightText
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
              BandFont.Style = []
              DataSource = DTSFKPedidos
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = []
              HideSelectionColor = clHighlightText
              HideSelectionTextColor = clBlack
              HighlightColor = clHighlightText
              HighlightTextColor = clBlack
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = []
              object DBGPEDSKU: TdxDBGridMaskColumn
                Sorted = csUp
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGPEDDGCP: TdxDBGridMaskColumn
                Width = 300
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGPEDQTDE: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'QTDE'
                SummaryFooterFormat = '#,0.00'
                DisableFilter = True
              end
            end
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 638
    Width = 634
  end
  inherited PNLMenu: TPanel
    Width = 634
    inherited SpeedBar2: TSpeedBar
      Width = 634
      object siVIS: TSpeedItem
        BtnCaption = 'Visualizar'
        Hint = 'Visualizar relatorio de separa'#231#227'o'
        ImageIndex = 3
        Spacing = 1
        Left = 189
        Top = 5
        SectionName = 'Movimento'
      end
    end
  end
  inherited Consulta: TIBQuery
    Transaction = TConsulta
    Left = 240
    Top = 344
  end
  inherited TEvent: TIBTransaction
    Left = 448
  end
  inherited ILMenuPrincipal: TImageList
    Top = 184
  end
  object DTSEdicao: TDataSource
    DataSet = Edicao
    OnDataChange = DTSEdicaoDataChange
    Left = 576
    Top = 72
  end
  object TSEdicao: TIBTransaction
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
  object consulta_s: TIBQuery
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 544
    Top = 40
  end
  object Edicao: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    AfterDelete = EdicaoAfterPost
    AfterPost = EdicaoAfterPost
    BeforeCancel = EdicaoBeforeCancel
    OnNewRecord = EdicaoNewRecord
    DeleteSQL.Strings = (
      'delete from ROM_ITE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_ITE'
      
        '  (ID, ROM_CART, ROM_CDDF, ROM_CDEP, ROM_CDET, ROM_CPRO, ROM_CTN' +
        'R, ROM_DGCP, '
      
        '   ROM_DPRO, ROM_DSEP, ROM_DUNI, ROM_IDSP, ROM_IPRO, ROM_ITEM, R' +
        'OM_LOTE, '
      '   ROM_NFCI, ROM_OBSE, ROM_QTSP, ROM_RLSP, ROM_UCON, ROM_UNIT)'
      'values'
      
        '  (:ID, :ROM_CART, :ROM_CDDF, :ROM_CDEP, :ROM_CDET, :ROM_CPRO, :' +
        'ROM_CTNR, '
      
        '   :ROM_DGCP, :ROM_DPRO, :ROM_DSEP, :ROM_DUNI, :ROM_IDSP, :ROM_I' +
        'PRO, :ROM_ITEM, '
      
        '   :ROM_LOTE, :ROM_NFCI, :ROM_OBSE, :ROM_QTSP, :ROM_RLSP, :ROM_U' +
        'CON, :ROM_UNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_ITEM,'
      '  ROM_IPRO,'
      '  ROM_CART,'
      '  ROM_CPRO,'
      '  ROM_DPRO,'
      '  ROM_DGCP,'
      '  ROM_DUNI,'
      '  ROM_UCON,'
      '  ROM_UNIT,'
      '  ROM_CDEP,'
      '  ROM_CDET,'
      '  ROM_CTNR,'
      '  ROM_LOTE,'
      '  ROM_IDSP,'
      '  ROM_DSEP,'
      '  ROM_QTSP,'
      '  ROM_RLSP,'
      '  ROM_NFCI,'
      '  ROM_CDDF,'
      '  ROM_OBSE'
      'from ROM_ITE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   PK.ID,'
      '         PK.ROM_ITEM,PK.ROM_IPRO,PK.ROM_CART,PK.ROM_CPRO,'
      '         PK.ROM_DPRO,PK.ROM_DGCP,'
      '         PK.ROM_DUNI,PK.ROM_UCON,'
      '         PK.ROM_UNIT ,'
      '         PK.ROM_CDEP,PK.ROM_CDET,PK.ROM_CTNR,PK.ROM_LOTE,'
      '         PK.ROM_IDSP,PK.ROM_DSEP,PK.ROM_QTSP,PK.ROM_RLSP,'
      '         PK.ROM_NFCI,PK.ROM_CDDF,PK.ROM_OBSE'
      'FROM     ROM_ITE AS PK'
      'ORDER BY PK.ROM_CDET')
    ModifySQL.Strings = (
      'update ROM_ITE'
      'set'
      '  ID = :ID,'
      '  ROM_CART = :ROM_CART,'
      '  ROM_CDDF = :ROM_CDDF,'
      '  ROM_CDEP = :ROM_CDEP,'
      '  ROM_CDET = :ROM_CDET,'
      '  ROM_CPRO = :ROM_CPRO,'
      '  ROM_CTNR = :ROM_CTNR,'
      '  ROM_DGCP = :ROM_DGCP,'
      '  ROM_DPRO = :ROM_DPRO,'
      '  ROM_DSEP = :ROM_DSEP,'
      '  ROM_DUNI = :ROM_DUNI,'
      '  ROM_IDSP = :ROM_IDSP,'
      '  ROM_IPRO = :ROM_IPRO,'
      '  ROM_ITEM = :ROM_ITEM,'
      '  ROM_LOTE = :ROM_LOTE,'
      '  ROM_NFCI = :ROM_NFCI,'
      '  ROM_OBSE = :ROM_OBSE,'
      '  ROM_QTSP = :ROM_QTSP,'
      '  ROM_RLSP = :ROM_RLSP,'
      '  ROM_UCON = :ROM_UCON,'
      '  ROM_UNIT = :ROM_UNIT'
      'where'
      '  ID = :OLD_ID')
    Left = 544
    Top = 72
    object EdicaoID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EdicaoROM_CDEP: TSmallintField
      FieldName = 'ROM_CDEP'
      Origin = '"ROM_ITE"."ROM_CDEP"'
    end
    object EdicaoROM_ITEM: TIBStringField
      FieldName = 'ROM_ITEM'
      Origin = '"ROM_ITE"."ROM_ITEM"'
      Size = 5
    end
    object EdicaoROM_IPRO: TIntegerField
      FieldName = 'ROM_IPRO'
      Origin = '"ROM_ITE"."ROM_IPRO"'
    end
    object EdicaoROM_CART: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ROM_CART'
      Origin = '"ROM_ITE"."ROM_CART"'
    end
    object EdicaoROM_CPRO: TIBStringField
      DisplayLabel = 'SKU'
      FieldName = 'ROM_CPRO'
      Origin = '"ROM_ITE"."ROM_CPRO"'
    end
    object EdicaoROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"ROM_ITE"."ROM_DPRO"'
      Size = 120
    end
    object EdicaoROM_DGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'ROM_DGCP'
      Origin = '"ROM_ITE"."ROM_DGCP"'
      Size = 60
    end
    object EdicaoROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"ROM_ITE"."ROM_DUNI"'
      Size = 10
    end
    object EdicaoROM_UCON: TIBStringField
      FieldName = 'ROM_UCON'
      Origin = '"ROM_ITE"."ROM_UCON"'
      Size = 40
    end
    object EdicaoROM_UNIT: TFloatField
      FieldName = 'ROM_UNIT'
      Origin = '"ROM_ITE"."ROM_UNIT"'
    end
    object EdicaoROM_CDET: TIBStringField
      DisplayLabel = 'Etiqueta'
      FieldName = 'ROM_CDET'
      Origin = '"ROM_ITE"."ROM_CDET"'
      Size = 10
    end
    object EdicaoROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"ROM_ITE"."ROM_CTNR"'
      Size = 30
    end
    object EdicaoROM_LOTE: TIBStringField
      FieldName = 'ROM_LOTE'
      Origin = '"ROM_ITE"."ROM_LOTE"'
      Size = 30
    end
    object EdicaoROM_IDSP: TIntegerField
      FieldName = 'ROM_IDSP'
      Origin = '"ROM_ITE"."ROM_IDSP"'
    end
    object EdicaoROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"ROM_ITE"."ROM_DSEP"'
      Size = 60
    end
    object EdicaoROM_QTSP: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTSP'
      Origin = '"ROM_ITE"."ROM_QTSP"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object EdicaoROM_RLSP: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'ROM_RLSP'
      Origin = '"ROM_ITE"."ROM_RLSP"'
      DisplayFormat = '0'
    end
    object EdicaoROM_NFCI: TIBStringField
      FieldName = 'ROM_NFCI'
      Origin = '"ROM_ITE"."ROM_NFCI"'
      Size = 40
    end
    object EdicaoROM_CDDF: TSmallintField
      FieldName = 'ROM_CDDF'
      Origin = '"ROM_ITE"."ROM_CDDF"'
    end
    object EdicaoROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"ROM_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object CAD_PRO_EST: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = CAD_PRO_ESTAfterOpen
    BeforeOpen = CAD_PRO_ESTBeforeOpen
    SQL.Strings = (
      'SELECT   PK.ID    ,PK.IDEP,EP.FANTASIA AS DEEP,'
      '         PK.IDCA  ,PK.DTCA,TB_CA.LOGIN AS DECA,'
      '         PK.CDRO  ,PK.DTRO,'
      '         PK.CDET  ,PK.CTNR,PK.LOTE,'
      '         PK.IDSP  ,PK.CDSP,PK.DTSP,TB_SP.LOGIN AS DESP,'
      '         PK.IDPK  ,PK.DEPK,PK.DTPK,'
      '         PK.IDCD  ,PK.DECD,PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.IDCP  ,PK.CP_IDEP,PK.IDAK,'
      '         CP.ARTIGO,CP.SKU,CP.CEAN,'
      '         CP.DECP  ,CP.DGCP,'
      '         CP.UCOM  ,CP.UCON,'
      '         PK.QTDE  ,PK.QTRL,PK.REOP,PK.VPRC_COM,'
      '         PK.CDDF,TB_DF.LOGIN AS DEDF,PK.DTDF,'
      
        '         PK.NFCI,NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 F' +
        'OR 1064) AS VARCHAR(1064))),'#39#39') AS INFADCAD'
      ''
      'FROM     CAD_PRO_EST AS PK'
      'JOIN     TAB_PAR_SIS AS EP    ON (EP.ID    = PK.IDEP   )'
      'JOIN     TAB_PAR_SIS AS EP_CP ON (EP_CP.ID = PK.CP_IDEP)'
      'JOIN     CAD_PRO     AS CP    ON (CP.ID    = PK.IDCP   )'
      'JOIN     TAB_USER    AS TB_CA ON (TB_CA.ID = PK.IDCA   )'
      'JOIN     TAB_USER    AS TB_SP ON (TB_SP.ID = PK.IDSP   )'
      'JOIN     TAB_USER    AS TB_DF ON (TB_DF.ID = PK.CDDF   )'
      'WHERE    PK.CDET = :CDET')
    Left = 232
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CDET'
        ParamType = ptUnknown
      end>
    object CAD_PRO_ESTID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_EST"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_PRO_ESTIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_EST"."IDEP"'
    end
    object CAD_PRO_ESTDEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object CAD_PRO_ESTIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_PRO_EST"."IDCA"'
    end
    object CAD_PRO_ESTDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_EST"."DTCA"'
    end
    object CAD_PRO_ESTDECA: TIBStringField
      FieldName = 'DECA'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CAD_PRO_ESTCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"CAD_PRO_EST"."CDRO"'
    end
    object CAD_PRO_ESTDTRO: TDateField
      FieldName = 'DTRO'
      Origin = '"CAD_PRO_EST"."DTRO"'
    end
    object CAD_PRO_ESTCDET: TLargeintField
      FieldName = 'CDET'
      Origin = '"CAD_PRO_EST"."CDET"'
    end
    object CAD_PRO_ESTCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"CAD_PRO_EST"."CTNR"'
      Size = 30
    end
    object CAD_PRO_ESTLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"CAD_PRO_EST"."LOTE"'
      Size = 30
    end
    object CAD_PRO_ESTIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"CAD_PRO_EST"."IDSP"'
    end
    object CAD_PRO_ESTCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"CAD_PRO_EST"."CDSP"'
    end
    object CAD_PRO_ESTDTSP: TDateTimeField
      FieldName = 'DTSP'
      Origin = '"CAD_PRO_EST"."DTSP"'
    end
    object CAD_PRO_ESTDESP: TIBStringField
      FieldName = 'DESP'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CAD_PRO_ESTIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"CAD_PRO_EST"."IDPK"'
    end
    object CAD_PRO_ESTDEPK: TIBStringField
      FieldName = 'DEPK'
      Origin = '"CAD_PRO_EST"."DEPK"'
      Size = 30
    end
    object CAD_PRO_ESTDTPK: TDateTimeField
      FieldName = 'DTPK'
      Origin = '"CAD_PRO_EST"."DTPK"'
    end
    object CAD_PRO_ESTIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"CAD_PRO_EST"."IDCD"'
    end
    object CAD_PRO_ESTDECD: TIBStringField
      FieldName = 'DECD'
      Origin = '"CAD_PRO_EST"."DECD"'
      Size = 60
    end
    object CAD_PRO_ESTIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"CAD_PRO_EST"."IDCV"'
    end
    object CAD_PRO_ESTDECV: TIBStringField
      FieldName = 'DECV'
      Origin = '"CAD_PRO_EST"."DECV"'
      Size = 60
    end
    object CAD_PRO_ESTIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"CAD_PRO_EST"."IDCR"'
    end
    object CAD_PRO_ESTDECR: TIBStringField
      FieldName = 'DECR'
      Origin = '"CAD_PRO_EST"."DECR"'
      Size = 60
    end
    object CAD_PRO_ESTIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"CAD_PRO_EST"."IDCP"'
    end
    object CAD_PRO_ESTCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"CAD_PRO_EST"."CP_IDEP"'
    end
    object CAD_PRO_ESTIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"CAD_PRO_EST"."IDAK"'
    end
    object CAD_PRO_ESTARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object CAD_PRO_ESTSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object CAD_PRO_ESTCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"CAD_PRO"."CEAN"'
    end
    object CAD_PRO_ESTDECP: TIBStringField
      FieldName = 'DECP'
      Origin = '"CAD_PRO"."DECP"'
      Size = 120
    end
    object CAD_PRO_ESTDGCP: TIBStringField
      FieldName = 'DGCP'
      Origin = '"CAD_PRO"."DGCP"'
      Size = 60
    end
    object CAD_PRO_ESTUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"CAD_PRO"."UCOM"'
      Size = 10
    end
    object CAD_PRO_ESTUCON: TIBStringField
      FieldName = 'UCON'
      Origin = '"CAD_PRO"."UCON"'
      Size = 45
    end
    object CAD_PRO_ESTQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_EST"."QTDE"'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_ESTQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"CAD_PRO_EST"."QTRL"'
    end
    object CAD_PRO_ESTREOP: TIBStringField
      FieldName = 'REOP'
      Origin = '"CAD_PRO_EST"."REOP"'
      Size = 10
    end
    object CAD_PRO_ESTVPRC_COM: TFloatField
      FieldName = 'VPRC_COM'
      Origin = '"CAD_PRO_EST"."VPRC_COM"'
    end
    object CAD_PRO_ESTCDDF: TSmallintField
      FieldName = 'CDDF'
      Origin = '"CAD_PRO_EST"."CDDF"'
    end
    object CAD_PRO_ESTDEDF: TIBStringField
      FieldName = 'DEDF'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CAD_PRO_ESTDTDF: TDateTimeField
      FieldName = 'DTDF'
      Origin = '"CAD_PRO_EST"."DTDF"'
    end
    object CAD_PRO_ESTNFCI: TIBStringField
      FieldName = 'NFCI'
      Origin = '"CAD_PRO_EST"."NFCI"'
      Size = 40
    end
    object CAD_PRO_ESTINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 1064
    end
  end
  object Pedidos: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterClose = PedidosAfterClose
    AfterOpen = PedidosAfterOpen
    BeforeOpen = PedidosBeforeOpen
    SQL.Strings = (
      'SELECT PK.IDPK,PK.IDEP,PK.IDCA,PK.DTCA,'
      '       PK.IDPK,PK.DEPK,PK.CTNR,'
      '       PK.CDRO,PK.DTRO,PK.CDNF,PK.DTNF,'
      '       PK.CDBX,PK.DTBX,'
      '       PK.IDCD,PK.DECD,PK.IDCV,PK.DECV,'
      '       PK.IDCR,PK.DECR,'
      '       PK.TCDE,'
      '       PK.STPD,PK.LQPD,'
      '       PK.STCO,PK.TPCO,'
      '       PK.RECO,PK.CDPG,'
      '       PK.CDST,PK.REST,PK.DEST,'
      '       PK.APST,PK.FPST,PK.BQST,'
      '       PK.INFADCAD'
      'FROM   VW_PED_VEN_CAB_NEW AS PK'
      'WHERE  PK.DEPK = :DEPK')
    Left = 232
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DEPK'
        ParamType = ptUnknown
      end>
    object PedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDPK"'
    end
    object PedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDEP"'
    end
    object PedidosIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDCA"'
    end
    object PedidosDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_CAB_NEW"."DTCA"'
    end
    object PedidosIDPK1: TLargeintField
      FieldName = 'IDPK1'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDPK"'
    end
    object PedidosDEPK: TIBStringField
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB_NEW"."DEPK"'
      Size = 30
    end
    object PedidosCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_PED_VEN_CAB_NEW"."CTNR"'
    end
    object PedidosCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"VW_PED_VEN_CAB_NEW"."CDRO"'
    end
    object PedidosDTRO: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_PED_VEN_CAB_NEW"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosCDNF: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB_NEW"."CDNF"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosDTNF: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB_NEW"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"VW_PED_VEN_CAB_NEW"."CDBX"'
    end
    object PedidosDTBX: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_PED_VEN_CAB_NEW"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDCD"'
    end
    object PedidosDECD: TIBStringField
      FieldName = 'DECD'
      Origin = '"VW_PED_VEN_CAB_NEW"."DECD"'
      Size = 60
    end
    object PedidosIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDCV"'
    end
    object PedidosDECV: TIBStringField
      FieldName = 'DECV'
      Origin = '"VW_PED_VEN_CAB_NEW"."DECV"'
      Size = 30
    end
    object PedidosIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_PED_VEN_CAB_NEW"."IDCR"'
    end
    object PedidosDECR: TIBStringField
      FieldName = 'DECR'
      Origin = '"VW_PED_VEN_CAB_NEW"."DECR"'
      Size = 60
    end
    object PedidosTCDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB_NEW"."TCDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object PedidosSTPD: TIBStringField
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB_NEW"."STPD"'
      Size = 60
    end
    object PedidosLQPD: TSmallintField
      FieldName = 'LQPD'
      Origin = '"VW_PED_VEN_CAB_NEW"."LQPD"'
    end
    object PedidosSTCO: TIBStringField
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB_NEW"."STCO"'
      Size = 60
    end
    object PedidosTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB_NEW"."TPCO"'
    end
    object PedidosRECO: TIBStringField
      FieldName = 'RECO'
      Origin = '"VW_PED_VEN_CAB_NEW"."RECO"'
      Size = 3
    end
    object PedidosCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"VW_PED_VEN_CAB_NEW"."CDPG"'
    end
    object PedidosCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PED_VEN_CAB_NEW"."CDST"'
    end
    object PedidosREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PED_VEN_CAB_NEW"."REST"'
      Size = 10
    end
    object PedidosDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB_NEW"."DEST"'
      Size = 60
    end
    object PedidosAPST: TSmallintField
      FieldName = 'APST'
      Origin = '"VW_PED_VEN_CAB_NEW"."APST"'
    end
    object PedidosFPST: TSmallintField
      FieldName = 'FPST'
      Origin = '"VW_PED_VEN_CAB_NEW"."FPST"'
    end
    object PedidosBQST: TSmallintField
      FieldName = 'BQST'
      Origin = '"VW_PED_VEN_CAB_NEW"."BQST"'
    end
    object PedidosINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_CAB_NEW"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
  end
  object FKPedidos: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEP,PK.DEEP,'
      '         PK.IDCA,PK.DTCA,         '
      '         PK.IDPK,PK.IDFK,PK.ITEM,'
      '         PK.IDSP,PK.CDSP,PK.DTSP,'
      '         PK.IDCP,PK.CP_IDEP,'
      '         PK.IDAK,PK.ARTIGO,'
      '         PK.SKU,PK.CEAN,'
      '         PK.DGCP,PK.DECP,'
      '         PK.UCOM,PK.UCON,PK.UQTDE,PK.UPSBR,PK.UPSLQ,'
      '         PK.QTDE,PK.QTRL,'
      '         PK.QTSP,PK.RLSP,'
      '         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,'
      '         PK.VPRC_PAD,PK.VPRC_COM,'
      '         PK.PDSC,PK.VDSC,'
      '         PK.TSDE,PK.TCDE,PK.VTSP,PK.PPSP,'
      '         PK.ORIG,PK.NCM ,PK.PIPI,PK.VIPI'
      'FROM     VW_PED_VEN_ITE_NEW_004 AS PK'
      ''
      'WHERE    PK.IDPK = :IDPK'
      'ORDER BY PK.VPRC_COM DESC')
    Left = 264
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPK'
        ParamType = ptUnknown
      end>
    object FKPedidosID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_ITE_NEW_004"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FKPedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDEP"'
    end
    object FKPedidosDEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"VW_PED_VEN_ITE_TMP"."DEEP"'
      Size = 60
    end
    object FKPedidosIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDCA"'
    end
    object FKPedidosDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_ITE_TMP"."DTCA"'
    end
    object FKPedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDPK"'
    end
    object FKPedidosIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDFK"'
    end
    object FKPedidosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = '"VW_PED_VEN_ITE_TMP"."ITEM"'
    end
    object FKPedidosIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDSP"'
    end
    object FKPedidosCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."CDSP"'
    end
    object FKPedidosDTSP: TDateTimeField
      FieldName = 'DTSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."DTSP"'
    end
    object FKPedidosIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDCP"'
    end
    object FKPedidosCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_PED_VEN_ITE_TMP"."CP_IDEP"'
    end
    object FKPedidosIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_PED_VEN_ITE_TMP"."IDAK"'
    end
    object FKPedidosARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"VW_PED_VEN_ITE_TMP"."ARTIGO"'
      Size = 30
    end
    object FKPedidosSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"VW_PED_VEN_ITE_TMP"."SKU"'
      Size = 30
    end
    object FKPedidosCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_PED_VEN_ITE_TMP"."CEAN"'
    end
    object FKPedidosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_PED_VEN_ITE_TMP"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FKPedidosDECP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DECP'
      Origin = '"VW_PED_VEN_ITE_TMP"."DECP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object FKPedidosUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"VW_PED_VEN_ITE_TMP"."UCOM"'
      Size = 10
    end
    object FKPedidosUCON: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'UCON'
      Origin = '"VW_PED_VEN_ITE_TMP"."UCON"'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object FKPedidosUQTDE: TIBBCDField
      FieldName = 'UQTDE'
      Origin = '"VW_PED_VEN_ITE_NEW_004"."UQTDE"'
      Precision = 9
      Size = 2
    end
    object FKPedidosUPSBR: TIBBCDField
      FieldName = 'UPSBR'
      Origin = '"VW_PED_VEN_ITE_NEW_004"."UPSBR"'
      Precision = 9
      Size = 3
    end
    object FKPedidosUPSLQ: TIBBCDField
      FieldName = 'UPSLQ'
      Origin = '"VW_PED_VEN_ITE_NEW_004"."UPSLQ"'
      Precision = 9
      Size = 3
    end
    object FKPedidosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_ITE_TMP"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKPedidosQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_ITE_TMP"."QTRL"'
    end
    object FKPedidosQTSP: TIBBCDField
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."QTSP"'
      Precision = 18
      Size = 2
    end
    object FKPedidosRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."RLSP"'
    end
    object FKPedidosVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"VW_PED_VEN_ITE_TMP"."VPRC_PAD_INI"'
    end
    object FKPedidosVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"VW_PED_VEN_ITE_TMP"."VPRC_PAD_FIM"'
    end
    object FKPedidosVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"VW_PED_VEN_ITE_TMP"."VPRC_PAD"'
    end
    object FKPedidosVPRC_COM: TFloatField
      FieldName = 'VPRC_COM'
      Origin = '"VW_PED_VEN_ITE_TMP"."VPRC_COM"'
    end
    object FKPedidosPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_ITE_TMP"."PDSC"'
      Precision = 9
      Size = 2
    end
    object FKPedidosVDSC: TFloatField
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_ITE_TMP"."VDSC"'
    end
    object FKPedidosTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_ITE_TMP"."TSDE"'
      Precision = 18
      Size = 2
    end
    object FKPedidosTCDE: TIBBCDField
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_ITE_TMP"."TCDE"'
      Precision = 18
      Size = 2
    end
    object FKPedidosVTSP: TIBBCDField
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."VTSP"'
      Precision = 18
      Size = 2
    end
    object FKPedidosPPSP: TIBBCDField
      FieldName = 'PPSP'
      Origin = '"VW_PED_VEN_ITE_TMP"."PPSP"'
      Precision = 9
      Size = 2
    end
    object FKPedidosORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"VW_PED_VEN_ITE_TMP"."ORIG"'
    end
    object FKPedidosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_PED_VEN_ITE_TMP"."NCM"'
      FixedChar = True
      Size = 8
    end
    object FKPedidosPIPI: TIBBCDField
      FieldName = 'PIPI'
      Origin = '"VW_PED_VEN_ITE_TMP"."PIPI"'
      Precision = 9
      Size = 2
    end
    object FKPedidosVIPI: TFloatField
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_ITE_TMP"."VIPI"'
    end
  end
  object DTSFKPedidos: TDataSource
    DataSet = FKPedidos
    Left = 296
    Top = 400
  end
  object CAD_PRO_EST_SEP: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT   PK.ID    ,PK.IDEP,EP.FANTASIA AS DEEP,'
      '         PK.IDCA  ,PK.DTCA,TB_CA.LOGIN AS DECA,'
      '         PK.CDRO  ,PK.DTRO,'
      '         PK.CDET  ,PK.CTNR,PK.LOTE,'
      '         PK.IDSP  ,PK.CDSP,PK.DTSP,TB_SP.LOGIN AS DESP,'
      '         PK.IDPK  ,PK.DEPK,PK.DTPK,'
      '         PK.IDCD  ,PK.DECD,PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.IDCP  ,PK.CP_IDEP,PK.IDAK,'
      '         CP.ARTIGO,CP.SKU,CP.CEAN,'
      '         CP.DECP  ,CP.DGCP,'
      '         CP.UCOM  ,CP.UCON,'
      '         PK.QTDE  ,PK.QTRL,PK.REOP,PK.VPRC_COM,'
      '         PK.CDDF,TB_DF.LOGIN AS DEDF,PK.DTDF,'
      
        '         PK.NFCI,NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 F' +
        'OR 1064) AS VARCHAR(1064))),'#39#39') AS INFADCAD'
      ''
      'FROM     CAD_PRO_EST AS PK'
      'JOIN     TAB_PAR_SIS AS EP    ON (EP.ID    = PK.IDEP   )'
      'JOIN     TAB_PAR_SIS AS EP_CP ON (EP_CP.ID = PK.CP_IDEP)'
      'JOIN     CAD_PRO     AS CP    ON (CP.ID    = PK.IDCP   )'
      'JOIN     TAB_USER    AS TB_CA ON (TB_CA.ID = PK.IDCA   )'
      'JOIN     TAB_USER    AS TB_SP ON (TB_SP.ID = PK.IDSP   )'
      'JOIN     TAB_USER    AS TB_DF ON (TB_DF.ID = PK.CDDF   )'
      'WHERE    PK.IDPK = :IDPK'
      'AND      PK.IDEP = :IDEP'
      'ORDER BY CP.SKU')
    Left = 264
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDEP'
        ParamType = ptUnknown
      end>
    object CAD_PRO_EST_SEPID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_EST"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_PRO_EST_SEPIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_EST"."IDEP"'
    end
    object CAD_PRO_EST_SEPDEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object CAD_PRO_EST_SEPIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_PRO_EST"."IDCA"'
    end
    object CAD_PRO_EST_SEPDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_EST"."DTCA"'
    end
    object CAD_PRO_EST_SEPDECA: TIBStringField
      FieldName = 'DECA'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CAD_PRO_EST_SEPCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"CAD_PRO_EST"."CDRO"'
    end
    object CAD_PRO_EST_SEPDTRO: TDateField
      FieldName = 'DTRO'
      Origin = '"CAD_PRO_EST"."DTRO"'
    end
    object CAD_PRO_EST_SEPCDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldName = 'CDET'
      Origin = '"CAD_PRO_EST"."CDET"'
      DisplayFormat = '0'
    end
    object CAD_PRO_EST_SEPCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"CAD_PRO_EST"."CTNR"'
      Size = 30
    end
    object CAD_PRO_EST_SEPLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"CAD_PRO_EST"."LOTE"'
      Size = 30
    end
    object CAD_PRO_EST_SEPIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"CAD_PRO_EST"."IDSP"'
    end
    object CAD_PRO_EST_SEPCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"CAD_PRO_EST"."CDSP"'
    end
    object CAD_PRO_EST_SEPDTSP: TDateTimeField
      FieldName = 'DTSP'
      Origin = '"CAD_PRO_EST"."DTSP"'
    end
    object CAD_PRO_EST_SEPDESP: TIBStringField
      FieldName = 'DESP'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CAD_PRO_EST_SEPIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"CAD_PRO_EST"."IDPK"'
    end
    object CAD_PRO_EST_SEPDEPK: TIBStringField
      FieldName = 'DEPK'
      Origin = '"CAD_PRO_EST"."DEPK"'
      Size = 30
    end
    object CAD_PRO_EST_SEPDTPK: TDateTimeField
      FieldName = 'DTPK'
      Origin = '"CAD_PRO_EST"."DTPK"'
    end
    object CAD_PRO_EST_SEPIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"CAD_PRO_EST"."IDCD"'
    end
    object CAD_PRO_EST_SEPDECD: TIBStringField
      FieldName = 'DECD'
      Origin = '"CAD_PRO_EST"."DECD"'
      Size = 60
    end
    object CAD_PRO_EST_SEPIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"CAD_PRO_EST"."IDCV"'
    end
    object CAD_PRO_EST_SEPDECV: TIBStringField
      FieldName = 'DECV'
      Origin = '"CAD_PRO_EST"."DECV"'
      Size = 60
    end
    object CAD_PRO_EST_SEPIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"CAD_PRO_EST"."IDCR"'
    end
    object CAD_PRO_EST_SEPDECR: TIBStringField
      FieldName = 'DECR'
      Origin = '"CAD_PRO_EST"."DECR"'
      Size = 60
    end
    object CAD_PRO_EST_SEPIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"CAD_PRO_EST"."IDCP"'
    end
    object CAD_PRO_EST_SEPCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"CAD_PRO_EST"."CP_IDEP"'
    end
    object CAD_PRO_EST_SEPIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"CAD_PRO_EST"."IDAK"'
    end
    object CAD_PRO_EST_SEPARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object CAD_PRO_EST_SEPSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object CAD_PRO_EST_SEPCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"CAD_PRO"."CEAN"'
    end
    object CAD_PRO_EST_SEPDECP: TIBStringField
      FieldName = 'DECP'
      Origin = '"CAD_PRO"."DECP"'
      Size = 120
    end
    object CAD_PRO_EST_SEPDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO"."DGCP"'
      Size = 60
    end
    object CAD_PRO_EST_SEPUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"CAD_PRO"."UCOM"'
      Size = 10
    end
    object CAD_PRO_EST_SEPUCON: TIBStringField
      FieldName = 'UCON'
      Origin = '"CAD_PRO"."UCON"'
      Size = 45
    end
    object CAD_PRO_EST_SEPQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_EST"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_EST_SEPQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"CAD_PRO_EST"."QTRL"'
    end
    object CAD_PRO_EST_SEPREOP: TIBStringField
      FieldName = 'REOP'
      Origin = '"CAD_PRO_EST"."REOP"'
      Size = 10
    end
    object CAD_PRO_EST_SEPVPRC_COM: TFloatField
      FieldName = 'VPRC_COM'
      Origin = '"CAD_PRO_EST"."VPRC_COM"'
    end
    object CAD_PRO_EST_SEPCDDF: TSmallintField
      FieldName = 'CDDF'
      Origin = '"CAD_PRO_EST"."CDDF"'
    end
    object CAD_PRO_EST_SEPDEDF: TIBStringField
      FieldName = 'DEDF'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CAD_PRO_EST_SEPDTDF: TDateTimeField
      FieldName = 'DTDF'
      Origin = '"CAD_PRO_EST"."DTDF"'
    end
    object CAD_PRO_EST_SEPNFCI: TIBStringField
      FieldName = 'NFCI'
      Origin = '"CAD_PRO_EST"."NFCI"'
      Size = 40
    end
    object CAD_PRO_EST_SEPINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 1064
    end
  end
  object DTSCAD_PRO_EST_SEP: TDataSource
    DataSet = CAD_PRO_EST_SEP
    Left = 296
    Top = 432
  end
  object SQLSEdicao: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 576
    Top = 40
  end
  object TConsulta: TIBTransaction
    Tag = 1
    AllowAutoStart = False
    DefaultDatabase = FBird.DBERP
    DefaultAction = TARollback
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      '')
    Left = 232
    Top = 304
  end
  object SQLConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 264
    Top = 304
  end
  object TEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 368
    Top = 152
  end
  object SQLEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 400
    Top = 152
  end
  object SPEdicao: TIBStoredProc
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 464
    Top = 152
  end
  object SQLFKEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 432
    Top = 152
  end
end
