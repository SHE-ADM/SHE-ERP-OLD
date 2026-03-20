inherited FrmProduto_Devolucao_Cancelamento: TFrmProduto_Devolucao_Cancelamento
  Left = 600
  Top = 142
  Caption = 'Motivos de Devolu'#231#245'es & Cancelamentos'
  ClientHeight = 461
  ClientWidth = 682
  FormStyle = fsNormal
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 440
    Width = 682
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 80
        Text = 'Consulta'
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 453
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
    Width = 682
    Height = 379
    DockType = 0
    OriginalWidth = 682
    OriginalHeight = 379
    inherited LDSMenu: TdxLayoutDockSite
      Width = 682
      Height = 379
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSEdicao: TdxLayoutDockSite
        Width = 582
        Height = 379
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited DPMenu: TdxDockPanel
        Height = 379
        DockType = 2
        OriginalWidth = 100
        OriginalHeight = 573
        inherited SBMenu: TdxSideBar
          Height = 354
        end
      end
    end
    inherited DPEdicao: TdxDockPanel
      Width = 682
      Height = 379
      DockType = 1
      OriginalWidth = 470
      OriginalHeight = 285
      inherited PNLPrincipal: TPanel
        Width = 678
        Height = 354
        object PNLEdicao: TPanel
          Left = 0
          Top = 0
          Width = 678
          Height = 354
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object GBInfAd: TGroupBox
            Left = 0
            Top = 45
            Width = 678
            Height = 309
            Align = alClient
            Caption = '  Informa'#231#245'es Adicionais  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object EMINFADCAD: TdxMemo
              Left = 2
              Top = 19
              Width = 674
              Align = alClient
              Color = 16644596
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 0
              OnKeyDown = EMINFADCADKeyDown
              HideSelection = False
              HideScrollBars = False
              Height = 288
            end
          end
          object GBMotivo: TGroupBox
            Left = 0
            Top = 0
            Width = 678
            Height = 45
            Align = alTop
            Caption = '  Motivo  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object IEMotivo: TdxImageEdit
              Left = 2
              Top = 18
              Width = 671
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsFlat
              Style.ButtonTransparence = ebtNone
              Style.Shadow = False
              TabOrder = 0
              Text = 'COMERCIAL'
              AutoSize = False
              DropDownRows = 15
              Descriptions.Strings = (
                'COMERCIAL'
                'QUALIDADE'
                'RECUSOU'
                'DIVERG'#202'NCIA'
                'TEMPO DE RESERVA'
                'FINANCEIRO'
                'ERRO INTERNO'
                'TROCA DE COR')
              ImageIndexes.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7')
              Values.Strings = (
                'COMERCIAL'
                'QUALIDADE'
                'RECUSOU'
                'DIVERG'#202'NCIA'
                'TEMPO DE RESERVA'
                'FINANCEIRO'
                'ERRO INTERNO'
                'TROCA DE COR')
              Height = 22
            end
          end
        end
      end
    end
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
    DockControlHeights = (
      0
      0
      61
      0)
    inherited BLBValida: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBSaida: TdxBarLargeButton
      Visible = ivNever
    end
  end
end
