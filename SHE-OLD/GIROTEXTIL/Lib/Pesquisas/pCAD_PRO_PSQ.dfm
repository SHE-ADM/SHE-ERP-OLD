inherited FrmCAD_PRO_PSQ: TFrmCAD_PRO_PSQ
  Caption = 'FrmCAD_PRO_PSQ'
  PixelsPerInch = 96
  TextHeight = 15
  inherited DSPrincipal: TdxDockSite
    Left = 28
    Top = 34
    Width = 1322
    Height = 656
    DockType = 0
    OriginalWidth = 1322
    OriginalHeight = 656
    inherited LDSMenu: TdxLayoutDockSite
      Width = 1264
      Height = 656
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSMenuLado: TdxLayoutDockSite
        Width = 1264
        Height = 656
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
        inherited LDSRodape: TdxLayoutDockSite
          Width = 1264
          Height = 556
          DockType = 1
          OriginalWidth = 300
          OriginalHeight = 200
          inherited LDSPrincipal: TdxLayoutDockSite
            Width = 1264
            Height = 556
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
          end
          inherited TCDSPrincipal: TdxTabContainerDockSite
            Width = 1264
            Height = 556
            DockType = 1
            OriginalWidth = 100
            OriginalHeight = 140
            inherited DPPrincipal: TdxDockPanel
              Width = 1260
              Height = 496
              DockType = 1
              OriginalWidth = 100
              OriginalHeight = 140
              inherited PNLPrincipal: TPanel
                Width = 1260
                Height = 496
                inherited DSConsulta: TdxDockSite
                  Width = 1250
                  Height = 486
                  DockType = 0
                  OriginalWidth = 1250
                  OriginalHeight = 486
                  inherited LDSConsultaLado: TdxLayoutDockSite
                    Width = 850
                    Height = 486
                    DockType = 1
                    OriginalWidth = 300
                    OriginalHeight = 200
                    inherited LDSConsultaRodape: TdxLayoutDockSite
                      Width = 850
                      Height = 336
                      DockType = 1
                      OriginalWidth = 300
                      OriginalHeight = 200
                      inherited LDSConsulta: TdxLayoutDockSite
                        Width = 850
                        Height = 336
                        DockType = 1
                        OriginalWidth = 300
                        OriginalHeight = 200
                      end
                      inherited DPConsulta: TdxDockPanel
                        Width = 850
                        Height = 336
                        DockType = 1
                        OriginalWidth = 185
                        OriginalHeight = 140
                        inherited DBGConsulta: TdxDBGrid
                          Width = 846
                          Height = 307
                          Filter.Criteria = {00000000}
                        end
                      end
                    end
                    inherited DPConsultaRodape: TdxDockPanel
                      Top = 336
                      Width = 850
                      DockType = 5
                      OriginalWidth = 185
                      OriginalHeight = 150
                    end
                  end
                  inherited HCDSConsultaLado2: TdxHorizContainerDockSite
                    Left = 850
                    Height = 486
                    DockType = 4
                    OriginalWidth = 400
                    OriginalHeight = 140
                    inherited DPConsultaLado: TdxDockPanel
                      Height = 486
                      DockType = 2
                      OriginalWidth = 200
                      OriginalHeight = 140
                    end
                    inherited DPConsultaLado2: TdxDockPanel
                      Height = 486
                      DockType = 2
                      OriginalWidth = 200
                      OriginalHeight = 140
                    end
                  end
                end
              end
            end
            inherited DPPrincipal2: TdxDockPanel
              Width = 1260
              Height = 496
              DockType = 1
              OriginalWidth = 185
              OriginalHeight = 140
            end
            inherited DPPrincipal3: TdxDockPanel
              Width = 1260
              Height = 496
              DockType = 1
              OriginalWidth = 185
              OriginalHeight = 140
            end
          end
        end
        inherited HCDSRodapeLado: TdxHorizContainerDockSite
          Top = 556
          Width = 1264
          DockType = 5
          OriginalWidth = 185
          OriginalHeight = 100
          inherited TCDSRodape: TdxTabContainerDockSite
            DockType = 2
            OriginalWidth = 866
            OriginalHeight = 100
            inherited DPRodape: TdxDockPanel
              DockType = 1
              OriginalWidth = 866
              OriginalHeight = 100
            end
            inherited DPRodape2: TdxDockPanel
              DockType = 1
              OriginalWidth = 866
              OriginalHeight = 100
            end
            inherited DPRodape3: TdxDockPanel
              DockType = 1
              OriginalWidth = 866
              OriginalHeight = 100
            end
          end
          inherited TCDSRodapeLado2: TdxTabContainerDockSite
            Width = 398
            DockType = 2
            OriginalWidth = 398
            OriginalHeight = 100
            inherited DPRodapeLado: TdxDockPanel
              Width = 394
              DockType = 1
              OriginalWidth = 398
              OriginalHeight = 100
            end
            inherited DPRodapeLado2: TdxDockPanel
              Width = 394
              DockType = 1
              OriginalWidth = 398
              OriginalHeight = 100
            end
            inherited DPRodapeLado3: TdxDockPanel
              Width = 394
              DockType = 1
              OriginalWidth = 398
              OriginalHeight = 100
            end
          end
        end
      end
      inherited DPMenuLado: TdxDockPanel
        AutoHidePosition = 2
        DockType = 4
        OriginalWidth = 100
        OriginalHeight = 140
      end
    end
    inherited DPMenu: TdxDockPanel
      Left = 1193
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 100
      OriginalHeight = 140
      inherited SBPrincipal: TdxSideBar
        Height = 634
        Groups = <
          item
            Caption = 'Edi'#231#227'o'
            Index = 0
            IconType = dxsgSmallIcon
            Items = <
              item
                Caption = 'Incluir'
                Hint = '[ins] - Inclus'#227'o de Registros'
                Index = 0
                LargeImage = 0
                SmallImage = 0
                StoredItem = FrmSHE_DEF_ADM.SSIEAppend
              end
              item
                Caption = 'Alterar'
                Hint = '[Enter] - Edi'#231#227'o de Registros'
                Index = 1
                LargeImage = 1
                SmallImage = 1
                StoredItem = FrmSHE_DEF_ADM.SSIEEdit
              end
              item
                Caption = 'Excluir'
                Hint = '[Del] - Exclus'#227'o de Registros'
                Index = 2
                LargeImage = 2
                SmallImage = 2
                StoredItem = FrmSHE_DEF_ADM.SSIEDelete
              end
              item
                Caption = 'Salvar'
                Hint = 'Salva Edi'#231#227'o'
                Index = 3
                LargeImage = 3
                SmallImage = 3
                StoredItem = FrmSHE_DEF_ADM.SSIEPost
              end
              item
                Caption = 'Cancelar'
                Hint = 'Cancela Edi'#231#227'o'
                Index = 4
                LargeImage = 4
                SmallImage = 4
                StoredItem = FrmSHE_DEF_ADM.SSIECancel
              end>
          end
          item
            Caption = 'Menu'
            Index = 1
            Items = <
              item
                Caption = 'Incluir'
                Hint = '[ins] - Inclus'#227'o de Registros'
                Index = 0
                LargeImage = 0
                SmallImage = 0
                StoredItem = FrmSHE_DEF_ADM.SSIMAppend
              end
              item
                Caption = 'Alterar'
                Hint = '[Enter] - Edi'#231#227'o de Registros'
                Index = 1
                LargeImage = 1
                SmallImage = 1
                StoredItem = FrmSHE_DEF_ADM.SSIMEdit
              end
              item
                Caption = 'Excluir'
                Hint = '[Del] - Exclus'#227'o de Registros'
                Index = 2
                LargeImage = 2
                SmallImage = 2
                StoredItem = FrmSHE_DEF_ADM.SSIMDelete
              end>
          end>
      end
    end
  end
  inherited SBRodape: TdxStatusBar
    Top = 690
  end
  inherited BMPrincipal: TdxBarManager
    Bars = <
      item
        AllowQuickCustomizing = False
        Caption = 'Menu Principal'
        Color = clHighlightText
        DockedDockingStyle = dsTop
        DockedLeft = 158
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 0
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        IsMainMenu = True
        ItemLinks = <>
        MultiLine = True
        Name = 'Menu Principal'
        OneOnRow = False
        Row = 0
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Menu Sistema'
        Color = clHighlightText
        DockedDockingStyle = dsTop
        DockedLeft = 1161
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <
          item
            Item = BLBRefresh
            Visible = True
          end
          item
            Item = BLBPesquisa
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBRelatorios
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSaida
            Visible = True
          end>
        Name = 'Menu Sistema'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Sub Menu'
        DockedDockingStyle = dsLeft
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsLeft
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <>
        Name = 'Sub Menu'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Pesquisa Cadastro'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <
          item
            Item = BBPSQ_CAD
            Visible = True
          end
          item
            Item = BEPSQ_CAD
            UserDefine = [udWidth]
            UserWidth = 1474
            Visible = True
          end>
        Name = 'Pesquisa Cadastro'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Pesquisa Per'#237'odo'
        DockedDockingStyle = dsTop
        DockedLeft = 818
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <
          item
            Item = BBPSQ_PER
            Visible = True
          end
          item
            Item = BDPSQ_PER_INI
            Visible = True
          end
          item
            Item = BDPSQ_PER_FIM
            Visible = True
          end>
        Name = 'Pesquisa Per'#237'odo'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'ProgressBar'
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 724
        FloatTop = 370
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemLinks = <
          item
            Item = BSProgresso
            Visible = True
          end
          item
            Item = BPProcesso
            Visible = True
          end>
        Name = 'ProgressBar'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    DockControlHeights = (
      28
      0
      34
      22)
  end
end
