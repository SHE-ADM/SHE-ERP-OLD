inherited FrmProduto_Preco_Faixa_Comissao: TFrmProduto_Preco_Faixa_Comissao
  Left = 542
  Top = 214
  ActiveControl = CEVUPRC_PAD
  Caption = 'Faixa de Pre'#231'os Comissionados'
  ClientHeight = 366
  ClientWidth = 569
  FormStyle = fsNormal
  Position = poDesigned
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 345
    Width = 569
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
        Width = 295
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
  inherited DSMenu: TdxDockSite
    Top = 61
    Width = 569
    Height = 284
    DockType = 0
    OriginalWidth = 569
    OriginalHeight = 284
    inherited LDSMenu: TdxLayoutDockSite
      Width = 569
      Height = 284
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSEdicao: TdxLayoutDockSite
        Width = 469
        Height = 284
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited DPMenu: TdxDockPanel
        Height = 284
        DockType = 2
        OriginalWidth = 100
        OriginalHeight = 573
        inherited SBMenu: TdxSideBar
          Height = 259
        end
      end
    end
    inherited DPEdicao: TdxDockPanel
      Width = 569
      Height = 284
      Caption = 'Vendas'
      DockType = 1
      OriginalWidth = 470
      OriginalHeight = 285
      inherited PNLPrincipal: TPanel
        Width = 565
        Height = 259
        object PNLEdicao: TPanel
          Left = 0
          Top = 0
          Width = 565
          Height = 165
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object LAPUCOM_FLOAT: TLabel
            Left = 80
            Top = 108
            Width = 68
            Height = 14
            Caption = 'Flutua'#231#227'o %'
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
          object LAVUPRC_FLOAT: TLabel
            Left = 72
            Top = 36
            Width = 76
            Height = 14
            Caption = 'Flutua'#231#227'o - %'
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
          object LAREPETE: TLabel
            Left = 88
            Top = 60
            Width = 60
            Height = 14
            Caption = 'Repeti'#231#245'es'
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
          object LAVUPRC: TLabel
            Left = 50
            Top = 12
            Width = 98
            Height = 14
            Caption = 'Pre'#231'o Padr'#227'o - R$'
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
          object LAPUCOM_DIF: TLabel
            Left = 5
            Top = 132
            Width = 143
            Height = 14
            Caption = 'Comiss'#227'o Diferenciada - %'
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
          object LAPUCOM: TLabel
            Left = 34
            Top = 84
            Width = 114
            Height = 14
            Caption = 'Comiss'#227'o Padr'#227'o - %'
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
          object LAVUPRC_PRZ: TLabel
            Left = 217
            Top = 12
            Width = 90
            Height = 14
            Caption = 'Pre'#231'o Prazo - R$'
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
          object LAVUPRC_PRO: TLabel
            Left = 378
            Top = 12
            Width = 115
            Height = 14
            Caption = 'Pre'#231'o Promo'#231#227'o - R$'
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
          object CEPUCOM_FLOAT: TdxCurrencyEdit
            Left = 150
            Top = 104
            Width = 56
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
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            Value = 0.500000000000000000
            StoredValues = 65
          end
          object CEVUPRC_FLOAT: TdxCurrencyEdit
            Left = 150
            Top = 32
            Width = 56
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
            TabOrder = 1
            Alignment = taRightJustify
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            Value = 0.500000000000000000
            StoredValues = 65
          end
          object CEREPETE: TdxCurrencyEdit
            Left = 150
            Top = 56
            Width = 56
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
            TabOrder = 2
            Alignment = taRightJustify
            ReadOnly = False
            DisplayFormat = '0'
            Value = 5.000000000000000000
            StoredValues = 65
          end
          object CEVUPRC_PAD: TdxCurrencyEdit
            Left = 150
            Top = 8
            Width = 56
            HelpContext = 1
            Color = clInfoBk
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
            TabOrder = 3
            Alignment = taRightJustify
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            StoredValues = 65
          end
          object CEPUCOM_PAD: TdxCurrencyEdit
            Left = 150
            Top = 80
            Width = 56
            HelpContext = 1
            Color = clInfoBk
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
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            StoredValues = 65
          end
          object CEPUCOM_DIF: TdxCurrencyEdit
            Left = 150
            Top = 128
            Width = 56
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
            TabOrder = 5
            Alignment = taRightJustify
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            Value = 5.000000000000000000
            StoredValues = 65
          end
          object CEVUPRC_PRZ: TdxCurrencyEdit
            Left = 309
            Top = 8
            Width = 56
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
            TabOrder = 6
            Alignment = taRightJustify
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            StoredValues = 65
          end
          object CEVUPRC_PRO: TdxCurrencyEdit
            Left = 495
            Top = 8
            Width = 56
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
            TabOrder = 7
            Alignment = taRightJustify
            ReadOnly = False
            DisplayFormat = ',##,0.00;-,##,0.00'
            UseThousandSeparator = True
            StoredValues = 65
          end
        end
        object PNLPRC_COMPRA: TPanel
          Left = 0
          Top = 165
          Width = 565
          Height = 94
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object DSPRC_COMPRA: TdxDockSite
            Left = 0
            Top = 0
            Width = 565
            Height = 94
            Align = alClient
            DockType = 0
            OriginalWidth = 565
            OriginalHeight = 94
            object dxLayoutDockSite2: TdxLayoutDockSite
              Left = 0
              Top = 140
              Width = 565
              Height = 94
              DockType = 1
              OriginalWidth = 300
              OriginalHeight = 200
            end
            object DPPRC_COMPRA: TdxDockPanel
              Left = 0
              Top = 0
              Width = 565
              Height = 140
              AllowFloating = True
              AutoHide = False
              Caption = 'Compras'
              CaptionButtons = []
              DockType = 3
              OriginalWidth = 185
              OriginalHeight = 140
              object LAVUCOMPRA: TLabel
                Left = 26
                Top = 12
                Width = 70
                Height = 14
                Caption = 'Nacional - R$'
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
              object LAVUCOMPRA_IMP: TLabel
                Left = 5
                Top = 36
                Width = 91
                Height = 14
                Caption = 'Importado - US$'
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
              object CEVUPRC_COMPRA: TdxCurrencyEdit
                Left = 98
                Top = 8
                Width = 56
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
                ReadOnly = False
                DisplayFormat = ',##,0.00;-,##,0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVUPRC_COMPRA_IMP: TdxCurrencyEdit
                Left = 98
                Top = 32
                Width = 56
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
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = ',##,0.00;-,##,0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
          end
        end
      end
    end
  end
  inherited TConsulta: TIBTransaction
    Left = 528
  end
  inherited SQLConsulta: TIBSQL
    Left = 560
  end
  inherited QConsulta: TIBQuery
    Left = 528
  end
  inherited Consulta: TIBQuery
    Left = 528
  end
  inherited DTSConsulta: TDataSource
    Left = 560
    Top = 144
  end
  inherited TEdicao: TIBTransaction
    Left = 592
  end
  inherited SQLEdicao: TIBSQL
    Left = 624
  end
  inherited SPEdicao: TIBStoredProc
    Left = 656
  end
  inherited TEvent: TIBTransaction
    Left = 688
  end
  inherited SPEvent: TIBStoredProc
    Left = 720
  end
  inherited EEvent: TIBEvents
    Left = 752
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        IsMainMenu = True
        ItemLinks = <
          item
            Item = BLBSalva
            Visible = True
          end
          item
            Item = BLBValida
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBCancela
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSaida
            Visible = True
          end>
        MultiLine = True
        Name = 'Toolbar'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    StoreInIniFile = True
    DockControlHeights = (
      0
      0
      61
      0)
    inherited BLBSalva: TdxBarLargeButton
      Visible = ivNever
    end
  end
end
