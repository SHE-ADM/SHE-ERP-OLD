inherited FrmFinanceiro_Recebimento_Cadastro: TFrmFinanceiro_Recebimento_Cadastro
  Caption = 'Cadastro de T'#237'tulos a Receber'
  PixelsPerInch = 96
  TextHeight = 14
  inherited PCPrincipal: TdxPageControl
    Top = 61
    Height = 486
    inherited TSPrincipal: TdxTabSheet
      inherited PNLPrincipal: TPanel
        Height = 486
        inherited DSMenu: TdxDockSite
          DockType = 0
          OriginalWidth = 1008
          OriginalHeight = 490
          inherited LDSMenu: TdxLayoutDockSite
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
            inherited LDSEdicao: TdxLayoutDockSite
              DockType = 1
              OriginalWidth = 300
              OriginalHeight = 200
            end
            inherited DPMenu: TdxDockPanel
              DockType = 2
              OriginalWidth = 100
              OriginalHeight = 573
            end
          end
          inherited DPEdicao: TdxDockPanel
            DockType = 1
            OriginalWidth = 470
            OriginalHeight = 285
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
  end
end
