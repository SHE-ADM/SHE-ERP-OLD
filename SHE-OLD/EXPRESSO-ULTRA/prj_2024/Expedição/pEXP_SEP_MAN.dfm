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
    Top = 73
    Width = 634
    Height = 565
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
      Height = 412
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
        Height = 412
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
          Height = 391
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
              Height = 364
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
              Images = imageITEM
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
    Height = 73
    inherited SpeedBar2: TSpeedBar
      Width = 634
      Height = 73
      BtnOffsetHorz = 5
      BtnOffsetVert = 5
      BtnWidth = 92
      BtnHeight = 62
      inherited siSAV: TSpeedItem
        ImageIndex = 0
        Left = 5
        Top = 5
      end
      inherited siVAL: TSpeedItem [5]
        ImageIndex = 1
        Left = 3
        Top = 5
      end
      inherited siCAN: TSpeedItem [6]
        ImageIndex = 2
        Left = 97
        Top = 5
      end
      inherited siSAIR: TSpeedItem
        ImageIndex = 4
        Left = 189
        Top = 5
      end
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
  inherited imageOPC: TImageList
    Height = 36
    Width = 36
    Left = 288
    Top = 6
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
      00000000000000000000000000000000000000000000B6B6B600B0B0B000AEAE
      AE00AAAAAA00A9A9A900A9A9A900A6A6A600A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A4A4A400A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300A4A4
      A400A4A4A400A4A4A400A4A4A400A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A6A6A600A9A9A900A9A9A900AAAAAA00AEAEAE00B0B0B000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400DADADA00D5D5D500CDCD
      CD00CACACA00C8C8C800000000000000000000000000BEBEBE00B7B7B700B6B6
      B600B9B9B800C0BFBC00C1C0BC00C1C0BC00C1C0BC00C1C0BC00C1BFBC00C5C1
      BC00C0BDBA00C5C1BC00C8C3BD00C4C0BC00C1BEBB00BFBDBB00C5C4C200C9C7
      C500C8C7C500C9C8C600D2D1CE00D3D2D000D7D6D300DEDDDA00DDDDDC00E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000ADB5CC00A7AFC900A5AEC800A5ADC800A4ADC800ACB3CA006A94
      BF003A70AC004679B1005E89B80081A1C3009BB3D000C0CEDD00CDD4E000C3CB
      DB00BFC5D700BCC0D300BFC3D600BFC4D700C0C5D800C4CADC00F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0000008600000045E00000059000015670000176800001364000C3783002E6B
      AB00326BAA003069A8002D66A7002964A5002661A300235FA200215DA0001F5A
      9E001B549A00164D95000E418B0007358200002978000012680000035C00D4D9
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0001029
      75000011650000136800AFB3BF00DAD7D000CECCC600CDC7BC00678AAF005081
      BC00326BAA00346CAA00346BA900336BA900336BA900326AA800326AA8003269
      A700326AA700336AA800336BA900346DAA00356EAB003772AD0017448B001128
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000B
      6200000E65007380A400E2DFD700CACAC900C1C1C100C0BCB7006C8CB200608E
      C400316AA900356DAB00346DAB00346CAA00336BA900336BA900326AA800326A
      A8003168A6003268A6003269A7003269A7003269A7003269A7003873AE000120
      7000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000010
      6600000C6500969FB600D8D7D300C9C9C900C1C1C100BFBBB7006E8EB300608F
      C500326BAA00356DAB00356DAB00346CAA00356CAA00336BA900346BA900326A
      A800326AA8003168A6003168A6003269A7003269A7003269A700356FAB000F34
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000012
      6800000E6800929CB500D8D6D300C9C9C900C1C1C100BFBBB7006E8FB300608E
      C400326CAB00366EAC00356EAC00366DAB00346CAA00356CAA00336CAA00336A
      A800336AA800326AA8003169A7003168A6003269A7003269A700356EAB000F35
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000014
      6B0000106A00939DB500D8D6D300C9C9C900C1C1C100BFBBB7006E8FB4005F8E
      C500336CAB00376FAD00376FAD00356EAC00366DAB00346DAB00356CAA00346B
      A900346AA800336AA8003369A7003169A7003168A6003269A700356EAB000F36
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000016
      6D0000126C00939DB600D8D6D300C9C9C900C1C1C100BFBBB7006E8FB500618F
      C500346DAC003770AE00376FAD00376EAC00366EAC00366EAC00356DAB00356C
      AA00346BA900346BA900336AA8003369A7003269A7003168A600356EAA001037
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000018
      6F0000146F00939DB700D8D6D300C9C9C900C1C1C100BFBBB7006E8FB5006190
      C600346EAD003871AF003770AE00376FAD00366FAD00366EAC00366EAC00356C
      AA00356CAA00346CAA00346BA900336BA9003369A7003269A700356EAA001038
      8500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000A4813100AC8D4600F0F0F0000019
      790000167100939EB700D8D6D300C9C9C900C1C1C100BFBBB7006F90B5006191
      C700356FAE003871AF003971AF003770AE003870AE00366FAD00366EAC00366D
      AB00356DAB00356DAB00346BA900336BA900336BA9003369A700356EAB001139
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000B5965000A0782100B08627003543
      6500000F7C00929EB900D8D6D300C9C9C900C1C1C100BFBBB6007091B6006291
      C700356FAE003A72B0003871AF003970AE003770AE00386FAD00366FAD00366E
      AC00356DAB00356DAB00346DAB00346BA900336BA900336BA900366EAB00113B
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1A56900B4944B00B5954E00B595
      4E00B5954E00B5954E00B5954E00B7975100AC873700AA853200AA843200BE90
      2A00665B440091A0C000D7D7D800C9C9C900C1C1C100BFBBB6007091B6006191
      C8003670AF003972B0003A72B0003872B0003970AE003870AE00386FAD00366F
      AD00366EAC00356DAB00356DAB00346DAB00346CAA00336BA9003770AC00123D
      8A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC843200AD863300AD863300AD86
      3300AD863300AD863300AD863300AD863300AF883700AF893800AF893800AF89
      3800B68C3200B78F3D00C9C2B500CACDD500C1C1C200BFBBB6007091B6006292
      C8003671B0003B73B1003973B1003A72B0003972B0003971AF003870AE00386F
      AD00376FAD00366EAC00366EAC00356DAB00356CAA00346CAA003770AC00123F
      8B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B48D3D00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B38C3900B2872E00BEA97E00C1C5CD00BFBCBA007091B7006292
      C8003771B1003B74B2003B74B2003A73B1003972B0003971AF003971AF003870
      AE00386FAD00376FAD00376FAD00366EAC00366DAB00346CAA003871AD001340
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9914000B78D3500B9964E00BEB7AF007092BA006392
      C9003872B1003C75B3003C75B3003B74B2003A73B1003972B0003972B0003971
      AF003870AE003870AE003770AE00376EAC00366EAC00356DAB003871AD001341
      8F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BB924000C69E4C00D2A347006F95C2006493
      CA003873B2003F7BB8003D78B5003D78B5003A74B2003A73B1003973B1003971
      AF003871AF003871AF003770AE003770AE00376EAC00366EAC003972AE001443
      9100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C2994800BF954200D8B46600DABC7C00BCB6AD007194BA006494
      CA003C78B600234F95000002570029589C003E78B6003A73B1003B73B1003973
      B1003971AF003871AF003870AE003770AE003770AE00366EAC003A72AF001444
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C79D4C00C79D4C00C79D4C00C79D
      4C00C79D4C00C79D4C00C79D4C00C79D4C00C79E4D00C89E4E00C89E4E00C89E
      4E00C69B4A00C99F4E00E4C17600CFB98F00BEC0C600BEBBB9007193B8006594
      CA003D7BB800133D8A000020780018448E003F7BB7003C75B3003A74B2003A73
      B1003A73B1003972B0003871AF003970AE003770AE003770AE003A73AF001546
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4AD5D00CFA55500D0A65500D0A6
      5500D0A65500D0A65500D0A65500D0A75700CDA35300CCA25200CCA25200CA9D
      4C00E1B76500EAC98200CCC2B000C7CAD200C1C1C200BEBAB6007293B8006595
      CB003C77B600356EB100104AA0003771B1003E77B4003B75B3003C75B3003B74
      B2003B73B1003A72B0003A72B0003871AF003971AF003770AE003B74B0001547
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1E0BD00F0DDB000F1DDB100F1DD
      B100F1DDB100F1DDB100F1DDB100F3E1B800D7B06600CFA35200D0A25200FCD2
      7C00988E760090A0BC00D5D6D600C9C9C900C1C1C100BEBAB6007294B9006695
      CC003B76B500407AB700427CB8003F78B6003D77B5003D76B4003C75B3003C74
      B2003B74B2003B73B1003A72B0003A72B0003972B0003870AE003B74B0001549
      9700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DBB46E00D9AD5C00F8D283005665
      7F00001F8F0093A3BF00D8D5D200C9C9C900C1C1C100BEBAB6007294B9006595
      CC003B76B5003F79B7003F78B6003E78B6003E77B5003D77B5003D76B4003C75
      B3003C74B2003B74B2003B73B1003A73B1003A73B1003971AF003C75B100164A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EBCB8900E9C98700F0F0F000002E
      9300002E8E0095A5BF00D8D5D200C9C9C900C1C1C100BEBAB6007295BA006796
      CD003C77B6003F79B7003F79B7003E79B7003E78B6003D77B5003D76B4003D76
      B4003C76B4003C74B2003B74B2003A74B2003A73B1003A72B0003D76B200164C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000033
      8F000030900095A6C000D8D5D100C9C9C900C1C1C100BEBAB6007395BA006697
      CD003C78B700417BB9003F79B7003F79B7003E78B6003E78B6003D78B6003D76
      B4003C76B4003C76B4003B75B3003B74B2003A73B1003A73B1003D77B300174D
      9D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000034
      92000032930095A6C000D7D5D100C9C9C900C1C1C100BEBAB6007395BA006797
      CE003D78B800407BB900417BB9003F79B7003F79B7003E79B7003F78B6003D77
      B5003D77B5003C76B4003C75B3003B75B3003B74B2003A73B1003E77B300174E
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000036
      95000034950096A7C100D7D5D100C9C9C900C1C1C100BEBAB6007495BB006897
      CE003E7AB900427CBA00407BB900417AB800407AB800407AB8003F79B7003E78
      B6003D78B6003D77B5003D76B4003C75B3003C75B3003B74B2003E77B3001850
      A100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000038
      97000036970096A7C200D7D5D100C9C9C900C1C1C100BEBAB6007495BB006798
      CF003E7AB900427DBB00427CBA00417BB900407BB900407AB800407AB8003E78
      B6003E78B6003E77B5003E77B5003D76B4003D76B4003B75B3003F78B4001951
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000003A
      990000389A0096A7C200D7D5D100C9C9C900C1C1C100BEBAB6007496BB006898
      CF003F7BBA00427DBB00427DBB00417CBA00417CBA00407BB900407AB8003F79
      B7003F79B7003F79B7003E77B5003E77B5003D77B5003C75B3004079B5001953
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000003C
      9B00003A9C0096A8C300D7D5D100C9C9C900C1C1C100BEBAB6007497BC006899
      CF003F7CBB00437EBC00427DBB00427CBA00417CBA00417CBA00407BB900407A
      B800407AB8003F79B7003F79B7003E78B6003E77B5003D77B5004079B5001A54
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000003E
      9E00003C9E0098AAC500D7D5D100C9C9C900C1C1C100BEBAB6007597BC006999
      D000407DBC00437EBC00437EBC00427EBC00437CBA00417CBA00427CBA00407B
      B900407AB8003F79B7003F79B7003E79B7003E78B6003E77B500417AB6001A56
      A800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000040
      A0000040A2007F97B900DDD9D300C9C9C900C1C1C100BEBAB6007597BE00699A
      D100407DBC00447FBD00437FBD00447EBC00427EBC00437CBA00417DBB00417B
      B900417BB900407AB800407AB8003F79B7003E79B7003E77B500427BB7001A57
      A900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000446
      A5000648A700154C9B00D3CFC900DAD6CE00CECAC400CBC3B9007A9CBF006999
      D100417EBD004580BE004580BE00437FBD00447EBC00427EBC00437DBB00417C
      BA00407AB9003E79B8003D78B7003B76B5003A76B500407AB700467EB8001150
      A900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0001D5B
      B100094DA9000348A900094395004C6C9B00516F9B004B6894004D7DB2007BA6
      D8003D7BBC00447FBE00417EBD00407DBC003F7BBB003F7CBB003E7AB900417C
      BA004F85C0005E90C7006A98CB00729ECE0079A2D0006090C6001556AB00225E
      B200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000648E
      C900356EBC002461B5001154B0000C52AF000C51B000094FAF001F62B40099BA
      E1006597CD00538BC5006797CC00709ED000739FD10074A0D20076A1D200729D
      D0005B8CC700437ABE00306CB7001C5CAF000B4FA9001254AD003B72BE005282
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00081A4D4004D80C4005988C8005988C8005988C8005988C8005484C600437D
      BF0076A0D2006E9ACF005387C500417ABE004178BE00477CC1004A7DC3004B7E
      C4004B7EC4004D80C5004F81C6005082C6005183C600497DC3006390CA00F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B49E850000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F9F
      9F009A9A9A009595950096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      96009696960096969600959595009B9B9B00A1A1A10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F000F1F1F000F2F2F200F2F2F200F2F2F200F2F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F000F1F1F000F1F1F000F1F1
      F000F2F2F100F2F2F200F2F2F200F2F2F100F2F2F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC896000965A1500965A
      1500B36C1800C7711000F0DAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A3A300D7D6
      D600D0CDCE00C2C0C100C2C0C100B9B6B600B2AEAD00ACA7A700ADA8A800BBB7
      B600CFCCCB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000081818100A7A7
      A700717171007171710071717100707070006F6F6F006E6E6E006E6E6E006D6D
      6D006C6C6C006B6B6B006B6B6B006A6A6A006969690068686800676767006767
      6700666666006565650064646400616161009E9E9E0083838300000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200EBEDEF00EBEDEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEE
      F2000000000000000000000000000000000000000000EEEEF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F2ED00000000000000000000000000000000000000
      0000C3AC9000C3AC9000C3AC9000AA7E4800C58F5100D3A06500D3A46B00D3A4
      6B00D4A56E00D2A16700E2C4A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6
      F600E5E4E400DAD8D800D1CECE00CBC8C800C9C5C500C9C6C500C9C6C500CDCA
      C900D8D6D50000000000F1EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2D2D2009C9C9C007C7E
      800083858800828587008184860081838600808385007F8284007E8183007E80
      83007D7F82007C7F81007B7E80007B7D80007A7C7F00797C7E00787B7E00787A
      7D00777A7C0076797B0075787B00747779006A6C6E0097979700D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F3000000
      00000000000000000000E6DBC600E6DBC600E7DDCA00E7DDC900E7DDC900E6DC
      CA00E6DCCA00E8DDCB00E8DDCA00E8DECB00E9DDCE00E9DDCE00E8DDCE00E9DF
      D000F0E8DC00F0E8DC00F0E8DC00F2ECE300EFECE400EFEBE300EFECE400EFEC
      E400EFECE400F0ECE500EEE6DC00E9DFCF00E9DFCF0000000000000000000000
      00000000000000000000000000000000000000000000EBE9E900B5B1B100FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F7F700ECECEB00E2E1E100DCDADA00D7D5D400D4D2D100D1CECD00CECA
      C900CECAC900D3D0CE00D3D0CE00D8D6D500DEDBD900E2E0DF00E9E7E7000000
      00000000000000000000000000000000000000000000B6B6B600A6AFB8009485
      7600968473009684730095837200948271009482710093817000928170009280
      6F00917F6E00917F6E00907E6D008F7D6D008F7D6C008E7C6B008E7C6B008D7B
      6A008C7B6A008C7A69008B7968008B79670084786C0099A1A900B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F3000000
      00000000000000000000E8DECB00E8DECB00E8DECE00E9DFD000E9DFD000EBE0
      CF00EBE0CF00EAE1CE00EBDFD100EBDFD200E9E0D100E9E0D100EAE1D300EAE1
      D300EBE1D200EBE1D200EBE1D200EAE1D300EBE2D400EAE2D400ECE3D400ECE3
      D400EDE3D500EBE3D500EBE4D600EBE2D500EBE2D50000000000000000000000
      00000000000000000000000000000000000000000000E0DEDD00C6C3C300FFFF
      FF00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFE00C4C1
      F00000000000FEFFFC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FBFBFB00FCFCFC00FCFCFD00FCFDFD00FDFDFD00FDFDFD00FEFEFE000000
      000000000000F6F6F600F6F6F600EEEDED00E7E5E500E2E0E000DBD9D900F0F0
      EF000000000000000000000000000000000000000000BBC3CA00BC732B00E28F
      3E00E59E5600E59D5400E59D5400E59D5400E59D5400E59D5500E59D5500E59D
      5500E59D5500E59D5500E69D5500E69D5500E69D5500E69E5500E69E5500E69E
      5500E69E5500E69E5500E69E5500E7A05800E1893200B77B4100BBC1C8000000
      00000000000000000000000000000000000000000000F1F1F10000000000B3AE
      A5008B6531008B65310093651F00986A25009B6F290096692400CFC2BA00EDE1
      E000EADEDF00EAE5E600EAE5E600E8E3E100E6E1DF00E4E2E000E4E4E300E3E2
      E100E2E2DE00EAEAEB00B1A18000B1A18000876823008C702B008B6E2B00896F
      2C00917226009A7823009D792000917126009171260000000000F3F4F6000000
      00000000000000000000E8DECB00E8DECB00E8DECE00E9DFD000E9DFD000EBE0
      CF00EBE0CF00EAE1CE00EBDFD100EBDFD200E9E0D100E9E0D100EAE1D300EAE1
      D300EBE1D200EBE1D200EBE1D200EAE1D300EBE2D400EAE2D400ECE3D400ECE3
      D400EDE3D500EBE3D500EBE4D600EBE2D500EBE2D50000000000000000000000
      00000000000000000000000000000000000000000000D4D2D000D8D6D700FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FFFFFF009C96
      E7006255DC00F6F5FB00FEFEFC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FAFA
      FA00FBFBFB00FAFAFA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9FAF900F8F8
      F800F9F9F900F9F9F900F9F9F900F9F9F900F9FAFA0000000000000000000000
      000000000000DADADA0082828200898989007F7F7F0072798200D8761500FFF6
      E800F3D5BC00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F4D7BE00F4D7BE00F4D7BE00F3D4BC00FFFCEF00C4610100828C96007878
      78008A8A8A0083838300D0D0D0000000000000000000F3F3F400000000009473
      450097662200976622009F723200A2743300A6793700A1722D00E4D5C700E6D0
      C400CCB19A00D0BBA700D0BBA700F4ECE600FFF7F600FFF9F700FFFCFC00FFFF
      FF00FFFFFF00FFFFFF00C2B08E00C2B08E008F69210096742A0095742B009775
      2B009A7A2F009D7C3100A17E2D00967733009677330000000000F3F4F6000000
      000000000000E7CDAD00E9E1D300E9E1D300EAE0D000EAE0CE00EAE0CE00EAE1
      D000EAE1D000EBDFD300EAE0D100E9E1D200EBE1D300EBE1D300EBE1D300EBE1
      D300EBE2D400EBE2D400EBE2D400EBE2D500EBE3D500EDE3D500ECE2D600ECE2
      D600EBE4D700EBE4D700ECE3D700ECE4D600ECE4D60000000000000000000000
      00000000000000000000000000000000000000000000C7C3C200ECEBEC00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FFFFFE00CDCA
      F2007D74E100A49DEB00FFFFFE00FCFCFC00FBFBFB00FAFAFA00FAFAFA00FBFB
      FB00FAFAFA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9
      F900F8F8F800F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800000000000000
      0000E5E5E50084848400B0B0B00094949400B8B9B900616A7300D1721400FDE8
      D400E7BB9A00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E7BB9900FFF1DE00B95D0300717A8300B3B3
      B30094949400ADADAD008B8B8B00D9D9D90000000000F3F4F60000000000956D
      39009B6B29009B6B29009E713300A1733400A57738009F723100DECDC300C3A2
      8800946935009B7548009B754800E4D6CB00FDF0EF00FAEDEA00FBF1F000FCF7
      F500FDFBFA00FFFFFF00BBA78B00BBA78B00815C1E008A66280089672B008B69
      2A00916F2D0096752F009A752C00917130009171300000000000F3F4F6000000
      0000B5762C00D6A46A00EDE8DC00EDE8DC00EAE0CF00EAE0D200EAE0D200EADF
      D200EADFD200E9E1D100EAE0D300EBE1D300EAE1D300EAE1D300EBE2D400EBE3
      D500EAE3D400EAE3D400EAE3D400ECE3D500EDE2D500EBE3D700EBE5D700EBE5
      D700ECE3D700EDE4D700EEE6D800ECE3D600ECE3D60000000000000000000000
      00000000000000000000000000000000000000000000BAB6B600FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FDFDFD00FFFFFD00B7B2
      ED005243D8004332D700FFFFFF00FCFCFB00FAFAFA00FBFBFB00FBFBFB00FAFA
      FA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8
      F800F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700000000000000
      000094949400B4B4B4009393930096969600AAAAAA00767F8800BC5D0100FFF9
      E400F3C8A700F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F4C9A900FFEDCD00BC6818006B737B00B0B0
      B0009696960094949400AFAFAF009191910000000000F3F4F500000000009870
      3D009C6929009C6929009F713300A2743500A6763800A1733100DECAC200C09F
      87009065360098734A0098734A00E4D1C700FCEBE800F7E8E400F9ECEA00FAF1
      EF00FCF5F300FFFFFF00B6A58B00B6A58B007A521A00825B2600825C2700845E
      26008A672A0094712E00947029008D6D30008D6D300000000000F3F4F6000000
      0000CBAD8900D5A46A00EDE8DE00EDE8DE00EAE0D200EAE0D100EAE0D100EAE1
      D200EAE1D200EAE1D300EBE1D300EAE1D300ECE2D400ECE2D400EBE2D400ECE4
      D500EDE2D500EDE2D500EDE2D500ECE3D600EBE5D700EBE4D700EDE4D700EDE4
      D700EEE6D800EDE5D900EDE5D800EDE4D800EDE4D80000000000000000000000
      00000000000000000000000000000000000000000000BAB6B600FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FEFEFD00FFFF
      FF001400CA001200CD00B4AEEE00FFFFFC00FBFBFB00FAFAFA00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8F800F7F7
      F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F70000000000000000000000
      00009A9A9A00A0A0A0009F9F9F009F9F9F009C9C9C00BCBCBD008B8D90009089
      82008A7E74008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008B7F76008B7F76008B7F76008A7E75008F857A0088878600BEBFC0009B9B
      9B009F9F9F009F9F9F009F9F9F009696960000000000F3F4F500000000009A71
      3E009E6A2B009E6A2B00A2713300A4723500A7773900A2703400D5C8BE00BD9C
      85008B61380094714E0094714E00E4CAC100F9E3E000F6E2DC00F7E6E300F8EB
      E800F9EEEC00FFFFFF00B4A08800B4A08800714817007A5121007B5422007B53
      230085602800926E2F00906B28008B6930008B69300000000000F3F4F6000000
      000000000000C6945B00EDE8DF00EDE8DF00E9E0D200EAE1D300EAE1D300EBE1
      D300EBE1D300EAE1D300EBE2D400EBE2D400EBE3D500EBE3D500ECE3D500ECE2
      D600EBE4D700EBE4D700EBE4D700EBE4D600ECE4D700EEE5D800EEE6D800EEE6
      D800EDE6D800EDE5D900EEE6DA00ECE3D600ECE3D600F5F0EB00F5F0EB000000
      00000000000000000000000000000000000000000000C3C0BF00FFFFFF00FEFE
      FE00FDFDFD00FCFCFC00FCFCFC00FDFDFD00FCFCFC00FAFAFA00F3F3F200FFFF
      FF006C5FE0000C00CC005F52DD00FFFFFF00FDFDFD00FBFBFC00FBFBFC00FBFB
      FB00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8F800FBFBF800FFFF
      F900FCFCF800F8F8F800F8F8F800F7F7F700F6F6F600F7F7F700000000000000
      000099999900AAAAAA00A7A7A700A8A8A800A8A8A800A5A5A500ADAEAE00BFC0
      C100C0C2C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C1C300C0C1C300C0C1C300C0C2C300C0C1C300AFB0B000A4A4A400A7A7
      A700A7A7A700A8A8A800A9A9A9009696960000000000F3F4F500000000009C72
      3F00A06A2C00A06A2C00A4713500A6743700A9783A00A4723400CAC0B500AE94
      7E00855C37008F6D4E008F6D4E00E0C4BA00F9DED800F5DCD700F5E0DD00F7E5
      E200F8E9E500FFFFFF00B19D8900B19D89006A411400734A1F00744B2000744C
      200082592700906C2F008E682800886630008866300000000000000000000000
      000000000000CCAA8000EDE7DD00EDE7DD00EBE1D300EAE1D300EAE1D300EAE2
      D400EAE2D400ECE2D500EAE1D300EBE2D200ECE2D300ECE2D300EDE4D700EDE7
      D900ECE3D600ECE3D600ECE3D600ECE3D600EDE5D600EDE5D800EDE5D800EDE5
      D800EEE6DA00EEE5DA00EFE7DD00ECE3D600ECE3D60000000000000000000000
      00000000000000000000000000000000000000000000CBC8C800FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FBFBFB00FEFEFE00E5E4E300BDB9B800D1CE
      C300847AC4000B00CE001200D100B8B2D900E6E4DC00E9E7E600E9E7E600F1F0
      F000F8F8F700FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFFF900EEEEF7008479
      ED00CAC6F300FCFDF800FCFDF800F6F6F600F7F7F700F6F6F600000000000000
      000098989800B3B3B300AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ACABAC00BBB3BE00BBB4
      BE00AFADAF00AFAFAF00B2B2B2009696960000000000F2F4F500000000009E74
      4000A36C2B00A36C2B00A6723600A7753800AB783C00A5723600C6BBB100A78C
      77007D55340088684C0088684C00DEBFB300F9D8D200F3D7D000F5DBD700F5E0
      DC00F7E3DF00FFFDFE00AF9B8800AF9B8800653A12006D431D006E461E006D44
      1E007D55250091692E008D63270087642F0087642F0000000000000000000000
      000000000000E0CFBB00ECE3D600ECE3D600EAE1D300EBE2D400EBE2D400EBE2
      D400EBE2D400EAE1D100F0E9DE00F3ECE400F5F1E800F5F1E800EBE7DE00DFD6
      CA00F4EFE800F4EFE800F4EFE800F4EFE700F3EEE600EEE7DA00EEE4D800EEE4
      D800EFE7DB00EEE7DC00EFE8DD00F2ECE200F2ECE200AE855500AE8555000000
      00000000000000000000000000000000000000000000D2D0D000FFFFFF00FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FBFBFB00FFFFFF00D6D4D300ECEBEB00FFFF
      FF00FFFFFF000100C9001500D0002A15D300FFFFED00E5E3E200E5E3E200DDDB
      DB00D9D6D500D6D2D200D6D4D300DAD8D700ECECDD00D2D0E9004E3CE500796C
      EC0000000000F7F7F600F7F7F600F7F7F700F6F6F60000000000000000000000
      000097979700BCBCBC00B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B5B4B500DCDCDB0084CF660085C7
      6600D4DECE00B6B4B600BBBBBB009595950000000000F2F4F50000000000A276
      4100A66E2C00A66E2C00A8733600AB763800AD793C00A7733600C3BDB700BFAF
      A300A48B7C00B19F9200B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC978900AC97890057300D0060381800613A1A006039
      1900774F230092692E008B62270087622F0087622F0000000000000000000000
      00000000000000000000EAE0D100EAE0D100EBE2D400EBE2D400EBE2D400EBE1
      D100EBE1D100F6F3EC00FFFFFF00FFFFFF00FAFCFE00FAFCFE00A0723A00945C
      1B00E5E2DD00E5E2DD00E5E2DD00FFFFFF00FFFFFF00FEFFFF00F0E8DE00F0E8
      DE00EEE7DC00EEE7DD00EFE9DE00F3EFE800F3EFE8009A672C009A672C000000
      00000000000000000000000000000000000000000000DCDAD900FFFFFF00FDFD
      FD00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FFFFFF00C9C6C500F6F5F500FBFC
      FC00FFFFFE008A81E4000E00CE000D00D000C5C1F200FFFFFE00FFFFFE00FCFD
      FD00FCFCFC00FCFDFD00FCFCFC00FFFFFC00C8C4F0002C15E1004C3AE100D7D5
      F300FCFDF700F7F7F700F7F7F700F6F6F6000000000000000000000000000000
      000096969600C5C5C500BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBBBE00CFE3D50051BB2800279F
      0000BED8B200C0BCC100C3C3C3009595950000000000F2F4F50000000000A276
      4100A66E2C00A66E2C00A8733600AB763800AD793C00A7733600C3BDB700BFAF
      A300A48B7C00B19F9200B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC978900AC97890057300D0060381800613A1A006039
      1900774F230092692E008B62270087622F0087622F0000000000000000000000
      00000000000000000000E9E0D000E9E0D000ECE4D500EDE3D500EDE3D500EAE0
      D100EAE0D100FFFFFF00F8F5EF00E9E1D8009E6F37009E6F3700985E1C009A61
      21009F6F37009F6F37009F6F3700E1DACE00F0E8DC00FEFFFF00F7F5EF00F7F5
      EF00EEE7DB00EEE9DD00EFE9DF00F5F2EA00F5F2EA0091591800915918000000
      00000000000000000000000000000000000000000000E3E2E200FFFFFF00FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FFFFFF00C0BDBC00FEFEFE00FBFB
      FB00FFFFFB00E3E4F5000000CB001600D0001E07D500FFFFFC00FFFFFC00FAFA
      F900F9F9F900F9F9F800FFFFFA009B91EE000200DD00280EE5007E74DF00FFFF
      F900F7F7F700F7F7F700F7F7F700F5F5F500F6F6F60000000000000000000000
      000095959500CCCCCC00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C3C500C5E7D500BBF1B10078D1
      5E00CDE4C700C6C3C700CCCCCC009595950000000000F2F4F50000000000A577
      4300A96F2D00A96F2D00AB753800AD783A00AF7A3C00AD793C00A9886900B899
      7900B9997D00C4AA9200C4AA9200B0937400A9856200B1876600AF886800AE8A
      6900AD8A6A00B39375008F6A47008F6A470070461C00734B2100724A2200714A
      21007F56270090662E008B60270086612F0086612F0000000000000000000000
      00000000000000000000E9E0D000E9E0D000ECE4D500EDE3D500EDE3D500EAE0
      D100EAE0D100FFFFFF00F8F5EF00E9E1D8009E6F37009E6F3700985E1C009A61
      21009F6F37009F6F37009F6F3700E1DACE00F0E8DC00FEFFFF00F7F5EF00F7F5
      EF00EEE7DB00EEE9DD00EFE9DF00F5F2EA00F5F2EA0091591800915918000000
      000000000000000000000000000000000000EEEDED00EEEDED00FDFEFE00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFFFF00BDB9B800FFFFFF00FAFA
      FA00F9FAF900FFFFFE004D39D9001200D0000A00D200958CE900958CE900FFFF
      FB00FCFDF900FFFFFB006B5EE7000200DC001B01E0007267ED00EAE9DD00FAFB
      F900F7F7F700F5F5F500F5F5F500F6F6F600F6F5F500F4F4F400000000000000
      000094949400D3D3D300CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00D0CCCF00C8DAD400D8DD
      E100D0D0D200CDCDCD00D4D4D4009494940000000000F2F4F50000000000A87A
      4400AC712F00AC712F00AF773800B0793B00B17B3D00B27F4300AD793E00B07F
      4600B4865000BB926400BB926400AA7B45009761210093602200915E21008E5C
      20008B5B1E0089591C008E5F25008E5F250093662E0091652D0090642D008F64
      2D008F632D008E632D008C5F2600866030008660300000000000000000000000
      00000000000000000000EBE1D200EBE1D200EDE2D600EBE4D600EBE4D600EAE1
      D200EAE1D200FFFFFF00F3F1EC00A67C4A00975D1B00975D1B009E6729009F68
      2A009B611D009B611D009B611D00B0906800ECE5DC00FFFFFF00F8F5F100F8F5
      F100EEE7DC00EFE9DE00F0EAE000F5F2EB00F5F2EB009B6629009B662900B69A
      770000000000000000000000000000000000E8E7E700F6F5F500FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFFFF00BEBAB900FFFFFF00F9F9
      F900FAFAFA00FEFFFA00EEEDF7000000CD001900D4001000D4001000D400FFFF
      FA00FFFFF9003A25DF000B00DB001000DE004E3EE600FFFFF900E3E2DE00F9F9
      F900F5F5F500F6F6F600F6F6F600F5F5F500F5F5F400F4F4F400000000000000
      000093939300DBDBDB00D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D8D8D800D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D8D8D800D4D4D400D4D4D400D5D3D400D4D2
      D300D4D4D400D4D4D400DBDBDB009494940000000000F2F3F50000000000AC7C
      4600AF743000AF743000B2793A00B37B3A00B47E3F00B5804400B7854A00B989
      5200BB8E5A00C19A6D00C19A6D00B98C5900A6713400A3713400A16F33009F6E
      32009D6B33009A6A320097683100976831009567310093662E0092642F009164
      2D0090632D008E622C008C5E2500866031008660310000000000000000000000
      00000000000000000000EBE1D300EBE1D300ECE4D700ECE3D700ECE3D700ECE3
      D500ECE3D500FFFFFF00B6956D00955B17009E692A009E692A00A06A2A00A06B
      2B00A26C2D00A26C2D00A26C2D009E611C00C5B19A00FFFFFF00F9F6F300F9F6
      F300EEE8DC00F0E9E000F1EBE100F6F2EC00F6F2EC009B6A2F009B6A2F00996B
      370000000000000000000000000000000000E5E3E300FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00C1BEBD00FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FFFFFD004D3CDB001300D3001400D5001400D5005341
      E0002209DB001300DA001200DC00240DE000F5F6F700F9F9F300E4E2E100F7F7
      F700F6F6F600F5F5F500F5F5F500F4F4F400F5F4F500F4F4F400000000000000
      000092929200E3E3E300DBDBDB00DBDBDB00DBDBDB00DBDBDB00DDDDDD00E6E7
      E800B9BBBC00B1B3B400B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B5
      B700B2B5B700B2B5B700B2B5B700B2B5B800B2B5B800B2B6B800B2B6B800B2B6
      B800B2B6B900B2B6B900B2B5B800B8BBBE00E5E6E700DEDEDE00DBDBDB00DBDB
      DB00DBDBDB00DBDBDB00E3E3E3009494940000000000F2F3F50000000000AF80
      4800B3763000B3763000B57C3B00B4783400B5753000B4783600B57D3A00B781
      4300B9864C00BD8F5C00BD8F5C00BA8A5700A26926009F6523009D6322009861
      210095602000935E2100915B1E00915B1E008F5A1E008B581D008A581D008856
      1D008A5B240090642F008D5E2600885F3000885F300000000000000000000000
      00000000000000000000EAE2D400EAE2D400EDE4D700EEE6D900EEE6D900F0EA
      E100F0EAE100C9B49B00945713009F692A00A06A2B00A06A2B00A16B2C00A36D
      2E00A46E3000A46E3000A46E3000A56F2F00A1692800E4E1DE00FCFBF800FCFB
      F800F0E9DE00F1EBE000F1EAE200F6F3ED00F6F3ED009A6A33009A6A33008E55
      120000000000000000000000000000000000E5E3E200FFFFFF00FBFBFB00FCFC
      FC00FBFBFB00FAFAFA00FAFAFA00FCFCFC00F6F5F600C8C5C400FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FEFFF900E7E6F6000800D1001C00D6001C00D6001600
      D8001B00DA000D00DA00331EE000FFFFF800FDFEF800EFEEEE00E7E6E600F7F7
      F700F5F6F500F4F5F400F4F5F400F5F4F500F4F5F500F4F4F400000000000000
      000092929200EAEAEA00E1E1E100E1E1E100E1E1E100E3E3E300DDDFE0007576
      7500C0B0A300C9B7A800C8B5A700C8B4A600C7B3A400C7B2A200C6B1A000C6AF
      9E00C5AE9C00C5AD9A00C5AB9800C4AA9600C4A89400C3A79200C3A69000C2A5
      8E00C2A38C00C1A28A00C2A18800BCA0880077787600D6D7D900E4E4E400E1E1
      E100E1E1E100E1E1E100EAEAEA009393930000000000F2F3F50000000000B484
      4B00B87A3100B87A3100B77A3300BD8D5400C6A27800C7A27600C7A47B00C8A6
      7F00CAAA8500CDAF8D00CDAF8D00D0B69600BE9B6F00BC986D00BA976D00BB98
      6D00BA986E00BA976C00B7966E00B7966E00B6966C00B7956D00B6956D00B798
      7000A47F50008B5B23008D5E2700885F3000885F300000000000000000000000
      00000000000000000000EBE3D400EBE3D400EEE5D800F0EADE00F0EADE00D2C0
      A800D2C0A80091520A00A0692B00A16B2C00A26B2A00A26B2A00A0682800A36A
      2900A7723200A7723200A7723200A8723300A86F2D00AE7E4900E8E6E100E8E6
      E100F3EDE500F1EAE200F2ECE200F7F2EE00F7F2EE00986A3200986A3200AA74
      340000000000000000000000000000000000E6E5E400FEFEFE00FCFCFC00FBFB
      FB00FAFAFA00FBFBFB00FBFBFB00FCFCFC00EEEEEE00CECBCB00FEFEFE00FAFA
      FA00FAFAFA00F9F9F800FFFFFB00F4F5F7001A01D4001B00D6001B00D6001C00
      D9001500D9006455E500FFFFF900FBFBF700F8F8F800EAE9E900ECEAEA00F6F6
      F600F4F4F400F5F4F500F5F4F500F5F5F500F5F5F500F4F3F400000000000000
      000091919100F1F1F100E7E7E700E7E7E700E7E7E700F2F3F40076716C00F2B5
      7700FEECDE00F9E3D200F3D8C000F0D3B800F0D2B700EFD1B500EFD0B200EECE
      B000EECCAE00EDCBAC00EDCAAA00ECC8A800ECC7A500EBC5A300EBC4A100EBC3
      9F00EAC19D00E9BF9A00EEC4A400F5D1B500EFA9620074716E00F2F3F400E7E7
      E700E7E7E700E7E7E700F1F1F1009393930000000000F2F3F50000000000B889
      4D00BC7F3300BC7F3300BA762800D0B69600F3FFFF00F2FAFE00F3FAFF00F7FD
      FF00F7FDFF00F9FFFF00F9FFFF00FCFFFF00FCFFFF00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6C6B000824D10008F5F2800896032008960320000000000000000000000
      00000000000000000000ECE3D500ECE3D500EDE6D900F0E9DE00F0E9DE00DECF
      BB00DECFBB0095581200A16B2B00A36C2C009F6725009F672500E4DED600B487
      5200A66D2900A66D2900A66D2900AB743600AD753700AC702C00B48C6000B48C
      6000E8E4DD00F4EFE700F2ECE400F6F4EE00F6F4EE00996A3300996A3300AB77
      3C00A27F5400A27F54000000000000000000E9E8E700FEFEFE00FBFBFB00FAFA
      FA00FBFBFB00FAFAFA00FAFAFA00FCFCFC00E8E6E700D4D2D100FDFEFE00FAFA
      FA00FFFFFA00FFFFFE00A6A0EA000100CD001900D4001C00D6001C00D6001C00
      D9001300D9007A6CE700FFFFFA00F7F7F700F7F7F700E7E6E500EEEEED00F5F5
      F500F4F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2F200000000000000
      000091919100F7F7F700EDEDED00EDEDED00EDEDED00F3F6F80083705E00EEAF
      6F00F8EADF00F5E2D400E7CAAC00E1C19C00E2C19C00E1C09B00E0BF9A00E1BE
      9800E0BD9700E0BC9500DFBB9400DEBA9300DFBA9100DFB99000DEB88F00DDB7
      8D00DEB68C00DDB58900EBC4A700F2D4BC00E295470098999B00EAEBEB00EEEE
      EE00EDEDED00EDEDED00F7F7F7009292920000000000F1F3F50000000000BE8E
      4F00C1843600C1843600BE7C2B00CCAD8700EAEBE900E6E3DD00E8E4DF00EAE6
      E100EBE8E300EDEBE600EDEBE600F0EEEA00EFEBE700ECE8E400EEEBE600EFEC
      E700EFEDE900F0EEEA00F3F1EC00F3F1EC00F4F2EE00F6F3EF00F5F3F000FCFE
      FF00CAB29800844F13008F5E28008A5F33008A5F330000000000000000000000
      00000000000000000000ECE4D700ECE4D700EEE6DA00EEE6DB00EEE6DB00F3EF
      E600F3EFE600DFCEBA0096570F009B5D1500D7C7B300D7C7B300F6F3EC00F2F0
      EA00AA723200AA723200AA723200AC733300B0783800B27A3A00B0732C00B073
      2C00B9977300ECEAE300F4EFE800F7F3EF00F7F3EF009A6C35009A6C3500AD7B
      400097652B0097652B000000000000000000EBEAE900FDFDFD00FAFAFA00FBFB
      FB00FAFAFA00F9F9F900F9F9F900FCFCFC00E2E0E000DAD9D800FDFDFD00FFFF
      FB00D9D6F2002F1AD2000C00CD001900D1001100D3000F00D4000F00D4001800
      D8001D00DB000200D800D1CEF200FEFFF600F7F8F800E3E2E100F1F1F100F5F5
      F500F4F4F500F5F5F500F5F5F500F5F5F500F3F3F300F2F2F200000000000000
      00008B8B8B0000000000F3F3F300F2F2F200F3F3F300F7F9FB0083756700ECAA
      6800F9EDE300F5E3D500F7E5D900F7E5D900F7E3D600F6E2D300F6E0D100F5DE
      CE00F4DCCB00F4DAC800F3D8C600F3D7C300F2D5C000F2D3BD00F1D1BB00F0CF
      B800EFCDB500EFCCB200EBC5A800F5DBC500DD8B380099A2AB00EBEBEB00F4F4
      F400F2F2F200F2F2F200000000008A8A8A0000000000F1F3F40000000000C393
      5200C7893700C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7E300E9E7
      E300EAE9E400ECEBE700ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFC
      FD00C9B39800875014008F5F27008A6133008A61330000000000000000000000
      00000000000000000000EDE4D800EDE4D800EFE6DC00EEE7DC00EEE7DC00EDE5
      D900EDE5D900FFFFFF00E4D6C400D6C3AA00F2EFE600F2EFE600EFE7DD00F2EC
      E300E9E2D600E9E2D600E9E2D600A96D2700B2793700B47C3B00B57E3C00B57E
      3C00B4773000BDA18000EEEBE500FAF7F400FAF7F4009E6E37009E6E3700AE7D
      4400AC763700AC7637000000000000000000ECEBEB00FCFCFC00FBFBFB00FAFA
      FA00F9F9F900FAFAFA00FAFAFA00FDFDFD00DBDAD900E0DFDE00FFFFFD00BAB6
      EB000D00C9001300CD001900D0000000CD005F4FE000FFFFFB00FFFFFB001600
      D7001A00DA001800DB001A00DD00FFFFF900F9F9F700E0DEDD00F4F4F400F5F5
      F500F5F4F500F5F5F500F5F5F500F3F3F300F3F3F300F3F3F300000000000000
      0000C0C0C000B3B3B30000000000FEFEFE00000000000000000080746700EAA7
      6300FAEFE700F7E8DC00EAD1B700E5C8A800E5C8A800E4C7A600E4C6A500E4C5
      A300E4C4A200E3C3A000E3C29F00E3C19D00E2BF9B00E1BF9A00E1BE9800E1BD
      9700E1BB9500DFBA9300EDC9AE00F8E0CC00DB8A3A00929AA200F5F5F5000000
      0000FEFEFE0000000000C1C1C100B3B3B30000000000F1F3F40000000000C393
      5200C7893700C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7E300E9E7
      E300EAE9E400ECEBE700ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFC
      FD00C9B39800875014008F5F27008A6133008A61330000000000000000000000
      00000000000000000000EDE5DA00EDE5DA00EEE8DD00EFE8DD00EFE8DD00EDE7
      DB00EDE7DB00FAF8F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1EBE400AD6F2700B67D3B00B77F3E00B77F
      3E00B9814000B77A3200BEA28100F1F1EF00F1F1EF00A3743D00A3743D00B07F
      4600BD874900BD874900AD93750000000000EDECEC00FCFCFC00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00FDFEFE00D4D2D200E9E8E800FFFFFF00E7E7
      F9000000C8000F00CF001400D100CECBF200FFFFFC00FFFFF800FFFFF800CAC6
      F1000500D7001C00DB001100DC004431E300FFFFFA00DEDCDB00F6F6F600F5F5
      F500F5F5F500F4F4F400F4F4F400F3F4F400F3F3F30000000000000000000000
      000000000000A1A1A10084848400C5C5C500C2C2C200C3C5C6007D726800E9A4
      5F00FBF2EB00F8EADF00EFDAC600EBD4BC00EBD3BB00EBD2B900EBD1B700EAD0
      B500EACEB300EACDB100E9CBAF00E8CAAD00E8C8AB00E7C7A800E6C5A700E6C4
      A500E5C3A300E5C1A000EDCAB100FAE4D000D68739008B939B00BBBBBB00C6C6
      C600BDBDBD0089898900969696000000000000000000F1F2F40000000000C999
      5400CC8F3900CC8F3900CA882C00CFB18B00EFF1F200EBEAE600EBE9E500EAE8
      E400E9E8E400EAE9E500EAE9E500ECEAE600F0EFEB00EBE8E500EBE9E500ECEA
      E600EEEBE800EEECE900F0EEEB00F0EEEB00F1EFEC00F1EFEC00F1EFED00F6F8
      F900C6AF9500885115008F5E28008B6234008B62340000000000000000000000
      00000000000000000000EDE5DA00EDE5DA00EEE8DD00EFE8DD00EFE8DD00EDE7
      DB00EDE7DB00FAF8F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1EBE400AD6F2700B67D3B00B77F3E00B77F
      3E00B9814000B77A3200BEA28100F1F1EF00F1F1EF00A3743D00A3743D00B07F
      4600BD874900BD874900AD9375000000000000000000FCFCFC00F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FDFDFD00DEDCDC00BBB7B600BFBCBB00D5D3
      C4007C72C4004A39C300E5E4E100F7F7ED00F3F3F300F8F8F800F8F8F800FFFF
      FD008C83EC000700DA001D00DE000700DE008A80ED00F5F5DB00F7F7F700F5F5
      F500F4F4F300F3F3F400F3F3F400F4F3F300F3F2F200F6F5F400000000000000
      000000000000000000000000000073737300ABABAB00A4A6A700B8B0A800E49C
      5500FDF5EF00F8EBE100F9EBE200F9EBE100F8E9DF00F7E7DC00F7E6D900F7E4
      D700F5E2D400F4E0D000F4DDCD00F2DACA00F0D7C500EFD4C100EED2BE00EDD0
      BB00EDCFB900EDCEB700EAC9B000FCE7D400C97C3100BBC3CB00A9A9A9007474
      7400D3D3D300F9F9F900000000000000000000000000F1F2F40000000000CFA0
      5600D2963B00D2963B00D0902F00D0B38C00F1F2F300ECEAE600EDEAE600EBE9
      E500EBE9E400EAE9E400EAE9E400EBE9E400ECEBE600EEECE900E7E5E000E9E7
      E200EBE8E400ECE9E500EDEBE700EDEBE700EDECE800EDECE800EDEBE700F1F2
      F200C3AC920089541600905F27008C6335008C63350000000000F3F4F6000000
      00000000000000000000EEE6DA00EEE6DA00EEE9DE00EEE8DE00EEE8DE00EFE9
      DE00EFE9DE00EEE8DD00F6F1EC00F8F6F100F7F4F100F7F4F100F7F5F100F8F5
      F200F8F5F200F8F5F200F8F5F200FEFFFF00E7DBCC00B1732B00BA803F00BA80
      3F00BC834200BD844300BB7C3400C7AD8E00C7AD8E00A77A4700A77A4700B584
      4B00C7945800C7945800976F3F000000000000000000FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F8F8F800000000000000000000000000F8F9
      F9000000000000000000E4E2DF00D9D7D700D4D1D000D0CDCC00D0CDCC00D1CD
      CC00EBEBD1004E3CD3000E00DD001C00DF000300DF00928ADE00FFFFF800F4F3
      F300F3F3F400F3F4F400F3F4F400F4F2F200F3F2F20000000000000000000000
      00000000000000000000000000008C8C8C00C5C5C500BCBEBF00B8B3AE00E198
      4E00FEF8F200FAF1EA00E7CEB000DEC09A00DFC19A00DFC09900DFBF9900DEBE
      9800DEBD9600DEBC9500DDBB9300DCB99000DAB68E00D9B58C00D9B48A00D9B3
      8A00D8B38900D8B28600E9C9B500FBE7D400BD732B00B9C0C800C1C1C0008989
      89000000000000000000000000000000000000000000F1F2F40000000000D3A5
      5900D79E3B00D79E3B00D6973000D2B48E00F5F6F900EFEEEB00EFEEEA00EEED
      EA00EDECE900EDECE800EDECE800ECECE900ECEBE700EEEDEA00E9E8E300E7E6
      E100EAE9E400EAE8E500EBEAE600EBEAE600EBEAE700EAE9E500E9E9E500EDEE
      F000C1AA91008E571900916129008E6536008E65360000000000F3F4F6000000
      00000000000000000000EEE7DC00EEE7DC00EFE9DE00F0E9DF00F0E9DF00F0E9
      E000F0E9E000F1EBE000F0EADF00F0E8DE00F0EADF00F0EADF00F1E9E000F1EA
      E000F0EBE100F0EBE100F0EBE100F0EAE100F5F3EF00E5D8C900B6762E00B676
      2E00BC844100BE854400C0854300C3925A00C3925A00AB815100AB815100BA88
      5000CB985D00CB985D0099662A00EFEEED0000000000FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00F8F8F800F8F8F800F9F9F900F8F8F800F7F7F700F8F8F800F8F8
      F800F9F9F900FAFAFA00F9F9F900FAFAFA000000000000000000000000000000
      00000000000000000000321DE0001000DE001C00E0000700E2009991ED00FFFF
      F500F3F4F400F4F2F200F4F2F200F3F3F300F3F2F20000000000000000000000
      00000000000000000000000000008B8B8B00ADADAD00A4A5A600A29E9B00E297
      4B00FFFAF600FAF1EA00F9EEE500F8ECE200F7EAE000F7E8DD00F6E7DB00F5E5
      D800F4E2D400F2DECF00EED7C700EAD1BF00E5CBB700E3C6B100E0C2AE00DFC1
      AC00E0C1AA00E1C2AB00E5C6B100F6DCC400B3723300A2A7AD00A7A6A6008787
      87000000000000000000000000000000000000000000F0F2F40000000000D8AC
      5B00DCA53C00DCA53C00DB9F3100D2B68E00F5F7F900F2EFEB00EFEEEA00F0ED
      EB00EEECE900EDEDE800EDEDE800EDEBE900EDEBE800EDEBE800EEECE900E5E3
      DE00E7E5E000E7E5E000E8E6E100E8E6E100E7E5E100E6E4E100E6E5E100E9EA
      E900BDA78C008F5A1800916428008F6937008F69370000000000F3F4F6000000
      000000000000F8F4F000EEE8DC00EEE8DC00F1E9E000F0E9E000F0E9E000F1EB
      E000F1EBE000F0EAE100F0EAE200F1ECE300F1EBE200F1EBE200F1ECE300F1EC
      E300F0EBE400F0EBE400F0EBE400F2EDE400F2ECE500F6F3EF00EBE5DB00EBE5
      DB00BA7D3800BF844100C0833D00CEAF8B00CEAF8B00B6895500B6895500BF8E
      5400CB9A6000CB9A6000BB8648000000000000000000FAFAFA00FAFAFA00FAFA
      FA00F8F8F800F9F9F900F9F9F900F8F8F800F7F7F700F8F8F800F8F8F800F8F8
      F800F8F8F800F6F6F600F7F6F700F7F7F700F5F5F500F6F6F600F6F6F600F5F5
      F500F5F4F400FAFAF500000000003D29E2000900DF000E00E1001600E4009B92
      ED0000000000F3F2F300F3F2F300F4F3F300F3F2F20000000000000000000000
      00000000000000000000000000008A8A8A00A7A7A700A7A8A900A4A2A100E194
      4600FFFCF900FBF4F000F4E7DA00F2E2D200F1E1D000F1E0CE00F1DFCC00F0DC
      C900EED9C500EBD4BE00EAD4C400E6CEBE00E0C9BD00DCC5B900D8BCAA00D9BF
      B000DCC2B700DFC8BC00E2CBBE00EECBAB00B1794500A5A9AE00A9A9A9007878
      78000000000000000000000000000000000000000000F0F1F40000000000DCB5
      5D00E0AC3F00E0AC3F00E1A93300D4BA8F00F7F8FC00F3F2EF00F2F1EE00F1F0
      EC00F1EFEC00F0EEEB00F0EEEB00EFEEEA00EFEDEA00EFEDEA00EFEEEC00ECEB
      E700E5E1DC00E5E2DD00E4E1DD00E4E1DD00E3E1DE00E2E0DB00E0DED900E0E0
      E100B9A3890094611B0095672900936D3900936D390000000000F3F4F6000000
      00000000000000000000EFE8DE00EFE8DE00F1EAE100F0EAE100F0EAE100F0EA
      E100F0EAE100F1EBE200F1ECE300F2ECE200F2ECE300F2ECE300F1EBE400F1EC
      E400F2EDE500F2EDE500F2EDE500F2ECE500F2EDE600F1EEE600F6F3EE00F6F3
      EE00EFEAE500C1894A00B8742600E8E5E000E8E5E000BD8C5500BD8C5500C493
      5A00CD9C6200CD9C6200D8A4670092734D00F2F2F200FAFAFA00FAFAFA00F8F8
      F800F9F9F900F9F9F900F9F9F900F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F6F6F600F7F6F700F7F7F700F5F5F500F6F6F600F5F6F500F5F6F500F4F4
      F400F4F5F500F5F5F500F8F8F500000000009C94EB00CBC7F00000000000F7F6
      F300F4F3F300F4F3F300F4F3F300F4F3F300F3F2F20000000000000000000000
      000000000000000000000000000000000000B8B8B800B5B6B600B3B5B700DE8D
      3D00FFFFFC00FDF9F600ECD8C100E4CBAC00E4CBAD00E4CBAC00E5CAAA00E3C8
      A800E2C6A500DFC09E00E4CCB700E3D0C700D1976500C55F0000C6610000C763
      0300C8650500C6660700C6650600C2570000BC987500B3B6B900B3B2B200FDFD
      FD000000000000000000000000000000000000000000F0F1F40000000000E1BE
      6000E4B73F00E4B73F00E4B13500D5BC9300FAFDFF00F6F5F400F5F4F300F4F3
      F200F3F2F100F1F1EF00F1F1EF00F2F1EE00F1F0EE00F0F0EE00F1EFED00EFF0
      ED00EAEAE700E4E4DF00E2E2DD00E2E2DD00E1DFDC00DEDDD900DBD9D600DADB
      DC00B5A1850098671D00976A2A0095713B0095713B0000000000F3F4F6000000
      00000000000000000000F0E9DF00F0E9DF00F0EAE100F1EBE200F1EBE200F2EB
      E200F2EBE200F0EBE200F1EDE200F1ECE300F1ECE400F1ECE400F3ECE400F2ED
      E400F2EDE500F2EDE500F2EDE500F1EDE500F2EEE600F4EDE600F3EEE700F3EE
      E700F4F3EC00F1EFE900E8DED200F7F8F700F7F8F700C18F5600C18F5600C998
      5E00D09F6500D09F6500E3B07500723C040000000000FAFAFA00F8F8F800F9F9
      F900F9F9F900F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F6F6
      F600F7F7F700F7F7F700F5F5F500F6F6F600F5F6F500F4F4F400F4F4F400F5F5
      F500F4F5F500F4F5F500F5F5F500F4F4F3000000000000000000F5F4F200F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300F2F0F00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D482
      300000000000FCF8F600FFFCFB00FFFCFC00FFFBF900FEF9F700FEF7F400FCF4
      EF00F8EEE800F2E3DC00E8D5CC00D9B59900C45B0000C86A1100C96D1400CA6F
      1800CA711A00C9711C00C4630500D1976000FEFFFF0000000000000000000000
      00000000000000000000000000000000000000000000F0F1F40000000000E3C4
      6100F0C84200F0C84200EDC23700D3BD9100FAFAFC00F7F4F200F6F4F100F5F1
      EE00F4F1ED00F3F0EC00F3F0EC00F1EFEB00F1EFEB00F0EFEB00F0EEE900F0EE
      E900EEEDE900E7E4E000E2DED900E2DED900DEDBD500D9D6D100D5D2CB00D0D1
      CF00B19C8100A1712100A0752C009A773C009A773C0000000000F3F4F5000000
      000000000000F7F4F100EFE9DF00EFE9DF00F2ECE200F1ECE200F1ECE200F1EC
      E200F1ECE200F2ECE400F1EBE300F2ECE400F2EDE400F2EDE400F3ECE500F2ED
      E500F1EEE700F1EEE700F1EEE700F3EDE600F4EEE600F2EFE800F1F0E700F1F0
      E700F3EFE800F4F0EC00F5F3ED00F7F6F300F7F6F300C7935900C7935900CD98
      5B00D19A5A00D19A5A00D4985500E3C6A50000000000F9F9F900F9F9F900F9F9
      F90000000000F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F6F6F600F7F7
      F700F6F6F600F6F6F600F6F7F700F6F5F600F4F4F400F5F5F500F5F5F500F4F5
      F500F5F5F500F5F5F500F3F3F300F3F4F400F3F4F400F4F2F200F4F3F300F4F3
      F300F3F3F300F4F3F300F4F3F300F3F1F100F1F0F00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D37F
      2B0000000000FFFEFE00EFE0CE00E9D5BB00E9D4BB00E9D3B900E8D2B800E8D1
      B500E5CDB100E1C6A800E3D0C100D49F7100C7640500C96D1400CA6F1800CA72
      1C00CA721D00C4640700CF976200F6FCFF00F7F5F400FBFAF900FEFEFE000000
      00000000000000000000000000000000000000000000F0F1F40000000000EACD
      6400BB9D3700BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8F700F8F7
      F500F7F6F400F6F5F300F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000E5E3E000DDDCD800D7D6D200D0CFCB00C8C9
      C900AF9C7E00986F200081612500A17F4100A17F410000000000F2F3F5000000
      00000000000000000000F1EAE000F1EAE000F1EBE300F2ECE300F2ECE300F2EC
      E300F2ECE300F1ECE300F2ECE400F2ECE400F2EDE500F2EDE500F1EEE500F3EE
      E600F4EDE600F4EDE600F4EDE600F3EEE700F1F0E600F2EFE700F3EFEA00F3EF
      EA00F3EFE900F3F0E800F4F1EC00F6F3F100F6F3F100D0A26B00D0A26B00E5C8
      A700000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800F8F8F800F8F8F800F7F8F70000000000F7F7F700F6F6
      F600F6F6F600F5F5F400F2F1F100F9F9F900F6F6F600F4F5F500F4F5F500F5F5
      F500F5F5F500F3F3F300F3F4F400F3F3F300F4F2F200F3F3F300F4F3F300F3F3
      F300F4F3F300F3F2F200F3F2F200F2F1F100F1F0F00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D17C
      26000000000000000000F4EBE000F1E3D200F1E3D200F0E1D000EFE0CD00EEDD
      CA00EBD9C500E6D1BA00E5D4C900D6A67D00C8670700CA6F1800CA711C00C972
      1D00C4650800CD956100F3F8FF00F4F2F000FAF7F600FDFCFB00FFFFFE000000
      00000000000000000000000000000000000000000000F0F1F40000000000EACD
      6400BB9D3700BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8F700F8F7
      F500F7F6F400F6F5F300F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000E5E3E000DDDCD800D7D6D200D0CFCB00C8C9
      C900AF9C7E00986F200081612500A17F4100A17F410000000000F2F3F5000000
      00000000000000000000EEE8DE00EEE8DE00F0EAE100EFEAE100EFEAE100F1EA
      E200F1EAE200F5F3EF00F7F5F400F6F7F500F7F8F600F7F8F600F9F7F600F9F8
      F500F7FAF700F7FAF700F7FAF700F6F9F400F5F4F000F3EEEA00F2EFE600F2EF
      E600F3EFE800F4EFEA00F4EFE900F3EEE900F3EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD8D500CECAB700C1BDA900F5F4F100F5F6F600F5F6F600F5F5
      F500F3F3F300F3F4F400F4F3F300F4F2F200F3F3F300F4F3F300F4F3F300F4F3
      F200F3F2F200F3F1F100F3F1F100F3F2F200F1F0F00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D17B
      270000000000000000000000000000000000FFFEFD00FEFCFB00FDFAF800FCF6
      F300F8F1EC00F1E6E000E9DDD700D8AA8300C8680B00CA711C00CA721D00C465
      0900CE966300F3F7FF00F4F1F000F9F6F600FCFCFB00FDFDFD00000000000000
      00000000000000000000000000000000000000000000F0F1F40000000000EBCD
      5500AE932100AE932100D3AF1E00D1BE8A00FDFFFF00F9F9FB00F8F8FA00F7F7
      F900F6F5F700F5F4F500F5F4F500F4F3F400F3F2F300F1F1F100F0EFEF00EEED
      ED00EBEBE900EBEAE900E7E5E300E7E5E300DCDBD800D0CDCB00C8C6C400BBBD
      BD00A5916E00986E0E0079591200A07D3300A07D330000000000F2F3F5000000
      00000000000000000000EEE8DE00EEE8DE00F0EAE100EFEAE100EFEAE100F1EA
      E200F1EAE200F5F3EF00F7F5F400F6F7F500F7F8F600F7F8F600F9F7F600F9F8
      F500F7FAF700F7FAF700F7FAF700F6F9F400F5F4F000F3EEEA00F2EFE600F2EF
      E600F3EFE800F4EFEA00F4EFE900F3EEE900F3EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3E1DA00140FAA00140EC300DDDCDF00F9F9F600F9F9F600F3F3
      F300F3F3F300F3F3F300F3F2F200F3F2F200F3F3F300F4F3F300F4F3F300F3F1
      F100F2F1F100F2F2F200F2F2F200F3F2F200F1F0F00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D17B
      280000000000000000000000000000000000FEFEFE00FEFCFB00FDFAF800FCF7
      F400F8F1ED00F2E8E200EBE1DB00DBB28F00C7680B00CA721D00C4640700CE97
      6400F3F7FF00F4F0EF00F8F6F500FCFBFA00FDFEFE00FFFFFE00000000000000
      00000000000000000000000000000000000000000000F0F0F200EFECE300ECDD
      A100EEDB8B00EEDB8B00F1DD8C00D6C69900DBCFB100DACDAD00D9CCAD00D9CB
      AD00D8CBAC00D7CAAB00D7CAAB00D7CAAC00D7CAAD00D6CAAE00D7CAB000D7CB
      B200D7CCB300D8CDB600DACEB900DACEB900D9D0BD00CBBFA700C3B59B00BFB3
      9B00BBAB8B00CBB47D00C5AF7B00C4B28900C4B2890000000000F1F2F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBBB9600D3AF8400D2AF8600D0AD8500D0AD8500CFAA8200CAA8
      7C00C59C6C00C59C6C00C59C6C00CBA77B00E1CDB60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9CAEC000000A5003332DF009594EF0000000000000000000000
      0000000000000000000000000000F3F2F200F3F1F100F2F1F100F2F0F000F2F0
      F000F2F1F100F2F1F100F2F1F100F2F1F100F1F0F00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D17C
      2900000000000000000000000000000000000000000000000000FEFEFF00FDFB
      FB00FAF6F400F4EDEA00EFE7E600DEB79600C7670B00C4640600CF986400F3F8
      FF00F4F0EE00F8F7F600FCFBFA00FEFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0EFEC00F0EFEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEEEEC0000000000EDEDEB00EDEDEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFBB9200C88B4600C68B4800BF864200BF864200BB884F00D5B7
      9500F4ECE200F4ECE200F4ECE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004845C600321BD7003035E300DFDFF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CD79
      2700FFECD60000000000FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFC00FFFE
      F900FFFBF500FCF5EE00F9F2EE00E3B99400C1580000D19A6600F6FBFF00F5F1
      F000F8F6F600FCFBFA00FDFDFD00FFFFFE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F100F0F0F100F0F0F100F0F0F100F0F0F100F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F100F0F1F100F0F1F100F0F1F100F0F0F100F0F1F200F1F1F200F1F1
      F200F0F1F200F0F1F100F0F1F100F0F0F100F0F0F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7ECDE00C9A07000D5C0A700EFEDEB00EFEDEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9BE6001700DE00D8DEFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D48A4400D58A4000D58B4200D58B4200D58B4200D58B4200D58B4200D58B
      4200D48A4300D38A4300D18A4500CD7F3400D9A67600FAFFFF00F7F4F300F9F8
      F700FCFBFB00FEFEFE00FFFEFE00000000000000000000000000000000000000
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
      8000000010000000000000000000000000000000038000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFBFFFFFFFFFFFFE000
      007F0000F00000007FFFFF81FFC007FFFFFFC000003F0000E3FFFFEFBFFDF001
      FFC00005FFFF8000001F0000FFFFFFFFDC0000007F801FF0001F8000001F0000
      FFFFFFFFDC0000007F800800180F8000001F0000A00000005C0000007F800000
      0078000000010000A0000000580000007F8000000030000000000000A0000000
      500000007F8000000030000000000000A0000000500000007F80000000700000
      00000000A0000000580000001F8000000030000000000000A000000078000000
      7F8000000030000000000000A0000000780000001F8000000870000000000000
      A00000007C0000001F80000000F0000000000000A00000007C0000001F800000
      0070000000000000A00000007C0000001F0000000030000000000000A0000000
      7C0000000F0000000030000000000000A00000007C0000000F00000000300000
      00000000A00000007C0000000F0000000030000000000000A00000007C000000
      0F0000000030000000000000A00000007C000000030000000030000000000000
      A00000007C000000030000000034000000020000A00000007C00000003000000
      0032C00000140000A00000007C000000010000000078000000010000A0000000
      7C00000001800000003E000000030000A00000005C0000000180EC00007E0000
      000F0000A00000005C000000008000FC007E0000000F0000A000000058000000
      01800002087E0000000F0000A00000005C00000000000001207F0000000F0000
      A00000005C00000000800000C07FE800007F0000A00000005800000000880000
      007FE800001F0000A00000005C0000000FF84000007FEC00001F0000A0000000
      5C0000007FFFF800007FEF00003F0000A00000005C0000007FFFF800007FEF00
      003F0000800000005FF8007FFFFFF87E007FEFC000FF0000F3FFFFFA7FF801FF
      FFFFF87FFFFFE40000FF0000E00000007FF83FFFFFFFF8FFFFFFF00001FF0000
      00000000000000000000000000000000000000000000}
  end
  inherited imageITEM: TImageList
    Height = 24
    Width = 24
    Left = 288
    Bitmap = {
      494C010105000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800D4D1D100DCD9
      D900DCD9D900ECEBEA00F5F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDAD900C8C5C600E6E5
      E500E6E5E500CFCCCD00CBC9C900B7B3B200B0ABAB00C5C1C000DBD9D800F5F4
      F300F5F4F300FDFEFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C5C400E8E7E7000000
      00000000000000000000000000000000000000000000F5F4F400E8E6E700E3E2
      E100E3E2E100DDDBDB00DEDBDB00E1DFDE00DEDCDC00E1E0DF00E3E1E000E4E2
      E100E4E2E100E7E6E600ECEBEA00F9F9F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4B0AF00F8F7F800FEFE
      FE00FEFEFE00FEFEFE00FFFFFE00E0DFF600D4D2F400FFFFFE00FEFEFE00FEFE
      FE00FEFEFE00FDFEFE00FDFDFD00FBFCFC00FBFBFB00FAFBFB00F7F6F600F3F2
      F200F3F2F200EEEEED00E7E6E600EDECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAAAA0000000000FEFE
      FE00FEFEFE00FDFDFD00FEFEFD00F2F2FA00736BDD00DEDBF600FFFFFC00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900FAFAFA00FAFAFA00F8F8F800F9F9F900F8F8
      F800F8F8F800F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C0C10000000000FEFE
      FE00FEFEFE00FCFCFC00FEFEFD00000000004036D300A7A2EA00FFFFFD00FBFB
      FB00FBFBFB00F9F9F900FAFAFA00FAFAFA00F8F8F800F9F9F900F8F8F700F8F8
      F800F8F8F800F8F8F800F6F6F600F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFAFA00D8D6D50000000000FBFB
      FB00FBFBFB00FDFDFD00FCFDFD00FAF9EA006056D6000D00CD00FFFFFD00FFFF
      FD00FFFFFD00FCFCFD00FCFCFC00FAFAFA00FAFAFA00FFFFF800FCFCF800F8F8
      F800F8F8F800F6F6F600F6F6F600F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400E6E4E400FEFEFE00FCFC
      FC00FCFCFC00FDFDFD00EEEDEC00DAD8D000ABA7DE000000CB00655DCE00EDEB
      DD00EDEBDD00DEDCDB00E2DFDF00E7E7E600FFFFEC009B95EF007C72EC00FFFF
      F700FFFFF700F7F7F600F4F4F400FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EEEE00F3F2F300FEFEFE00FBFB
      FB00FBFBFB00FEFEFE00E3E1E100F0F0EE00000000001D0ACF001200D0000000
      000000000000FDFDFA00FBFAFA00FFFFF9008D89E8003321DC00D5D2F200FCFD
      F700FCFDF700F5F5F500F5F5F500FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EFEF00F5F4F400FCFCFC00FBFB
      FB00FBFBFB0000000000DAD9D800F9F8F900FFFFFD006C66DE000000CA008C87
      E7008C87E700FFFFFB00FFFFFB008F8AEC000000DE009A93DD00FEFFF700F7F7
      F600F7F7F600F6F6F600F3F2F300FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EEEE00F6F5F500FCFCFC00FCFC
      FC00FCFCFC0000000000D1CECE00FBFBFB00FCFCFA00FFFFFE002513D2000F00
      D3000F00D300F2F7F8004F45E1000000D8008277ED00FAFBE500F8F8F700F5F5
      F600F5F5F600F4F3F400F3F3F300FEFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEDED00FAFAFA00FCFCFC00FAFA
      FA00FAFAFA0000000000D1CFCE00FDFDFD00FAFAFA00FFFFFA00B4B1ED000800
      D1000800D1000A00D6000000D6006C64E700FFFFFB00E7E6E500F7F8F800F4F3
      F300F4F3F300F3F4F400F3F3F300FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEDEC00FCFCFC00FBFBFB00FBFB
      FB00FBFBFB00FEFEFE00D1CECE00FEFFFF00FFFFFA00FFFFFD00BBB9EE000B00
      D2000B00D2001600D800423CDF00FFFFFA00FAFBF800E7E5E500F6F6F600F4F5
      F500F4F5F500F5F5F500F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEECEC00FBFCFC00FBFBFB00F9F9
      F900F9F9F900FBFBFB00CAC7C60000000000DFE0F400584DDA000000CA000E00
      D2000E00D2001400D800210BDA00FAFDF800F8F9F500E7E6E600F5F6F600F5F5
      F500F5F5F500F3F3F300F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EFEF00FBFBFB00F9F9F900FAFA
      FA00FAFAFA00F7F7F700C5C2C100000000001000CA000000C9004033D800EEF0
      F800EEF0F8002C19DA000A00D7005E55E500FFFFF300EBEAEA00F6F6F600F4F4
      F400F4F4F400F3F3F300F4F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F3F300FAFAFA00F9F9F900FBFB
      FB00FBFBFB00F7F7F700ADA9A700D4D1C5006C65C9007572D400FFFFF500FFFF
      F900FFFFF900CBCDF4000000D7000000DC00AFADE800FBFBED00F5F5F500F3F4
      F400F3F4F400F3F2F200F5F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F3F300FAFAFA00FAFAFA00F9F9
      F900F9F9F900F9FAFA00FCFCFC00F4F4F400F9F9F100F4F4E700E3E2E000DFDD
      DC00DFDDDC00EEEDDC00A6A3DB000100DB001200DE00EAEBF000FCFDF500F3F3
      F300F3F3F300F2F2F200F6F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F400FAFAFA00F9F9F900F8F8
      F800F8F8F800F8F8F800F7F7F700F8F8F900F9F9F900F8F8F800F8F8F800F8F8
      F800F8F8F800F7F6F700FFFFF900918AEA000000DD003021E400C3BFF000F8F9
      F300F8F9F300F2F2F200F7F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F5F500FAFAFA00F8F8F800F8F8
      F800F8F8F800F7F7F700F8F8F800F7F7F700F6F6F600F6F6F600F6F6F500F4F4
      F400F4F4F400F3F4F400F4F5F500FFFFF600F0F2F300FFFFF400F8F7F200F3F3
      F300F3F3F300F2F1F100F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F700F9F9F900F8F8F800F7F7
      F700F7F7F700F8F8F800F7F8F700F6F6F600F7F7F700F8F9F900F8F8F800F4F3
      F400F4F3F400F4F5F500F5F4F400F3F4F300F5F5F300F4F3F200F3F3F300F3F2
      F200F3F2F200F1F0F000FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9FA00F8F8F800F6F6F600F7F7
      F700F7F7F700F6F7F600F6F4F600F6F6F600F3F3F300E8E5D900E8E6D500F8F9
      F700F8F9F700F4F4F400F3F3F300F4F3F300F2F2F200F2F3F300F3F2F100F2F1
      F100F2F1F100F0F0F000FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00FDFDFD00FBFCFB00FAFAFA00FFFFFC00504FA7002823BC00F9F9
      F600F9F9F600F3F3F200F1F2F200F2F1F100F2F2F200F3F2F200F2F1F100F2F2
      F200F2F2F200F1EFEF00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B08BA00242ADC00F9F8
      FE00F9F8FE0000000000FEFEFE00FAFAFA00F7F5F500F4F3F300F3F2F200F1F0
      F000F1F0F000F1EFEF00FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE005249DE00C0BEF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E300E2E2E200E0E0
      E000DFDFDF00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DDDDDD00DDDDDD00DDDD
      DD00DCDCDC00DDDDDD00DFDEDF00DDDEDD00BBDBC700C2DCCB00C2DCCB00E9E3
      E700EFEEEE00FFFFFF00FFFFFF00FFFFFF0000000000F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F90000000000000000000000000000000000FBFBFB00FAFAFA00F9F9
      F900F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F8F8F800F8F8F800F8F8
      F800FDFDFA00FAFAF800F5F5F700FFFFFB00F9F9F900FAFAFA00FAFAFA00FBFB
      FB00FFFFFE00F8F8F900FBFBFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F300BEBEBE00C0C0C000C0C0
      C000C0C0C000BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BFBFBF00CDC0C80047B16F001CAB530015AA4E0015AA4E008DB7
      9D00E9E3E700FFFFFF00FFFFFF00FFFFFF00F7F7F700B5B5B500BCBCBC00BCBC
      BC00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBB
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBB
      BB00BABABA00000000000000000000000000FDFDFD00C2C2C200C1C1C100C0C0
      C000BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00C2C2
      BF00B8B8BC000000770000007500BABABB00C8C8C300C1C1C100C1C1C100CACA
      C500CECECF000101770000007700E7E7F20000000000D5D5D500C7C7C700C6C6
      C600C4C4C400C1C1C100C1C1C100C0C0C000BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C2BFC100D2C1CB006DB688006DB68900D7C6D000C7C7C700C7C7C700C7C7
      C700DEDEDE00000000000000000000000000E5E5E500BCBCBC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C1C1
      C100BFBFBF00C0C0C000D0C1C90041B674002BB5670023B5630023B5630084B9
      9B00DBD4D800FFFFFF00FFFFFF00FFFFFF00F7F7F700BABABA00C2C2C200C3C4
      C400CBC6C000CAC6C100CAC6C100CAC6C100CAC6C100CAC6C100CAC6C100CAC6
      C100CCC9C500D0D0D100C3C3C300C2C2C200C2C2C200C2C2C200C2C2C200C1C1
      C100BFBFBF00000000000000000000000000F8F8F800BBBBBB00C3C3C300C3C3
      C300C3C3C300C4C4C400C4C4C400C4C4C400C4C4C400C3C3C300C3C3C300D6D6
      CA001C1C850000007C000404800004047C00BDBDBE00D5D5CA00D5D5CA00BCBC
      BE0001017A0003037F0000007A003F3F960000000000BFBFBF00BEBEBE00C0C0
      C000BFBFBF00BFBFBF00BFBFBF00C0C0C000BFBFBF00C0C0C000BFBFBF00C7C0
      C300C7C0C30042B7760020B460001DB35F0062B98800D2C0C900D2C0C900BDBC
      BD00CCCCCC00000000000000000000000000E6E6E600BCBCBC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000D0C1C9003EBC7A0027BB6E001FBB69001FBB690083BB
      9E00DDD5D900FFFFFF00FFFFFF00FFFFFF00F7F7F700BABABA00C1C1C200BCBD
      BB00AAA49800ADA69C00ADA69C00ADA69C00ADA69C00ADA69C00ADA69C00B3AC
      A100726F6A0043424200BBBABA00C4C0C000C1C0BF00C1C1C100C1C1C100C0C0
      C000BFBFBF00000000000000000000000000F9F9F900BCBCBC00C3C3C300C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C3C3C300C3C3C300CCCC
      C5008686B90000007D000B0B8800070789000C0C88009A9AB5009A9AB5000D0D
      8800080889000C0C880000007800A7A7D90000000000BFBFBF00C0C0C000C1C1
      C100C0C0C000C0C0C000C0C0C000C1C1C100C0C0C000C1C1C100CEC0C700ABC0
      B50022BC6D0023BC6E0029BC710029BC71001CBC69005BBE8B005BBE8B00D3BF
      C800CCCBCB00000000000000000000000000E8E8E800C1C1C100C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C7C5C600D4C6
      CC00D5C6CD00D5C6CD00E6C6D50040C0820024BF73001BBF6F001BBF6F008FC0
      A800F1DAE500FFFFFF00FFFFFF00FFFFFF00F8F8F800BFBFBF00C6C6C600C9C9
      C900D2D2D500D1D2D500D1D2D500D1D2D500D1D2D500D1D2D500D1D2D500D7D7
      DA00A8A9A90029343400C1E5F500C5E6F200D3D4D200CDC5C400CDC5C400C5C5
      C500C4C4C400000000000000000000000000F8F8F800BEBEBE00C5C5C500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C4C4C400C5C5C500C5C5
      C500D7D7CA005757AE00000084000E0E8E000C0C900000008B0000008B000C0C
      91000E0E9000000082005A5AB6000000000000000000C1C1C100C2C2C200C5C5
      C500C6C6C600C6C6C600C6C6C600C6C6C600C5C5C500D5C2CB007BC3A00014C3
      6F0024C3770020C175002CCB7F0022C4780025C3780018C3710018C3710052C1
      8C00E2CDD700000000000000000000000000EAEAEA00C6C6C600C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900CBC9CA00C7CAC8004EC7
      8E004FC78E004FC78F0054C792002AC57D0024C57A0021C5790021C579003EC6
      860057CB95005ED69E0056D399009BE4C200F8F8F800C4C4C400CBCBCC00C5C3
      C100A0988800A29C8C00A29C8C00A39C8C00A39C8C00A39C8C00A29C8C00A39C
      8B00A5A39600ACE7FF00B5DDF200C1E3F40056C6F50092C1D20092C1D200D5CA
      C800C9C9C900000000000000000000000000F9F9F900C3C3C300C7C7C700BBBB
      BB00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BDBDBD00CACACA00C9C9C900C9C9
      C900CACAC900DEDECF005959B400070792001010980011119900111199001111
      9700050591005D5DBE00000000000000000000000000C7C7C700C9C9C900B8B8
      B800B7B7B700B7B7B700B7B7B700B7B7B700C1B6BB0061CB9B000BCA750021CA
      7F0018C97A0037D68C00AECCBE0074D4A70017CC7B0021C97E0021C97E0013C9
      770051D09700000000000000000000000000EBEBEB00C9C9C900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D4CDD0008ECBB0000BC9
      74001CC97C001CCA7B001CCA7B0021CA7E0022CA7F0022CA7F0022CA7F001ECA
      7D001BC97B001AC779001AC8790014C67600F9F9F900C8C8C800CECECE00D1D0
      D200DBDCDE00DADCDE00DADCDE00DBDCDE00DBDCDE00DBDCDE00DBDCDE00DADA
      DC00D5D2D10097CDED0092D1F20050BEEF0052BDEF0030B5ED0030B5ED00C1CA
      CD00D0CECC00000000000000000000000000F9F9F900C7C7C700CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00D7D7D000CCCCCC0009099A0012129D001313A0001313A0001212
      9E0007079700F2F2F600000000000000000000000000CBCBCB00CBCBCB00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00D1CDCF00B9CFC50025D689000ECE
      7E004DDA9C00C8CBCA00D5CBCF00DBC9D10075D7AB0014D1810014D181001CCE
      84000FCB7B004FD89F000000000000000000EDEDED00CDCDCD00D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D7D0D30099D1B8000ED0
      7D0014CD7E0014CD7F0015CD7F001DCE830020CE840020CE840020CE840019CE
      810014CC7E0012CB7C0010CA7B0023CF8500F9F9F900CACACA00D0D0D000C7C7
      C300968C7C009C9283009C9283009C9283009C9283009C9283009C928300958F
      7D00E1D9D50076C2EC0002A6E20067C4F20032B4E9004BBDF1004BBDF1003CB6
      E200E7D3CC00000000000000000000000000F9F9F900CACACA00D0D0D000D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400DCDCD600CACACD000A0A99001010A2001414A5000D0DA5000D0DA5001414
      A4001010A3000C0C9600EEEEF4000000000000000000CECECE00CECECE00D1D1
      D100D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200DBD1D500B0D6C6006FDE
      AE00DCD0D600D6D1D300D2D2D200D3D2D200E1D0D7007CDCB2007CDCB20011D5
      85001BD288000BCF7F004ADCA10000000000EEEEEE00D0D0D000D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D4D3D400D5D2D30090DA
      B90094DBBB0094DBBB00A0DBC00031D490001AD1860014D1830014D1830069D7
      A800A0E1C400A9F1D100A3EFCD00CCF5E400FAFAFA00CECECE00D3D3D300D4D4
      D400D2D3D300D2D4D400D2D4D400D3D4D400D3D4D400D3D4D400D2D3D400D4D4
      D500DBD8D800CAD6DC003CBCF60028B1E80047B9EC002EB3EB002EB3EB0029B2
      EC0084C1D800000000000000000000000000FAFAFA00CECECE00D0D0D000BBBB
      BB00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00C1C1
      BF00B4B4BA000C0C99000E0EA2001414A8000808AA005858C5005858C5000808
      AA001414A8000E0EA2000D0D9700EEEEF40000000000D1D1D100D2D2D200C3C3
      C300C0C0C000C1C1C100C1C1C100C1C1C100C1C1C100C0C1C100C6C0C200CCBF
      C500C2C0C100C0C1C100C1C1C100C1C1C100C0C0C000DAC5CE00DAC5CE0081DD
      B70010D88A0018D68C0007D2830050E0A700EFEFEF00D3D3D300D6D6D600D6D6
      D600D5D5D500D5D5D500D5D5D500D6D6D600D6D6D600D6D6D600D7D6D600DED5
      D900DED5D900DFD5D900F2D5E10036D3950017D489000DD485000DD4850090D3
      B900F7E3EC00FFFFFF00FFFFFF00FFFFFF00F9F9F900D2D2D200D7D7D800D2D1
      D000BBB4AB00BEB7AF00BEB7AF00BDB7AF00BDB7AF00BDB7AF00BDB7AF00BDB7
      AF00BDB6AE00C5B7AB009FB4B80044BAED0031B4EA001DAFE6001DAFE60034B4
      EB000BA8E600A8DCF6000000000000000000FAFAFA00D2D2D200D7D7D700D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D7D7D800ECEC
      DE002626A10008089D001313A6000202A9009393D300F8F8DA00F8F8DA009999
      D4000202AA001414A80006069D004747AD0000000000D4D4D400D6D6D600D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D3D2D200D3D2D200E7D3
      DC0088DEBA000BD88B0007D68700A1F0D000F0F0F000D6D6D600D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900EDD9E00033D7970016D68C000BD688000BD688008DD6
      BA00EEE5E800FFFFFF00FFFFFF00FFFFFF00FAFAFA00D6D6D600DBDBDB00D5D6
      D600C9C5C000CAC7C400CAC7C400CAC7C400CAC7C400CAC7C400CAC7C400CAC7
      C400CAC7C400CAC7C400D2C5BC00B7CFDA0039B8F10028B0E80028B0E80007A7
      E4001BAFEA0049B1D7000000000000000000FAFAFA00D5D5D500D9D9D900DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      DD009B9BCF000404A0000000A4009393D400EDEDDD00DADAD900DADAD900ECEC
      DB009898D7000000A20000009B00ABABE00000000000D7D7D700D7D7D700D8D8
      D800D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D8D8D800D9D9D900D9D9D900D9D9D900D9D9D900D8D8D800D8D8D800D7D6
      D700F0E0E7009BF3CF008EEEC80000000000F1F1F100DADADA00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DBDBDB00DCDCDC00F0DCE3002ED8980011D88E0006D8880006D888008BD9
      BC00F1E7EB00FFFFFF00FFFFFF00FFFFFF00FAFAFA00D8D8D800DCDCDC00DEDD
      DD00DCDCDD00DCDDDD00DCDDDD00DCDDDD00DCDDDD00DCDDDD00DCDDDD00DCDD
      DD00DCDDDD00DCDDDD00DEDEDE00EBE0D9009ED2EE0037B8ED0037B8ED0015AB
      E600C7E4E700AC9CBF0014138A00FFFFFE00FBFBFB00D9D9D900DBDBDB00D0D0
      D000D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100DFDFD400A0A0C9009E9ECB00E1E1D300D0D0D000D4D4D400D4D4D400DCDC
      DB00F7F7EB00B9B9EE00C0C0EC000000000000000000DADADA00DBDBDB00D9D9
      D900DADADA00D9D9D900D9D9D900D9D9D900DADADA00D9D9D900DADADA00DADA
      DA00DADADA00DADADA00D9D9D900DADADA00D9D9D900DADADA00DADADA00DADA
      DA00E1E2E100000000000000000000000000F2F2F200DBDBDB00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00ECDDE40063E1AF0016DE910013DF900013DF9000B4DD
      CD00EFE9EB00FFFFFF00FFFFFF00FFFFFF00FBFBFB00DADADA00DFDFDF00D2D2
      CE008E847200948C7B00948C7B00948C7B00948C7B00948C7B00948C7B00948C
      7B00948B7B0091897800AAA49800E4E4E300E5E0DD0060C3F70060C3F700D8EF
      E5006C66AB000000820000009100E7E7F500FBFBFB00DBDBDB00DBDBDB00C5C5
      C500C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700CECEC900CECEC800C7C7C700C6C6C600CECECE00CECECE00DDDD
      DD00E8E8E70000000000000000000000000000000000DDDDDD00DFDFDF00C6C6
      C600C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C2C2C200CDCDCD00CDCDCD00DEDE
      DE00E3E3E300000000000000000000000000F3F3F300DEDEDE00DFDFDF00DFDF
      DF00E0E0E000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00E0DFE000EBDFE400D1E0DA00DBE0DE00DBE0DE00E7DE
      E100EAEAEA00FFFFFF00FFFFFF00FFFFFF00FCFCFC00DCDCDC00DFDFDF00E3E4
      E500EEEFF100EDEEF100EDEEF100EEEEF100EEEEF100EEEEF100EDEEF100EDEF
      F100E9EAEB00E8E9EB00E6E6E700DFDFE000E3E2E100E7DFD700E7DFD7002A27
      910000008E000201A100D0CEF40000000000FCFCFC00DEDEDE00E1E1E100E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E2E2E200E2E2E200E0E0
      E000E9E9E90000000000000000000000000000000000DFDFDF00DFDFDF00E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E1E1E100E1E1E100DEDE
      DE00E5E5E500000000000000000000000000F3F3F300E1E1E100E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E6E2E400E5E2E300E5E2E300E1E1
      E100ECECEC00FFFFFF00FFFFFF00FFFFFF00FBFBFB00DFDFDF00E3E3E400DAD8
      D5009E968600A39D8E00A39D8E00A39D8E00A39D8E00A39D8E00A39D8D009F99
      8A00EAEBEB00E1E1E200E2E2E200E2E2E200E2E2E200EFEFE700EFEFE7007370
      C7005A58C000000000000000000000000000FBFBFB00DFDFDF00E3E3E300E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E1E1
      E100EBEBEB0000000000000000000000000000000000E2E2E200E2E2E200E4E4
      E400E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E1E1
      E100E7E7E70000000000000000000000000000000000E3E3E300E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4
      E400EDEDED00FFFFFF00FFFFFF00FFFFFF00FBFBFB00E1E1E100E5E5E500E8E8
      E800F5F6F900F4F5F800F4F5F800F4F5F800F4F5F800F4F5F800F4F5F800F4F5
      F800EDEEEF00EDEEEF00EDEEEF00EDEEEF00E9EAEB00E4E4E400E4E4E400F2F1
      E800F5F4E800000000000000000000000000FCFCFC00E2E2E200E1E1E100C7C7
      C700C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C8C8C800D1D1D100D1D1D100E5E5
      E500ECECEC0000000000000000000000000000000000E3E3E300E6E6E600CECE
      CE00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CDCDCD00CCCCCC00CCCCCC00CCCCCC00CBCBCB00D5D5D500D5D5D500E5E5
      E500E9E9E900000000000000000000000000F5F5F500E4E4E400E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5
      E500EEEEEE00FFFFFF00FFFFFF00FFFFFF00FCFCFC00E2E2E200E7E7E800DAD9
      D60090877600978F8000978F8000978F8000978F8000978F8000978F8000978F
      8000988F8000988F8000988F8000948B7C00BAB3AB00EAECEC00EAECEC00E5E5
      E500E5E5E500000000000000000000000000FCFCFC00E3E3E300E6E6E600E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E5E5
      E500EDEDED0000000000000000000000000000000000E5E5E500E7E7E700E1E1
      E100E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E3E3E300E3E3E300E6E6
      E600EBEBEB00000000000000000000000000F5F5F500E7E7E700E8E8E800E8E8
      E800E9E9E900E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800F0F0F000FFFFFF00FFFFFF00FFFFFF00FCFCFC00E6E6E600ECEAEB00F4EA
      F000EBE2E500ECE4E600ECE4E600ECE4E600ECE4E600ECE4E600ECE4E600ECE4
      E600ECE4E600ECE4E600ECE4E600ECE3E500EFE7EB00F5ECF200F5ECF200EAE9
      EA00E8E8E800000000000000000000000000FCFCFC00E6E6E600E9E9E900EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E7E7
      E700EEEEEE0000000000000000000000000000000000E7E7E700E7E7E700E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E8E8E800E9E9E900E8E8E800E8E8E800E7E7
      E700ECECEC00000000000000000000000000F6F6F600E8E8E800E9E9E900E9E9
      E900EAEAEA00E9E9E900E9E9E900EAEAEA00E9E9E900E9E9E900E9E9E900EAEA
      EA00E9E9E900EAEAEA00EAEAEA00EDEDED00F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300FFFFFF00FFFFFF00FFFFFF00FCFCFC00EAE8E900DEE7E50088CF
      A50089CFA90089CFA90089CFA90089CFA90089CFA90089CFA90089CFA90089CF
      A90089CFA90089CFA90089D0A90088D0A80080D4A6007CD4A3007CD4A300F4F5
      F600F3F2F200000000000000000000000000FCFCFC00E7E7E700E9E9E900DFDF
      DF00E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E1E1E100EAEAEA00EEEEEE00F4F4F400F4F4F400F4F4F400F4F4
      F400F5F5F50000000000000000000000000000000000E9E9E900E9E9E900E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E7E7E700EAEAEA00EAEAEA00F2F2F200F1F1F100F1F1F100F0F0
      F000F1F1F100000000000000000000000000F7F7F700E9E9E900EAEAEA00EAEA
      EA00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EEEEEE00D3D3D300999999009F9F9F009F9F9F008C8C
      8C00D9D9D900FFFFFF00FFFFFF00FFFFFF00FBFBFB00F0E9EC00AEDDC9000DB5
      5E001CBB69001DBB69001DBB69001DBB69001DBB69001DBB69001DBB69001DBB
      69001DBB69001DBB69001CBB690018BC6900618D75005F8470005F8470008387
      85009998980000000000FEFEFE0000000000FCFCFC00EAEAEA00E8E8E800D3D3
      D300D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D4D4D400D8D8D800F2F2F200CACACA008D8D8D0093939300939393008383
      8300C0C0C00000000000000000000000000000000000EAEAEA00ECECEC00CECE
      CE00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00EEEEEE00E6E6E600A9A9A900ADADAD00ADADAD00A2A2
      A200CDCDCD00000000000000000000000000F7F7F700EAEAEA00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00F6F6F600979797006C6C6C0055555500555555009E9E
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F1EBED00ADE2CC000EC4
      710018C6770018C6770018C6770018C6780018C6770018C6780018C6770018C6
      770018C6770018C6770017C777001AC57800866B77006A6668006A6668006565
      6500FDFDFD00000000000000000000000000FCFCFC00EAEAEA00ECECEC00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00F6F6F600989898007171710065656500656565006969
      69000000000000000000000000000000000000000000EAEAEA00EBEBEB00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00F2F2F200B3B3B3006B6B6B005C5C5C005C5C5C007A7A
      7A0000000000000000000000000000000000F7F7F700EBEBEB00EBEBEB00EBEB
      EB00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECEC
      EC00EBEBEB00EBEBEB00F8F8F80090909000484848009A9A9A009A9A9A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00ECEBEB00E1EBEA007CE0
      B2007DE1B6007DE2B6007DE2B6007EE3B7007DE2B6007FE3B7007EE2B6007DE2
      B6007DE2B6007DE2B6007DE3B70081E1B5005D5459004D4D4D004D4D4D000000
      000000000000000000000000000000000000FCFCFC00EBEBEB00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00F8F8F800919191005151510066666600666666000000
      00000000000000000000000000000000000000000000EBEBEB00EBEBEB00ECEC
      EC00EBEBEB00EBEBEB00EBEBEB00ECECEC00EBEBEB00ECECEC00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00F4F4F400AEAEAE005050500074747400747474000000
      000000000000000000000000000000000000F6F6F600EBEBEB00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EBEBEB00ECECEC00FAFAFA006B6B6B008D8D8D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00EAEAEA00EFECED00F9ED
      F300F8ECF300F7EDF300F7EDF300F8EDF300F7EDF300F8EDF300F7EDF300F7ED
      F300F7EDF300F7EDF300FAEFF600F2E8EF002B2B2B00DDDDDD00DDDDDD000000
      000000000000000000000000000000000000FCFCFC00EBEBEB00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00FBFBFB006D6D6D008080800000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00EBEBEB00EBEB
      EB00ECECEC00ECECEC00ECECEC00EBEBEB00ECECEC00EBEBEB00ECECEC00ECEC
      EC00ECECEC00ECECEC00F5F5F500969696006262620000000000000000000000
      000000000000000000000000000000000000FDFDFD00F2F2F200F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F9F9F900C2C2C200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00F1F1F100F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F4F4F300E5E5E500CECECE0000000000000000000000
      000000000000000000000000000000000000FEFEFE00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F9F9F900B4B4B4000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F8F8F800C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000081FFFF0000000000000000008003FF00
      00000000000000009F8000000000000000000000800000000000000000000000
      A00000000000000000000000A100000000000000000000002000000000000000
      0000000000000000000000000000000000980000000000000000000004000000
      0000000000000000040000000000000000000000040000000000000000000000
      0000010000000000000000000100010000000000000000000100010000000000
      0000000000000100000000000000000000000100000000000000000000000100
      0000000000000000000001000000000000000000000001000000000000000000
      000001000000000000000000E00001000000000000000000FF84010000000000
      00000000FF1FFB000000000000000000800000800007800001FFFFFF00000000
      0007000000800007000000000007000000800007000000000007000000800007
      0000000000070000018000070000000000070000038000070000000000070000
      0380000300000000000700000180000100000000000700000080000000000000
      0003000000800000000000000003000000800001000000000000000001800007
      0000000000000000078000070000000000010000078000070000000000070000
      0780000780000000000700000780000700000000000700000780000700000000
      0007000007800007000000000007000007800007000000000005000007800007
      00000000000700000F80000F00000000001F00001F80001F00000000001F0000
      7F80007F00000000007F0000FF8000FF00000000000000000000000000000000
      000000000000}
  end
  inherited TEvent: TIBTransaction
    Left = 448
  end
  object DTSEdicao: TDataSource
    DataSet = Edicao
    OnDataChange = DTSEdicaoDataChange
    Left = 576
    Top = 72
  end
  object TSEdicao: TIBTransaction
    DefaultDatabase = FBird.DBEdicao
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
    Database = FBird.DBEdicao
    Transaction = TSEdicao
    Left = 544
    Top = 40
  end
  object Edicao: TIBDataSet
    Tag = 1
    Database = FBird.DBEdicao
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
    Database = FBird.DBErp
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
    Database = FBird.DBErp
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
    Database = FBird.DBErp
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
    Database = FBird.DBErp
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
    Database = FBird.DBEdicao
    Transaction = TSEdicao
    Left = 576
    Top = 40
  end
  object TConsulta: TIBTransaction
    Tag = 1
    AllowAutoStart = False
    DefaultDatabase = FBird.DBErp
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
    Database = FBird.DBErp
    Transaction = TConsulta
    Left = 264
    Top = 304
  end
  object TEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBErp
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
    Database = FBird.DBErp
    Transaction = TEdicao
    Left = 400
    Top = 152
  end
  object SPEdicao: TIBStoredProc
    Database = FBird.DBErp
    Transaction = TEdicao
    Left = 464
    Top = 152
  end
  object SQLFKEdicao: TIBSQL
    Database = FBird.DBErp
    Transaction = TEdicao
    Left = 432
    Top = 152
  end
end
