inherited frmfin_dup_edi: Tfrmfin_dup_edi
  Left = 409
  Top = 11
  ActiveControl = CECDNF
  AlphaBlendValue = 0
  Caption = 'Gera'#231#227'o de Duplicata'
  ClientHeight = 695
  ClientWidth = 566
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 566
    Height = 595
    inherited PaintBox: TPaintBox
      Top = 270
      Width = 566
      Height = 325
    end
    object PNLCabecalho: TPanel
      Left = 0
      Top = 0
      Width = 566
      Height = 270
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GBFatura: TGroupBox
        Left = 0
        Top = 0
        Width = 566
        Height = 270
        Align = alClient
        Caption = '  Fatura  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object Label14: TLabel
          Left = 4
          Top = 27
          Width = 62
          Height = 17
          Caption = 'Nota Fiscal'
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
        object lacfav: TLabel
          Left = 4
          Top = 75
          Width = 60
          Height = 17
          Cursor = crHandPoint
          Caption = 'Favorecido'
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
        object Label5: TLabel
          Left = 4
          Top = 99
          Width = 71
          Height = 17
          Caption = 'Raz'#227'o Social'
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
        object Label2: TLabel
          Left = 4
          Top = 171
          Width = 82
          Height = 17
          Caption = 'Tipo Cobran'#231'a'
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
        object Label8: TLabel
          Left = 4
          Top = 147
          Width = 65
          Height = 17
          Caption = 'Tipo Pedido'
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
        object Label9: TLabel
          Left = 4
          Top = 195
          Width = 40
          Height = 17
          Caption = 'Cr'#233'dito'
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
        object Label37: TLabel
          Left = 4
          Top = 219
          Width = 62
          Height = 17
          Caption = 'Valor Total'
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
        object Label13: TLabel
          Left = 4
          Top = 243
          Width = 32
          Height = 17
          Caption = 'Prazo'
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
        object Label1: TLabel
          Left = 4
          Top = 123
          Width = 37
          Height = 17
          Caption = 'Pedido'
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
        object Label3: TLabel
          Left = 4
          Top = 51
          Width = 56
          Height = 17
          Caption = 'Romaneio'
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
        object decdnf: TdxDateEdit
          Left = 157
          Top = 24
          Width = 90
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
          Style.Shadow = False
          TabOrder = 1
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 22
          StoredValues = 4
        end
        object eddfav: TdxMaskEdit
          Left = 157
          Top = 72
          Width = 400
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
          TabOrder = 5
          AutoSize = False
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          Height = 22
        end
        object edrfav: TdxMaskEdit
          Left = 88
          Top = 96
          Width = 469
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
          TabOrder = 6
          AutoSize = False
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          Height = 22
        end
        object edstpd: TdxMaskEdit
          Left = 88
          Top = 144
          Width = 159
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
          TabOrder = 9
          AutoSize = False
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          Height = 22
        end
        object edstco: TdxMaskEdit
          Left = 88
          Top = 168
          Width = 159
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
          TabOrder = 10
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
        end
        object cbconc: TdxImageEdit
          Left = 88
          Top = 192
          Width = 57
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
          Style.Shadow = False
          TabOrder = 11
          AutoSize = False
          Descriptions.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
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
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
          Height = 22
        end
        object IEPrazo: TdxImageEdit
          Left = 88
          Top = 240
          Width = 469
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
          TabOrder = 13
          AutoSize = False
          OnValidate = CEVNFValidate
          DropDownRows = 15
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '')
          Height = 22
        end
        object decdpd: TdxDateEdit
          Left = 157
          Top = 120
          Width = 90
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
          Style.Shadow = False
          TabOrder = 8
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 22
          StoredValues = 4
        end
        object decdro: TdxDateEdit
          Left = 157
          Top = 48
          Width = 90
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
          Style.Shadow = False
          TabOrder = 3
          AutoSize = False
          Date = -700000.000000000000000000
          UseEditMask = True
          Height = 22
          StoredValues = 4
        end
        object CEVNF: TdxCurrencyEdit
          Left = 88
          Top = 216
          Width = 95
          HelpContext = 1
          Color = 16644596
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 12
          Alignment = taRightJustify
          AutoSize = False
          ReadOnly = False
          OnValidate = CEVNFValidate
          DecimalPlaces = 3
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          UseThousandSeparator = True
          Height = 22
          StoredValues = 65
        end
        object CECDNF: TdxCurrencyEdit
          Left = 88
          Top = 24
          Width = 70
          HelpContext = 1
          Color = 16644596
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 0
          Alignment = taRightJustify
          AutoSize = False
          ReadOnly = False
          OnValidate = CECDNFValidate
          DecimalPlaces = 0
          DisplayFormat = '0'
          Height = 22
          StoredValues = 65
        end
        object CECDRO: TdxCurrencyEdit
          Left = 88
          Top = 48
          Width = 70
          HelpContext = 1
          Color = 16644596
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 2
          Alignment = taRightJustify
          AutoSize = False
          ReadOnly = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Height = 22
          StoredValues = 65
        end
        object CECFav: TdxCurrencyEdit
          Left = 88
          Top = 72
          Width = 70
          HelpContext = 1
          Color = 16644596
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 4
          Alignment = taRightJustify
          AutoSize = False
          ReadOnly = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Height = 22
          StoredValues = 65
        end
        object edcdpd: TdxMaskEdit
          Left = 88
          Top = 120
          Width = 70
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
          TabOrder = 7
          AutoSize = False
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          Height = 22
        end
      end
    end
    object PNLFormRodape: TPanel
      Left = 0
      Top = 270
      Width = 566
      Height = 325
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GBTitulo: TGroupBox
        Left = 0
        Top = 0
        Width = 566
        Height = 325
        Align = alClient
        Caption = '  T'#237'tulos  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object dbgdup: TdxDBGrid
          Left = 57
          Top = 19
          Width = 507
          Height = 304
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
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = dtsdup_001
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsItalic]
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          object dbgdupNFE_TITU: TdxDBGridMaskColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_TITU'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgdupNFE_DVEN: TdxDBGridDateColumn
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_DVEN'
          end
          object dbgdupNFE_VDUP: TdxDBGridCurrencyColumn
            HeaderAlignment = taRightJustify
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NFE_VDUP'
            SummaryFooterType = cstSum
            SummaryFooterField = 'NFE_VDUP'
            SummaryFooterFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
            Nullable = False
          end
        end
        object SpeedBar1: TSpeedBar
          Left = 2
          Top = 19
          Width = 55
          Height = 304
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BoundLines = [blTop, blRight]
          Position = bpCustom
          Align = alLeft
          Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns]
          BtnOffsetHorz = 4
          BtnOffsetVert = 2
          BtnWidth = 45
          BtnHeight = 45
          BevelOuter = bvNone
          TabOrder = 0
          InternalVer = 1
          object SpeedbarSection10: TSpeedbarSection
            Caption = 'Movimento'
          end
          object SpeedbarSection11: TSpeedbarSection
            Caption = 'Edicao'
          end
          object SpeedbarSection12: TSpeedbarSection
            Caption = 'Confirmacao'
          end
          object SpeedbarSection13: TSpeedbarSection
            Caption = 'Utilitarios'
          end
          object siIDU: TSpeedItem
            Caption = 'Incluir'
            Enabled = False
            Cursor = crHandPoint
            Hint = '[Ins] - Incluir'
            ImageIndex = 2
            Spacing = 1
            Left = 4
            Top = 2
            Visible = True
            SectionName = 'Movimento'
          end
          object siDDU: TSpeedItem
            Caption = 'Excluir'
            Cursor = crHandPoint
            Hint = '[Del] - Excluir'
            ImageIndex = 3
            Spacing = 1
            Left = 4
            Top = 92
            Visible = True
            OnClick = siDDUClick
            SectionName = 'Movimento'
          end
          object siSDU: TSpeedItem
            Caption = 'Salvar'
            Enabled = False
            Cursor = crHandPoint
            Hint = 'Salvar|'
            ImageIndex = 1
            Spacing = 1
            Left = 4
            Top = 137
            Visible = True
            OnClick = siSDUClick
            SectionName = 'Movimento'
          end
          object siCDU: TSpeedItem
            Caption = 'Cancelar'
            Enabled = False
            Cursor = crHandPoint
            Hint = 'Cancelar|'
            ImageIndex = 4
            Spacing = 1
            Left = 4
            Top = 182
            Visible = True
            OnClick = siCDUClick
            SectionName = 'Movimento'
          end
          object siADU: TSpeedItem
            Caption = 'Alterar'
            Cursor = crHandPoint
            Hint = 'Alterar|'
            ImageIndex = 0
            Spacing = 1
            Left = 4
            Top = 47
            Visible = True
            OnClick = siADUClick
            SectionName = 'Movimento'
          end
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 670
    Width = 566
    inherited SBRodape: TdxStatusBar
      Width = 560
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
          Width = 280
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
      Width = 560
      inherited PNLSynchronize: TPanel
        Width = 499
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
    Width = 566
  end
  inherited TEvent: TIBTransaction
    Left = 656
    Top = 16
  end
  inherited SPEvent: TIBStoredProc
    Left = 688
    Top = 16
  end
  inherited EEvent: TIBEvents
    Left = 720
    Top = 16
  end
  inherited ALPrincipal: TActionList
    Left = 360
  end
  object dup_001: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = dup_001AfterDelete
    AfterEdit = dup_001AfterEdit
    AfterInsert = dup_001AfterEdit
    AfterPost = dup_001AfterPost
    BeforeCancel = dup_001BeforeCancel
    BeforePost = dup_001BeforePost
    OnNewRecord = dup_001NewRecord
    DeleteSQL.Strings = (
      'delete from NFE_DUP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_DUP'
      
        '  (ID, NFE_CCAB, NFE_CDNF, NFE_CDRO, NFE_CFAV, NFE_DNFE, NFE_DPA' +
        'G, NFE_DROM, '
      
        '   NFE_DVEN, NFE_OBSE, NFE_PARC, NFE_PSEQ, NFE_STA, NFE_STCO, NF' +
        'E_STFI, '
      '   NFE_STPD, NFE_TITU, NFE_TSEQ, NFE_VDUP, NFE_VPAG, NFE_VPEN)'
      'values'
      
        '  (:ID, :NFE_CCAB, :NFE_CDNF, :NFE_CDRO, :NFE_CFAV, :NFE_DNFE, :' +
        'NFE_DPAG, '
      
        '   :NFE_DROM, :NFE_DVEN, :NFE_OBSE, :NFE_PARC, :NFE_PSEQ, :NFE_S' +
        'TA, :NFE_STCO, '
      
        '   :NFE_STFI, :NFE_STPD, :NFE_TITU, :NFE_TSEQ, :NFE_VDUP, :NFE_V' +
        'PAG, :NFE_VPEN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CDRO,'
      '  NFE_CCAB,'
      '  NFE_CFAV,'
      '  NFE_DROM,'
      '  NFE_CDNF,'
      '  NFE_DNFE,'
      '  NFE_TITU,'
      '  NFE_STPD,'
      '  NFE_STCO,'
      '  NFE_STFI,'
      '  NFE_PARC,'
      '  NFE_DVEN,'
      '  NFE_VDUP,'
      '  NFE_DPAG,'
      '  NFE_VPAG,'
      '  NFE_VPEN,'
      '  NFE_STA,'
      '  NFE_TSEQ,'
      '  NFE_PSEQ,'
      '  NFE_OBSE'
      'from NFE_DUP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM NFE_DUP'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update NFE_DUP'
      'set'
      '  ID = :ID,'
      '  NFE_CCAB = :NFE_CCAB,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CDRO = :NFE_CDRO,'
      '  NFE_CFAV = :NFE_CFAV,'
      '  NFE_DNFE = :NFE_DNFE,'
      '  NFE_DPAG = :NFE_DPAG,'
      '  NFE_DROM = :NFE_DROM,'
      '  NFE_DVEN = :NFE_DVEN,'
      '  NFE_OBSE = :NFE_OBSE,'
      '  NFE_PARC = :NFE_PARC,'
      '  NFE_PSEQ = :NFE_PSEQ,'
      '  NFE_STA = :NFE_STA,'
      '  NFE_STCO = :NFE_STCO,'
      '  NFE_STFI = :NFE_STFI,'
      '  NFE_STPD = :NFE_STPD,'
      '  NFE_TITU = :NFE_TITU,'
      '  NFE_TSEQ = :NFE_TSEQ,'
      '  NFE_VDUP = :NFE_VDUP,'
      '  NFE_VPAG = :NFE_VPAG,'
      '  NFE_VPEN = :NFE_VPEN'
      'where'
      '  ID = :OLD_ID')
    Left = 752
    Top = 80
    object dup_001ID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_DUP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dup_001NFE_CDRO: TIntegerField
      FieldName = 'NFE_CDRO'
      Origin = '"NFE_DUP"."NFE_CDRO"'
    end
    object dup_001NFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_DUP"."NFE_CCAB"'
    end
    object dup_001NFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_DUP"."NFE_CFAV"'
    end
    object dup_001NFE_DROM: TDateField
      FieldName = 'NFE_DROM'
      Origin = '"NFE_DUP"."NFE_DROM"'
    end
    object dup_001NFE_CDNF: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_DUP"."NFE_CDNF"'
    end
    object dup_001NFE_DNFE: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DNFE'
      Origin = '"NFE_DUP"."NFE_DNFE"'
    end
    object dup_001NFE_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'NFE_TITU'
      Origin = '"NFE_DUP"."NFE_TITU"'
      Size = 30
    end
    object dup_001NFE_DVEN: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_DUP"."NFE_DVEN"'
    end
    object dup_001NFE_PARC: TIntegerField
      FieldName = 'NFE_PARC'
      Origin = '"NFE_DUP"."NFE_PARC"'
    end
    object dup_001NFE_VDUP: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'NFE_VDUP'
      Origin = '"NFE_DUP"."NFE_VDUP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object dup_001NFE_DPAG: TDateField
      FieldName = 'NFE_DPAG'
      Origin = '"NFE_DUP"."NFE_DPAG"'
    end
    object dup_001NFE_VPAG: TIBBCDField
      FieldName = 'NFE_VPAG'
      Origin = '"NFE_DUP"."NFE_VPAG"'
      Precision = 18
      Size = 2
    end
    object dup_001NFE_VPEN: TIBBCDField
      FieldName = 'NFE_VPEN'
      Origin = '"NFE_DUP"."NFE_VPEN"'
      Precision = 18
      Size = 2
    end
    object dup_001NFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_DUP"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dup_001NFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_DUP"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
    object dup_001NFE_STPD: TIBStringField
      FieldName = 'NFE_STPD'
      Origin = '"NFE_DUP"."NFE_STPD"'
      Size = 60
    end
    object dup_001NFE_STCO: TIBStringField
      FieldName = 'NFE_STCO'
      Origin = '"NFE_DUP"."NFE_STCO"'
      Size = 60
    end
    object dup_001NFE_STFI: TIBStringField
      FieldName = 'NFE_STFI'
      Origin = '"NFE_DUP"."NFE_STFI"'
      Size = 60
    end
    object dup_001NFE_TSEQ: TIBStringField
      FieldName = 'NFE_TSEQ'
      Origin = '"NFE_DUP"."NFE_TSEQ"'
      FixedChar = True
      Size = 1
    end
    object dup_001NFE_PSEQ: TIBStringField
      FieldName = 'NFE_PSEQ'
      Origin = '"NFE_DUP"."NFE_PSEQ"'
      Size = 2
    end
  end
  object dtsdup_001: TDataSource
    DataSet = dup_001
    Left = 784
    Top = 80
  end
  object Prazo: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT * FROM TAB_PAG'
      'WHERE ID = :ID')
    Left = 592
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object PrazoID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_PAG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PrazoPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object PrazoPAG_D001: TIntegerField
      FieldName = 'PAG_D001'
      Origin = '"TAB_PAG"."PAG_D001"'
    end
    object PrazoPAG_D002: TIntegerField
      FieldName = 'PAG_D002'
      Origin = '"TAB_PAG"."PAG_D002"'
    end
    object PrazoPAG_D003: TIntegerField
      FieldName = 'PAG_D003'
      Origin = '"TAB_PAG"."PAG_D003"'
    end
    object PrazoPAG_D004: TIntegerField
      FieldName = 'PAG_D004'
      Origin = '"TAB_PAG"."PAG_D004"'
    end
    object PrazoPAG_D005: TIntegerField
      FieldName = 'PAG_D005'
      Origin = '"TAB_PAG"."PAG_D005"'
    end
    object PrazoPAG_D006: TIntegerField
      FieldName = 'PAG_D006'
      Origin = '"TAB_PAG"."PAG_D006"'
    end
    object PrazoPAG_D007: TIntegerField
      FieldName = 'PAG_D007'
      Origin = '"TAB_PAG"."PAG_D007"'
    end
    object PrazoPAG_D008: TIntegerField
      FieldName = 'PAG_D008'
      Origin = '"TAB_PAG"."PAG_D008"'
    end
    object PrazoPAG_D009: TIntegerField
      FieldName = 'PAG_D009'
      Origin = '"TAB_PAG"."PAG_D009"'
    end
    object PrazoPAG_D010: TIntegerField
      FieldName = 'PAG_D010'
      Origin = '"TAB_PAG"."PAG_D010"'
    end
    object PrazoPAG_D011: TIntegerField
      FieldName = 'PAG_D011'
      Origin = '"TAB_PAG"."PAG_D011"'
    end
    object PrazoPAG_D012: TIntegerField
      FieldName = 'PAG_D012'
      Origin = '"TAB_PAG"."PAG_D012"'
    end
    object PrazoPAG_D013: TIntegerField
      FieldName = 'PAG_D013'
      Origin = '"TAB_PAG"."PAG_D013"'
    end
    object PrazoPAG_D014: TIntegerField
      FieldName = 'PAG_D014'
      Origin = '"TAB_PAG"."PAG_D014"'
    end
    object PrazoPAG_D015: TIntegerField
      FieldName = 'PAG_D015'
      Origin = '"TAB_PAG"."PAG_D015"'
    end
    object PrazoPAG_D016: TIntegerField
      FieldName = 'PAG_D016'
      Origin = '"TAB_PAG"."PAG_D016"'
    end
    object PrazoPAG_D017: TIntegerField
      FieldName = 'PAG_D017'
      Origin = '"TAB_PAG"."PAG_D017"'
    end
    object PrazoPAG_D018: TIntegerField
      FieldName = 'PAG_D018'
      Origin = '"TAB_PAG"."PAG_D018"'
    end
    object PrazoPAG_D019: TIntegerField
      FieldName = 'PAG_D019'
      Origin = '"TAB_PAG"."PAG_D019"'
    end
    object PrazoPAG_D020: TIntegerField
      FieldName = 'PAG_D020'
      Origin = '"TAB_PAG"."PAG_D020"'
    end
    object PrazoPAG_PRAZ: TSmallintField
      FieldName = 'PAG_PRAZ'
      Origin = '"TAB_PAG"."PAG_PRAZ"'
    end
    object PrazoPAG_ENVWEB: TSmallintField
      FieldName = 'PAG_ENVWEB'
      Origin = '"TAB_PAG"."PAG_ENVWEB"'
    end
    object PrazoPAG_DUPL: TIBStringField
      FieldName = 'PAG_DUPL'
      Origin = '"TAB_PAG"."PAG_DUPL"'
      Size = 3
    end
    object PrazoPAG_PARC: TSmallintField
      FieldName = 'PAG_PARC'
      Origin = '"TAB_PAG"."PAG_PARC"'
    end
    object PrazoPAG_STA: TIBStringField
      FieldName = 'PAG_STA'
      Origin = '"TAB_PAG"."PAG_STA"'
      FixedChar = True
      Size = 1
    end
  end
  object psq_rom: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = psq_romAfterOpen
    SQL.Strings = (
      'SELECT N.ID AS IDN,N.NFE_CDNF,N.NFE_DEMI,N.NFE_VNF,'
      '       CC.ID AS IDCC,CC.CLI_FANT,CC.CLI_RAZA,'
      '              R.ID AS IDR,R.ROM_DROM AS DTR,'
      
        '       P.ID AS IDP,P.ROM_CDBX,P.ROM_DERO,P.ROM_DROM AS DTP,P.ROM' +
        '_CONC,P.ROM_STCO,P.ROM_STPD,P.ROM_STFI,'
      '       CV.USU_CUSU,CV.USU_DUSU,'
      '       CR.ID AS IDCR,CR.REP_FANT,CR.REP_RAZA,'
      '       TP.ID AS IDTP,TP.PAG_DPAG'
      'FROM   NFE_CAB_005 AS N'
      'JOIN   CAD_CLI     AS CC ON (CC.ID = N.NFE_CFAV)'
      
        'LEFT OUTER JOIN PED_VEN_CAB_005 AS P ON (P.ROM_CDNF = N.NFE_CDNF' +
        ')'
      
        'LEFT OUTER JOIN ROM_CAB_005     AS R  ON (R.ID        = P.ROM_CD' +
        'RO)'
      'LEFT OUTER JOIN CAD_USU     AS CV ON (CV.USU_CUSU = P.ROM_CVEN)'
      'LEFT OUTER JOIN CAD_REP     AS CR ON (CR.ID       = P.ROM_CREP)'
      'LEFT OUTER JOIN TAB_PAG     AS TP ON (TP.ID       = P.ROM_CPAG)'
      'WHERE  N.NFE_CDNF = 98174')
    Left = 592
    Top = 144
    object psq_romIDN: TIntegerField
      FieldName = 'IDN'
      Origin = '"NFE_CAB_005"."ID"'
      Required = True
    end
    object psq_romNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB_005"."NFE_CDNF"'
    end
    object psq_romNFE_DEMI: TDateField
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB_005"."NFE_DEMI"'
    end
    object psq_romNFE_VNF: TIBBCDField
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB_005"."NFE_VNF"'
      Precision = 18
      Size = 2
    end
    object psq_romIDCC: TIntegerField
      FieldName = 'IDCC'
      Origin = '"CAD_CLI"."ID"'
      Required = True
    end
    object psq_romCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object psq_romCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object psq_romIDR: TIntegerField
      FieldName = 'IDR'
      Origin = '"ROM_CAB_005"."ID"'
    end
    object psq_romDTR: TDateField
      FieldName = 'DTR'
      Origin = '"ROM_CAB_005"."ROM_DROM"'
    end
    object psq_romIDP: TIntegerField
      FieldName = 'IDP'
      Origin = '"PED_VEN_CAB_005"."ID"'
    end
    object psq_romROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_VEN_CAB_005"."ROM_CDBX"'
    end
    object psq_romROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB_005"."ROM_DERO"'
      Size = 30
    end
    object psq_romDTP: TDateField
      FieldName = 'DTP'
      Origin = '"PED_VEN_CAB_005"."ROM_DROM"'
    end
    object psq_romROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_VEN_CAB_005"."ROM_CONC"'
    end
    object psq_romROM_STCO: TIBStringField
      FieldName = 'ROM_STCO'
      Origin = '"PED_VEN_CAB_005"."ROM_STCO"'
      Size = 30
    end
    object psq_romROM_STPD: TIBStringField
      FieldName = 'ROM_STPD'
      Origin = '"PED_VEN_CAB_005"."ROM_STPD"'
      Size = 30
    end
    object psq_romROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB_005"."ROM_STFI"'
      Size = 30
    end
    object psq_romUSU_CUSU: TIntegerField
      FieldName = 'USU_CUSU'
      Origin = '"CAD_USU"."USU_CUSU"'
    end
    object psq_romUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object psq_romIDCR: TIntegerField
      FieldName = 'IDCR'
      Origin = '"CAD_REP"."ID"'
    end
    object psq_romREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object psq_romREP_RAZA: TIBStringField
      FieldName = 'REP_RAZA'
      Origin = '"CAD_REP"."REP_RAZA"'
      Size = 60
    end
    object psq_romIDTP: TIntegerField
      FieldName = 'IDTP'
      Origin = '"TAB_PAG"."ID"'
    end
    object psq_romPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 752
    Top = 16
  end
  object consulta_S: TIBQuery
    Database = FBird.DBEDI
    Transaction = tSHEILD
    Left = 752
    Top = 48
  end
end
