inherited frmfin_dup_edi: Tfrmfin_dup_edi
  Left = 409
  Top = 11
  ActiveControl = CECDNF
  AlphaBlendValue = 0
  Caption = 'Gera'#231#227'o de Duplicata'
  ClientHeight = 627
  ClientWidth = 566
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 566
    Height = 543
    inherited PaintBox: TPaintBox
      Top = 270
      Width = 566
      Height = 273
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
      Height = 273
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GBTitulo: TGroupBox
        Left = 54
        Top = 0
        Width = 512
        Height = 273
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
          Left = 2
          Top = 19
          Width = 508
          Height = 252
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
      end
      object GBMenuEdicao: TGroupBox
        Left = 0
        Top = 0
        Width = 54
        Height = 273
        Align = alLeft
        Caption = ' Edi'#231#227'o '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object SBMenuEdicao: TSpeedBar
          Left = 2
          Top = 19
          Width = 50
          Height = 252
          Cursor = crHandPoint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          Position = bpCustom
          Align = alClient
          Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
          BtnOffsetHorz = 8
          BtnOffsetVert = 2
          BtnWidth = 34
          BtnHeight = 32
          Images = ILMenuEdicao
          BevelOuter = bvNone
          TabOrder = 0
          InternalVer = 1
          object SSMenuEdicao: TSpeedbarSection
            Caption = 'Edi'#231#227'o'
          end
          object SIMEAppend: TSpeedItem
            Caption = 'SIMEAppend'
            Cursor = crHandPoint
            Hint = 'Inclus'#227'o de Registros'
            ImageIndex = 0
            Spacing = 1
            Left = 8
            Top = 2
            Visible = True
            OnClick = SIMEAppendClick
            SectionName = 'Edi'#231#227'o'
          end
          object SIMEEdit: TSpeedItem
            Tag = 1
            Caption = 'SIMEEdit'
            Cursor = crHandPoint
            Hint = 'Edi'#231#227'o de Registros'
            ImageIndex = 1
            Spacing = 1
            Left = 8
            Top = 34
            Visible = True
            OnClick = SIMEEditClick
            SectionName = 'Edi'#231#227'o'
          end
          object SIMEDelete: TSpeedItem
            Tag = 1
            Caption = 'SIMEDelete'
            Cursor = crHandPoint
            Hint = 'Exclus'#227'o de Registros'
            ImageIndex = 2
            Spacing = 1
            Left = 8
            Top = 66
            Visible = True
            OnClick = SIMEDeleteClick
            SectionName = 'Edi'#231#227'o'
          end
          object SIMEPost: TSpeedItem
            Tag = 2
            Caption = 'SIMEPost'
            Enabled = False
            Cursor = crHandPoint
            Hint = 'Salva Edi'#231#227'o'
            ImageIndex = 3
            Spacing = 1
            Left = 8
            Top = 98
            Visible = True
            OnClick = SIMEPostClick
            SectionName = 'Edi'#231#227'o'
          end
          object SIMECancel: TSpeedItem
            Tag = 2
            Caption = 'SIMECancel'
            Enabled = False
            Cursor = crHandPoint
            Hint = 'Cancela Edi'#231#227'o'
            ImageIndex = 4
            Spacing = 1
            Left = 8
            Top = 130
            Visible = True
            OnClick = SIMECancelClick
            SectionName = 'Edi'#231#227'o'
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 608
    Width = 566
  end
  inherited PNLMenu: TPanel
    Width = 566
    inherited SpeedBar2: TSpeedBar
      Width = 566
    end
  end
  inherited Consulta: TIBQuery
    Left = 592
    Top = 48
  end
  inherited IBTra: TIBTransaction
    Left = 592
    Top = 16
  end
  inherited ibSP: TIBStoredProc
    Left = 624
    Top = 16
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
    Top = 16
  end
  object dup_001: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = tSHEILD
    AfterDelete = dup_001AfterDelete
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
    OnStateChange = dtsdup_001StateChange
    Left = 784
    Top = 80
  end
  object Prazo: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
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
    Transaction = IBTra
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
