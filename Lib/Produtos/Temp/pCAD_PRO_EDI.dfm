inherited FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI
  Left = 488
  Top = 96
  HelpContext = 98
  AlphaBlendValue = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 846
  ClientWidth = 1034
  Position = poDesigned
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 15
  inherited PNLTOP: TPanel
    Width = 1034
    Height = 445
    BorderWidth = 5
    Color = 16382457
    Enabled = True
    Font.Height = -13
    ParentFont = False
    Visible = True
    object DSArtigo: TdxDockSite
      Left = 5
      Top = 5
      Width = 570
      Height = 125
      DockType = 0
      OriginalWidth = 570
      OriginalHeight = 125
      object LDSArtigo: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 570
        Height = 125
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object DPArtigo: TdxDockPanel
        Left = 0
        Top = 0
        Width = 570
        Height = 125
        AllowFloating = True
        AutoHide = False
        Caption = 'Artigo'
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object PNLFArtigo: TPanel
          Left = 0
          Top = 0
          Width = 566
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          Color = 16382457
          TabOrder = 0
          object PNLEArtigo: TPanel
            Left = 5
            Top = 5
            Width = 556
            Height = 85
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object LAARTIGO: TLabel
              Left = 10
              Top = 12
              Width = 61
              Height = 17
              Caption = 'Refer'#234'ncia'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LADECP: TLabel
              Left = 10
              Top = 36
              Width = 57
              Height = 17
              Caption = 'Descri'#231#227'o'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LADCCP: TLabel
              Left = 10
              Top = 60
              Width = 32
              Height = 17
              Caption = 'T'#237'tulo'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LACDST: TLabel
              Left = 365
              Top = 12
              Width = 49
              Height = 17
              Caption = 'Situa'#231#227'o'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object EDARTIGO: TdxEdit
              Left = 80
              Top = 8
              Width = 130
              Color = clInfoBk
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
              TabOrder = 1
              CharCase = ecUpperCase
              MaxLength = 120
              OnChange = EDARTIGOChange
              OnValidate = EDARTIGOValidate
              StoredValues = 2
            end
            object EDDECP: TdxEdit
              Left = 80
              Top = 32
              Width = 470
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
              OnChange = EDDECPChange
              StoredValues = 2
            end
            object EDDTCP: TdxEdit
              Left = 80
              Top = 56
              Width = 470
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
              OnChange = EDDECPChange
              StoredValues = 2
            end
            object IECDST: TdxImageEdit
              Left = 420
              Top = 8
              Width = 130
              Cursor = crHandPoint
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
              DropDownRows = 10
              Descriptions.Strings = (
                'FORA DE LINHA')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
          end
        end
      end
    end
    object DSEmpresas: TdxDockSite
      Left = 580
      Top = 5
      Width = 450
      Height = 125
      DockType = 0
      OriginalWidth = 450
      OriginalHeight = 125
      object LDSEmpresas: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 450
        Height = 125
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object DPEmpresas: TdxDockPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 125
        AllowFloating = True
        AutoHide = False
        Caption = 'Empresas'
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object PNLFEmpresas: TPanel
          Left = 0
          Top = 0
          Width = 446
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          Color = 16382457
          TabOrder = 0
          object PNLEEmpresas: TPanel
            Left = 5
            Top = 5
            Width = 436
            Height = 85
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object LADECF: TLabel
              Left = 10
              Top = 36
              Width = 60
              Height = 17
              Caption = 'Fabricante'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LACF_SKU: TLabel
              Left = 10
              Top = 60
              Width = 24
              Height = 17
              Caption = 'SKU'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LACF_CEAN: TLabel
              Left = 240
              Top = 60
              Width = 52
              Height = 17
              Hint = 'C'#243'digo de barras original do tipo EAN-13'
              Caption = 'CEAN-13'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LAIDEP: TLabel
              Left = 10
              Top = 12
              Width = 71
              Height = 17
              Caption = 'Revendedor'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object EDCF_SKU: TdxEdit
              Left = 90
              Top = 56
              Width = 130
              Color = 16644596
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
              StoredValues = 2
            end
            object PEDECF: TdxPickEdit
              Left = 90
              Top = 32
              Width = 340
              Cursor = crHandPoint
              Color = 16644596
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
              TabOrder = 1
              CharCase = ecUpperCase
              DropDownRows = 20
            end
            object IEIDEP: TdxImageEdit
              Left = 90
              Top = 8
              Width = 340
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
              Text = '0'
              DropDownRows = 10
              Descriptions.Strings = (
                'OTIMOTEX TECIDOS')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
            object EDCF_CEAN: TdxEdit
              Left = 300
              Top = 56
              Width = 130
              Color = 16644596
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
              CharCase = ecUpperCase
              MaxLength = 120
              StoredValues = 2
            end
          end
        end
      end
    end
    object DSCategorias: TdxDockSite
      Left = 5
      Top = 135
      Width = 570
      Height = 195
      DockType = 0
      OriginalWidth = 570
      OriginalHeight = 195
      object dxLayoutDockSite4: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 570
        Height = 195
        ParentShowHint = False
        ShowHint = True
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object DPCategorias: TdxDockPanel
        Left = 0
        Top = 0
        Width = 570
        Height = 195
        AllowFloating = True
        AutoHide = False
        Caption = 'Categoriza'#231#245'es'
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object PNLFCategorias: TPanel
          Left = 0
          Top = 0
          Width = 566
          Height = 165
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          Color = 16382457
          TabOrder = 0
          object PNLECategorias: TPanel
            Left = 5
            Top = 5
            Width = 556
            Height = 155
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object LASEG_ID: TLabel
              Left = 10
              Top = 36
              Width = 59
              Height = 17
              Caption = 'Segmento'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LAGRP_ID: TLabel
              Left = 10
              Top = 60
              Width = 37
              Height = 17
              Caption = 'Grupo'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LASGP_ID: TLabel
              Left = 10
              Top = 84
              Width = 63
              Height = 17
              Caption = 'Sub Grupo'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LACAT_ID: TLabel
              Left = 10
              Top = 108
              Width = 57
              Height = 17
              Caption = 'Categoria'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LASCT_ID: TLabel
              Left = 10
              Top = 132
              Width = 83
              Height = 17
              Caption = 'Sub Categoria'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object LACOL_ID: TLabel
              Left = 10
              Top = 12
              Width = 47
              Height = 17
              Caption = 'Cole'#231#227'o'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object IESEG_ID: TdxImageEdit
              Left = 105
              Top = 32
              Width = 445
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
              TabOrder = 1
              Text = '0'
              OnChange = IECOL_IDChange
              DropDownRows = 20
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
            object IEGRP_ID: TdxImageEdit
              Left = 105
              Top = 56
              Width = 445
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
              TabOrder = 2
              OnChange = IECOL_IDChange
              DropDownRows = 20
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
            object IESGP_ID: TdxImageEdit
              Left = 105
              Top = 80
              Width = 445
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
              TabOrder = 3
              OnChange = IECOL_IDChange
              DropDownRows = 20
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
            object IECAT_ID: TdxImageEdit
              Left = 105
              Top = 104
              Width = 445
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
              TabOrder = 4
              OnChange = IECOL_IDChange
              DropDownRows = 20
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
            object IESCT_ID: TdxImageEdit
              Left = 105
              Top = 128
              Width = 445
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
              TabOrder = 5
              OnChange = IECOL_IDChange
              DropDownRows = 20
              Descriptions.Strings = (
                '')
              ImageIndexes.Strings = (
                '0')
              Values.Strings = (
                '0')
            end
            object IECOL_ID: TdxImageEdit
              Left = 105
              Top = 8
              Width = 445
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
              TabOrder = 0
              OnChange = IECOL_IDChange
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
    end
    object DSMarketPlaces: TdxDockSite
      Left = 580
      Top = 135
      Width = 450
      Height = 195
      DockType = 0
      OriginalWidth = 450
      OriginalHeight = 195
      object dxLayoutDockSite5: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 450
        Height = 195
        ParentShowHint = False
        ShowHint = True
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object DPMarketPlaces: TdxDockPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 195
        AllowFloating = True
        AutoHide = False
        Caption = 'Market Places'
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object PNLFMarketPlaces: TPanel
          Left = 0
          Top = 0
          Width = 446
          Height = 165
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          Color = 16382457
          TabOrder = 0
          object PNLEMarketPlaces: TPanel
            Left = 5
            Top = 5
            Width = 436
            Height = 155
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object CHKMKP_MLV_ID: TdxCheckEdit
              Left = 10
              Top = 8
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 0
              Caption = '   Mercado Livre'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
            object CHKMKP_MPG_ID: TdxCheckEdit
              Left = 10
              Top = 32
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 1
              Caption = '   Mercado Pago'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
            object CHKMKP_MSP_ID: TdxCheckEdit
              Left = 10
              Top = 56
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 2
              Caption = '   Mercado Shop'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
            object CHKMKP_SHP_ID: TdxCheckEdit
              Left = 10
              Top = 80
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 3
              Caption = '   Shopee'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
            object CHKMKP_AMZ_ID: TdxCheckEdit
              Left = 10
              Top = 104
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 4
              Caption = '   Amazon'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
            object CHKMKP_BLG_ID: TdxCheckEdit
              Left = 192
              Top = 8
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 5
              Caption = '   Bling'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
            object CHKMKP_TRY_ID: TdxCheckEdit
              Left = 192
              Top = 32
              Width = 150
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Shadow = True
              TabOrder = 6
              Caption = '   Tray'
              StyleController = StyleController
              NullStyle = nsUnchecked
            end
          end
        end
      end
    end
    object DSINFADCAD: TdxDockSite
      Left = 5
      Top = 335
      Width = 1025
      Height = 105
      DockType = 0
      OriginalWidth = 1025
      OriginalHeight = 105
      object dxLayoutDockSite2: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 1025
        Height = 105
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object TCDSINFADCAD: TdxTabContainerDockSite
        Left = 0
        Top = 0
        Width = 1025
        Height = 105
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ManagerFont = False
        ActiveChildIndex = 0
        AllowFloating = True
        AutoHide = False
        ShowCaption = False
        TabsPosition = tctpTop
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object DPINFADCAD: TdxDockPanel
          Left = 0
          Top = 0
          Width = 1021
          Height = 69
          AllowFloating = True
          AutoHide = False
          Caption = 'Informa'#231#245'es Adicionais'
          DockType = 1
          OriginalWidth = 185
          OriginalHeight = 140
          object EMINFADCAD: TdxMemo
            Left = 0
            Top = 0
            Width = 1021
            Align = alClient
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI Symbol'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            ScrollBars = ssVertical
            Height = 69
          end
        end
        object DPINFADCPL: TdxDockPanel
          Left = 0
          Top = 0
          Width = 1021
          Height = 69
          AllowFloating = True
          AutoHide = False
          Caption = 'Informa'#231#245'es Complementares'
          DockType = 1
          OriginalWidth = 185
          OriginalHeight = 140
          object EMINFADCPL: TdxMemo
            Left = 0
            Top = 0
            Width = 1021
            Align = alClient
            Color = 16644596
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI Symbol'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            ScrollBars = ssVertical
            Height = 69
          end
        end
      end
    end
  end
  inherited SBMenu: TSpeedBar
    Width = 1034
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
  inherited PNLLE: TPanel
    Top = 510
    Height = 336
  end
  inherited PNLLD: TPanel
    Left = 1034
    Top = 510
    Height = 336
  end
  inherited PNLBOT: TPanel
    Top = 846
    Width = 1034
  end
  inherited PNLPrincipal: TPanel
    Top = 510
    Width = 1034
    Height = 336
    inherited SCBPrincipal: TScrollBox
      Width = 1034
      Height = 336
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1030
        Height = 332
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 16382457
        TabOrder = 0
        object DSPrincipal: TdxDockSite
          Left = 5
          Top = 5
          Width = 1020
          Height = 322
          Align = alClient
          AutoSize = True
          DockType = 0
          OriginalWidth = 1020
          OriginalHeight = 322
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 1020
            Height = 322
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
          end
          object dxTabContainerDockSite1: TdxTabContainerDockSite
            Left = 0
            Top = 0
            Width = 1020
            Height = 322
            ActiveChildIndex = 0
            AllowFloating = True
            AutoHide = False
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 140
            object DPMedidas: TdxDockPanel
              Left = 0
              Top = 0
              Width = 1016
              Height = 260
              AllowFloating = True
              AutoHide = False
              Caption = 'Medidas'
              DockType = 1
              OriginalWidth = 185
              OriginalHeight = 140
              object PNLFMedidas: TPanel
                Left = 0
                Top = 0
                Width = 1016
                Height = 260
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 5
                Color = 16382457
                TabOrder = 0
                object PNLEMedidas: TPanel
                  Left = 296
                  Top = 64
                  Width = 185
                  Height = 41
                  BevelOuter = bvNone
                  TabOrder = 0
                end
              end
            end
            object dxDockPanel2: TdxDockPanel
              Left = 0
              Top = 0
              Width = 1016
              Height = 260
              AllowFloating = True
              AutoHide = False
              Caption = 'dxDockPanel2'
              DockType = 1
              OriginalWidth = 185
              OriginalHeight = 140
            end
          end
        end
      end
    end
  end
  inherited ALPrincipal: TActionList
    Left = 368
    Top = 35
  end
  inherited TConsulta: TIBTransaction
    Left = 368
    Top = 3
  end
  inherited SQLConsulta: TIBSQL
    Left = 400
    Top = 3
  end
  inherited TEdicao: TIBTransaction
    Left = 432
    Top = 3
  end
  inherited SQLEdicao: TIBSQL
    Left = 464
    Top = 3
  end
  inherited SPEdicao: TIBStoredProc
    Left = 496
    Top = 3
  end
  inherited TEvent: TIBTransaction
    Left = 528
    Top = 3
  end
  inherited SQLEvent: TIBSQL
    Left = 560
    Top = 3
  end
  inherited SPEvent: TIBStoredProc
    Left = 592
    Top = 3
  end
  inherited EEvent: TIBEvents
    Left = 624
    Top = 3
  end
  inherited ILMenu: TImageList
    Left = 400
    Top = 35
  end
  inherited ILEdicao: TImageList
    Left = 432
    Top = 35
  end
  inherited DMPrincipal: TdxDockingManager
    Left = 464
    Top = 35
  end
  inherited StyleController: TdxEditStyleController
    Left = 496
    Top = 35
  end
end
